/*
* This source file is part of the EtherCAT Slave Stack Code licensed by Beckhoff Automation GmbH & Co KG, 33415 Verl, Germany.
* The corresponding license agreement applies. This hint shall not be removed.
*/

/**
\addtogroup SampleFoe FoE Sample functions
@{
*/

/**
\file samplefoe.c
\author EthercatSSC@beckhoff.com
\brief Implementation

*/


/*-----------------------------------------------------------------------------------------
------
------    Includes
------
-----------------------------------------------------------------------------------------*/
#include "applInterface.h"
#include "bootmode.h"

#include "samplefoe.h"
/*--------------------------------------------------------------------------------------
------
------    local types and defines
------
--------------------------------------------------------------------------------------*/
/*ECATCHANGE_START(V5.12) FOE1*/
#define    MAX_FILE_NAME_SIZE    16

/** \brief  MAX_FILE_SIZE: Maximum file size */
#define MAX_FILE_SIZE                             0x180
/*ECATCHANGE_END(V5.12) FOE1*/

/*-----------------------------------------------------------------------------------------
------
------    local variables and constants
------
-----------------------------------------------------------------------------------------*/
/*ECATCHANGE_START(V5.12) FOE1*/
UINT32           nFileWriteOffset;
CHAR             aFileName[MAX_FILE_NAME_SIZE];
UINT8 MBXMEM      aFileData[MAX_FILE_SIZE];


UINT32 u32FileSize;
const UINT16 HUGE aFirmwareDownloadHeader[5] = {0x4345,0x5441,0x5746,0x525F,0x4E5A}; // "ECATFW_RZN"
const UINT32      aFilePassword = 0x00000000;		// REL_FoE_140918

/*-----------------------------------------------------------------------------------------
------
------    application specific functions
------
-----------------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------------------
------
------    generic functions
------
-----------------------------------------------------------------------------------------*/
/*ECATCHANGE_START(V5.12) FOE1*/
UINT16 FoE_Read(UINT16 MBXMEM * pName, UINT16 nameSize, UINT32 password, UINT16 maxBlockSize, UINT16 *pData)
{
    UINT16 i = 0;
    UINT16 sizeError = 0;

    CHAR aReadFileName[MAX_FILE_NAME_SIZE];

    
    if ((nameSize + 1) > MAX_FILE_NAME_SIZE)
    {
        return ECAT_FOE_ERRCODE_DISKFULL;
    }

    /*Read requested file name to endianess conversion if required*/
    MBXSTRCPY(aReadFileName, pName, nameSize);
    aReadFileName[nameSize] = '\0';

    if (u32FileSize == 0)
    {
        /* No file stored*/
        return ECAT_FOE_ERRCODE_NOTFOUND;
    }

    /* for test only the written file name can be read */
    for (i = 0; i < nameSize; i++)
    {
        if (aReadFileName[i] != aFileName[i])
        {
            /* file name not found */
            return ECAT_FOE_ERRCODE_NOTFOUND;
        }
    }

    sizeError = maxBlockSize;

    if (u32FileSize < sizeError)
    {
        sizeError = (UINT16)u32FileSize;
    }

    /*copy the first foe data block*/
    MEMCPY(pData, aFileData, sizeError);

    return sizeError;
}

UINT16 FoE_ReadData(UINT32 offset, UINT16 maxBlockSize, UINT16 *pData)
{
    UINT16 sizeError = 0;

    if (u32FileSize < offset)
    {
        return 0;
    }

    /*get file length to send*/
    sizeError =(UINT16) (u32FileSize - offset);


    if (sizeError > maxBlockSize)
    {
        /*transmit max block size if the file data to be send is greater than the max data block*/
        sizeError = maxBlockSize;
    }
    /*copy the foe data block 2 .. n*/
    MEMCPY(pData, &(((UINT8 *)aFileData)[offset]), sizeError);

    return sizeError;
}


UINT16 FoE_WriteData(UINT16 MBXMEM * pData, UINT16 Size, BOOL bDataFollowing)
{
    if (bBootMode)
    {
        return BL_Data(pData, Size);
    }
    else
        if ((nFileWriteOffset + Size) > MAX_FILE_SIZE)
        {
            return ECAT_FOE_ERRCODE_DISKFULL;
        }

    if (Size)
    {

        MBXMEMCPY(&aFileData[nFileWriteOffset], pData, Size);

    }

    if (bDataFollowing)
    {
        /* FoE-Data services will follow */
        nFileWriteOffset += Size;
        
    }
    else
    {
        /* last part of the file is written */
        u32FileSize = nFileWriteOffset + Size;
        nFileWriteOffset = 0;
    }

    return 0;
}

UINT16 FoE_Write(UINT16 MBXMEM * pName, UINT16 nameSize, UINT32 password)
{
    if ((nameSize >= SIZEOF(aFirmwareDownloadHeader))
        && (pName[0] == aFirmwareDownloadHeader[0])
        && (pName[1] == aFirmwareDownloadHeader[1])
        && (pName[2] == aFirmwareDownloadHeader[2])
        &&( pName[3] == aFirmwareDownloadHeader[3] )
        )
    {
        if (bBootMode)
        {
			if(aFilePassword != password)			// REL_FoE_140918
			{										// REL_FoE_140918
				return ECAT_FOE_ERRCODE_NORIGHTS;	// REL_FoE_140918
			}										// REL_FoE_140918
            BL_StartDownload(password);
            return 0;
        }
        else
        {
            return ECAT_FOE_ERRCODE_BOOTSTRAPONLY;
        }
    }
    else
        if (bBootMode)
        {
            return ECAT_FOE_ERRCODE_NOTINBOOTSTRAP;
        }
        else
    if (nameSize < MAX_FILE_NAME_SIZE)
    {
        /* for test every file name can be written */
        MBXSTRCPY(aFileName, pName, nameSize);
        MBXSTRCPY(aFileName + nameSize, "\0", 1); //string termination


        nFileWriteOffset = 0;
        u32FileSize = 0;
        return 0;
    }
    else
    {
        return ECAT_FOE_ERRCODE_DISKFULL;
    }

}

/*ECATCHANGE_END(V5.12) FOE1*/

/** @} */

