rule LostdoorRAT_pdb {
	 
	 meta:

		 description = "Rule to detect LostdoorRAT based on PDB"
		 author = "Marc Rivero | McAfee ATR Team"
		 reference = "https://blog.trendmicro.com/trendlabs-security-intelligence/lost-door-rat-accessible-customizable-attack-tool/"
		 date = "2013-11-25"
		 hash = "28d0d2611d0fa6309991c1fbd24fe2596891b09f4f6568e6c9328abc9390f5a6"
		 
	 strings:

	 	$pdb = "\\Users\\Aegis\\Documents\\Visual Studio 2008\\Projects\\stub1\\Release\\stub.pdb"

	 condition:
	 
	 	uint16(0) == 0x5a4d and
	 	filesize < 400KB and
	 	any of them
}
