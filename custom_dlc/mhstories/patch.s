.3ds

.open "code.bin", "code_patched.bin", 0x100000

.include settings_file

.thumb

.org url_patch_start
    // copy URL
    mov r2, 0x80
    // NOTE: armips syntax, pc relative add or ldr if not 4 byte aligned
    add r1, =url
    ldr r0, [sp,#0x120]
    blx memcpy
    // enable overriding the default URL
    mov r0, #1
    ldr r1, [sp,#0x20]
    strb r0, [r1,#0xa]
    b url_patch_continue

// NOTE: needed a large enough section of unused code to fit the url
.org url
.pool
.area 0x80
    .ascii custom_url,0
.endarea

.org verify_patch_start
    // set response data size
    ldr r1, [sp,#0x54]
    str r0, [r1,#0x58]
    b verify_patch_continue

.close

