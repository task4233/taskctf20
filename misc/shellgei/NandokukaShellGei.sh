#!/bin/sh

# 難読化シェル芸ツール ver 0.2
# 2016.12.16 kanata

IFS='	
'

LIST=$(echo $1 $2 $3 $4 $5 $6 $7 $8 $9 |grep -o .)

for CHAR in ${LIST}
do
	tac $0|head -95|grep "^${CHAR}"
done

echo 

for CHAR in ${LIST}
do
	WORK=$(tac $0|head -95|grep "^${CHAR}"|cut -f 2-)
	if [ "${CHAR}" = "|" ]
	then
		printf "|"
	else
		printf '$('"%s"')' "$WORK"
	fi
done
echo

exit 0

!	echo IQ==|base64 -d
"	echo Ig==|base64 -d
#	echo Iw==|base64 -d
$	echo JA==|base64 -d
%	echo JQ==|base64 -d
&	echo Jg==|base64 -d
'	echo Jw==|base64 -d
(	echo KA==|base64 -d
)	echo KQ==|base64 -d
*	echo Kg==|base64 -d
+	echo Kw==|base64 -d
,	echo LA==|base64 -d
-	echo -n|md5sum|cut -c35
.	xxd /bin/ls|head -1|cut -c60
/	pwd|cut -c1
	ls --help|grep ^G|cut -c66
0	xxd /bin/ls|head -1|cut -c1
1	date '+%s'|cut -c1
2	xxd /bin/ls|head -1|cut -d: -f2|cut -c13
3	echo|md5sum|cut -c4
4	date '+%s'|cut -c2
5	xxd /bin/ls|head -1|cut -d: -f2|cut -c5
6	xxd /bin/ls|head -1|cut -d: -f2|cut -c10
7	xxd /bin/ls|head -1|cut -d: -f2|cut -c7
8	echo -n|md5sum|cut -c5
9	echo -n|md5sum|cut -c8
:	xxd /bin/ls|head -1|tr -d 0-9|cut -c1
;	echo Ow==|base64 -d
<	ls --help|grep ^G|cut -c28
=	echo PQ==|base64 -d
>	ls --help|grep ^G|cut -c67
?	echo Pw==|base64 -d
@	echo QA==|base64 -d
A	ls --help|grep ^G|cut -c53|tr a-z A-Z
B	echo -n|md5sum|cut -c13|tr a-z A-Z
C	ls --help|grep ^G|cut -c5|tr a-z A-Z
D	echo -n|md5sum|cut -c7|tr a-z A-Z
E	xxd /bin/ls|head -1|cut -d: -f2|cut -c44
F	xxd /bin/ls|head -1|cut -d: -f2|cut -c46
G	ls --help|grep ^G|cut -c1
H	ls --help|grep ^G|cut -c22|tr a-z A-Z
I	ls --help|grep ^G|cut -c11|tr a-z A-Z
J	printf "%b" $(printf '%s%x' '\x' $((0x77 ^ 0x1d)))|tr a-z A-Z
K	printf "%b" $(printf '%s%x' '\x' $((0x77 ^ 0x1c)))|tr a-z A-Z
L	xxd /bin/ls|head -1|cut -d: -f2|cut -c45
M	printf "%b" $(printf '%s%x' '\x' $((0x77 ^ 0x3a)))
N	ls --help|grep ^G|cut -c2
O	ls --help|grep ^G|cut -c6|tr a-z A-Z
P	ls --help|grep ^G|cut -c32|tr a-z A-Z
Q	printf "%b" $(printf '%s%x' '\x' $((0x77 ^ 0x26)))
R	ls --help|grep ^G|cut -c7|tr a-z A-Z
S	ls --help|grep ^G|cut -c13|tr a-z A-Z
T	ls --help|grep ^G|cut -c10|tr a-z A-Z
U	ls --help|grep ^G|cut -c3
V	printf "%b" $(printf '%s%x' '\x' $((0x15 ^ 0x63)))|tr a-z A-Z
W	ls --help|grep ^G|cut -c36|tr a-z A-Z
X	printf "%b" $(printf '%s%x' '\x' $((0x77 ^ 0x2f)))
Y	yes|head -1|tr a-z A-Z
Z	printf "%b" $(printf '%s%x' '\x' $((0x77 ^ 0x2d)))
[	echo Ww==|base64 -d
\	echo XA==|base64 -d
]	echo XQ==|base64 -d
^	echo Xg==|base64 -d
 	xxd /bin/ls|head -1|cut -d: -f2|cut -c1
	printf "\t"
`	echo YA==|base64 -d
a	ls --help|grep ^G|cut -c53
b	echo -n|md5sum|cut -c13
c	ls --help|grep ^G|cut -c5
d	echo -n|md5sum|cut -c1
e	ls --help|grep ^G|cut -c8
f	ls --help|grep ^G|cut -c50
g	ls --help|grep ^G|cut -c40
h	ls --help|grep ^G|cut -c22
i	ls --help|grep ^G|cut -c11
j	printf "%b" $(printf '%s%x' '\x' $((0x77 ^ 0x1d)))
k	printf "%b" $(printf '%s%x' '\x' $((0x77 ^ 0x1c)))
l	ls --help|grep ^G|cut -c12
m	printf "%b" $(printf '%s%x' '\x' $((0x77 ^ 0x3a)))|tr A-Z a-z
n	ls --help|grep ^G|cut -c16
o	ls --help|grep ^G|cut -c6
p	ls --help|grep ^G|cut -c32
q	printf "%b" $(printf '%s%x' '\x' $((0x77 ^ 0x26)))|tr A-Z a-z
r	ls --help|grep ^G|cut -c7
s	ls --help|grep ^G|cut -c13
t	ls --help|grep ^G|cut -c10
u	ls --help|grep ^G|cut -c9
v	printf "%b" $(printf '%s%x' '\x' $((0x15 ^ 0x63)))
w	ls --help|grep ^G|cut -c36
x	printf "%b" $(printf '%s%x' '\x' $((0x77 ^ 0x2f)))|tr A-Z a-z
y	yes|head -1
z	printf "%b" $(printf '%s%x' '\x' $((0x77 ^ 0x2d)))|tr A-Z a-z
{	printf "%b" $(printf '%s%x' '\x' $((0x22 ^ 0x59)))
|	|
}	printf "%b" $(printf '%s%x' '\x' $((0x22 ^ 0x5f)))
