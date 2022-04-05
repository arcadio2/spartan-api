

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

insert into c_subscripcion(tipo_subscripcion,precio,dias) values ('mensual',300,30);
insert into c_subscripcion(tipo_subscripcion,precio,dias) values ('anual',3000,365);
insert into c_subscripcion(tipo_subscripcion,precio,dias) values ('semanal',100,7);

insert into subscripcion(active,tipo_id,fecha_subscripcion,fecha_fin) values (true,1,'21-08-20','21-08-22'); 

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



insert into ejercicios(nombre,musculo) values ("partera abierta","pierna"); 
insert into ejercicios(nombre,musculo) values ("hack cerrado","pierna"); 
insert into ejercicios(nombre,musculo) values ("hack abierto","pierna"); 
insert into ejercicios(nombre,musculo) values ("press horizontal","pierna"); 
insert into ejercicios(nombre,musculo) values ("press articulada","pierna"); 
insert into ejercicios(nombre,musculo) values ("press 45° femoral cerrada","pierna"); 
insert into ejercicios(nombre,musculo) values ("press 45° cuadricep cerrado","pierna"); 
insert into ejercicios(nombre,musculo) values ("aductor","pierna"); 
insert into ejercicios(nombre,musculo) values ("sentadilla con salto","pierna"); 
insert into ejercicios(nombre,musculo) values ("femoral 1 pierna","pierna"); 
insert into ejercicios(nombre,musculo) values ("femoral sentado","pierna"); 
insert into ejercicios(nombre,musculo) values ("femoral acostado","pierna"); 
insert into ejercicios(nombre,musculo) values ("femoral acostado a 1 pierna","pierna"); 
insert into ejercicios(nombre,musculo) values ("leg extension","pierna"); 
insert into ejercicios(nombre,musculo) values ("leg extension 1 pierna","pierna"); 
insert into ejercicios(nombre,musculo) values ("sentadilla perfecta abierta ","pierna"); 
insert into ejercicios(nombre,musculo) values ("sentadilla perfecta cerrada","pierna"); 
insert into ejercicios(nombre,musculo) values ("sentadilla sumo","pierna"); 
insert into ejercicios(nombre,musculo) values ("sentadilla c/mancuerna","pierna"); 
insert into ejercicios(nombre,musculo) values ("sentadilla sissy","pierna"); 
insert into ejercicios(nombre,musculo) values ("sentadilla libre","pierna"); 
insert into ejercicios(nombre,musculo) values ("barra smith abierto","pierna"); 
insert into ejercicios(nombre,musculo) values ("barra smith cerrada","pierna"); 
insert into ejercicios(nombre,musculo) values ("peso muerto","pierna"); 
insert into ejercicios(nombre,musculo) values ("puentes con barra Z","pierna"); 
insert into ejercicios(nombre,musculo) values ("press horizontal","pierna"); 
insert into ejercicios(nombre,musculo) values ("desplantes con santo 1 pierna ","pierna"); 

insert into ejercicios(nombre,musculo) values ("abductor","gluteo"); 
insert into ejercicios(nombre,musculo) values ("press a una pierna","gluteo"); 
insert into ejercicios(nombre,musculo) values ("contractor de gluteo de pie","gluteo"); 
insert into ejercicios(nombre,musculo) values ("contractor de glueto incado","gluteo"); 
insert into ejercicios(nombre,musculo) values ("patada vertical para gluteo","gluteo"); 
insert into ejercicios(nombre,musculo) values ("patada para gluteo","gluteo"); 
insert into ejercicios(nombre,musculo) values ("desplantes mancuerna","gluteo"); 
insert into ejercicios(nombre,musculo) values ("desplantes sentadillas perfecta","gluteo"); 
insert into ejercicios(nombre,musculo) values ("desplantes barra smith","gluteo"); 
insert into ejercicios(nombre,musculo) values ("desplantes barra libre","gluteo"); 
insert into ejercicios(nombre,musculo) values ("grilletes atras","gluteo"); 
insert into ejercicios(nombre,musculo) values ("grilletes lateral","gluteo"); 
insert into ejercicios(nombre,musculo) values ("desplantes en marcha","gluteo"); 
insert into ejercicios(nombre,musculo) values ("prensa vertical","gluteo"); 
insert into ejercicios(nombre,musculo) values ("maquina elevacion cadera","gluteo"); 
insert into ejercicios(nombre,musculo) values ("sentadilla bulgara","gluteo"); 
insert into ejercicios(nombre,musculo) values ("patada con grillete banco","gluteo"); 
insert into ejercicios(nombre,musculo) values ("hack invertido","gluteo"); 
insert into ejercicios(nombre,musculo) values ("peso muerto","gluteo"); 
insert into ejercicios(nombre,musculo) values ("incado con mancuerna","gluteo"); 

