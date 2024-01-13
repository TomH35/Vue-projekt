// types.ts
export interface SoC {
  id_soc: number;
  id_soc_clanok: number;
  soc_obrazok: string;
  soc_nazov: string;
  soc_jadra: string;
  soc_pocet_jadier: string;
  soc_instrukcna_sada: string;
  soc_l2: string;
  soc_l3: string;
  soc_vyrobny_proces: string;
  soc_nazov_gpu: string;
  soc_frekvencia_gpu: string;
  soc_verzia_vulkan: string;
  soc_verzia_open_gl: string;
  soc_verzia_open_cl: string;
  soc_verzia_directx: string;
  soc_NPU: string;
  soc_typ_pamate: string;
  soc_max_rozlis_obr: string;
  soc_max_rozlis_kamery: string;
  soc_nahravanie_videii: string;
  soc_prehravanie_videii: string;
  soc_video_kodeky: string;
  soc_audio_kodeky: string;
  soc_typ_pamate_ram: string;
  soc_frekvencia_pamate: string;
  soc_zbernica: string;
  soc_max_velkost_pamate: string;
  soc_modem: string;
  soc_4g_podpora: string;
  soc_5g_podpora: string;
  soc_max_prenosova_r: string;
  soc_max_nahravanie_r: string;
  soc_verzia_wifi: string;
  soc_verzia_bluetooth: string;
  soc_navigacia: string;
  soc_sirka_pasma: string;
  soc_antutu_zariadenie: string;
  soc_antutu_cpu: string;
  soc_antutu_gpu: string;
  soc_antutu_mem: string;
  soc_antutu_ux: string;
  soc_antutu_vs: string;
  soc_mark_zariadenie: string;
  soc_mark_benchmark: string;
  soc_mark_skore: string;
  soc_geekbench_zariadenie: string;
  soc_geekbench_scs: string;
  soc_geekbench_mcs: string;
}


export interface SoCClanok {
    id_soc: number;
    nadpis: string;
    text: string;
    clanok_obrazok: string;
  }

  export interface State {
    isLoggedIn: boolean;
    errorMessage: string;
  }
  export interface DeletePayload {
    id_soc: number;
  }
  
  
  export const socList: SoC[] = [
    {
      id_soc: 0,
      id_soc_clanok: 0,
      soc_obrazok: '',
      soc_nazov: '',
      soc_jadra: '',
      soc_pocet_jadier: '',
      soc_instrukcna_sada: '',
      soc_l2: '',
      soc_l3: '',
      soc_vyrobny_proces: '',
      soc_nazov_gpu: '',
      soc_frekvencia_gpu: '',
      soc_verzia_vulkan: '',
      soc_verzia_open_gl: '',
      soc_verzia_open_cl: '',
      soc_verzia_directx: '',
      soc_NPU: '',
      soc_typ_pamate: '',
      soc_max_rozlis_obr: '',
      soc_max_rozlis_kamery: '',
      soc_nahravanie_videii: '',
      soc_prehravanie_videii: '',
      soc_video_kodeky: '',
      soc_audio_kodeky: '',
      soc_typ_pamate_ram: '',
      soc_frekvencia_pamate: '',
      soc_zbernica: '',
      soc_max_velkost_pamate: '',
      soc_modem: '',
      soc_4g_podpora: '',
      soc_5g_podpora: '',
      soc_max_prenosova_r: '',
      soc_max_nahravanie_r: '',
      soc_verzia_wifi: '',
      soc_verzia_bluetooth: '',
      soc_navigacia: '',
      soc_sirka_pasma: '',
      soc_antutu_zariadenie: '',
      soc_antutu_cpu: '',
      soc_antutu_gpu: '',
      soc_antutu_mem: '',
      soc_antutu_ux: '',
      soc_antutu_vs: '',
      soc_mark_zariadenie: '',
      soc_mark_benchmark: '',
      soc_mark_skore: '',
      soc_geekbench_zariadenie: '',
      soc_geekbench_scs: '',
      soc_geekbench_mcs: '',
    },
  ];
  