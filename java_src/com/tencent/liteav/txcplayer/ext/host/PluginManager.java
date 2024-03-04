package com.tencent.liteav.txcplayer.ext.host;

import android.text.TextUtils;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.txcplayer.ext.config.PluginConfigCenter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public class PluginManager {
    private static final String TAG = "HostEngine-PluginManager";
    private static PluginManager mInstance;
    private List<PluginInfo> mPluginConfigList;
    private ConcurrentHashMap<Integer, IPluginBase> mPluginMap = new ConcurrentHashMap<>();

    private PluginManager() {
    }

    private boolean _doLoadPlugin(PluginInfo pluginInfo) {
        int i9 = pluginInfo.mPluginId;
        if (this.mPluginMap.containsKey(Integer.valueOf(i9))) {
            LiteavLog.w(TAG, "[loadPlugin], pluginId has been loaded!!, pluginId=".concat(String.valueOf(i9)));
            return true;
        }
        IPluginBase createPluginInstance = createPluginInstance(i9, pluginInfo.mPluginClazzName);
        if (createPluginInstance != null) {
            createPluginInstance.onCreate(HostEngine.getInstance().getAppContext());
            this.mPluginMap.put(Integer.valueOf(i9), createPluginInstance);
            LiteavLog.d(TAG, "[loadPlugin], succeed loading pluginId=" + i9 + " ,pluginClazzName=" + pluginInfo.mPluginClazzName);
            return true;
        }
        LiteavLog.w(TAG, "[loadPlugin], pluginId=" + i9 + " is not exist, do not load!!");
        return false;
    }

    private IPluginBase createPluginInstance(int i9, String str) {
        LiteavLog.i(TAG, "[createPluginInstance],pluginId|" + i9 + "|clazzName|" + str);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return (IPluginBase) Class.forName(str).newInstance();
        } catch (Exception unused) {
            LiteavLog.w(TAG, "create pluginInstance exception, pluginId|" + i9 + "|clazzName|" + str + " is not install in dex!!");
            return null;
        }
    }

    private void doLoadPlugin() {
        for (PluginInfo pluginInfo : this.mPluginConfigList) {
            LiteavLog.d(TAG, "[loadPlugin], pluginId=" + pluginInfo.mPluginId + " ,pluginClazzName=" + pluginInfo.mPluginClazzName);
            if (pluginInfo.mIsCorePlugin) {
                _doLoadPlugin(pluginInfo);
            } else {
                LiteavLog.d(TAG, "[loadPlugin], pluginId=" + pluginInfo.mPluginId + " is not core plugin, do not load by default");
            }
        }
    }

    public static PluginManager getInstance() {
        if (mInstance == null) {
            synchronized (PluginManager.class) {
                if (mInstance == null) {
                    mInstance = new PluginManager();
                }
            }
        }
        return mInstance;
    }

    private void loadPluginConfig() {
        if (this.mPluginConfigList == null) {
            this.mPluginConfigList = new ArrayList();
        }
        PluginConfigCenter.loadPluginConfig(this.mPluginConfigList);
    }

    public boolean checkAndLoadPlugin(int i9) {
        if (this.mPluginMap.containsKey(Integer.valueOf(i9))) {
            return true;
        }
        PluginInfo pluginInfo = null;
        Iterator<PluginInfo> it = this.mPluginConfigList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            PluginInfo next = it.next();
            if (next.mPluginId == i9) {
                pluginInfo = next;
                break;
            }
        }
        if (pluginInfo != null) {
            return _doLoadPlugin(pluginInfo);
        }
        return false;
    }

    public IPluginBase getPluginInstance(int i9) {
        return this.mPluginMap.get(Integer.valueOf(i9));
    }

    public void loadPlugin() {
        loadPluginConfig();
        doLoadPlugin();
    }

    public void unLoadPlugin() {
        for (PluginInfo pluginInfo : this.mPluginConfigList) {
            int i9 = pluginInfo.mPluginId;
            LiteavLog.w(TAG, "[unLoadPlugin], unLoadPlugin=".concat(String.valueOf(i9)));
            IPluginBase iPluginBase = this.mPluginMap.get(Integer.valueOf(i9));
            if (iPluginBase != null) {
                iPluginBase.onDestroy();
                this.mPluginMap.remove(Integer.valueOf(i9));
            }
        }
    }
}
