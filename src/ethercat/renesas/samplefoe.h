/*
* This source file is part of the EtherCAT Slave Stack Code licensed by Beckhoff Automation GmbH & Co KG, 33415 Verl, Germany.
* The corresponding license agreement applies. This hint shall not be removed.
*/

/**
 * \addtogroup SampleFoe FoE Sample functions
 * @{
 */

/**
\file samplefoe.h
\author EthercatSSC@beckhoff.com
\brief FoE Sample functions specific objects

 */

/*-----------------------------------------------------------------------------------------
------
------    Includes
------
-----------------------------------------------------------------------------------------*/
#include "ecat_def.h"

#ifndef _SAMPLE_FOE_H_
#define _SAMPLE_FOE_H_

/*-----------------------------------------------------------------------------------------
------
------    Defines and Types
------
-----------------------------------------------------------------------------------------*/
/*---------------------------------------------
-    SII EEPROM Access (word access)
-----------------------------------------------*/
#define		SII_EEP_IDENTIFY_OFFSET		0x08
#define		SII_EEP_VENDORID			0x00
#define		SII_EEP_PRODUCTCODE			0x02
#define		SII_EEP_REVESIONNO			0x04
#define		SII_EEP_SERIALNO			0x06
typedef union
{
	UINT32	dword[4];
	UINT16	word[8];
	UINT8	byte[16];
}EEPBUFFER;

extern UINT16 FoE_Read(UINT16 MBXMEM * pName, UINT16 nameSize, UINT32 password, UINT16 maxBlockSize, UINT16 *pData);
extern UINT16 FoE_ReadData(UINT32 offset, UINT16 maxBlockSize, UINT16 *pData);
extern UINT16 FoE_Write(UINT16 MBXMEM * pName, UINT16 nameSize, UINT32 password);
extern UINT16 FoE_WriteData(UINT16 MBXMEM * pData, UINT16 Size, BOOL bDataFollowing);

#endif
/** @}*/
