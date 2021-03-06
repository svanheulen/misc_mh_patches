.3ds

.open "code.bin", "code_patched.bin", 0x100000

.include settings_file

.org main_patch_start
    // copy Blowfish key
    mov r2, #0x80
    adr r1, key
    add r0, r4, #0x5a0
    bl memcpy
    // copy URL
    mov r2, #0x80
    adr r1, url
    add r0, r4, #0x620
    bl memcpy
    // copy RSA public key
    mov r2, #0x100
    add r2, r2, #0x26
    adr r1, pubkey
    add r0, r4, #0x6b0
    bl memcpy
    // enable overriding the default URL
    mov r0, #1
    strb r0, [r4,#0x8a]
    // mark authentication as complete
    strb r0, [r4,#0x81]
    b main_patch_continue
.pool
key:
.area 0x80
    .ascii patch_key,0
.endarea
url:
.area 0x80
    .ascii patch_url,0
.endarea
pubkey:
.area 0x126
    .incbin "pubkey.bin"
.endarea

.org frd_u_GetMyFriendCode
    mov r0, #1
    blx lr

.org frd_u_RequestGameAuthentication
    ldr r0, [r0]
    swi 0x18
    mov r0, #0
    blx lr

.org frd_u_GetLastResponseResult
    mov r0, #0
    blx lr

.org frd_u_GetGameAuthenticationData
    mov r1, #1
    str r1, [r0]
    mov r1, #0xc8
    str r1, [r0,#4]
    mov r0, #0
    blx lr

.org frd_u_RequestServiceLocator
    ldr r0, [r0]
    swi 0x18
    mov r0, #0
    blx lr

.org frd_u_GetServiceLocatorData
    mov r1, #7
    str r1, [r0]
    mov r1, #0xc8
    str r1, [r0,#4]
    mov r0, #0
    blx lr

.org frd_u_Logout
    mov r0, #0
    blx lr

.close

