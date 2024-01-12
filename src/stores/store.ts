// store.ts
import { defineStore } from 'pinia';
import type { SoC, SoCClanok } from '../stores/types'; // Import SoCClanok type if it's defined

interface AppState {
  selectedSoC: SoC | null;
  allSoCs: SoC[];
  allSoCClanok: SoCClanok[]; // Add state property for SoCClanok[]
}

export const useAppStore = defineStore({
  id: 'app',
  state: (): AppState => ({
    selectedSoC: null,
    allSoCs: [],
    allSoCClanok: [], // Initialize state property for SoCClanok[]
  }),
  actions: {
    setSelectedSoC(selectedSoC: SoC): void {
      this.selectedSoC = selectedSoC;
    },
    async fetchAllSoCs(): Promise<void> {
      try {
        const response = await fetch('/backend/SoCData.php');
        console.log(response);
        const data = await response.json();
        this.allSoCs = data;
      } catch (error) {
        console.error('Error fetching data:', error);
      }
    },
    async fetchAllSoCClanok(): Promise<void> { // Add fetch function for SoCClanok[]
      try {
        const response = await fetch('/backend/SoCClanokData.php'); // Replace with your actual API endpoint
        console.log(response);
        const data = await response.json();
        this.allSoCClanok = data;
      } catch (error) {
        console.error('Error fetching data:', error);
      }
    },
    async addAndPostSoC(soc: SoC) {
      this.allSoCs.push(soc);
      await this.postData('/backend/SoCInsertData.php', soc);
    },
    async addAndPostSoCClanok(clanok: SoCClanok) {
      this.allSoCClanok.push(clanok);
      await this.postData('/backend/SoCClanokInsertData.php', clanok);
    },
    async postData(endpoint: string, data: SoC | SoCClanok) {
      const response = await fetch(endpoint, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
      });
      if (!response.ok) {
        throw new Error('Failed to post data');
      }
    }
  },
});


