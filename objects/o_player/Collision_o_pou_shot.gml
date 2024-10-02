// Evento de colisión con o_pou_shot
if (place_meeting(x, y, o_pou_shot)) {
    // Aumentar el nivel de disparo al interactuar
    if (shot_level < 3) {
        shot_level += 1;
    }

    // Destruir solo el o_pou_shot que se ha tocado
    with (other) {
        instance_destroy();
    }
}
