//Declaração de variaveis 

velh	 = 0;
velv	 = 0;
vel		 = 5;
grav	 = .25;
vel_jump = 8;
global.premio = 0;
global.osso = 1;
global.life = 4;




dano = false;
tempo_dano = room_speed * 1;
timer_dano = 0;
inv_tempo = room_speed * 0.5;
inv_timer  = 0;

inputs = {
	
	left : ord("A"),
	right : ord("D"),
	jump : ord("W")
	
}