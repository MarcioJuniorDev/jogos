// MENU DRAW
options = ["", "", "", "", "", "", "", "", "", "", ""];
// menu text hover system
index = 0;

// LANGUAGE
lang = os_get_language();
portuguese = ["novo jogo", "carregar", "configurações", "sair", "linguagem", "mover para cima", "mover para direita", "mover para baixo", "mover para esquerda", "selecionar", "voltar"];
english = ["new game", "load", "settings", "leave", "language", "move up", "move right", "move down", "move left", "select", "return"];
spanish = ["nuevo juego", "cargar", "configuración", "salir", "idioma", "arriba movimiento", "moverse a la derecha", "bajar", "moverse a la izquierda", "seleccionar", "volver"];
french = ["nouveau jeu", "charger", "paramètres", "sortir", "langue", "monter", "aller à droite", "descendre", "aller à gauche", "sélectionner", "quitter"];

// controls
keys = [vk_up, vk_right, vk_down, vk_left, vk_enter];
key_change = false;