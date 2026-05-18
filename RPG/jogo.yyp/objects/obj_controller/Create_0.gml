draw_set_font(Font1)

// language
// default value of the language is the user's system language
lang = os_get_language();
lang_words = [""];

english = ["Play", "Settings", "Leave"];
portuguese = ["Jogar", "Configurações", "Sair"];

switch(lang)
{
	case "en":
		lang_words = english;
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