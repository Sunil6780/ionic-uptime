package com.indigo.plugins.uptime;

import android.os.SystemClock;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.annotation.CapacitorPlugin;
import com.getcapacitor.PluginMethod;
@CapacitorPlugin(name = "Uptime")
public class UptimePlugin extends Plugin {

    @PluginMethod
    public void getUptime(PluginCall call) {
        boolean includeDeepSleep = call.getBoolean("includeDeepSleep", false);

        long uptime = includeDeepSleep ? SystemClock.elapsedRealtime() : SystemClock.uptimeMillis();

        JSObject result = new JSObject();
        result.put("uptime", uptime);

        call.resolve(result);
    }
}
