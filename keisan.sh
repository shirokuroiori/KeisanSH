#!/bin/bash

#-----------#
# お遊びsh  #
#-----------#
stat="0"
clear
echo "★★★★★★★★★★★★★★★★★★★★★★★★★★★"
echo "★                                                  ★"
echo "★                     計算ドリル                   ★"
echo "★                                                  ★"
echo "★                   作：shirokuro                  ★"
echo "★                                                  ★"
echo "★                                                  ★"
echo "★                                                  ★"
echo "★                                                  ★"
echo "★                 難問チャレンジしますか？         ★"
echo "★                 お題数を入力してください。       ★"
echo "★                                                  ★"
echo "★                                                  ★"
echo "★                                                  ★"
echo "★                                                  ★"
echo "★★★★★★★★★★★★★★★★★★★★★★★★★★★"
read DAISU

COUNT=1
SEIKAI=0
HUSEI=0

while [ ${DAISU} -ge ${COUNT} ]
do
clear
echo "★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★"
echo "★                                                   ★"
echo "★                     計算ドリル                    ★"
echo "★                                                   ★"
echo "★                   作：shirokuro                   ★"
echo "★                                                   ★"
echo "★                                                   ★"
echo "★                                                   ★"
echo "★                                                   ★"
echo "★                 さあ、計算の時間ですよ            ★"
echo "★                 ${COUNT}  / ${DAISU} 問                         ★"
echo "★                                                   ★"
echo "★                                                   ★"
echo "★                                                   ★"
echo "★                                                   ★"
echo "★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★"
echo ""
echo ""
echo ""
echo ""
A=$((RANDOM%+11))
B=$((RANDOM%+11))
C=$((RANDOM%+2))

case ${C} in
  0 )
    HUGO="+";;
  1 )
    HUGO="-";;
esac

TANS=`expr ${A} ${HUGO} ${B}`

echo "${A} ${HUGO} ${B} = "
read MANS

if [ ${TANS} -eq ${MANS} ];
then
  echo "正解！"
  SEIKAI=`expr ${SEIKAI} + 1`
else
  echo "不正解・・・"
  HUSEI=`expr ${HUSEI} + 1`
fi
echo "-----<Please Enter>-----"
read

COUNT=`expr ${COUNT} + 1`

done
clear
echo "★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★"
echo "★                                                   ★"
echo "★                     計算ドリル                    ★"
echo "★                                                   ★"
echo "★                   作：shirokuro                   ★"
echo "★                                                   ★"
echo "★                                                   ★"
echo "★                                                   ★"
echo "★                                                   ★"
echo "★                 結果発表ぉぉぉぉぉ！！！          ★"
echo "★                                                   ★"
echo "★                 正解  ： ${SEIKAI}                        ★"
echo "★                 不正解： ${HUSEI}                        ★"
echo "★                                                   ★"
echo "★                                                   ★"
echo "★                                                   ★"
echo "★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★"
