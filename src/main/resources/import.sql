

INSERT INTO usuarios (username,password,enabled,nombre,apellido,email) values ('arcadio','$2a$10$v4RgozYXiSyb8ckZb41QDuUorAI8YzFeOqZkyUdL3hKE/e7Fh3PeC',1,'Arcadio','Lopez','arcadio@gmail.com');
INSERT INTO usuarios (username,password,enabled,nombre,apellido,email) values ('admin','$2a$10$W143tnyFIwDOhaGhPF2p8eK225fmycCIos5cgGWQevh3EMDBXHUYG',1,'Jesus','Lopez','jesus@gmail.com');
INSERT INTO usuarios (username,password,enabled,nombre,apellido,email) values ('jesus','$2a$10$P7NdGgsEiWdPoCYs7dbOYO62kv9ey6dfddQxue6/E8yPItmGkZQWO',1,'Luis','Lopez','luis@gmail.com');
INSERT INTO usuarios (username,password,enabled,nombre,apellido,email) values ('luis','$2a$10$MPD0VH9TkPNjoZk.nRXgU.4n7UguXIrXrEuYQ8lohs8xXJsDf6LCi',1,'Galilea','Lopez','gali@gmail.com');
INSERT INTO usuarios (username,password,enabled,nombre,apellido,email) values ('lalo','$2a$10$MPD0VH9TkPNjoZk.nRXgU.4n7UguXIrXrEuYQ8lohs8xXJsDf6LCi',1,'Eduardo','Torres','eduardo@gmail.com');
INSERT INTO usuarios (username,password,enabled,nombre,apellido,email) values ('fede','$2a$10$MPD0VH9TkPNjoZk.nRXgU.4n7UguXIrXrEuYQ8lohs8xXJsDf6LCi',1,'Federico','López','fede@gmail.com');


INSERT INTO roles (nombre) values ('ROLE_USER');
INSERT INTO roles (nombre) values ('ROLE_ADMIN');
INSERT INTO roles (nombre) values ('ROLE_INSTRUCTOR');


insert into usuario_roles (usuario_id,role_id) values (1,1); 
#insert into usuario_roles (usuario_id,role_id) values (1,3); 
insert into usuario_roles (usuario_id,role_id) values (2,2);
insert into usuario_roles (usuario_id,role_id) values (2,1);  
insert into usuario_roles (usuario_id,role_id) values (3,1);  
insert into usuario_roles (usuario_id,role_id) values (5,3);  
insert into usuario_roles (usuario_ide,role_id) values (6,1); 

insert into sexo(sexo) values ('hombre'); 
insert into sexo(sexo) values ('mujer');

insert into c_subscripcion(tipo_subscripcion,precio,dias) values ('mensual',300,30);
insert into c_subscripcion(tipo_subscripcion,precio,dias) values ('anual',3000,365);
insert into c_subscripcion(tipo_subscripcion,precio,dias) values ('semanal',100,7);

insert into subscripcion(active,tipo_id,fecha_subscripcion,fecha_fin) values (true,1,'22-08-20','22-08-26'); 


insert into perfil(sexo_id,usuario_id,foto,edad,peso,altura,subscripcion_id,instructor) values (1,1,'luffy.jpg',21,57.0,1.75,1,'lalo'); 
insert into perfil(sexo_id,usuario_id,foto,edad,peso,altura) values (1,5,'',27,87.0,1.79); 
insert into perfil(sexo_id,usuario_id,foto,edad,peso,altura,subscripcion_id,instructor) values (1,6,'',22,68.0,1.86,1,'lalo');

insert into c_dias(dia) values ("lunes"); 
insert into c_dias(dia) values ("martes"); 
insert into c_dias(dia) values ("miercoles"); 
insert into c_dias(dia) values ("jueves");
insert into c_dias(dia) values ("viernes");
insert into c_dias(dia) values ("sabado");
insert into c_dias(dia) values ("domingo");
    
insert into rutinas(dia_id,perfil_id) values (1,1); 
insert into rutinas(dia_id,perfil_id) values (2,1); 
insert into rutinas(dia_id,perfil_id) values (3,1); 

