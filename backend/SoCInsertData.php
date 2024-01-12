<?php
header("Access-Control-Allow-Origin: http://localhost:5173");
header('Access-Control-Allow-Methods: GET, POST');
header('Access-Control-Allow-Headers: Content-Type');

require_once 'Database.php';

function setSoCData() {
    $conn = connect_to_database();

    $postData = json_decode(file_get_contents('php://input'), true);

    $query = "INSERT INTO soc (
      id_soc, id_soc_clanok, soc_obrazok, soc_nazov, soc_jadra, soc_pocet_jadier, soc_instrukcna_sada, soc_l2, soc_l3, soc_vyrobny_proces,
      soc_nazov_gpu, soc_frekvencia_gpu, soc_verzia_vulkan, soc_verzia_open_gl, soc_verzia_open_cl, soc_verzia_directx,
      soc_NPU, soc_typ_pamate, soc_max_rozlis_obr, soc_max_rozlis_kamery, soc_nahravanie_videii, soc_prehravanie_videii,
      soc_video_kodeky, soc_audio_kodeky, soc_typ_pamate_ram, soc_frekvencia_pamate, soc_zbernica, soc_max_velkost_pamate,
      soc_modem, soc_4g_podpora, soc_5g_podpora, soc_max_prenosova_r, soc_max_nahravanie_r, soc_verzia_wifi,
      soc_verzia_bluetooth, soc_navigacia, soc_sirka_pasma, soc_antutu_zariadenie, soc_antutu_cpu, soc_antutu_gpu,
      soc_antutu_mem, soc_antutu_ux, soc_antutu_vs, soc_mark_zariadenie, soc_mark_benchmark, soc_mark_skore,
      soc_geekbench_zariadenie, soc_geekbench_scs, soc_geekbench_mcs
    ) VALUES (
      :id_soc, :id_soc_clanok, :soc_obrazok, :soc_nazov, :soc_jadra, :soc_pocet_jadier, :soc_instrukcna_sada, :soc_l2, :soc_l3, :soc_vyrobny_proces,
      :soc_nazov_gpu, :soc_frekvencia_gpu, :soc_verzia_vulkan, :soc_verzia_open_gl, :soc_verzia_open_cl, :soc_verzia_directx,
      :soc_NPU, :soc_typ_pamate, :soc_max_rozlis_obr, :soc_max_rozlis_kamery, :soc_nahravanie_videii, :soc_prehravanie_videii,
      :soc_video_kodeky, :soc_audio_kodeky, :soc_typ_pamate_ram, :soc_frekvencia_pamate, :soc_zbernica, :soc_max_velkost_pamate,
      :soc_modem, :soc_4g_podpora, :soc_5g_podpora, :soc_max_prenosova_r, :soc_max_nahravanie_r, :soc_verzia_wifi,
      :soc_verzia_bluetooth, :soc_navigacia, :soc_sirka_pasma, :soc_antutu_zariadenie, :soc_antutu_cpu, :soc_antutu_gpu,
      :soc_antutu_mem, :soc_antutu_ux, :soc_antutu_vs, :soc_mark_zariadenie, :soc_mark_benchmark, :soc_mark_skore,
      :soc_geekbench_zariadenie, :soc_geekbench_scs, :soc_geekbench_mcs
    )";

    $stmt = $conn->prepare($query);

    foreach ($postData as $key => $value) {
      $stmt->bindValue(':'.$key, $value);
    }

    $stmt->execute();

    close_database_connection($conn);

}

setSoCData();
?>