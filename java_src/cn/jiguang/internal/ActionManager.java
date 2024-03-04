package cn.jiguang.internal;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import cn.jiguang.a.a;
import cn.jiguang.api.JDispatchAction;
import cn.jiguang.ar.c;
import cn.jiguang.as.d;
import com.tencent.imsdk.BaseConstants;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class ActionManager {
    private static final String TAG = "ActionManager";
    private static volatile ActionManager detachDataManager;
    private static final Object lock = new Object();
    private static HashMap<String, JDispatchAction> actionMap = new HashMap<>();
    private static HashMap<String, String> actionStringMap = new HashMap<>();

    public ActionManager() {
        c.a();
    }

    public static void addAction(String str, String str2) {
        Log.d(TAG, "addAction type:" + str + ",action:" + str2);
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        if (actionMap.containsKey(str)) {
            d.c(TAG, "has same type action");
            return;
        }
        try {
            Object newInstance = Class.forName(str2).newInstance();
            if (newInstance instanceof JDispatchAction) {
                actionStringMap.put(str, str2);
                actionMap.put(str, (JDispatchAction) newInstance);
            } else {
                d.g(TAG, "this action is not a JDispatchAction,please check and extends JDispatchAction");
            }
        } catch (Throwable th2) {
            d.h(TAG, "#unexcepted - instance " + str2 + " class failed:" + th2);
        }
    }

    public static HashMap<String, String> getActionMap() {
        return actionStringMap;
    }

    public static ActionManager getInstance() {
        if (detachDataManager == null) {
            synchronized (lock) {
                if (detachDataManager == null) {
                    detachDataManager = new ActionManager();
                }
            }
        }
        return detachDataManager;
    }

    public void handleMessage(Context context, String str, Object obj) {
        d.a(TAG, "onSended type:" + str + ",actionMap size:" + actionMap.size());
        if (TextUtils.isEmpty(str)) {
            for (Map.Entry<String, JDispatchAction> entry : actionMap.entrySet()) {
                entry.getValue().handleMessage(context, entry.getKey(), obj);
            }
            return;
        }
        JDispatchAction jDispatchAction = actionMap.get(str);
        if (jDispatchAction != null) {
            jDispatchAction.handleMessage(context, str, obj);
        }
    }

    public Map<Integer, Bundle> loadPInfo() {
        int i9;
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, JDispatchAction> entry : actionMap.entrySet()) {
            Bundle pInfo = entry.getValue().getPInfo(entry.getKey());
            if (pInfo != null && (i9 = pInfo.getInt("pid", 0)) > 0) {
                hashMap.put(Integer.valueOf(i9), pInfo);
            }
        }
        return hashMap;
    }

    public boolean wrapSdkVersionInfo(JSONObject jSONObject) {
        Object dataByCmd;
        if (jSONObject == null) {
            d.g(TAG, "wrapSdkVersionInfo failed ,container is null");
            return false;
        }
        try {
            jSONObject.put("core_sdk_ver", a.f1808b);
            for (Map.Entry<String, JDispatchAction> entry : actionMap.entrySet()) {
                JDispatchAction value = entry.getValue();
                jSONObject.put(value.getReportVersionKey(entry.getKey()), value.getSdkVersion(entry.getKey()));
                Object dataByCmd2 = value.getDataByCmd(null, BaseConstants.ERR_SVR_FRIENDSHIP_INVALID_PARAMETERS);
                if (dataByCmd2 != null && (dataByCmd2 instanceof String) && (dataByCmd = value.getDataByCmd(null, BaseConstants.ERR_SVR_FRIENDSHIP_INVALID_SDKAPPID)) != null && (dataByCmd instanceof String)) {
                    jSONObject.put((String) dataByCmd2, (String) dataByCmd);
                }
            }
            return true;
        } catch (JSONException unused) {
            return true;
        }
    }
}
