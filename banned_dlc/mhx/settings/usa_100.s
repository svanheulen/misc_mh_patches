main_patch_start equ 0x254530
memcpy equ 0x2f3bdc
main_patch_continue equ 0x254518
patch_key equ "N3uExdqeA6r8jusbnN7mBRVWS8qe9sDaLe6viEVG"
patch_url equ "http:",0x2f,"/spector.capcom.co.jp/3ds/mhx_us/"
frd_u_GetMyFriendCode equ 0x81e0d8
frd_u_RequestGameAuthentication equ 0x81eb94
frd_u_GetLastResponseResult equ 0x81e7d0
frd_u_GetGameAuthenticationData equ 0x81e9bc
frd_u_RequestServiceLocator equ 0x81eac8
frd_u_GetServiceLocatorData equ 0x81e82c
frd_u_Logout equ 0x81ecf0

