main_patch_start equ 0x253e44
memcpy equ 0x2f353c
main_patch_continue equ 0x253e2c
patch_key equ "Du9mgSyBmA7aQ5SX"
patch_url equ "http:",0x2f,"/spector.capcom.co.jp/3ds/mhx_new_jp/"
frd_u_GetMyFriendCode equ 0x81a438
frd_u_RequestGameAuthentication equ 0x81aa40
frd_u_GetLastResponseResult equ 0x81a840
frd_u_GetGameAuthenticationData equ 0x81a9f0
frd_u_RequestServiceLocator equ 0x81a8c0
frd_u_GetServiceLocatorData equ 0x81a870
frd_u_Logout equ 0x81ab84

