PGDMP                         w         
   auditRSIA2     10.7 (Ubuntu 10.7-1.pgdg18.04+1)     10.7 (Ubuntu 10.7-1.pgdg18.04+1) ?    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    33368 
   auditRSIA2    DATABASE     ~   CREATE DATABASE "auditRSIA2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE "auditRSIA2";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    13041    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    33369    alatpelindung    TABLE     �   CREATE TABLE public.alatpelindung (
    alatpelindung_id integer NOT NULL,
    alatpelindung_nama character varying(32) NOT NULL,
    unit_id integer
);
 !   DROP TABLE public.alatpelindung;
       public         postgres    false    3            �            1259    33372    audit    TABLE     �   CREATE TABLE public.audit (
    audit_id integer NOT NULL,
    audit_nama character varying(128) NOT NULL,
    audit_jenis character varying(16) NOT NULL,
    audit_tipe integer
);
    DROP TABLE public.audit;
       public         postgres    false    3            �            1259    33375 
   hasiltipe1    TABLE     �   CREATE TABLE public.hasiltipe1 (
    hasiltipe1_id character varying(32) NOT NULL,
    komponen_id integer NOT NULL,
    hasiltipe1_hasil boolean[],
    record_id character varying(24),
    hasiltipe1_keterangan character varying(64)
);
    DROP TABLE public.hasiltipe1;
       public         postgres    false    3            �            1259    33382 
   hasiltipe2    TABLE       CREATE TABLE public.hasiltipe2 (
    hasiltipe2_id character varying(32) NOT NULL,
    subkomponen_id integer NOT NULL,
    alatpelindung_id integer NOT NULL,
    hasiltipe2_hasil boolean[],
    hasiltipe2_keterangan character varying(64),
    record_id character varying(64)
);
    DROP TABLE public.hasiltipe2;
       public         postgres    false    3            �            1259    33388 
   hasiltipe3    TABLE     �   CREATE TABLE public.hasiltipe3 (
    hasiltipe3_id character varying(32) NOT NULL,
    subkomponen_id integer,
    hasiltipe3_hasil boolean[],
    hasiltipe3_keterangan character varying(64),
    record_id character varying(24)
);
    DROP TABLE public.hasiltipe3;
       public         postgres    false    3            �            1259    33394    komponen    TABLE     �   CREATE TABLE public.komponen (
    komponen_id integer NOT NULL,
    audit_id integer NOT NULL,
    komponen_nama character varying(256) NOT NULL
);
    DROP TABLE public.komponen;
       public         postgres    false    3            �            1259    33397    pegawai    TABLE     �   CREATE TABLE public.pegawai (
    pegawai_nomor bigint NOT NULL,
    pegawai_nama character varying(24) NOT NULL,
    pegawai_password character varying(32) NOT NULL,
    pegawai_jabatan integer
);
    DROP TABLE public.pegawai;
       public         postgres    false    3            �            1259    33591    record    TABLE     �   CREATE TABLE public.record (
    record_id character varying(24) NOT NULL,
    record_month character varying(8),
    ruang_nama character varying(14),
    record_updateon timestamp without time zone[],
    pegawai_nomor bigint,
    audit_id integer
);
    DROP TABLE public.record;
       public         postgres    false    3            �            1259    33400    ruang    TABLE     w   CREATE TABLE public.ruang (
    ruang_nama character varying(14) NOT NULL,
    tiperuang_nama character varying(12)
);
    DROP TABLE public.ruang;
       public         postgres    false    3            �            1259    33403    subkomponen    TABLE     �   CREATE TABLE public.subkomponen (
    subkomponen_id integer NOT NULL,
    komponen_id integer,
    subkomponen_nama character varying(100) NOT NULL
);
    DROP TABLE public.subkomponen;
       public         postgres    false    3            �            1259    33406 	   tiperuang    TABLE     �   CREATE TABLE public.tiperuang (
    tiperuang_nama character varying(12) NOT NULL,
    pegawai_nomor bigint NOT NULL,
    tiperuang_kelas character varying(12)
);
    DROP TABLE public.tiperuang;
       public         postgres    false    3            �            1259    33409    unit    TABLE     �   CREATE TABLE public.unit (
    unit_id integer NOT NULL,
    pegawai_nomor bigint NOT NULL,
    unit_nama character varying(50)
);
    DROP TABLE public.unit;
       public         postgres    false    3            �          0    33369    alatpelindung 
   TABLE DATA               V   COPY public.alatpelindung (alatpelindung_id, alatpelindung_nama, unit_id) FROM stdin;
    public       postgres    false    196   JL       �          0    33372    audit 
   TABLE DATA               N   COPY public.audit (audit_id, audit_nama, audit_jenis, audit_tipe) FROM stdin;
    public       postgres    false    197   M       �          0    33375 
   hasiltipe1 
   TABLE DATA               t   COPY public.hasiltipe1 (hasiltipe1_id, komponen_id, hasiltipe1_hasil, record_id, hasiltipe1_keterangan) FROM stdin;
    public       postgres    false    198   JO       �          0    33382 
   hasiltipe2 
   TABLE DATA               �   COPY public.hasiltipe2 (hasiltipe2_id, subkomponen_id, alatpelindung_id, hasiltipe2_hasil, hasiltipe2_keterangan, record_id) FROM stdin;
    public       postgres    false    199   gO       �          0    33388 
   hasiltipe3 
   TABLE DATA               w   COPY public.hasiltipe3 (hasiltipe3_id, subkomponen_id, hasiltipe3_hasil, hasiltipe3_keterangan, record_id) FROM stdin;
    public       postgres    false    200   �O       �          0    33394    komponen 
   TABLE DATA               H   COPY public.komponen (komponen_id, audit_id, komponen_nama) FROM stdin;
    public       postgres    false    201   �O       �          0    33397    pegawai 
   TABLE DATA               a   COPY public.pegawai (pegawai_nomor, pegawai_nama, pegawai_password, pegawai_jabatan) FROM stdin;
    public       postgres    false    202   �[       �          0    33591    record 
   TABLE DATA               o   COPY public.record (record_id, record_month, ruang_nama, record_updateon, pegawai_nomor, audit_id) FROM stdin;
    public       postgres    false    207   �\       �          0    33400    ruang 
   TABLE DATA               ;   COPY public.ruang (ruang_nama, tiperuang_nama) FROM stdin;
    public       postgres    false    203   ]       �          0    33403    subkomponen 
   TABLE DATA               T   COPY public.subkomponen (subkomponen_id, komponen_id, subkomponen_nama) FROM stdin;
    public       postgres    false    204   �]       �          0    33406 	   tiperuang 
   TABLE DATA               S   COPY public.tiperuang (tiperuang_nama, pegawai_nomor, tiperuang_kelas) FROM stdin;
    public       postgres    false    205   xc       �          0    33409    unit 
   TABLE DATA               A   COPY public.unit (unit_id, pegawai_nomor, unit_nama) FROM stdin;
    public       postgres    false    206   �c                  2606    33413     alatpelindung alatpelindung_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.alatpelindung
    ADD CONSTRAINT alatpelindung_pkey PRIMARY KEY (alatpelindung_id);
 J   ALTER TABLE ONLY public.alatpelindung DROP CONSTRAINT alatpelindung_pkey;
       public         postgres    false    196                       2606    33415    audit audit_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.audit
    ADD CONSTRAINT audit_pkey PRIMARY KEY (audit_id);
 :   ALTER TABLE ONLY public.audit DROP CONSTRAINT audit_pkey;
       public         postgres    false    197                       2606    33417    hasiltipe1 hasiltipe1_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.hasiltipe1
    ADD CONSTRAINT hasiltipe1_pkey PRIMARY KEY (hasiltipe1_id);
 D   ALTER TABLE ONLY public.hasiltipe1 DROP CONSTRAINT hasiltipe1_pkey;
       public         postgres    false    198                       2606    33419    hasiltipe2 hasiltipe2_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.hasiltipe2
    ADD CONSTRAINT hasiltipe2_pkey PRIMARY KEY (hasiltipe2_id);
 D   ALTER TABLE ONLY public.hasiltipe2 DROP CONSTRAINT hasiltipe2_pkey;
       public         postgres    false    199                       2606    33421    hasiltipe3 hasiltipe3_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.hasiltipe3
    ADD CONSTRAINT hasiltipe3_pkey PRIMARY KEY (hasiltipe3_id);
 D   ALTER TABLE ONLY public.hasiltipe3 DROP CONSTRAINT hasiltipe3_pkey;
       public         postgres    false    200                       2606    33423    komponen komponen_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.komponen
    ADD CONSTRAINT komponen_pkey PRIMARY KEY (komponen_id);
 @   ALTER TABLE ONLY public.komponen DROP CONSTRAINT komponen_pkey;
       public         postgres    false    201                       2606    33425    pegawai pegawai_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pegawai
    ADD CONSTRAINT pegawai_pkey PRIMARY KEY (pegawai_nomor);
 >   ALTER TABLE ONLY public.pegawai DROP CONSTRAINT pegawai_pkey;
       public         postgres    false    202            *           2606    33598    record record_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.record
    ADD CONSTRAINT record_pkey PRIMARY KEY (record_id);
 <   ALTER TABLE ONLY public.record DROP CONSTRAINT record_pkey;
       public         postgres    false    207                        2606    41601    ruang ruang_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ruang
    ADD CONSTRAINT ruang_pkey PRIMARY KEY (ruang_nama);
 :   ALTER TABLE ONLY public.ruang DROP CONSTRAINT ruang_pkey;
       public         postgres    false    203            "           2606    33429    subkomponen subkomponen_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.subkomponen
    ADD CONSTRAINT subkomponen_pkey PRIMARY KEY (subkomponen_id);
 F   ALTER TABLE ONLY public.subkomponen DROP CONSTRAINT subkomponen_pkey;
       public         postgres    false    204            $           2606    41576    tiperuang tiperuang_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tiperuang
    ADD CONSTRAINT tiperuang_pkey PRIMARY KEY (tiperuang_nama);
 B   ALTER TABLE ONLY public.tiperuang DROP CONSTRAINT tiperuang_pkey;
       public         postgres    false    205            '           2606    33433    unit unit_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.unit
    ADD CONSTRAINT unit_pkey PRIMARY KEY (unit_id);
 8   ALTER TABLE ONLY public.unit DROP CONSTRAINT unit_pkey;
       public         postgres    false    206            (           1259    41566    fki_record_audit_idd    INDEX     K   CREATE INDEX fki_record_audit_idd ON public.record USING btree (audit_id);
 (   DROP INDEX public.fki_record_audit_idd;
       public         postgres    false    207                       1259    33436    fki_unit_fkey    INDEX     J   CREATE INDEX fki_unit_fkey ON public.alatpelindung USING btree (unit_id);
 !   DROP INDEX public.fki_unit_fkey;
       public         postgres    false    196            %           1259    33584    fki_unit_pegawai_nomor_fkey    INDEX     U   CREATE INDEX fki_unit_pegawai_nomor_fkey ON public.unit USING btree (pegawai_nomor);
 /   DROP INDEX public.fki_unit_pegawai_nomor_fkey;
       public         postgres    false    206            ,           2606    33437 &   hasiltipe1 hasiltipe1_komponen_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.hasiltipe1
    ADD CONSTRAINT hasiltipe1_komponen_id_fkey FOREIGN KEY (komponen_id) REFERENCES public.komponen(komponen_id);
 P   ALTER TABLE ONLY public.hasiltipe1 DROP CONSTRAINT hasiltipe1_komponen_id_fkey;
       public       postgres    false    2844    201    198            -           2606    33642 $   hasiltipe1 hasiltipe1_record_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.hasiltipe1
    ADD CONSTRAINT hasiltipe1_record_id_fkey FOREIGN KEY (record_id) REFERENCES public.record(record_id);
 N   ALTER TABLE ONLY public.hasiltipe1 DROP CONSTRAINT hasiltipe1_record_id_fkey;
       public       postgres    false    2858    198    207            .           2606    33467 +   hasiltipe2 hasiltipe2_alatpelindung_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.hasiltipe2
    ADD CONSTRAINT hasiltipe2_alatpelindung_id_fkey FOREIGN KEY (alatpelindung_id) REFERENCES public.alatpelindung(alatpelindung_id);
 U   ALTER TABLE ONLY public.hasiltipe2 DROP CONSTRAINT hasiltipe2_alatpelindung_id_fkey;
       public       postgres    false    2833    199    196            0           2606    33629 $   hasiltipe2 hasiltipe2_record_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.hasiltipe2
    ADD CONSTRAINT hasiltipe2_record_id_fkey FOREIGN KEY (record_id) REFERENCES public.record(record_id);
 N   ALTER TABLE ONLY public.hasiltipe2 DROP CONSTRAINT hasiltipe2_record_id_fkey;
       public       postgres    false    2858    199    207            /           2606    33482 )   hasiltipe2 hasiltipe2_subkomponen_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.hasiltipe2
    ADD CONSTRAINT hasiltipe2_subkomponen_id_fkey FOREIGN KEY (subkomponen_id) REFERENCES public.subkomponen(subkomponen_id) ON UPDATE SET DEFAULT ON DELETE SET DEFAULT;
 S   ALTER TABLE ONLY public.hasiltipe2 DROP CONSTRAINT hasiltipe2_subkomponen_id_fkey;
       public       postgres    false    2850    199    204            2           2606    33616 $   hasiltipe3 hasiltipe3_record_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.hasiltipe3
    ADD CONSTRAINT hasiltipe3_record_id_fkey FOREIGN KEY (record_id) REFERENCES public.record(record_id);
 N   ALTER TABLE ONLY public.hasiltipe3 DROP CONSTRAINT hasiltipe3_record_id_fkey;
       public       postgres    false    207    200    2858            1           2606    33492 )   hasiltipe3 hasiltipe3_subkomponen_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.hasiltipe3
    ADD CONSTRAINT hasiltipe3_subkomponen_id_fkey FOREIGN KEY (subkomponen_id) REFERENCES public.subkomponen(subkomponen_id);
 S   ALTER TABLE ONLY public.hasiltipe3 DROP CONSTRAINT hasiltipe3_subkomponen_id_fkey;
       public       postgres    false    200    204    2850            3           2606    33497    komponen komponen_audit_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.komponen
    ADD CONSTRAINT komponen_audit_id_fkey FOREIGN KEY (audit_id) REFERENCES public.audit(audit_id);
 I   ALTER TABLE ONLY public.komponen DROP CONSTRAINT komponen_audit_id_fkey;
       public       postgres    false    197    201    2836            :           2606    41637    record record_audit_id    FK CONSTRAINT     |   ALTER TABLE ONLY public.record
    ADD CONSTRAINT record_audit_id FOREIGN KEY (audit_id) REFERENCES public.audit(audit_id);
 @   ALTER TABLE ONLY public.record DROP CONSTRAINT record_audit_id;
       public       postgres    false    207    2836    197            8           2606    33604     record record_pegawai_nomor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.record
    ADD CONSTRAINT record_pegawai_nomor_fkey FOREIGN KEY (pegawai_nomor) REFERENCES public.pegawai(pegawai_nomor);
 J   ALTER TABLE ONLY public.record DROP CONSTRAINT record_pegawai_nomor_fkey;
       public       postgres    false    207    202    2846            9           2606    41624    record record_ruang_nama_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.record
    ADD CONSTRAINT record_ruang_nama_fkey FOREIGN KEY (ruang_nama) REFERENCES public.ruang(ruang_nama);
 G   ALTER TABLE ONLY public.record DROP CONSTRAINT record_ruang_nama_fkey;
       public       postgres    false    203    2848    207            4           2606    41611    ruang ruang_tiperuang_nama_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ruang
    ADD CONSTRAINT ruang_tiperuang_nama_fkey FOREIGN KEY (tiperuang_nama) REFERENCES public.tiperuang(tiperuang_nama);
 I   ALTER TABLE ONLY public.ruang DROP CONSTRAINT ruang_tiperuang_nama_fkey;
       public       postgres    false    203    2852    205            5           2606    33527 (   subkomponen subkomponen_komponen_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.subkomponen
    ADD CONSTRAINT subkomponen_komponen_id_fkey FOREIGN KEY (komponen_id) REFERENCES public.komponen(komponen_id);
 R   ALTER TABLE ONLY public.subkomponen DROP CONSTRAINT subkomponen_komponen_id_fkey;
       public       postgres    false    201    2844    204            6           2606    33532 &   tiperuang tiperuang_pegawai_nomor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tiperuang
    ADD CONSTRAINT tiperuang_pegawai_nomor_fkey FOREIGN KEY (pegawai_nomor) REFERENCES public.pegawai(pegawai_nomor);
 P   ALTER TABLE ONLY public.tiperuang DROP CONSTRAINT tiperuang_pegawai_nomor_fkey;
       public       postgres    false    2846    205    202            +           2606    33557    alatpelindung unit_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.alatpelindung
    ADD CONSTRAINT unit_fkey FOREIGN KEY (unit_id) REFERENCES public.unit(unit_id);
 A   ALTER TABLE ONLY public.alatpelindung DROP CONSTRAINT unit_fkey;
       public       postgres    false    2855    196    206            7           2606    33579    unit unit_pegawai_nomor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.unit
    ADD CONSTRAINT unit_pegawai_nomor_fkey FOREIGN KEY (pegawai_nomor) REFERENCES public.pegawai(pegawai_nomor);
 F   ALTER TABLE ONLY public.unit DROP CONSTRAINT unit_pegawai_nomor_fkey;
       public       postgres    false    2846    202    206            �   �   x�]�Kn�0D��)�L7m�_�K�݌cVV-K%9~h�"K����b2�K�"��a��?�oJ.,�R�&y~��ˁ�0h������33(j�pNNP�P��Vݦ��m�8��1Z��E��s^�Y�Q�{����	fT�=u(������$5�H'檴5����t/������Ϧi�I7T�      �   &  x��U�n�0=�_�c�(9Mr�KЋ�^{E�4�&p)�|}���4��O��z��ǜ|���za����i��ͫ���:�Ab�� �*:H��cWϿ~^$[�5�EyR�*/���J_ʁ¤ր������_�c��W�ƀ>o��S� lI<ftJ^l�2�L�`�5)����Ɨ�h�Dq7Shg���2(	�!�	��,.�e����GPŞ�0��Jq?Wk�<�0�V��,y���Q2D�&����>�Zd==	sCP��@�d��fG���UY<�՞��F !`J�d�!<e�]=m�I��8����k��Pah�G�UI꼸��O]�'M�w�/�zg�-�A���_��\�B�u�9��9�n1	s�^M<<�l>��{�ܣ��O5Z���&�x��H(�`�S^� LZ���i*ްVY�u|/zFz'���/W��m�������:�a�G*�*�?\R����g�9<^���8gih��@N顦u�LJ�,������*����t]�|L��7̹��m�^�hE��      �      x������ � �      �      x������ � �      �      x������ � �      �     x��YKr��]K��MGHa�P HQ�1㍗^��M�(�E|��9�����e�Rl�x�#*3++�姒I�w��W����mc�ls/��R����s�o��9����<�6��7�+�qe��e��&����ڷF�o�{�Ȍ"W6�46t��8�]a#<��W"���̺!��U�{��W�ʛΖ֓jK*H��Gk{9��֮��X��ȵ���ػ���p<�6���<��M�[���D�0v$�ŝ[�yH��������Laa�oX*�.�O�2�/lI��W��;8(_���-��+ '�Sz1��Ŕ^��
'+m����!E����V�2�ٓ=>RtFѳ7���^v��54C?�nBE�ܐ�p���^���-Wm3�(�+?���j����/ĸ�ϛOآk�������5�W�Ƕ2��O�L��:@�W�� ��:ݘ������7��|�����|��}�{�^p��m���ˡo�q�B������6ӏ��z'�bj� k� �f �\�9D�/�禀`�M|Dp}4�9
�`��T.�G�N��5��alĜ7��<$��A���|�4����ɕA lM�\Q9�H�N[��}�3^e�iv��~BY�k
�®���Q6�+M
�7%o�#�xzȞ?g����o�$�HR">zsa�@r��8��_��T�EE�ͤO9��PgM��Ͽ���h�= ��aK�B�[�#p�
���(���O��3N3�0�
.��� ]k�wG��s�x`�dDXv��N�k�|5��
�ٴ_�i����������AR ������eKV"KTKȃ��c��I�|N7p��Cչ��y�D���Xn�ILm���V&y2-��@��{қ���{�V�Z��!��V�Sa
���=���q���\$IjA�Bޫ���!�eM/Y�\vlK)!�>��w�[��ȗ}��}�y� h#V�p�����t�N���d���eW8^H,`�0�,p�|�oe;@��8䭇�j}�%֥R���[�����o-��̤>��ՃWd�:P�z�|[�x�$Sx�Ep/3 
W�R\-�ӓ'%χ���݀<�2r����+,�.���$p\�;1���C�$�L�̛%s
f�����7�6�$�jMI��+�l)f�`��8H8NE�P;]ڙ�ŕ��Q�3�cf
��i{" ��y�ԉa���]A�I�Dx>�������'�O�(���vnŮ��]xxߗX����Z	��&)�VQ��0}@��d=_�����fllSA�BD���8��pd9�
��[� ݲ��u��R!�: �I;#����e��.j��g"���`�0"�O]���ZiI>�>RVJYWm��W��1�N<y.�첾��}@wh�ʑcw� ��^�LH���K�)R3%%�R̖bb�IJdf��vUX���l@�g�_�z�b�ZQq�8Ph3$���2v�!��W{M3�<���ۆ��2�č�#F�@+�Īk=Vhu
�h�0��dB�����<�z�֤�S"��2�����?�!dڻO`���R^C�s#6�a�=��mUl&�9��wD���|��+<r��&Oů�Gҧ�/��4���cO�l�}��g>�7ǆ�4!8���#A����k+�O�W)�,[���@@8"�p�9D�+�-Y�ɂ��^
��p�`#��"hb��� �+(pz�M����bJ_{$�w;�'�|�5��;�\�&�p3�Y/88Z^ ĺ>p�|Bϑ��:��L
]����MIM�8Ƣ���@�"NH�����`B�]ʮ$��a�8�}�0�H|!�^�\1j�:�qs^Bo5��`��]�A�؜Ff��₷�����p����*�*_��ѥ�K8pa�s�е����X�e��ʹ\kv���Z������IU�5?����KU�ZvͶP˛i��*$T!��BB�[*$T!��
	UH��
)UHo��R���
)UH��BJ�?�B��MMw\b�N IF:%I�$1�#��^V�P$�fh�W��A�
��$��G6����q�)/�Ȗ{4���:�찹uP��x��dN�-)R��7�e�lsp=��0̈́b�����~�u�Sn�|K�����ecº0�8�>�X_�sWusd�\0�*�α�P����bs;w_ڣ�C̓,eۑ���V�}�\ׯdH�ɓյB@Ć@��I��汧j�_fď��P�����JI)�;ws�R����9/w�+S��F.��]ڣ�����L���k��7|��	}D�d�A[��{"Ġx�_3��4�v��q��6%���Џ�Ӊb{'3�S+a0�.�k]ulqgy�v)��$������h�e����O�f�]����jes�k*?֫�W�U{�:����A."�sR����=��^m�������S[�eW�h�x?�W���2AQ�u����v���~�K�q��	�[Ƽ�,E�C�(Lnk$�TQt�������r���Gi�/�:h�f=CF/��Tڽۻ���&D���N*�Ë��B:mwVF/� E��e쁋ro���d����Пz_L �t2�"I�Nԗ?=�*���}?@U�Ȑ�_�zܲ�#b-��p�P��%�2�*V]#�Q�Dҙ��&�K�@�zM[䩼N	ɓ�< ��1���9٣W�$��Ow���W̛��8�$_J��!�8��	_��3I�����y
��V�<Y�����al����e���XPJF��B'IQ���4b�*�����������Y-��?oXb���y�v�+k��"�q��/����Jۏ��u)������ϧ�<FS:�DH�͡&g<:��_�y�S�'�v���_��U�jվ�D7��x����- gn�̗�ɨ��N�.���G1��6��/��щ^�>�ZЏ�'�Բ�Q�A{d�Rz�ß^��i��X��L���q�Ǵcߖm����͑$KGE�1��܃�S���ס��{�K�7��bTF�M�!�&�+����R�!�> |�NFE�G���j���d�1qdٮ��}\�=�|��)88�vW�^�pv���8��tj�M��^�f�'��0����)�c�h%Q}��?����/�,>      �      x���An�0E��)��$8w�f0�;�mE�}'RWM�D^X������^�5ֺ�Xcz}�21���n$����ф@�s���z�gw�Wׇa�ؿ�F�3�v�D̅^S�gJ;��;M����rϒ	)�Z�q���P�Mh�TE ��q"�l��:�62m��r�m��|.��3�ݫT����]5f�8����?c,xZ6�%DNe�Va�_�~��Sxc��@:�f�miG
��*��7�cs���TE9A�=�� ,�5�}kYTDL{�h�;.��16�|~4M�c�&�      �      x������ � �      �   `   x�]�A
� ���x�`f��fS+�������|?�$"�wT~�Wh/�>��ҟ\�No�<�8	˾
B9j�1p��C(G4na��R7T�Ox      �   �  x����v�6�k�)X���0��v�9[$MrR�%��yb7�����)Jvc�; � ��z]��x���C�l��ʗ*�5�u��֔�f��Bo����������V��N��d��<�D���iu��AT��Q��d�����;��XB]��*��.)}g��� ��n��7��P&7]�
�Y��£D�dS�?�Ck�\�/}�9��}�hYW�H C���)���t�`��Ͷ�S�wm��<R��\e؟�p�_���a~l׃�E�7�i��AW�X+'��q��UX������>ú�׭������S��F�.�
����[�C��GȥKg��D����^J�$��������S��1qz[]6�W��|<�����̈́��:.��s��R=��v���H��n�/F"n�/�H�܊_���&��B]��EAt�(��m
�(���š5����M��_L�tL�U�H5�_��v��E����?V�(���E��5��RN��/J�$}~�a����O܊� ~�v����'��ըi��W��O,�'����O ?q�� ~b
?��	~�������O,�'����� ~�.���O ?��� ~b?��{��O܋?�?~t;~����]��Ə�]���-�G��f�#�G��)���	~�h?~t?~��?��?�?~����~�h?~�^���]��R|��ޔ�U4������A�;|-�5/��m�&9�q�;������0N�H3	�$#!#�g$d���LF����Z"���~���մ�8f�jy��!h������~�7>3��]��*��p(<�0��`�A��`�D����YC�ڮ�Y��mƧ���c��h�~#TBg��C%�Jhb��ه�S�pjY�Bs�N.�Dz9�^"��H/�^N��H?����1|x��]���*v�x^�O�9�Ŧ��	=c܀���8��mA2i�#=ډm���n�I\Th7Y��װ-[��)+}U2
OP�/�[��k�/�<��|�\j�$�q�g-7��1Y�K��h��J�۬���p�u�b��Q�v.���J�6,�j��b�~BHW}��9�3�Ҵ}��j]�����V���;�N;��mE|�<�M�B��td0)���$Sxg��׶w6hzw��6���P]��~�"�j��8���_�>,��F��`p�pU�`Z��3v��ex��\U�=Q�x�:�:-1�i���y�M�n�#�{�c�8�Mլ��Յ3S�{��e4?����|Kb�F}�գHB#��,<wކLq����β��׈����-�X�a��uy�����Ӈ��I硕}�x�؏Ԟ_�qO0����lU������U�՗9U�7�*!{���C�_���uN��7R�KN��g(��1������E`�Mx��ޭ$���Y;�w����^�R���>�;���L��.,W8�K�������?�xd8      �   a   x��M�I,��4��0404�02040019��2�
F\ى�I�Y��J�9�<���ӋR�1�M8�@��E��FP��JJs20@s��qqq �:(�      �   �   x�u�+�0@q|���LI��ˈ�T��֭������(���{�*;O�X;5��ɴj����@���$:!2����<��8&�1�^�1e�JjPB$}�;�˼iG��CG�-!o��	}�����נ�x�ہ	%3���������B䱔犌W8��7���� |�,c�     