insert into musculos(musculo) values ("pecho");
insert into musculos(musculo) values ("brazo");
insert into musculos(musculo) values ("pierna");
insert into musculos(musculo) values ("gluteo");
insert into musculos(musculo) values ("pantorrilla");
insert into musculos(musculo) values ("abdomen");
insert into musculos(musculo) values ("triceps");
insert into musculos(musculo) values ("biceps");
insert into musculos(musculo) values ("hombro");
insert into musculos(musculo) values ("espalda");
insert into musculos(musculo) values ("trapecio");

insert into ejercicios(nombre,musculo_id) values ("Press de banca",1); 
insert into ejercicios(nombre,musculo_id) values ("Mancuerna",2); 
insert into ejercicios(nombre,musculo_id) values ("Peso muerto",3); 
insert into ejercicios(nombre,musculo_id) values ("Sentadilla",3); 

insert into series(repeticiones,series,ejercicio_id) values(12,3,1);
insert into series(repeticiones,series,ejercicio_id) values(12,3,2);
insert into series(repeticiones,series,ejercicio_id) values(12,3,3);


insert into rutina_series(rutina_id, serie_id) values (1,1); 
insert into rutina_series(rutina_id, serie_id) values (1,2); 
insert into rutina_series(rutina_id, serie_id) values (1,3); 


insert into ejercicios(nombre,musculo_id) values ("partera abierta",3); 
insert into ejercicios(nombre,musculo_id) values ("hack cerrado",3); 
insert into ejercicios(nombre,musculo_id) values ("hack abierto",3); 
insert into ejercicios(nombre,musculo_id) values ("press horizontal",3); 
insert into ejercicios(nombre,musculo_id) values ("press articulada",3); 
insert into ejercicios(nombre,musculo_id) values ("press 45° femoral cerrada",3); 
insert into ejercicios(nombre,musculo_id) values ("press 45° cuadricep cerrado",3); 
insert into ejercicios(nombre,musculo_id) values ("aductor",3); 
insert into ejercicios(nombre,musculo_id) values ("sentadilla con salto",3); 
insert into ejercicios(nombre,musculo_id) values ("femoral 1 pierna",3); 
insert into ejercicios(nombre,musculo_id) values ("femoral sentado",3); 
insert into ejercicios(nombre,musculo_id) values ("femoral acostado",3); 
insert into ejercicios(nombre,musculo_id) values ("femoral acostado a 1 pierna",3); 
insert into ejercicios(nombre,musculo_id) values ("leg extension",3); 
insert into ejercicios(nombre,musculo_id) values ("leg extension 1 pierna",3); 
insert into ejercicios(nombre,musculo_id) values ("sentadilla perfecta abierta ",3); 
insert into ejercicios(nombre,musculo_id) values ("sentadilla perfecta cerrada",3); 
insert into ejercicios(nombre,musculo_id) values ("sentadilla sumo",3); 
insert into ejercicios(nombre,musculo_id) values ("sentadilla c/mancuerna",3); 
insert into ejercicios(nombre,musculo_id) values ("sentadilla sissy",3); 
insert into ejercicios(nombre,musculo_id) values ("sentadilla libre",3); 
insert into ejercicios(nombre,musculo_id) values ("barra smith abierto",3); 
insert into ejercicios(nombre,musculo_id) values ("barra smith cerrada",3); 
insert into ejercicios(nombre,musculo_id) values ("peso muerto",3); 
insert into ejercicios(nombre,musculo_id) values ("puentes con barra Z",3); 
insert into ejercicios(nombre,musculo_id) values ("press horizontal",3); 
insert into ejercicios(nombre,musculo_id) values ("desplantes con santo 1 pierna ",3); 

