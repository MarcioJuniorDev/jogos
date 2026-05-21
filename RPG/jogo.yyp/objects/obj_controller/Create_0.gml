// keys
global.up_key = vk_space;
global.right_key = vk_right;
global.left_key = vk_left 
global.down_key = vk_down
global.dash_key =  ord("Z");
global.atk_key = ord("X");

draw_set_font(Font1)

// language
// default value of the language is the user's system language
lang = os_get_language();
lang_words = [""];

english = ["Play", "Settings", "Leave", "Up key",  srcKeyWords("Up key", global.up_key), srcKeyWords("Right key", global.right_key), srcKeyWords("Left key", global.left_key), srcKeyWords("Down key", global.down_key), srcKeyWords("Dash key", global.dash_key), srcKeyWords("Attack key", global.atk_key)];
portuguese = ["Jogar", "Configurações", "Sair",srcKeyWords("Tecla para pular", global.up_key), srcKeyWords("Tecla para direita", global.right_key), srcKeyWords("Tecla para esquerda", global.left_key), srcKeyWords("Tecla para baixo", global.down_key), srcKeyWords("Tecla para dash (avanço)", global.dash_key), srcKeyWords("Tecla para atacar", global.atk_key)];

switch(lang)
{
	case "en":   
	break; 
	
	case "pt": 
		lang_words = portuguese;
	break;
	
	default:
		lang_words = english;
	break;
}

// menu draw
play = [lang_words[0], 90, 860, string_width(lang_words[0]), string_height(lang_words[0]), c_white];
settings = [lang_words[1], 90, 910, string_width(lang_words[1]), string_height(lang_words[1]), c_white];
leave = [lang_words[2], 90, 960, string_width(lang_words[2]), string_height(lang_words[2]), c_white];
config_up_key = [lang_words[3], 900, 340, string_width(lang_words[3]), string_height(lang_words[3]), c_white];
config_right_key = [lang_words[4], 900, 400, string_width(lang_words[4]), string_height(lang_words[4]), c_white];
config_left_key = [lang_words[5], 900, 460, string_width(lang_words[5]), string_height(lang_words[5]), c_white];
config_down_key = [lang_words[6], 900, 520, string_width(lang_words[6]), string_height(lang_words[6]), c_white];
config_dash_key = [lang_words[7], 900, 580, string_width(lang_words[7]), string_height(lang_words[7]), c_white];
config_atk_key = [lang_words[8], 900, 640, string_width(lang_words[8]), string_height(lang_words[8]), c_white];