// MENU DRAW
global.options = ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""];
// menu text hover system
global.index = 0;

// LANGUAGE
// default value of the language is the user's system language
lang = os_get_language();

portuguese = ["novo jogo", "carregar", "configurações", "sair", "linguagem", "mover para cima", "mover para direita", "mover para baixo", "mover para esquerda", "selecionar", "voltar", "Crie seu personagem", "força", "defesa", "vigor", "velocidade"];
english = ["new game", "load", "settings", "leave", "language", "move up", "move right", "move down", "move left", "select", "return", "Create your character", "strength", "defense", "force", "speed"];
spanish = ["nuevo juego", "cargar", "configuración", "salir", "idioma", "arriba movimiento", "moverse a la derecha", "bajar", "moverse a la izquierda", "seleccionar", "volver", "Crea tu personaje", "fortaleza", "defensa", "fuerza", "velocidad"];
french = ["nouveau jeu", "charger", "paramètres", "sortir", "langue", "monter", "aller à droite", "descendre", "aller à gauche", "sélectionner", "quitter", "Créez votre personnage", "force", "défense", "forcer", "vitesse"];

// CONTROLS
// default keys
global.keys = [vk_up, vk_right, vk_down, vk_left, vk_enter];
keys_change = [false, false, false, false, false];