insert into ejercicios(nombre,musculo_id) values ("abductor",4); 
insert into ejercicios(nombre,musculo_id) values ("press a una pierna",4); 
insert into ejercicios(nombre,musculo_id) values ("contractor de gluteo de pie",4); 
insert into ejercicios(nombre,musculo_id) values ("contractor de glueto incado",4); 
insert into ejercicios(nombre,musculo_id) values ("patada vertical para gluteo",4); 
insert into ejercicios(nombre,musculo_id) values ("patada para gluteo",4); 
insert into ejercicios(nombre,musculo_id) values ("desplantes mancuerna",4); 
insert into ejercicios(nombre,musculo_id) values ("desplantes sentadillas perfecta",4); 
insert into ejercicios(nombre,musculo_id) values ("desplantes barra smith",4); 
insert into ejercicios(nombre,musculo_id) values ("desplantes barra libre",4); 
insert into ejercicios(nombre,musculo_id) values ("grilletes atras",4); 
insert into ejercicios(nombre,musculo_id) values ("grilletes lateral",4); 
insert into ejercicios(nombre,musculo_id) values ("desplantes en marcha",4); 
insert into ejercicios(nombre,musculo_id) values ("prensa vertical",4); 
insert into ejercicios(nombre,musculo_id) values ("maquina elevacion cadera",4); 
insert into ejercicios(nombre,musculo_id) values ("sentadilla bulgara",4); 
insert into ejercicios(nombre,musculo_id) values ("patada con grillete banco",4); 
insert into ejercicios(nombre,musculo_id) values ("hack invertido",4); 
insert into ejercicios(nombre,musculo_id) values ("peso muerto",4); 
insert into ejercicios(nombre,musculo_id) values ("incado con mancuerna",4); 

insert into ejercicios(nombre,musculo_id) values ("pantorrilla de pie",5); 
insert into ejercicios(nombre,musculo_id) values ("pantorrilla tipo burro",5); 
insert into ejercicios(nombre,musculo_id) values ("pantorrilla burro",5); 
insert into ejercicios(nombre,musculo_id) values ("costurera",5); 
insert into ejercicios(nombre,musculo_id) values ("tibiales",5); 

insert into ejercicios(nombre,musculo_id) values ("Maquina articulada crunch",6); 
insert into ejercicios(nombre,musculo_id) values ("encogimiento de piernas",6); 
insert into ejercicios(nombre,musculo_id) values ("encogimiento de piernas estiradas",6); 
insert into ejercicios(nombre,musculo_id) values ("encogimiento de piernas alternando",6); 
insert into ejercicios(nombre,musculo_id) values ("deslizable frontal",6); 
insert into ejercicios(nombre,musculo_id) values ("banca p/oblicuos",6); 
insert into ejercicios(nombre,musculo_id) values ("crunch cuerda",6); 
insert into ejercicios(nombre,musculo_id) values ("bicicletas",6); 
insert into ejercicios(nombre,musculo_id) values ("deslizamiento con rueda",6); 
insert into ejercicios(nombre,musculo_id) values ("planchas",6); 
insert into ejercicios(nombre,musculo_id) values ("subir montaña",6); 
insert into ejercicios(nombre,musculo_id) values ("twister",6); 
insert into ejercicios(nombre,musculo_id) values ("encogimiento plancha banco",6); 
insert into ejercicios(nombre,musculo_id) values ("rueda",6); 
insert into ejercicios(nombre,musculo_id) values ("crunch lateral",6); 
insert into ejercicios(nombre,musculo_id) values ("crunch con polea alta",6); 
insert into ejercicios(nombre,musculo_id) values ("puntas pie",6); 