insert into ejercicios(nombre,musculo) values ("pantorrilla de pie","pantorrilla"); 
insert into ejercicios(nombre,musculo) values ("pantorrilla tipo burro","pantorrilla"); 
insert into ejercicios(nombre,musculo) values ("pantorrilla burro","pantorrilla"); 
insert into ejercicios(nombre,musculo) values ("costurera","pantorrilla"); 
insert into ejercicios(nombre,musculo) values ("tibiales","pantorrilla"); 

insert into ejercicios(nombre,musculo) values ("Maquina articulada crunch","abdomen"); 
insert into ejercicios(nombre,musculo) values ("encogimiento de piernas","abdomen"); 
insert into ejercicios(nombre,musculo) values ("encogimiento de piernas estiradas","abdomen"); 
insert into ejercicios(nombre,musculo) values ("encogimiento de piernas alternando","abdomen"); 
insert into ejercicios(nombre,musculo) values ("deslizable frontal","abdomen"); 
insert into ejercicios(nombre,musculo) values ("banca p/oblicuos","abdomen"); 
insert into ejercicios(nombre,musculo) values ("crunch cuerda","abdomen"); 
insert into ejercicios(nombre,musculo) values ("bicicletas","abdomen"); 
insert into ejercicios(nombre,musculo) values ("deslizamiento con rueda","abdomen"); 
insert into ejercicios(nombre,musculo) values ("planchas","abdomen"); 
insert into ejercicios(nombre,musculo) values ("subir montaña","abdomen"); 
insert into ejercicios(nombre,musculo) values ("twister","abdomen"); 
insert into ejercicios(nombre,musculo) values ("encogimiento plancha banco","abdomen"); 
insert into ejercicios(nombre,musculo) values ("rueda","abdomen"); 
insert into ejercicios(nombre,musculo) values ("crunch lateral","abdomen"); 
insert into ejercicios(nombre,musculo) values ("crunch con polea alta","abdomen"); 
insert into ejercicios(nombre,musculo) values ("puntas pie","abdomen"); 

insert into ejercicios(nombre,musculo) values ("extension maquina push down","triceps"); 
insert into ejercicios(nombre,musculo) values ("extension barra recta","triceps"); 
insert into ejercicios(nombre,musculo) values ("extension barra bigote","triceps"); 
insert into ejercicios(nombre,musculo) values ("extension triangulo","triceps"); 
insert into ejercicios(nombre,musculo) values ("extension cuerda frente","triceps"); 
insert into ejercicios(nombre,musculo) values ("extension cuerda tras nuca","triceps"); 
insert into ejercicios(nombre,musculo) values ("extension 1 mano pronado","triceps"); 
insert into ejercicios(nombre,musculo) values ("extension  1 mano supinado","triceps"); 
insert into ejercicios(nombre,musculo) values ("copa 2 manos mancuerna","triceps"); 
insert into ejercicios(nombre,musculo) values ("copa 2 manos polea","triceps"); 
insert into ejercicios(nombre,musculo) values ("copa 2 manos barra Z","triceps"); 
insert into ejercicios(nombre,musculo) values ("copa 1 mano de pie","triceps"); 
insert into ejercicios(nombre,musculo) values ("copa 1 mano acostado","triceps"); 
insert into ejercicios(nombre,musculo) values ("press california","triceps"); 
insert into ejercicios(nombre,musculo) values ("press frances barra","triceps"); 
insert into ejercicios(nombre,musculo) values ("press frances mancuerna","triceps"); 
insert into ejercicios(nombre,musculo) values ("press frances polea","triceps"); 
insert into ejercicios(nombre,musculo) values ("fondos bancas","triceps"); 
insert into ejercicios(nombre,musculo) values ("fondos","triceps"); 
insert into ejercicios(nombre,musculo) values ("fondos maquina peso asistido","triceps"); 
insert into ejercicios(nombre,musculo) values ("patada de mula mancuerna","triceps"); 
insert into ejercicios(nombre,musculo) values ("patada de mula polea","triceps"); 
insert into ejercicios(nombre,musculo) values ("doble triceps","triceps"); 
insert into ejercicios(nombre,musculo) values ("copa a 2 manos barra","triceps"); 
insert into ejercicios(nombre,musculo) values ("copa a 1 mano polea alta","triceps"); 

