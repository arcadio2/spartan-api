

INSERT INTO usuarios (username,password,enabled,nombre,apellido,email) values ('arcadio','$2a$10$v4RgozYXiSyb8ckZb41QDuUorAI8YzFeOqZkyUdL3hKE/e7Fh3PeC',1,'Arcadio','Lopez','arcadio@gmail.com');
INSERT INTO usuarios (username,password,enabled,nombre,apellido,email) values ('admin','$2a$10$W143tnyFIwDOhaGhPF2p8eK225fmycCIos5cgGWQevh3EMDBXHUYG',1,'Jesus','Lopez','jesus@gmail.com');
INSERT INTO usuarios (username,password,enabled,nombre,apellido,email) values ('jesus','$2a$10$P7NdGgsEiWdPoCYs7dbOYO62kv9ey6dfddQxue6/E8yPItmGkZQWO',1,'Luis','Lopez','luis@gmail.com');
INSERT INTO usuarios (username,password,enabled,nombre,apellido,email) values ('luis','$2a$10$MPD0VH9TkPNjoZk.nRXgU.4n7UguXIrXrEuYQ8lohs8xXJsDf6LCi',1,'Galilea','Lopez','gali@gmail.com');

INSERT INTO roles (nombre) values ('ROLE_USER');
INSERT INTO roles (nombre) values ('ROLE_ADMIN');
INSERT INTO roles (nombre) values ('ROLE_INSTRUCTOR');

insert into usuario_roles (usuario_id,role_id) values (1,1); 
insert into usuario_roles (usuario_id,role_id) values (2,2);
insert into usuario_roles (usuario_id,role_id) values (2,1);  
insert into usuario_roles (usuario_id,role_id) values (3,1);  

insert into sexo(sexo) values ('hombre'); 
insert into sexo(sexo) values ('mujer');

insert into c_subscripcion(tipo_subscripcion,precio) values ('mensual',300);
insert into c_subscripcion(tipo_subscripcion,precio) values ('anual',3000);
insert into c_subscripcion(tipo_subscripcion,precio) values ('semanal',100);

insert into subscripcion(active,tipo_id) values (true,1); 

insert into perfil(sexo_id,usuario_id,foto,edad,peso,altura,subscripcion_id) values (1,1,'',21,57.0,1.75,1); 


insert into c_dias(dia) values ("lunes"); 
insert into c_dias(dia) values ("martes"); 
insert into c_dias(dia) values ("miercoles"); 
insert into c_dias(dia) values ("jueves");
insert into c_dias(dia) values ("viernes");
insert into c_dias(dia) values ("sabado");
insert into c_dias(dia) values ("domingo");
    
insert into rutinas(dia_id,perfil_id) values (1,1); 
insert into rutinas(dia_id,perfil_id) values (2,1); 
insert into rutinas(dia_id,perfil_id) values (3.1); 

insert into ejercicios(nombre,musculo) values ("Press de banca","pecho"); 
insert into ejercicios(nombre,musculo) values ("Mancuerna","brazo"); 
insert into ejercicios(nombre,musculo) values ("Peso muerto","pierna"); 
insert into ejercicios(nombre,musculo) values ("Sentadilla","pierna"); 

insert into rutina_ejercicios(rutina_id, ejercicio_id) values (1,1); 
insert into rutina_ejercicios(rutina_id, ejercicio_id) values (1,2); 
