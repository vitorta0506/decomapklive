package com.tencent.liteav.txcplayer.ext.host;

import android.content.Context;
import java.util.Map;
/* loaded from: classes4.dex */
public interface IPluginBase {
    PluginInfo getPluginInfo();

    void handleAsyncRequest(int i9, int i10, Map<String, Object> map, PluginCallback pluginCallback);

    void handleSyncRequest(int i9, int i10, Map<String, Object> map, Map<String, Object> map2);

    void onCreate(Context context);

    void onDestroy();
}
