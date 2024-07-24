import { registerPlugin } from '@capacitor/core';

import type { CodereCapacitorPluginPlugin } from './definitions';

const CodereCapacitorPlugin = registerPlugin<CodereCapacitorPluginPlugin>(
  'CodereCapacitorPlugin',
  {
    web: () => import('./web').then(m => new m.CodereCapacitorPluginWeb()),
  },
);

export * from './definitions';
export { CodereCapacitorPlugin };
