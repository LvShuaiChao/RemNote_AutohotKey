

#SingleInstance Ignore			;;执行程序前先关闭程序
#Persistent

#InstallKeybdHook

/::
if key_presses_slash = 1 ;
{
    SetTimer, KeyPressTimer, off
    send,{BackSpace}
    Send,{Text}`/`/
    key_presses_slash = 0
    return
}
suspend     ;暂停其他快捷键
key_presses_slash = 1
send,/
suspend     ;再重新启用其他快捷键
SetTimer, KeyPressTimer, 400 ; 在 400 毫秒内等待更多的键击.

return


SC01A::
if key_presses_SC01A = 1 ;
{
    SetTimer, KeyPressTimer, off
    send,{BackSpace}
    Send,{Text}`[`[
    key_presses_SC01A = 0
    return
}
suspend     ;暂停其他快捷键
key_presses_SC01A = 1
send,[
suspend     ;再重新启用其他快捷键
SetTimer, KeyPressTimer, 400 ; 在 400 毫秒内等待更多的键击.

return



<+1::
if key_presses_shift1 = 1 ;
{
    SetTimer, KeyPressTimer, off
    send,{BackSpace}
    Send,{Text}`!`!
    key_presses_shift1 = 0
    return
}


key_presses_shift1 = 1
send,+1

SetTimer, KeyPressTimer, 400 ; 在 400 毫秒内等待更多的键击.

return



<+3::
if key_presses_shift3 = 1 ;
{
    SetTimer, KeyPressTimer, off
    send,{BackSpace}
    Send,{Text}`#`#
    key_presses_shift3 = 0
    return
}

key_presses_shift3 = 1
SetTimer, KeyPressTimer, 400 ; 在 400 毫秒内等待更多的键击.
send,+3
return



<+4::
if key_presses_shift4 = 1 ;
{
    SetTimer, KeyPressTimer, off
    send,{BackSpace}
    Send,{Text}`$`$
    key_presses_shift4 = 0
    return
}

key_presses_shift4 = 1
SetTimer, KeyPressTimer, 400 ; 在 400 毫秒内等待更多的键击.
send,+4
return



<+5::
if key_presses_shift5 = 1 ;
{
    SetTimer, KeyPressTimer, off
    send,{BackSpace}
    Send,{Text}`%`%
    key_presses_shift5 = 0
    return
}

key_presses_shift5 = 1
SetTimer, KeyPressTimer, 400 ; 在 400 毫秒内等待更多的键击.
send,+5
return






KeyPressTimer:

SetTimer, KeyPressTimer, off


if key_presses_slash = 2 ; 此键按下了一次.
{
    Send,{Text}`/`/
}

if key_presses_SC01A = 2 ; 此键按下了一次.
{
    Send,{Text}`[`[
}

if key_presses_shift1 = 2 ; 此键按下了一次.
{
    Send,{Text}`!`!
}


if key_presses_shift3 = 2 ; 此键按下了一次.
{
    Send,{Text}`#`#
}


if key_presses_shift4 = 2 ; 此键按下了一次.
{
    Send,{Text}`$`$
}


if key_presses_shift5 = 2 ; 此键按下了一次.
{
    Send,{Text}`%`%
}

key_presses_SC01A = 0
key_presses_slash = 0
key_presses_shift1 = 0
key_presses_shift3 = 0
key_presses_shift4 = 0
key_presses_shift5 = 0
return





