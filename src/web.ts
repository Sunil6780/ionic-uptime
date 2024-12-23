import { WebPlugin } from '@capacitor/core';

import type { UptimePlugin } from './definitions';

export class UptimeWeb extends WebPlugin implements UptimePlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }

  async getUptime(options: { includeDeepSleep: boolean }): Promise<{ uptime: number }> {
    console.log('Fetching uptime', options);
    // Mock response for web
    return { uptime: 0};
  }
}