insert into ejercicios(nombre,musculo_id) values ("extension maquina push down",7); 
insert into ejercicios(nombre,musculo_id) values ("extension barra recta",7); 
insert into ejercicios(nombre,musculo_id) values ("extension barra bigote",7); 
insert into ejercicios(nombre,musculo_id) values ("extension triangulo",7); 
insert into ejercicios(nombre,musculo_id) values ("extension cuerda frente",7); 
insert into ejercicios(nombre,musculo_id) values ("extension cuerda tras nuca",7); 
insert into ejercicios(nombre,musculo_id) values ("extension 1 mano pronado",7); 
insert into ejercicios(nombre,musculo_id) values ("extension  1 mano supinado",7); 
insert into ejercicios(nombre,musculo_id) values ("copa 2 manos mancuerna",7); 
insert into ejercicios(nombre,musculo_id) values ("copa 2 manos polea",7); 
insert into ejercicios(nombre,musculo_id) values ("copa 2 manos barra Z",7); 
insert into ejercicios(nombre,musculo_id) values ("copa 1 mano de pie",7); 
insert into ejercicios(nombre,musculo_id) values ("copa 1 mano acostado",7); 
insert into ejercicios(nombre,musculo_id) values ("press california",7); 
insert into ejercicios(nombre,musculo_id) values ("press frances barra",7); 
insert into ejercicios(nombre,musculo_id) values ("press frances mancuerna",7); 
insert into ejercicios(nombre,musculo_id) values ("press frances polea",7); 
insert into ejercicios(nombre,musculo_id) values ("fondos bancas",7); 
insert into ejercicios(nombre,musculo_id) values ("fondos",7); 
insert into ejercicios(nombre,musculo_id) values ("fondos maquina peso asistido",7); 
insert into ejercicios(nombre,musculo_id) values ("patada de mula mancuerna",7); 
insert into ejercicios(nombre,musculo_id) values ("patada de mula polea",7); 
insert into ejercicios(nombre,musculo_id) values ("doble triceps",7); 
insert into ejercicios(nombre,musculo_id) values ("copa a 2 manos barra",7); 
insert into ejercicios(nombre,musculo_id) values ("copa a 1 mano polea alta",7); 

insert into ejercicios(nombre,musculo_id) values ("predicador peso integrado",8); 
insert into ejercicios(nombre,musculo_id) values ("predicador peso libre",8); 
insert into ejercicios(nombre,musculo_id) values ("predicador barra Z",8); 
insert into ejercicios(nombre,musculo_id) values ("predicador  mancuerna curl",8); 
insert into ejercicios(nombre,musculo_id) values ("predicador mancuerna martillo",8); 
insert into ejercicios(nombre,musculo_id) values ("curl barra Z",8); 
insert into ejercicios(nombre,musculo_id) values ("curl barra Z (tres posiciones)",8); 
insert into ejercicios(nombre,musculo_id) values ("curl polea recta",8); 
insert into ejercicios(nombre,musculo_id) values ("curl polea barra bigote",8); 
insert into ejercicios(nombre,musculo_id) values ("curl polea cuerda",8); 
insert into ejercicios(nombre,musculo_id) values ("curl mancuernas de pie",8); 
insert into ejercicios(nombre,musculo_id) values ("curl mancuernas de sentado",8); 
insert into ejercicios(nombre,musculo_id) values ("curl mancuernas alternado",8); 
insert into ejercicios(nombre,musculo_id) values ("curl mancuernas martillos",8); 
insert into ejercicios(nombre,musculo_id) values ("curl con barra recta",8); 
insert into ejercicios(nombre,musculo_id) values ("concentrado mancuerna curl",8); 
insert into ejercicios(nombre,musculo_id) values ("concentrado mancuerna martillo",8); 
insert into ejercicios(nombre,musculo_id) values ("concentrado polea alta ",8); 
insert into ejercicios(nombre,musculo_id) values ("concentrado polea baja",8); 
insert into ejercicios(nombre,musculo_id) values ("concentrado polea baja cross",8); 
insert into ejercicios(nombre,musculo_id) values ("doble bicep (cables)",8); 
insert into ejercicios(nombre,musculo_id) values ("curl 21 polea",8); 
insert into ejercicios(nombre,musculo_id) values ("curl 21 barra recta",8);  

