   10 int mr,ml,mx,my,st,px,py,pk,pb,ix,pix,piy,si,pp,pka,tem
   20 dim str s(8)[227],md(10)[120]:dim char a(255),at(132):dim int y(0)
   30 int q,e,r,t,n,m,h1,h2,h3,h4,no:str z[64],x="PONOMU.DAT",c="wait",v="&h"
   40 sp=1/*←ＸＶＩの方は　ＳＰ＝０　にして下さい。
   50 screen 1,2,1,1:sp_init():color 7/*:kouka()
   60 error off:if fopen(x,"r")=-1 then kaitou() else d_load()
   70 locate 28,15:print c:title1():cls:m_data():title2():mein():end
   80 /*＝＝＝＝＝＝＝＝＝＝＝＝＝＝メイン＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
   90 func mein():m_sta():while 2
  100 yaji():h1=(mx-32)/16+((my-32)/16)*12:px=pix/16:py=piy/16
  110 if at(h1)=10 and mr=-1 and pb=0 then at(h1)=0:m_play(2):b_put(h1,0):pb=pb+1:atai(2)
  120 if at(h1)=0 and ml=-1 and pb=1 then at(h1)=2:m_play(3):b_put(h1,2):pb=pb-1:atai(2)
  130 h1=pix/16+((piy+15)/16)*12:h2=(pix+15)/16+((piy+15)/16)*12
  140 h3=pix/16+((piy+17+2*sp)/16)*12:h4=(pix+15)/16+((piy+17+2*sp)/16)*12
  150 h6=pix/16+((piy-2-2*sp)/16)*12
  160 if at(h1)=3 and at(h2)=3 and at(h6)<>2 and at(h6)<>10 and piy>0 then piy=piy-2-2*sp:no=1 else no=0
  170 if at(h1)=2 and at(h2)=2 and piy>0 and no=0 then piy=piy-2-2*sp:no=1
  180 if at(h1)=10 and at(h2)=10 and piy>0 and no=0 then piy=piy-2-2*sp:no=1
  190 if at(h3)=0 and at(h4)=0 and no=0 then se=se+2+2*sp:piy=piy+2+2*sp:no=1:ot=1 else ot=0
  200 if at(h3)=4 and at(h4)=4 and no=0 then se=se+2+2*sp:piy=piy+2+2*sp:no=1:ot=1
  210 if at(h3)=1 and at(h4)=1 and no=0 then se=se+2+2*sp:piy=piy+2+2*sp:no=1:ot=1
  220 if at(h1)=4 and at(h2)=4 and pk=-1 then st=st+1:m_sta()
  230 if (at(h1)=1 and at(h2)=1) then m_play(1):pk=pk-1:at(h1)=0:b_put(h1,0):atai(3)
  240 if ml=-1 and mr=-1 then m_sta()
  250 if se>48 then si=1
  260 h1=(pix+ix+(ix>0)*(-15))/16+(piy/16)*12/*+sp
  270 if (pix=176 or pix=0 or at(h1)=2 or at(h1)=10) and no=0 then ix=ix*-1
  280 if tem=2+sp*-1 then tem=0:pka=pka+1 and 1 else tem=tem+1
  290 if no=0 then pix=pix+ix:se=0:if si=1 then m_sta()
  300 sp_set(1,pix+48,piy+48,pa_da(ix,si,pp+pka+(no<>ot)*-2),3)
  310 if pk=0 then sp_color(15,0,1):sp_color(14,0,1):pk=-1
  320 endwhile:endfunc
  330 /*＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝でーた＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
  340 func kaitou():print "解凍中です！":error on
  350 s(0)="0z7988890z998777890z798778z390z5987780098890z4877780008780z4877789"
  360 s(0)=s(0)+"008780z487z38887780z4987z6890z5987z48900090098987778900098098"
  370 s(0)=s(0)+"90988890z489890zb9890zb9890zb9890zc990zd"
  380 s(1)="0233za20234z6655563234z665z46334z65z634z75z64z85z64z865z464z965556"
  390 s(1)=s(1)+"4z3655564z965z464z85z64z85z64z735z64z63365z464z6323655564z632"
  400 s(1)=s(1)+"02334z73320"
  410 s(2)="97890z7978997890z797899789z978997897z7978997898z797899789z97899789"
  420 s(2)=s(2)+"0z7978997890z79789":s(2)=s(2)+s(2)
  430 s(3)="99909z709z37797z7978997z38z5777890977889z3887790977889fz3988789978"
  440 s(3)=s(3)+"89eeffee98789":s(4)="9789eeeffeee9789":s(5)="9789fefz3ef9789"
  450 s(3)=s(3)+s(4)+s(4)+s(4)+s(5)+"9789fz79789"+s(5)+s(4)+s(4)+s(4)
  460 s(3)=s(3)+"09zd0"
  470 s(4)="0110zc144110za1344410001110z312344411144410z312344414z410z31233414"
  480 s(4)=s(4)+"z4310z31123134314310z512313214310z4141112214310z4143311144310"
  490 s(4)=s(4)+"z4111221444310z41431144434310z31122134343210z3141112323210z41"
  500 s(4)=s(4)+"3221112210z611100011000"
  510 s(5)="0zf0z4cbbbc0z8cbaz4bc0z5cbaz41a1c0z4baz511a10z3caz71a1bb00baacaz8b"
  520 s(5)=s(5)+"c0bacbaz8bcddacbbaz5bbbcdcdaccbz5ccc0dddaaacz5abdz3baz8bcdd00"
  530 s(5)=s(5)+"cbaz6bc0z5dz3az3bc0z4dccdddbbbddd0z3dzb00"
  540 s(6)="0zf0z4cbbbc0z8cbaz4bc0z5cbaz51a10z4baz71b0z3cbaz71a1b00baz3caz7c0b"
  550 s(6)=s(6)+"aaacbaz7c0bddacbaz6bd0dccdacbz6c00ddcdaacz60z3bddaz6bc0z3dbaz"
  560 s(6)=s(6)+"6bc0z3dccdbaz3bcddd0dccdddbabccdza0z3dz5"
  570 s(7)="0zf0z5cbbc0z9cbaz3bc0z6cbaz5bc0z4cbaz7bc00ddbaz9b00dcdaz9b00dcdaz9"
  580 s(7)=s(7)+"dd00ddaz6caadcd00baz5cacadcd00baz6bcabdz3cbaz4bcabc00dcdcbaaa"
  590 s(7)=s(7)+"bcabc000dccdcbaz3bcddd00dccddcbbcddcccd00dz30z3dz5"
  600 s(8)="0zf0z5cbbc0z9cbaz3bc0z6cbaz5bc0z4cbaz7bc0z3baz9bdd00baz9dcd0ddaz9d"
  610 s(8)=s(8)+"cddcdaacaz6dd0dcdacacaz5b00ddbacbaz6b0z3cbacbaz4bcdd000cbacba"
  620 s(8)=s(8)+"aabcdcd0dddcbaz3bcdccddcccddcbbcddccd0dz50z3dz300"
  630 z="000008426318bdeefffe39fe2136af5a868c550687e066d84d922bca9f9e6e8c"
  640 t=fopen(x,"c"):for q=0 to 15:y(0)=val(v+mid$(z,q*4+1,4)):palet(q,y(0))
  650 sp_color(q,y(0),1):fwrite(y,1,t):next:print c;
  660 for q=0 to 8:w=0:e=0:m=0:n=0:print ".";:repeat:z=mid$(s(q),w+1,1)
  670 if z="z" then z=mid$(s(q),w,1):r=val(v+mid$(s(q),w+2,1)):w=w+1 else r=1
  680 for i=1 to r:a(e)=val(v+z):e=e+1:next:w=w+1:until e=256:sp_def(q+1,a)
  690 fwrite(a,256,t):next:sp_pat(2,a,1):for q=0 to 255
  700 if a(q)=5 then a(q)=11 else if a(q)=6 then a(q)=12
  710 next:fwrite(a,256,t):sp_def(10,a):fclose(t):endfunc
  720 func m_data()
  730 md(0)="57110zb0zeaz40z3aaa0z4az40z9a0zba0z53004az430001aaa0z3az40ze"
  740 md(1)="38110zf0aaa2230za30za30z720030za30z6100030z6240030za302zaa"
  750 md(2)="b821a10z9222aa2z330za30za30z520z330za30z510z330z52400030za3002zb"
  760 md(3)="08200za4a3a0z632130z730a30z730a30z730030z730030z730030z723030z7132zb"
  770 md(4)="502040z9220002230z332000200aaa03200020z53200020z53200020z53200020"
  780 md(4)=md(4)+"aaa023200020aaa01310z8a302z7003"
  790 md(5)="54100z440z73a222a0z53200020z532320a0z5323020z63a22a000302030z5130"
  800 md(5)=md(5)+"030z730030z730030z730"
  810 md(6)="b7110zd3az700030za32220z730za3000220z530z52210030za20z6a240za"
  820 md(7)="60400z610z5130220z730za30010z72z40zfa0zf0zf104000aa3aaa2aa"
  830 md(8)="b0210z510z6222a23000a0z630z420z430z8a030z930za30za202a0zf0z410004"
  840 md(9)="08300za10az400303200aa2a0030030za30010z7303a0z730za30za3030z83aa4122202z3"
  850 endfunc
  860 func kouka():for q=1 to 8:m_alloc(q,3000):m_assign(q,q):next:m_init()
  870 m_trk(1,"@52l64o6t200v15cdf4"):m_trk(3,"@48o6t200l64v15c4")
  880 m_trk(2,"@48o6v15l64t200e4")
  890 endfunc
  900 /*＝＝＝＝＝＝＝＝＝＝＝＝＝たいとる＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
  910 func title1():vpage(0):apage(1):kaku(50,26,9,6):kaku(306,26,9,7)
  920 kaku(334,345,4,6):symbol(326,410,c,2,1,2,4,0)
  930 for q=0 to 15:fill(16+q,271+q,239-q,463-q,20+q):next:st=0:apage(0)
  940 for q=0 to 3:symbol(30+q,170,"ＰＯＮＯＭＵ",2,3,1,4,0)
  950 symbol(60+q,220,"1992 K.AOKI",1,1,2,4,0):next:for q=0 to 15
  960 palet(20+q,rgb(26-q,18-q,16-q)):palet(35-q,rgb(26-q,18-q,16-q)):next
  970 kaku(256,0,16,10):img_scrn(0,2,1):endfunc
  980 func title2():vpage(3):msarea(32,32,223,191):mouse(4):mouse(2):sp_disp(1)
  990 sp_off():sp_on(0):e=0:repeat:yaji():e=e+1
 1000 if e=50+sp*-25 then q=q+1 and 1:home(1,256*q,0):e=0
 1010 until ml=-1:vpage(0):endfunc
 1020 func eing():sp_off():vpage(2):home(1,256,256):cls:apage(0):kaku(0,0,16,2)
 1030 locate 0,1:print "ぽのむは､これからも歩き続けます　　　　　おしまい"
 1040 vpage(3):while 1:st=st+1:if st=50 then q=q+1 and 1:home(1,256*q,500):st=0
 1050 e=e+1:home(0,e,330):if e=511 then e=-1
 1060 endwhile:endfunc
 1070 /*＝＝＝＝＝＝＝＝＝＝＝＝さぶるーちん＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
 1080 func kaku(kx,ky,kb,kp)
 1090 int e,q,w:sp_pat(kp,a,1):e=0:for q=0 to 15:for w=0 to 15
 1100 fill(kx+w*kb,ky+q*kb,kx+w*kb+kb,ky+q*kb+kb,a(e)):e=e+1:next:next:endfunc
 1110 func d_load():error on:t=fopen(x,"r"):for q=0 to 15:fread(y,1,t)
 1120 sp_color(q,y(0),1):palet(q,y(0)):next:for q=0 to 9:fread(a,256,t)
 1130 sp_def(q+1,a):next:fclose(t):endfunc
 1140 func yaji():msstat(mx,my,ml,mr):mspos(mx,my):sp_move(0,mx,my,5):endfunc
 1150 func m_load():int w,e,m,n,r:vpage(2):home(1,256,256):bg_set(0,0,0)
 1160 if st=10 then eing()
 1170 px=mid(1):py=mid(2):pk=mid(3):ix=mid(4):sp_off(1)
 1180 if ix=0 then ix=-1
 1190 sp_color(15,28300,1):sp_color(14,40862,1):repeat:z=mid$(md(st),w+5,1)
 1200 if z="z" then z=mid$(md(st),w+4,1):r=val(v+mid$(md(st),w+6,1)):w=w+1 else r=1
 1210 for i=1 to r:at(e)=val(v+z):b_put(e,at(e))
 1220 e=e+1:next:w=w+1:until e=120:for q=120 to 132:at(q)=10:next
 1230 home(1,0,256):bg_set(0,0,1):endfunc
 1240 func b_put(bk,bp):int q,w:for q=0 to 1:for w=0 to 1:yaji()
 1250 bg_put(0,4+q+(bk mod 12)*2,4+w+(int(bk/12))*2,256+bp*4+q*2+w):next:next:endfunc
 1260 func hyo(k):print right$("0"+str$(k),2):endfunc
 1270 func atai(k):switch k:case 3:locate 24,14:print "KEY:";:hyo(pk)
 1280 case 2:locate 13,14:print "BLOCK:";:hyo(pb)
 1290 case 1:locate 2,14:print "STAGE:";:hyo(st):endswitch:endfunc
 1300 func m_sta():cls:m_load():atai(3):ix=2*ix+sp*2*ix:pix=px*16
 1310 piy=py*16:pp=6:si=0:se=0:pb=0:endfunc
 1320 func pa_da(h,j,k):if h<0 then h=1 else h=0
 1330 return(32768*j+16384*h+256+k):endfunc
 1340 func mid(k):return(val(v+mid$(md(st),k,1))):endfunc
 1350 /*********************************************************************
 1360 /*                         お疲れさまでした。                         *
 1370 /*                  Copyright (c) Kentaro Aoki                      *
 1380 /*********************************************************************