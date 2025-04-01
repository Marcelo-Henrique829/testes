resolution_width = 1024 // resolução padrão
resolution_height = 576 // resolução padrão

def_cam_scale = 1;
def_cam_speed =0.2;

def_foccus_time = 50
foccus_time = 50







resolution_scale = def_cam_scale //escala da resolução da camera
global.view_width = resolution_width / resolution_scale; // definindo o tamanho do width da camera
global.view_height = resolution_height / resolution_scale; //definindo o tamanho do height da camera
alvo = obj_inimigo; //definindo o alvo da camera
vel_cam = def_cam_speed //velocidade na qual a camera segue o personagem(só pra ficar bonitinho msm)

window_set_size(global.view_width * resolution_scale, global.view_height * resolution_scale); //definindo o tamanho da janela
surface_resize(application_surface, global.view_width * resolution_scale, global.view_height * resolution_scale) //aplicando a resolução pra superficie do jogo


gravando = function()
{
		var _x1 = alvo.x - global.view_width / 2; //variavel que vai seguir o x do jogador
		var _y1 = alvo.y - global.view_height / 2; //variavel que vai seguir o y do jogador
		

		_x1 = clamp(_x1, 0, room_width - global.view_width); //clamp pra limitar o x da camera
		_y1 = clamp(_y1, 0, room_height - global.view_height); //clamp pra limitar o y da camera
		
		var _cx = camera_get_view_x(view_camera[0]) //pegando o x da camera
		var _cy = camera_get_view_y(view_camera[0]) //pegando o y da camera
		
		camera_set_view_pos(view_camera[0], lerp(_cx, _x1, vel_cam) , lerp(_cy, _y1, vel_cam)); //comando que vai fazer a camera seguir o jogador
	
}	
	