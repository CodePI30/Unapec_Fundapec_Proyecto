PGDMP  
    *                }            Unapec    17.4    17.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            !           1262    16564    Unapec    DATABASE     �   CREATE DATABASE "Unapec" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "Unapec";
                     postgres    false            �            1259    16566    creditos    TABLE     �  CREATE TABLE public.creditos (
    id integer NOT NULL,
    matricula character varying(50) NOT NULL,
    nombre character varying(100) NOT NULL,
    carrera character varying(100) NOT NULL,
    creditos character varying(50) NOT NULL,
    monto_otorgado numeric(18,2) NOT NULL,
    fecha_desembolso date NOT NULL,
    tasa_interes numeric(5,2) NOT NULL,
    plazo_meses integer NOT NULL,
    estado_credito character varying(50) NOT NULL
);
    DROP TABLE public.creditos;
       public         heap r       postgres    false            �            1259    16565    creditos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.creditos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.creditos_id_seq;
       public               postgres    false    218            "           0    0    creditos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.creditos_id_seq OWNED BY public.creditos.id;
          public               postgres    false    217            �           2604    16569    creditos id    DEFAULT     j   ALTER TABLE ONLY public.creditos ALTER COLUMN id SET DEFAULT nextval('public.creditos_id_seq'::regclass);
 :   ALTER TABLE public.creditos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218                      0    16566    creditos 
   TABLE DATA           �   COPY public.creditos (id, matricula, nombre, carrera, creditos, monto_otorgado, fecha_desembolso, tasa_interes, plazo_meses, estado_credito) FROM stdin;
    public               postgres    false    218   T       #           0    0    creditos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.creditos_id_seq', 22, true);
          public               postgres    false    217            �           2606    16571    creditos creditos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.creditos
    ADD CONSTRAINT creditos_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.creditos DROP CONSTRAINT creditos_pkey;
       public                 postgres    false    218                 x�}��n�0���������	�Ia8E�.'��Ā�3�m:f�Pd��O��l���E�����BE*Qi�H:�X��W�_�{ԝ�nxc�;qg��n�'�Q��3O�Zv��3�S5�v�ٚg;KRђ]c{q5����׭�r�1�{'j-.�'�{�eE�)Y�Ʉʹ���Jw���Vϲ O�fgz�I;���v[�7���&%)=��g*�b^�c恔�-�-��������z���}���ey�s���?���=�����
�:�n��p�-)E�)
�KV��T`Íw`���۲4Ϧ!�SĲ�
�`j9�VhI�m?��0^�B;��aI.(U�`���I�E`Tt�h��fx�TK��:�	��ٍ�fTMF�)��'��G]x�+=�b��w�5؞��*OzS�?3J���d�[�_��="b��]w�A'E�Ow�1,v/FS&	!�-i����~k��҅�1�Wn����*(-�8�X?}9����Ϧ^}d���[SR�F�@�C-&C-@<���^�1�È�jXA��2T�+�wF7,n1X����7V�&r�ɑ��(��5R�j+���_cQj��!Q���k/���/��Oiq�g�U��d�*�=	
�}v0w�o�Qϗ-3}�*�'_m;��i�͖�Vߒ�,��*}�O�BM �ƍFpŊ��u?u��T�x�s���
���s'����z(+���<O�S��7��~a8��ҎN������'gﹶ����l�����     