insert into ejercicios(nombre,musculo) values ("predicador peso integrado","biceps"); 
insert into ejercicios(nombre,musculo) values ("predicador peso libre","biceps"); 
insert into ejercicios(nombre,musculo) values ("predicador barra Z","biceps"); 
insert into ejercicios(nombre,musculo) values ("predicador  mancuerna curl","biceps"); 
insert into ejercicios(nombre,musculo) values ("predicador mancuerna martillo","biceps"); 
insert into ejercicios(nombre,musculo) values ("curl barra Z","biceps"); 
insert into ejercicios(nombre,musculo) values ("curl barra Z (tres posiciones)","biceps"); 
insert into ejercicios(nombre,musculo) values ("curl polea recta","biceps"); 
insert into ejercicios(nombre,musculo) values ("curl polea barra bigote","biceps"); 
insert into ejercicios(nombre,musculo) values ("curl polea cuerda","biceps"); 
insert into ejercicios(nombre,musculo) values ("curl mancuernas de pie","biceps"); 
insert into ejercicios(nombre,musculo) values ("curl mancuernas de sentado","biceps"); 
insert into ejercicios(nombre,musculo) values ("curl mancuernas alternado","biceps"); 
insert into ejercicios(nombre,musculo) values ("curl mancuernas martillos","biceps"); 
insert into ejercicios(nombre,musculo) values ("curl con barra recta","biceps"); 
insert into ejercicios(nombre,musculo) values ("concentrado mancuerna curl","biceps"); 
insert into ejercicios(nombre,musculo) values ("concentrado mancuerna martillo","biceps"); 
insert into ejercicios(nombre,musculo) values ("concentrado polea alta ","biceps"); 
insert into ejercicios(nombre,musculo) values ("concentrado polea baja","biceps"); 
insert into ejercicios(nombre,musculo) values ("concentrado polea baja cross","biceps"); 
insert into ejercicios(nombre,musculo) values ("doble bicep (cables)","biceps"); 
insert into ejercicios(nombre,musculo) values ("curl 21 polea","biceps"); 
insert into ejercicios(nombre,musculo) values ("curl 21 barra recta","biceps");  

insert into ejercicios(nombre,musculo) values ("maquina horizontal articulada","pecho"); 
insert into ejercicios(nombre,musculo) values ("maquina inclinada articualda","pecho"); 
insert into ejercicios(nombre,musculo) values ("press inclinado articulado","pecho"); 
insert into ejercicios(nombre,musculo) values ("press inclinado barra","pecho"); 
insert into ejercicios(nombre,musculo) values ("press inclinado mancuerna","pecho"); 
insert into ejercicios(nombre,musculo) values ("press horizontal barra","pecho"); 
insert into ejercicios(nombre,musculo) values ("press horizontal mancuerna","pecho"); 
insert into ejercicios(nombre,musculo) values ("press declinado barra","pecho"); 
insert into ejercicios(nombre,musculo) values ("press declinado mancuerna","pecho"); 
insert into ejercicios(nombre,musculo) values ("cristos inclinado mancuerna","pecho"); 
insert into ejercicios(nombre,musculo) values ("cristos horizontal mancuerna","pecho"); 
insert into ejercicios(nombre,musculo) values ("press peso asistido abierto","pecho"); 
insert into ejercicios(nombre,musculo) values ("press peso asistido cerrado","pecho"); 
insert into ejercicios(nombre,musculo) values ("cross over poela alta","pecho"); 
insert into ejercicios(nombre,musculo) values ("cross over poela baja","pecho"); 
insert into ejercicios(nombre,musculo) values ("pull over mancuerna","pecho"); 
insert into ejercicios(nombre,musculo) values ("pull over barra","pecho"); 
insert into ejercicios(nombre,musculo) values ("peck deck","pecho"); 
insert into ejercicios(nombre,musculo) values ("lagartijas","pecho"); 
insert into ejercicios(nombre,musculo) values ("fondos","pecho"); 
insert into ejercicios(nombre,musculo) values ("peck fly","pecho"); 
insert into ejercicios(nombre,musculo) values ("press inclinado cerrado mancuerna","pecho"); 
insert into ejercicios(nombre,musculo) values ("lagartijas laterales banco","pecho"); 
insert into ejercicios(nombre,musculo) values ("fondos maquina peso asistido","pecho"); 

