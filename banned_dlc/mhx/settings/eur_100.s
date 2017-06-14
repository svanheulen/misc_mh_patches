main_patch_start equ 0x254530
memcpy equ 0x2f3bdc
main_patch_continue equ 0x254518
patch_key equ "Xx9WzvFbJ5j3UxM6s2Q4bwYcG3vSmpX7H5eNuWQy"
patch_url equ "http:",0x2f,"/spector.capcom.co.jp/3ds/mhx_eu/"
frd_u_GetMyFriendCode equ 0x81ee34
frd_u_RequestGameAuthentication equ 0x81f43c
frd_u_GetLastResponseResult equ 0x81f23c
frd_u_GetGameAuthenticationData equ 0x81f3ec
frd_u_RequestServiceLocator equ 0x81f2bc
frd_u_GetServiceLocatorData equ 0x81f26c
frd_u_Logout equ 0x81f580

