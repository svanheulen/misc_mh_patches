.3ds

.open "code.bin", "patched_code.bin", 0x100000

.include settings_file

.org url_patch_start
    // copy URL
    mov r2, #0x80
    adr r1, url
    add r0, r4, #0x620
    bl memcpy
    // enable overriding the default URL
    mov r0, #1
    strb r0, [r4,#0x8a]
    // mark authentication as complete
    strb r0, [r4,#0x81]
    b url_patch_continue
.pool
url:
.area 0x80
    .ascii custom_url,0
.endarea

.org verify_patch_start
    // set response data size
    str r0, [r5,#0x7d8]
    b verify_patch_continue

.close