insert into ejercicios(nombre,musculo) values ("press articulado","hombro"); 
insert into ejercicios(nombre,musculo) values ("press peso asistido","hombro"); 
insert into ejercicios(nombre,musculo) values ("press (tejedora) abierto","hombro"); 
insert into ejercicios(nombre,musculo) values ("press (tejedora) frente","hombro"); 
insert into ejercicios(nombre,musculo) values ("maquina press abierto","hombro"); 
insert into ejercicios(nombre,musculo) values ("maquina press frente","hombro"); 
insert into ejercicios(nombre,musculo) values ("press militar barra frente","hombro"); 
insert into ejercicios(nombre,musculo) values ("press mancuerna","hombro"); 
insert into ejercicios(nombre,musculo) values ("frontales barra","hombro"); 
insert into ejercicios(nombre,musculo) values ("frontales disco","hombro"); 
insert into ejercicios(nombre,musculo) values ("frontales polea barra","hombro"); 
insert into ejercicios(nombre,musculo) values ("frontales polea cuerda","hombro"); 
insert into ejercicios(nombre,musculo) values ("frontales polea 1 mano","hombro"); 
insert into ejercicios(nombre,musculo) values ("laterales maquina","hombro"); 
insert into ejercicios(nombre,musculo) values ("laterales mancuerna","hombro"); 
insert into ejercicios(nombre,musculo) values ("laterales mancuerna 1 mano","hombro"); 
insert into ejercicios(nombre,musculo) values ("laterales mancuerna sentado","hombro"); 
insert into ejercicios(nombre,musculo) values ("laterales polea","hombro"); 
insert into ejercicios(nombre,musculo) values ("laterales poela 1 mano","hombro"); 

insert into ejercicios(nombre,musculo) values ("dominadas abiertas","espalda"); 
insert into ejercicios(nombre,musculo) values ("dominadas cerradas","espalda"); 
insert into ejercicios(nombre,musculo) values ("jalon al frente maquina","espalda"); 
insert into ejercicios(nombre,musculo) values ("jalon polea alta abierta","espalda"); 
insert into ejercicios(nombre,musculo) values ("jalon poela alta cerrada","espalda"); 
insert into ejercicios(nombre,musculo) values ("jalon polea alta tringulo","espalda"); 
insert into ejercicios(nombre,musculo) values ("remo sentado abierto","espalda"); 
insert into ejercicios(nombre,musculo) values ("remo sentado cerrado","espalda"); 
insert into ejercicios(nombre,musculo) values ("remo sentado a una mano","espalda"); 
insert into ejercicios(nombre,musculo) values ("pull over con polea","espalda"); 
insert into ejercicios(nombre,musculo) values ("pull over maquina","espalda"); 
insert into ejercicios(nombre,musculo) values ("remo sentado (moto)","espalda"); 
insert into ejercicios(nombre,musculo) values ("remo con mancuerna cerrado","espalda"); 
insert into ejercicios(nombre,musculo) values ("remo  barra T abierto","espalda"); 
insert into ejercicios(nombre,musculo) values ("remo barra T cerrado","espalda"); 
insert into ejercicios(nombre,musculo) values ("remo barra recta abierto","espalda"); 
insert into ejercicios(nombre,musculo) values ("remo barra recta cerrda","espalda"); 
insert into ejercicios(nombre,musculo) values ("peso muerto","espalda"); 
insert into ejercicios(nombre,musculo) values ("hiper extenciones","espalda"); 
insert into ejercicios(nombre,musculo) values ("pulll over polea alta 2 manos","espalda"); 
insert into ejercicios(nombre,musculo) values ("remo sentado triangulo","espalda"); 
insert into ejercicios(nombre,musculo) values ("peck fly invertido","espalda"); 
insert into ejercicios(nombre,musculo) values ("dominadas maquina con peso asistido","espalda"); 
insert into ejercicios(nombre,musculo) values ("pull over barra","espalda"); 
insert into ejercicios(nombre,musculo) values ("jalon polea alta barra bigote","espalda"); 
insert into ejercicios(nombre,musculo) values ("remo a dos manos con mancuerna en banco inclinado","espalda"); 

insert into ejercicios(nombre,musculo) values ("encogimiento mancuernas","trapecio"); 
insert into ejercicios(nombre,musculo) values ("encogimiento barra frente","trapecio"); 
insert into ejercicios(nombre,musculo) values ("encogimiento barras atras","trapecio"); 
insert into ejercicios(nombre,musculo) values ("encogimiento barras sentado","trapecio"); 
insert into ejercicios(nombre,musculo) values ("encogimiento en sentadilla per.","trapecio"); 
insert into ejercicios(nombre,musculo) values ("encogimiento en barra smith","trapecio"); 
insert into ejercicios(nombre,musculo) values ("cristos invertidos cables","trapecio"); 
insert into ejercicios(nombre,musculo) values ("cristos invertidos sentado","trapecio"); 
insert into ejercicios(nombre,musculo) values ("cristos invertidos inclinado","trapecio"); 
insert into ejercicios(nombre,musculo) values ("apertura con cuerda","trapecio"); 
insert into ejercicios(nombre,musculo) values ("apertura con movimiento","trapecio"); 
insert into ejercicios(nombre,musculo) values ("remo de pie con barra","trapecio"); 
insert into ejercicios(nombre,musculo) values ("encogimiento polea baja con barra","trapecio"); 



