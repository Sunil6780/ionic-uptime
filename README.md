# uptime

This plugin provides the system uptime in milliseconds since boot, allowing developers to track how long a device has been running. This can be particularly useful for monitoring, diagnostics, or adding uptime information within an application.

## Install

```bash
npm install uptime
npx cap sync
```

## API

<docgen-index>

* [`echo(...)`](#echo)
* [`getUptime(...)`](#getuptime)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### echo(...)

```typescript
echo(options: { value: string; }) => Promise<{ value: string; }>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ value: string; }</code> |

**Returns:** <code>Promise&lt;{ value: string; }&gt;</code>

--------------------


### getUptime(...)

```typescript
getUptime(options: { includeDeepSleep: boolean; }) => Promise<{ uptime: number; }>
```

| Param         | Type                                        |
| ------------- | ------------------------------------------- |
| **`options`** | <code>{ includeDeepSleep: boolean; }</code> |

**Returns:** <code>Promise&lt;{ uptime: number; }&gt;</code>

--------------------

</docgen-api>
