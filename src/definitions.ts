export interface UptimePlugin {
  echo(options: { value: string }): Promise<{ value: string }>;

  getUptime(options: { includeDeepSleep: boolean }): Promise<{ uptime: number }>;
}
