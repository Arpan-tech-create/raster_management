PGDMP     9                    |            vedas    15.3    15.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17437    vedas    DATABASE     x   CREATE DATABASE vedas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE vedas;
                postgres    false            �            1259    65163    datasets    TABLE     9  CREATE TABLE public.datasets (
    name character varying(256) NOT NULL,
    metadata jsonb,
    id character varying(256) NOT NULL,
    source_location character varying[],
    temporal_frequency character varying DEFAULT 'hourly'::character varying,
    extension character varying DEFAULT '.tif'::character varying,
    resampling character varying DEFAULT 'average'::character varying,
    projections character varying[],
    paused boolean DEFAULT false,
    compression character varying DEFAULT 'deflate'::character varying,
    interleave character varying
);
    DROP TABLE public.datasets;
       public         heap    postgres    false            �          0    65163    datasets 
   TABLE DATA           �   COPY public.datasets (name, metadata, id, source_location, temporal_frequency, extension, resampling, projections, paused, compression, interleave) FROM stdin;
    public          postgres    false    227   h       �           2606    65174    datasets dataset_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.datasets
    ADD CONSTRAINT dataset_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.datasets DROP CONSTRAINT dataset_pkey;
       public            postgres    false    227            �   �  x�ݕ]o�0���_�|��ڲ�jAm�Ң��1Y9q�A�u��>;$(]i�	i�E>d=~����x�4�������Xӆ��$}F����=�Zhe��̜���k���o����/��x�#��u�߼{E�f��ms 2�<lY��ý��qp��5����WW��:D�O�G�f�v��Fa!�b<s�4�:=��s�u.�(B�eYh�hԈ�-q��;�y��kgs���$Bt��C/!D)���T�ON�����_�Ѥpa)�u��[� ��[��L&#��0lA%�Cl�K�I
d��Wˁ
��گ���	�>|Su�{��r�.���c����s���ι��]����-&r�� WS���*׻���s��/z��	����2C+�c8ĕ'u���������-�ql�(FX
�ɮ?x{�
�����'�#��A�l�S���,f��Zm�#zR�F�A�g2N�F5eKV$:���KҮ�mT�(�O�Y����-L[	C�
�.؁�U�k��p�j#��;�����ٹ�vK�[�g3�%���I��ZY@�����l���<9�u�tk�m=Sh�v�+,i�R��bK����8f�^,��q�����ޗ��x2��g�8oB�1�?-ݥ��t��`oQ��2�Y��*H����cP��E
�����XZ��J,�۬bޣ��
�RFF�H�@�9���!�h�HB: :��	��x1�J��0~M���     