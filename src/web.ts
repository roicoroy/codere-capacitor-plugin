import { WebPlugin } from '@capacitor/core';

import type { CodereCapacitorPluginPlugin } from './definitions';

export class CodereCapacitorPluginWeb
  extends WebPlugin
  implements CodereCapacitorPluginPlugin
{
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
