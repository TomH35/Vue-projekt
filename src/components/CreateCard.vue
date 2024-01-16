<template>
    <section class="container mt-5">
    
        <!--formular-->
    
        <div class = "d-flex justify-content-center mt-5">
    
        <div class="card w-50 mt-5">
      <div class="card-body">
      <h2 class="text-center card-title"> <strong>Vytvoriť článok</strong></h2>
      <p class="card-text"><form class="needs-validation" action="" method="post" @submit.prevent="onSubmit" novalidate>
              <div>
                <label for="nadpis" class="form-label">nádpis</label>
                <input type="text" name="nadpis" class="form-control" maxlength="45" id="nadpis" v-model="clanok.nadpis" required>
                <div class="valid-feedback">
                </div>
              </div>

              <div>
                <label for="nadpis" class="form-label">ID</label>
                <input type="number" name="nadpis" class="form-control" maxlength="45" id="nadpis" v-model.number="clanok.id_soc" required>
                <div class="valid-feedback">
                </div>
              </div>
    
              <div class="mt-3">
                <label for="text">Text článku</label>
                <textarea id ="text" name="text" v-model="clanok.text" class="form-control"></textarea>
                <div class="valid-feedback">
                </div>
              </div>
    
              <div class="mt-3">
                <label for="clanok_obrazok" class="form-label">Obrázok článku</label>
                <input type="text" name="clanok_obrazok" class="form-control" id="clanok_obrazok" v-model="clanok.clanok_obrazok">
                <div class="valid-feedback">
                </div>
              </div>
    
              <h2 class="text-center card-title mt-3"><strong>Údaje o SoC</strong></h2>

              <div>
                <div v-for="(value, key) in soc" :key="key" class="mt-3">
                <label :for="key" class="form-label">{{ labelMappings[key] || key }}</label>
                <input v-model="soc[key]" type="text" :name="key" class="form-control" maxlength="255" :id="key">
                <div class="valid-feedback"></div>
                </div>
              </div>
              <div class="mt-3 d-flex justify-content-center">
             <button class="btn custom-button-color" value="Vytvoriť" name="add_soc" type="submit">Vytvoriť</button>
              </div>
            </form></p>
      </div>
      </div>
      </div>
      <div class="container text-center mt-3 mb-3">
        <router-link :to="{ name: 'adminPanel' }" class="nav-link">
                <span class="btn custom-button-color custom-button-margin">Späť</span>
        </router-link>
      </div>
    
      </section>
    </template>
<script lang="ts">
import { ref } from 'vue';
import { useAppStore } from '../stores/store';

export default {
  data() {
    return {
    soc: {
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
      labelMappings: {
      id_soc: "ID SoC",
      id_soc_clanok: "ID Článku",
      soc_obrazok: "Obrazok SoC",
      soc_nazov: "Názov SoC",
      soc_jadra: "Jádra",
      soc_pocet_jadier: 'Počet jadier',
      soc_instrukcna_sada: 'Inštrukčná sada',
      soc_l2: 'L2 Cache',
      soc_l3: 'L3 Cache',
      soc_vyrobny_proces: 'Výrobný proces',
      soc_nazov_gpu: 'Názov GPU',
      soc_frekvencia_gpu: 'Frekvencia GPU',
      soc_verzia_vulkan: 'Vulkan verzia',
      soc_verzia_open_gl: 'Open GL verzia',
      soc_verzia_open_cl: 'Open CL verzia',
      soc_verzia_directx: 'Directx verzia',
      soc_NPU: 'NPU',
      soc_typ_pamate: 'Typ pamäte',
      soc_max_rozlis_obr: 'Max rozlíšenie obrazovky',
      soc_max_rozlis_kamery: 'Max rozlíšenie kamery',
      soc_nahravanie_videii: 'Nahrávanie videií',
      soc_prehravanie_videii: 'Prehrávanie videií',
      soc_video_kodeky: 'Video kodeky',
      soc_audio_kodeky: 'Audio kodeky',
      soc_typ_pamate_ram: 'Typ pamäte rám',
      soc_frekvencia_pamate: 'Frekvencia pamäte rám',
      soc_zbernica: 'Zbernica',
      soc_max_velkost_pamate: 'Velkosť pamäte',
      soc_modem: 'Modem',
      soc_4g_podpora: '4G podpora',
      soc_5g_podpora: '5G podpora',
      soc_max_prenosova_r: 'Max prenosová rýchlosť',
      soc_max_nahravanie_r: 'Max rýchlosť nahrávania',
      soc_verzia_wifi: 'Verzia wifi',
      soc_verzia_bluetooth: 'Verzia bluetooth',
      soc_navigacia: 'Navigácia',
      soc_sirka_pasma: 'Širka pásma',
      soc_antutu_zariadenie: 'Antutu benchmark zariadenie',
      soc_antutu_cpu: 'Antutu benchmark CPU skóre',
      soc_antutu_gpu: 'Antutu benchmark GPU skóre',
      soc_antutu_mem: 'Antutu benchmark Pamäť skóre',
      soc_antutu_ux: 'Antutu benchmark UX skore',
      soc_antutu_vs: 'Antutu benchmark výsledné skóre',
      soc_mark_zariadenie: '3Dmark zariadenie',
      soc_mark_benchmark: '3Dmark benchmark',
      soc_mark_skore: '3Dmark skóre',
      soc_geekbench_zariadenie: 'Geekbench zariadenie',
      soc_geekbench_scs: 'Geekbench single core skóre',
      soc_geekbench_mcs: 'Geekbench multi core skóre',
      },
      clanok: {
        id_soc: 0,
        nadpis: '',
        text: '',
        clanok_obrazok: '',
      },
    };
  },
  methods: {
    async onSubmit() {
      const appStore = useAppStore();
      await appStore.addAndPostSoC(this.soc);
      await appStore.addAndPostSoCClanok(this.clanok);
    },
  },
  watch: {
  'clanok.id_soc': function(newVal) {
    this.soc.id_soc = newVal;
    this.soc.id_soc_clanok = newVal;
  }
},
};
</script>


