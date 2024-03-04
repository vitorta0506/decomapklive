package com.tencent.liteav.txcplayer.ext.host;

import android.content.Context;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.txcplayer.ext.service.RenderProcessService;
import java.util.Map;
/* loaded from: classes4.dex */
public class HostEngine {
    public static final String TAG = "HostEngine";
    private static HostEngine mInstance;
    private Context mAppContext;
    private boolean mIsInit = false;

    private HostEngine() {
    }

    public static HostEngine getInstance() {
        if (mInstance == null) {
            synchronized (HostEngine.class) {
                if (mInstance == null) {
                    mInstance = new HostEngine();
                }
            }
        }
        return mInstance;
    }

    public boolean checkAndLoadPlugin(int i9) {
        LiteavLog.i(TAG, "[checkAndLoadPlugin], pluginId=".concat(String.valueOf(i9)));
        return PluginManager.getInstance().checkAndLoadPlugin(i9);
    }

    public Context getAppContext() {
        return this.mAppContext;
    }

    public void handleSyncRequestHandleByHost(int i9, Map<String, Object> map, Map<String, Object> map2) {
        LiteavLog.w(TAG, "[handleSyncRequestHandleByHost], functionId=" + i9 + " ,inParams=" + map + " ,outParams=" + map2);
        if (i9 != 1) {
            return;
        }
        int vodLicenseFeature = RenderProcessService.getInstance().getVodLicenseFeature();
        if (map2 != null) {
            map2.put("KEY_RET_PARAM1", Integer.valueOf(vodLicenseFeature));
        }
    }

    public synchronized void init(Context context) {
        LiteavLog.d(TAG, "[init], appContext=" + context + " ,mIsInit=" + this.mIsInit);
        if (this.mIsInit) {
            return;
        }
        this.mAppContext = context;
        onCreate();
        this.mIsInit = true;
    }

    public void onCreate() {
        LiteavLog.d(TAG, "[onCreate]");
        PluginManager.getInstance().loadPlugin();
    }

    public void onDestroy() {
        LiteavLog.d(TAG, "[onDestroy]");
        PluginManager.getInstance().unLoadPlugin();
    }

    public void sendAsyncRequestToPlugin(int i9, int i10, Map<String, Object> map, PluginCallback pluginCallback) {
        IPluginBase pluginInstance = PluginManager.getInstance().getPluginInstance(i9);
        if (pluginInstance != null) {
            pluginInstance.handleAsyncRequest(i9, i10, map, pluginCallback);
            return;
        }
        LiteavLog.w(TAG, "[sendAsyncRequestToPlugin], destPluginId=" + i9 + " is not loaded");
    }

    public void sendSyncRequestHandleByHost(int i9, Map<String, Object> map, Map<String, Object> map2) {
        handleSyncRequestHandleByHost(i9, map, map2);
    }

    public void sendSyncRequestToPlugin(int i9, int i10, Map<String, Object> map, Map<String, Object> map2) {
        IPluginBase pluginInstance = PluginManager.getInstance().getPluginInstance(i9);
        if (pluginInstance != null) {
            pluginInstance.handleSyncRequest(i9, i10, map, map2);
            return;
        }
        LiteavLog.w(TAG, "[sendSyncRequestToPlugin], destPluginId=" + i9 + " is not loaded");
    }
}
