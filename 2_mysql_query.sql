create table tb_mahasiswa
(
mhs_id int not null auto_increment,
mhs_nim varchar(10) not null,
mhs_name varchar(100) not null,
mhs_angkatan int(10) not null,
primary key(mhs_id)
)engine = InnoDB;


create table tb_matakuliah
(
mk_id int not null auto_increment,
mk_kode varchar(25) not null,
mk_sks int(10) not null,
mk_nama varchar(100) not null,
primary key(mk_id)
)engine = InnoDB;

create table tb_mahasiswa_nilai
(
mhs_nilai_id int not null auto_increment,
mhs_id int not null,
mk_id int not null,
nilai float(10) not null,
primary key(mhs_nilai_id),
FOREIGN KEY (mhs_id) REFERENCES tb_mahasiswa(mhs_id),
FOREIGN KEY (mk_id) REFERENCES tb_matakuliah(mk_id)
)engine = InnoDB;

insert into tb_mahasiswa(mhs_nim,mhs_name,mhs_angkatan)
values 
('2018001','Jono',2018),
('2018002','Taufik',2018),
('2018003','Maria',2018),
('2019001','Sari',2019),
('2019002','Bambang',2019);

select * from tb_mahasiswa;

insert into tb_matakuliah(mk_kode,mk_sks,mk_nama)
values 
('MK202',3,'OOP'),
('MK303',3,'Basis Data');

select * from tb_matakuliah;

insert into tb_mahasiswa_nilai(mhs_id,mk_id,nilai)
values 
(1,1,70.00),
(1,1,80.00),
(2,1,82.00),
(2,2,74.00),
(4,1,76.00),
(4,2,80.00),
(5,1,60.00);
select * from tb_mahasiswa_nilai;

SELECT MAX(nilai) FROM tb_mahasiswa_nilai;

SELECT MAX(nilai), m.mhs_name
FROM tb_mahasiswa_nilai
JOIN tb_mahasiswa as m ON tb_mahasiswa_nilai.mhs_id=m.mhs_id
where mk_id=2;