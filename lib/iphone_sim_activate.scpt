FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
Script to wait until the iPhone Simulator is responding to AppleScript,
and then tell it to activate (come to the foreground).

We don't just want to activate it without first waiting to see if it is
running, because another script has already launched it, so if we
just did an activate now, we could end up with two instances of
the iPhone Simulator.

Xcode 6 Usage: osascript iphone_sim_activate.scpt "iOS Simulator" "Disabled"
Xcode 6 Usage: osascript iphone_sim_activate.scpt "iOS Simulator" "Apple Watch - 38mm"
Xcode 6 Usage: osascript iphone_sim_activate.scpt "iOS Simulator" "Apple Watch - 42mm"
Xcode 7 Usage: osascript iphone_sim_activate.scpt "Simulator"
     � 	 	6 
 S c r i p t   t o   w a i t   u n t i l   t h e   i P h o n e   S i m u l a t o r   i s   r e s p o n d i n g   t o   A p p l e S c r i p t , 
 a n d   t h e n   t e l l   i t   t o   a c t i v a t e   ( c o m e   t o   t h e   f o r e g r o u n d ) . 
 
 W e   d o n ' t   j u s t   w a n t   t o   a c t i v a t e   i t   w i t h o u t   f i r s t   w a i t i n g   t o   s e e   i f   i t   i s 
 r u n n i n g ,   b e c a u s e   a n o t h e r   s c r i p t   h a s   a l r e a d y   l a u n c h e d   i t ,   s o   i f   w e 
 j u s t   d i d   a n   a c t i v a t e   n o w ,   w e   c o u l d   e n d   u p   w i t h   t w o   i n s t a n c e s   o f 
 t h e   i P h o n e   S i m u l a t o r . 
 
 X c o d e   6   U s a g e :   o s a s c r i p t   i p h o n e _ s i m _ a c t i v a t e . s c p t   " i O S   S i m u l a t o r "   " D i s a b l e d " 
 X c o d e   6   U s a g e :   o s a s c r i p t   i p h o n e _ s i m _ a c t i v a t e . s c p t   " i O S   S i m u l a t o r "   " A p p l e   W a t c h   -   3 8 m m " 
 X c o d e   6   U s a g e :   o s a s c r i p t   i p h o n e _ s i m _ a c t i v a t e . s c p t   " i O S   S i m u l a t o r "   " A p p l e   W a t c h   -   4 2 m m " 
 X c o d e   7   U s a g e :   o s a s c r i p t   i p h o n e _ s i m _ a c t i v a t e . s c p t   " S i m u l a t o r " 
   
  
 l     ��������  ��  ��        i         I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 argv  ��    Z     �  ����  ?        l     ����  I    �� ��
�� .corecnte****       ****  o     ���� 0 argv  ��  ��  ��    m    ����    k   
 �       r   
     n   
     4    �� 
�� 
cobj  m    ����   o   
 ���� 0 argv    o      ���� 0 	simulator         l    ! " # ! r     $ % $ m    ����  % o      ���� 0 max_wait_time   "  	- seconds    # � & &  -   s e c o n d s    ' ( ' l    ) * + ) r     , - , m     . . ?�z�G�{ - o      ���� 0 
