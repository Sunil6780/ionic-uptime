import { registerPlugin } from '@capacitor/core';

import type { UptimePlugin } from './definitions';

const Uptime = registerPlugin<UptimePlugin>('Uptime', {
  web: () => import('./web').then((m) => new m.UptimeWeb()),
});

export * from './definitions';
export { Uptime };