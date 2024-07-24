export interface CodereCapacitorPluginPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
