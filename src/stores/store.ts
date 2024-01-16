// store.ts
import { defineStore } from 'pinia';
import type { SoC, SoCClanok, DeletePayload } from '../stores/types';

interface AppState {
  selectedSoC: SoC | null;
  allSoCs: SoC[];
  allSoCClanok: SoCClanok[];
}

export const useAppStore = defineStore({
  id: 'app',
  state: (): AppState => ({
    selectedSoC: null,
    allSoCs: [],
    allSoCClanok: [],
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
    async fetchAllSoCClanok(): Promise<void> {
      try {
        const response = await fetch('/backend/SoCClanokData.php');
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
    async deleteArticle(id_soc: number) {
      this.allSoCs = this.allSoCs.filter(soc => soc.id_soc !== id_soc);
      this.allSoCClanok = this.allSoCClanok.filter(clanok => clanok.id_soc !== id_soc);
      await this.postData('/backend/SoCDeleteData.php', { id_soc });
    },
    async postData(endpoint: string, data: SoC | SoCClanok | DeletePayload) {
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