insert into ejercicios(nombre,musculo_id) values ("maquina horizontal articulada",1); 
insert into ejercicios(nombre,musculo_id) values ("maquina inclinada articualda",1); 
insert into ejercicios(nombre,musculo_id) values ("press inclinado articulado",1); 
insert into ejercicios(nombre,musculo_id) values ("press inclinado barra",1); 
insert into ejercicios(nombre,musculo_id) values ("press inclinado mancuerna",1); 
insert into ejercicios(nombre,musculo_id) values ("press horizontal barra",1); 
insert into ejercicios(nombre,musculo_id) values ("press horizontal mancuerna",1); 
insert into ejercicios(nombre,musculo_id) values ("press declinado barra",1); 
insert into ejercicios(nombre,musculo_id) values ("press declinado mancuerna",1); 
insert into ejercicios(nombre,musculo_id) values ("cristos inclinado mancuerna",1); 
insert into ejercicios(nombre,musculo_id) values ("cristos horizontal mancuerna",1); 
insert into ejercicios(nombre,musculo_id) values ("press peso asistido abierto",1); 
insert into ejercicios(nombre,musculo_id) values ("press peso asistido cerrado",1); 
insert into ejercicios(nombre,musculo_id) values ("cross over poela alta",1); 
insert into ejercicios(nombre,musculo_id) values ("cross over poela baja",1); 
insert into ejercicios(nombre,musculo_id) values ("pull over mancuerna",1); 
insert into ejercicios(nombre,musculo_id) values ("pull over barra",1); 
insert into ejercicios(nombre,musculo_id) values ("peck deck",1); 
insert into ejercicios(nombre,musculo_id) values ("lagartijas",1); 
insert into ejercicios(nombre,musculo_id) values ("fondos",1); 
insert into ejercicios(nombre,musculo_id) values ("peck fly",1); 
insert into ejercicios(nombre,musculo_id) values ("press inclinado cerrado mancuerna",1); 
insert into ejercicios(nombre,musculo_id) values ("lagartijas laterales banco",1); 
insert into ejercicios(nombre,musculo_id) values ("fondos maquina peso asistido",1); 

insert into ejercicios(nombre,musculo_id) values ("press articulado",9); 
insert into ejercicios(nombre,musculo_id) values ("press peso asistido",9); 
insert into ejercicios(nombre,musculo_id) values ("press (tejedora) abierto",9); 
insert into ejercicios(nombre,musculo_id) values ("press (tejedora) frente",9); 
insert into ejercicios(nombre,musculo_id) values ("maquina press abierto",9); 
insert into ejercicios(nombre,musculo_id) values ("maquina press frente",9); 
insert into ejercicios(nombre,musculo_id) values ("press militar barra frente",9); 
insert into ejercicios(nombre,musculo_id) values ("press mancuerna",9); 
insert into ejercicios(nombre,musculo_id) values ("frontales barra",9); 
insert into ejercicios(nombre,musculo_id) values ("frontales disco",9); 
insert into ejercicios(nombre,musculo_id) values ("frontales polea barra",9); 
insert into ejercicios(nombre,musculo_id) values ("frontales polea cuerda",9); 
insert into ejercicios(nombre,musculo_id) values ("frontales polea 1 mano",9); 
insert into ejercicios(nombre,musculo_id) values ("laterales maquina",9); 
insert into ejercicios(nombre,musculo_id) values ("laterales mancuerna",9); 
insert into ejercicios(nombre,musculo_id) values ("laterales mancuerna 1 mano",9); 
insert into ejercicios(nombre,musculo_id) values ("laterales mancuerna sentado",9); 
insert into ejercicios(nombre,musculo_id) values ("laterales polea",9); 
insert into ejercicios(nombre,musculo_id) values ("laterales poela 1 mano",9); 