delay_time   *  	- seconds    + � / /  -   s e c o n d s (  0 1 0 r     2 3 2 ^     4 5 4 o    ���� 0 max_wait_time   5 o    ���� 0 
delay_time   3 o      ���� 0 repeat_count   1  6 7 6 l   ��������  ��  ��   7  8 9 8 l   �� : ;��   : - ' try to see if the simulator is running    ; � < < N   t r y   t o   s e e   i f   t h e   s i m u l a t o r   i s   r u n n i n g 9  =�� = U    � > ? > k   & � @ @  A B A Z   & � C D���� C =  & . E F E n   & , G H G 1   * ,��
�� 
prun H 4   & *�� I
�� 
capp I o   ( )���� 0 	simulator   F m   , -��
�� boovtrue D k   1 � J J  K L K O   1 � M N M k   8 � O O  P Q P l  8 8�� R S��   R !  focus the simulator window    S � T T 6   f o c u s   t h e   s i m u l a t o r   w i n d o w Q  U V U I  8 =������
�� .miscactvnull��� ��� null��  ��   V  W X W l  > >��������  ��  ��   X  Y Z Y l  > >�� [ \��   [ J D if they specified a 2nd arg, then this must be the external display    \ � ] ] �   i f   t h e y   s p e c i f i e d   a   2 n d   a r g ,   t h e n   t h i s   m u s t   b e   t h e   e x t e r n a l   d i s p l a y Z  ^ _ ^ l  > >�� ` a��   ` G A this should only be passed in if it's an Xcode 6.x iOS Simulator    a � b b �   t h i s   s h o u l d   o n l y   b e   p a s s e d   i n   i f   i t ' s   a n   X c o d e   6 . x   i O S   S i m u l a t o r _  c�� c Z   > � d e���� d ?  > E f g f l  > C h���� h I  > C�� i��
�� .corecnte****       **** i o   > ?���� 0 argv  ��  ��  ��   g m   C D����  e k   H � j j  k l k r   H N m n m n   H L o p o 4   I L�� q
�� 
cobj q m   J K����  p o   H I���� 0 argv   n o      ���� 0 ext_display   l  r�� r O   O � s t s O   S � u v u O   Z � w x w O   a � y z y O   j � { | { O   u � } ~ } O   � �  �  I  � ��� ���
�� .prcsclicnull��� ��� uiel � 4   � ��� �
�� 
menI � o   � ����� 0 ext_display  ��   � 4   � ��� �
�� 
menE � m   � � � � � � � " E x t e r n a l   D i s p l a y s ~ 4   u }�� �
�� 
menI � m   y | � � � � � " E x t e r n a l   D i s p l a y s | 4   j r�� �
�� 
menE � m   n q � � � � �  H a r d w a r e z 4   a g�� �
�� 
mbri � m   c f � � � � �  H a r d w a r e x 4   Z ^�� �
�� 
mbar � m   \ ]����  v 4   S W�� �
�� 
prcs � o   U V���� 0 	simulator   t m   O P � ��                                                                                  sevs  alis    �  Macintosh HD               �(2H+  �2?System Events.app                                              �L[�4�-        ����  	                CoreServices    �(��      �5"�    �2?�23�22  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��  ��  ��   N 4   1 5�� �
�� 
capp � o   3 4���� 0 	simulator   L  ��� �  S   � ���  ��  ��   B  � � � l  � ���������  ��  ��   �  ��� � I  � ��� ���
�� .sysodelanull��� ��� nmbr � o   � ����� 0 
delay_time  ��  ��   ? o   " #���� 0 repeat_count  ��  ��  ��     ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ���� � ���
�� .aevtoappnull  �   � ****�� 0 argv  ��   � ���� 0 argv   � ���������� .������������ ������� ��� ��� � �����
�� .corecnte****       ****
�� 
cobj�� 0 	simulator  �� �� 0 max_wait_time  �� 0 
delay_time  �� 0 repeat_count  
�� 
capp
�� 
prun
�� .miscactvnull��� ��� null�� 0 ext_display  
�� 
prcs
�� 
mbar
�� 
mbri
�� 
menE
�� 
menI
�� .prcsclicnull��� ��� uiel
�� .sysodelanull��� ��� nmbr�� ��j  j ���k/E�O�E�O�E�O��!E�O ��kh*��/�,e  w*��/ j*j 
O�j  k Y��l/E�O� J*��/ B*�k/ :*�a / 0*a a / $*a a / *a a / *a �/j UUUUUUUY hUOY hO�j [OY�uY h ascr  ��ޭ