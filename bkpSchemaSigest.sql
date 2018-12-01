PGDMP             
        
    v            sigest    11.1 (Debian 11.1-1.pgdg90+1)    11.1 (Debian 11.1-1.pgdg90+1)     @           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            A           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            B           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            C           1262    16505    sigest    DATABASE     x   CREATE DATABASE sigest WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE sigest;
             postgres    false            �            1259    16516    atendimento    TABLE       CREATE TABLE public.atendimento (
    id_atend integer NOT NULL,
    data date,
    id_tecnico character varying(10),
    id_cliente integer,
    garantia character varying(20),
    valor numeric(12,2),
    descricao character varying(255),
    observacao character varying(255)
);
    DROP TABLE public.atendimento;
       public         postgres    false            �            1259    16511    cliente    TABLE     G  CREATE TABLE public.cliente (
    id integer NOT NULL,
    nome character varying(20),
    sobrenome character varying(30),
    rua character varying(20),
    numero character varying(6),
    complemento character varying(50),
    bairro character varying(30),
    cidade character varying(10),
    cep character varying(8)
);
    DROP TABLE public.cliente;
       public         postgres    false            �            1259    16506    funcionario    TABLE     �   CREATE TABLE public.funcionario (
    id_cliente integer NOT NULL,
    cargo character varying(20),
    nome character varying(20),
    sobrenome character varying(30)
);
    DROP TABLE public.funcionario;
       public         postgres    false            �            1259    16707    pessoafisica    TABLE     d   CREATE TABLE public.pessoafisica (
    nome character varying(30),
    rua character varying(50)
);
     DROP TABLE public.pessoafisica;
       public         postgres    false            �
           2606    16520    atendimento atendimento_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.atendimento
    ADD CONSTRAINT atendimento_pkey PRIMARY KEY (id_atend);
 F   ALTER TABLE ONLY public.atendimento DROP CONSTRAINT atendimento_pkey;
       public         postgres    false    198            �
           2606    16515    cliente cliente_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public         postgres    false    197            �
           2606    16510    funcionario funcionario_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (id_cliente);
 F   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT funcionario_pkey;
       public         postgres    false    196           