insert into ejercicios(nombre,musculo_id) values ("dominadas abiertas",10); 
insert into ejercicios(nombre,musculo_id) values ("dominadas cerradas",10); 
insert into ejercicios(nombre,musculo_id) values ("jalon al frente maquina",10); 
insert into ejercicios(nombre,musculo_id) values ("jalon polea alta abierta",10); 
insert into ejercicios(nombre,musculo_id) values ("jalon poela alta cerrada",10); 
insert into ejercicios(nombre,musculo_id) values ("jalon polea alta tringulo",10); 
insert into ejercicios(nombre,musculo_id) values ("remo sentado abierto",10); 
insert into ejercicios(nombre,musculo_id) values ("remo sentado cerrado",10); 
insert into ejercicios(nombre,musculo_id) values ("remo sentado a una mano",10); 
insert into ejercicios(nombre,musculo_id) values ("pull over con polea",10); 
insert into ejercicios(nombre,musculo_id) values ("pull over maquina",10); 
insert into ejercicios(nombre,musculo_id) values ("remo sentado (moto)",10); 
insert into ejercicios(nombre,musculo_id) values ("remo con mancuerna cerrado",10); 
insert into ejercicios(nombre,musculo_id) values ("remo  barra T abierto",10); 
insert into ejercicios(nombre,musculo_id) values ("remo barra T cerrado",10); 
insert into ejercicios(nombre,musculo_id) values ("remo barra recta abierto",10); 
insert into ejercicios(nombre,musculo_id) values ("remo barra recta cerrda",10); 
insert into ejercicios(nombre,musculo_id) values ("peso muerto",10); 
insert into ejercicios(nombre,musculo_id) values ("hiper extenciones",10); 
insert into ejercicios(nombre,musculo_id) values ("pulll over polea alta 2 manos",10); 
insert into ejercicios(nombre,musculo_id) values ("remo sentado triangulo",10); 
insert into ejercicios(nombre,musculo_id) values ("peck fly invertido",10); 
insert into ejercicios(nombre,musculo_id) values ("dominadas maquina con peso asistido",10); 
insert into ejercicios(nombre,musculo_id) values ("pull over barra",10); 
insert into ejercicios(nombre,musculo_id) values ("jalon polea alta barra bigote",10); 
insert into ejercicios(nombre,musculo_id) values ("remo a dos manos con mancuerna en banco inclinado",10); 

insert into ejercicios(nombre,musculo_id) values ("encogimiento mancuernas",11); 
insert into ejercicios(nombre,musculo_id) values ("encogimiento barra frente",11); 
insert into ejercicios(nombre,musculo_id) values ("encogimiento barras atras",11); 
insert into ejercicios(nombre,musculo_id) values ("encogimiento barras sentado",11); 
insert into ejercicios(nombre,musculo_id) values ("encogimiento en sentadilla per.",11); 
insert into ejercicios(nombre,musculo_id) values ("encogimiento en barra smith",11); 
insert into ejercicios(nombre,musculo_id) values ("cristos invertidos cables",11); 
insert into ejercicios(nombre,musculo_id) values ("cristos invertidos sentado",11); 
insert into ejercicios(nombre,musculo_id) values ("cristos invertidos inclinado",11); 
insert into ejercicios(nombre,musculo_id) values ("apertura con cuerda",11); 
insert into ejercicios(nombre,musculo_id) values ("apertura con movimiento",11); 
insert into ejercicios(nombre,musculo_id) values ("remo de pie con barra",11); 
insert into ejercicios(nombre,musculo_id) values ("encogimiento polea baja con barra",11); 


insert into series(repeticiones,series,ejercicio_id) values(12,3,4);
insert into series(repeticiones,series,ejercicio_id) values(12,3,5);
insert into series(repeticiones,series,ejercicio_id) values(12,3,6);

insert into rutina_series(rutina_id, serie_id) values (2,4);
insert into rutina_series(rutina_id, serie_id) values (2,5);
insert into rutina_series(rutina_id, serie_id) values (2,6);


insert into series(repeticiones,series,ejercicio_id) values(12,3,7);
insert into series(repeticiones,series,ejercicio_id) values(12,3,8);
insert into series(repeticiones,series,ejercicio_id) values(12,3,9);
insert into series(repeticiones,series,ejercicio_id) values(12,3,10);

insert into rutina_series(rutina_id, serie_id) values (3,7);
insert into rutina_series(rutina_id, serie_id) values (3,8);
insert into rutina_series(rutina_id, serie_id) values (3,9);
insert into rutina_series(rutina_id, serie_id) values (3,10);
 



