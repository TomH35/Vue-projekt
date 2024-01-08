<!-- Add your Vue.js script tag and other dependencies here -->

<template>
    <div>
      <div class="row custom-margin-left-image mb-5">
        <div class="col-sm-3">
          <img :src="'data:image/jpeg;base64,' + base64Encode(soc_clanok[0].soc_obrazok)" alt="SoC image" class="custom-img-size">
        </div>
        <div class="col-sm-9">
          <h2 class="custom-margin-left-title">{{ soc_clanok[0].soc_nazov }}</h2>
        </div>
      </div>
  
      <!-- CPU Section -->
      <div class="row">
        <div class="card w-75 mx-auto">
          <div class="card-body">
            <h4 class="card-title">CPU</h4>
            <p class="card-text">
              <table class="table">
                <tbody>
                  <tr>
                    <th scope="row"><strong>Jadra</strong></th>
                    <td>{{ soc_clanok[0].soc_jadra }}</td>
                  </tr>
                  <tr>
                    <th scope="row"><strong>Počet jadier</strong></th>
                    <td>{{ soc_clanok[0].soc_pocet_jadier }}</td>
                  </tr>
                  <!-- Add other CPU details as needed -->
                </tbody>
              </table>
            </p>
          </div>
        </div>
      </div>
  
      <!-- GPU Section -->
      <!-- Add other sections similarly -->
  
      <!-- Benchmark Section -->
      <div class="row mt-3">
        <div class="card w-75 mx-auto">
          <div class="card-body">
            <h5 class="card-title">Benchmarky</h5>
            <p class="card-text">
              <div class="accordion accordion-flush" id="accordionPanelsStayOpen">
                <!-- AnTuTu Benchmark -->
                <div class="accordion-item">
                  <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
                      AnTuTu Benchmark
                    </button>
                  </h2>
                  <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
                    <div class="accordion-body">
                      <table class="table">
                        <tbody>
                          <tr>
                            <th scope="row"><strong>Zariadenie</strong></th>
                            <td>{{ soc_clanok[0].soc_antutu_zariadenie }}</td>
                          </tr>
                          <!-- Add other AnTuTu Benchmark details as needed -->
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
                <!-- Add other benchmark sections similarly -->
              </div>
            </p>
          </div>
        </div>
      </div>
  
      <!-- Add other sections as needed -->
  
      <div class="container text-center mt-3 mb-3">
        <button @click="goBack" class="btn custom-button-color mt-5">Späť</button>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        soc_clanok: [
          // Add your data here
        ],
      };
    },
    methods: {
      base64Encode(data) {
        // Add your base64 encoding logic here
      },
      goBack() {
        // Add your go back logic here
      },
    },
  };
  </script>
  
  <style scoped>
  /* Add your styling here */
  </style>
  