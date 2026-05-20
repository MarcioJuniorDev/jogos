// keys
global.right_key = vk_right;
global.up_key = vk_space;
global.left_key = vk_left 
global.down_key = vk_down
global.dash_key =  ord("Z");
global.atk_key = ord("X");

draw_set_font(Font1)

// language
// default value of the language is the user's system language
lang = os_get_language();
lang_words = [""];

english = ["Play", "Settings", "Leave", "Up key"];
portuguese = ["Jogar", "Configurações", "Sair", string("Tecla para pular\t < {0} >", scrKeyToString(global.up_key))];

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