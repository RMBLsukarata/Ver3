#!/bin/bash
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo MAU DIBONGKAR YA BANG ? IZIN DULU KE @tau_samawa $0; exit 1
fi; exit $res
BZh91AY&SYw�MG ?��~������������pD@ `�礸�����ٶ��^�`��w�:���Uv�h[v	$B�Cҧ�iOi	�?E6ښ��{S<S��L��Ԟ�e=MCCL$��`�J~�e��CCɨѦ�P2=M��h� S��@d 4  4       �R"?)�O(ڏS�?Q��j=�z��=4���� � �� @���� @ �� @ 	#D�F�22h���F�S�L�2!��m�44hhɐ AU��u�7�gw�uK�1��hvC<<�kH�@�}퇙���a~6x���z�U�t��j%
��:�9�(�p�e����8��x��!\�Tk����+�m�]��M��m�T(�Q��X��au�Т���J�b�NC��UU[j�6�,o��Xx9y6�� f.�ڹ����[�Z&@�O͟"=��H� �4�\ST{�}f7w�����e�Q&u��i%LJ��wk��*쓝�h��qՉ=�Sky ��ݑ�E�A0	�u�e��ie�8IR�p���;���D�:�)�p_��#E�%�'�
�2���˓�Xx���t���kw�������um3|^M.	�?D^�LK�Z�z�P��p��X��iXh��S�T�X��p�#U�zh���-��)y �=��+��_SJ��惯���K���ϡ�s3�͊�6����}7,�v�̷y��o�^]	P�,�F<ҭ��p�:( &@�F.����"��A�Ĥ��VM�Q���1�N�N
֘6>Z	ÜP|�PP��jĤD�m���c
��ė��P}���[��;RF@�ٷߞ~#��φ������S�3�i���I�
j���;[N垬���f[�������y���ek�ر我{U�0�q��Wm�3��9�R�U��:iv2�:dcit��.��_������, �Ç��\�����i�;����=��"{G�d�iJ�V1X� i� W��O��^����ջ�'k�]s���'5�v����D�c�0�$��L@6�sN�ZN�˱	1&`d)�yAٓ��>5���W�0���w$B�`��B��@�h��)�j�aԦ)���b�ӬP���6�����]꜉��uU��+�b��L�rzC#�Z�[���Ƕ�.���<�p�+�G�Æ�>�o���rq;��\����։�N嵬�1"t�p����)�.��ޑ@�����O^I/��}d�JUx<j*�Včx�����UG��^(�\����]u�D��:HѶ_d3,�{�Pd�tF�"(-.TX��Ϟ�B��B������ǆ����� ����DDY�e09��o����L��r���.��\"�_�Qe(*��C�,�@�x����`���(uɍ7�ŵ�R'����I~0�aŪ��p��G�I�x];��8-o��9ZJ�@������+9K_�4���z2V w�5������|����ٷ��"s�/Ш��Yqa;���5��躚9:�9��Z�qA͛0�R0!��h�ZQtR�$d� 	���b3�8�V��<�1Q��AZ��q�ePU���y$g)ўχ��˕&4����Y�N�"n��Sj�dSv�UUUp�F>H��ʵur��WTa| ��G_�|^"�}��Z��=���o6��]~��ڟ�<۶������/{R���a�b$>�������Q�e�gS9Rޕ����z&�zo���~���M��n��@Y�q�P� ����%�=�%*Y�JD���|�_�6��B($�[�m��M����������/�0"��׿��Vq�������KZ�Gn�o`5��Z\t8���$`�F,3��q6�����)a�kuR�=9j��~nKfO��d"R�<��dT��%*Vk:x�-D�D����u�$�Ц8(#M��G��۱�	Dm��Ѐ��n���P��Ŋ�J55�'�A!Kx��t��
J�#d�B�1�4�)��6�J�7���f(��i�g��C�*�<����	�+�WY�<���}g�����V+BAϝ��۲�k��1.%#������f��T����[o�����;n��2�f�"��.��9o�z�d���z@��"g Q9��N&0T���&1���:�)~�փ)��Rۭ� `w3f^Ʌ�_��B���z�R�ttX�<;�A(SL<�5/-M-	lG:�I4�?�߷���>4�Q�n)�<� �`�1�
���� &��{��Ps��\�t�0!���������e�6�IUǦ!ޞ���n@�@���}�>=� �)sh�Nos�R�L��>�SM�(������V�\����)���KXd��8D!V\�`�M��(PH�cUҎa�<R�p���6��l0�gS;��%D�9��7��U8��RQ�H6e4��U҂�>�:�dƀs�,�+z�=0�H�1}�� �1d��B�\��ة}	�J�:������;����$]�Z޳a�Ck�W�ïi��1 ҵ"`�I�i�4C_#���TF� �
���D
�J�@���3�+mG2KF���
k��2�?Q�\؍	�^v��IN@|&�w�l
���)D�(��I*1X�d����Ķq��-���4rHK�@I	*����P�;U��Mp��^&�r�W��S�\���),]��b�K��T
`��i#��@"�J��Ę��+�I�c����]�A^%�����HvAH$�Q��h�������d��T�;f�&�7�0���A�a"2= ���m�&�$��s(����'��ױ$g9M �����6^X>~�M(�)NU�uҺ�J�3�1`1�1�+ʀ�&�R&��8)C��V��+��9}��cK&�i-TS���/I�
4ʫɃ�HïE�*��s�(�ؾ&���.I�kL�����"��E���0U��a ؁�'$�M$s�M��ؘ�kؐ��:�i��X�O\ì�
�֜����������­�&���8Tm)�je-�a���	d����0�a���eY����b��N;�Ju*>�<��ALE&���P���O����{!W��,.���(qR'!A+t�L�"	�c����A�Y�X#��y�zNf0\��\�c��(<�66P�z̦�����,�vKH�H����S�AA,.�g�bgk	(Ko�S��3����tE�&���z��XQsa�zDa�I�]<i^��500`6T�a�VOt/$*�t��4椫g����h���F@�b�T*���P�p��"	����}͠д֞pY�Q�vD���;8�2heU�Aj�I�$ĸ��`F�z� Y1�e��5�-��%B�0��wZ&h\6 כrY.A�Y˄T���A;5�^b#`��ة�$M�GV�&��_�c�����H�0ύaF���؃0��+mr�ҰYN(Է��oѼ���ŮN%Ѓ�^�
����Gx�&Ԑ�>���˺dJR�>�1�1��\g�eZ�.���	u&%�x@H�WY£(���'�eǱ��(Q!6E6����-쾊{��R>j���A=J�~o?��y���J	I�#�@���x���jm�'	{AH��PBw�ü�L���A Mi���C�ޠ-�*��?�w$S�	��p