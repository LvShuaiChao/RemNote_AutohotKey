#SingleInstance Ignore			;;ִ�г���ǰ�ȹرճ���
#Persistent


[::
if key_presses_�������� = 1 ; 
{
    SetTimer, KeyPressTimer, off
    send,{BackSpace}
    Send,{Text}`[`[
    key_presses_�������� = 0
    return
}
suspend     ;��ͣ������ݼ�
key_presses_�������� = 1
send,[
suspend     ;����������������ݼ�
SetTimer, KeyPressTimer, 400 ; �� 400 �����ڵȴ�����ļ���.

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

SetTimer, KeyPressTimer, 400 ; �� 400 �����ڵȴ�����ļ���.

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
SetTimer, KeyPressTimer, 400 ; �� 400 �����ڵȴ�����ļ���.
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
SetTimer, KeyPressTimer, 400 ; �� 400 �����ڵȴ�����ļ���.
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
SetTimer, KeyPressTimer, 400 ; �� 400 �����ڵȴ�����ļ���.
send,+5
return






KeyPressTimer:

SetTimer, KeyPressTimer, off

if key_presses_�������� = 2 ; �˼�������һ��.
{
    Send,{Text}`[`[
}



if key_presses_shift1 = 2 ; �˼�������һ��.
{
    Send,{Text}`!`!
}


if key_presses_shift3 = 2 ; �˼�������һ��.
{
    Send,{Text}`#`#
}


if key_presses_shift4 = 2 ; �˼�������һ��.
{
    Send,{Text}`$`$
}


if key_presses_shift5 = 2 ; �˼�������һ��.
{
    Send,{Text}`%`%
}

key_presses_�������� = 0
key_presses_�������� = 0
key_presses_shift1 = 0
key_presses_shift3 = 0
key_presses_shift4 = 0
key_presses_shift5 = 0
return





