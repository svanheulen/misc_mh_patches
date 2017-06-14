main_patch_start equ 0x22f114
memcpy equ 0x2e6f1c
main_patch_continue equ 0x22f0fc
patch_key equ "5FtVyACe2sRus5Zga4QC3BxQ"
patch_url equ "http:",0x2f,"/meteor.capcom.co.jp/3ds/mhxx_jp/"
frd_u_GetMyFriendCode equ 0x118ebc
frd_u_RequestGameAuthentication equ 0x119378
frd_u_GetLastResponseResult equ 0x1191b4
frd_u_GetGameAuthenticationData equ 0x119284
frd_u_RequestServiceLocator equ 0x1192f8
frd_u_GetServiceLocatorData equ 0x1191d4
frd_u_Logout equ 0x119430

