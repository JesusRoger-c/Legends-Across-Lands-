
//fazendo a colisão 
//checando se está tendo colisão 
var _col = instance_place(x + velh, y, obj_chao);
//se eu colidi eu grudo no lugar 
if(_col)
{
	
//checando se eu estou indo para direita 
if (velh > 0)
{
	//grudando na esquerda da parede
  x = _col.bbox_left + (x - bbox_right);
}

//checando se estou indo para esquerda 
if(velh < 0)
{
x = _col.bbox_right + (x - bbox_left);
}

velh = 0;

}

//movendo o jogador 
x += velh;






var _col = instance_place(x, y + velv, obj_chao);
if (_col)
{
if(velv  > 0)
{
   //indo para baixo 
   
   y = _col.bbox_top + (y - bbox_bottom);
   
 }

if(velv < 0)
	 {

	    //indo para cima

	    y = _col.bbox_bottom + (y - bbox_top);

	 }
	 
	 
velv = 0; // VER SE ESTÁ CERTO AQUI  

}



//Aplicando gravidade 
y += velv; 


