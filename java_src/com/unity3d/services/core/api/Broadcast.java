package com.unity3d.services.core.api;

import com.unity3d.services.core.broadcast.BroadcastError;
import com.unity3d.services.core.broadcast.BroadcastMonitor;
import com.unity3d.services.core.webview.bridge.WebViewCallback;
import com.unity3d.services.core.webview.bridge.WebViewExposed;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes4.dex */
public class Broadcast {
    @WebViewExposed
    public static void addBroadcastListener(String str, JSONArray jSONArray, WebViewCallback webViewCallback) {
        addBroadcastListener(str, null, jSONArray, webViewCallback);
    }

    @WebViewExposed
    public static void removeAllBroadcastListeners(WebViewCallback webViewCallback) {
        BroadcastMonitor.removeAllBroadcastListeners();
        webViewCallback.invoke(new Object[0]);
    }

    @WebViewExposed
    public static void removeBroadcastListener(String str, WebViewCallback webViewCallback) {
        BroadcastMonitor.removeBroadcastListener(str);
        webViewCallback.invoke(new Object[0]);
    }

    @WebViewExposed
    public static void addBroadcastListener(String str, String str2, JSONArray jSONArray, WebViewCallback webViewCallback) {
        try {
            if (jSONArray.length() > 0) {
                String[] strArr = new String[jSONArray.length()];
                for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                    strArr[i9] = jSONArray.getString(i9);
                }
                BroadcastMonitor.addBroadcastListener(str, str2, strArr);
            }
            webViewCallback.invoke(new Object[0]);
        } catch (JSONException unused) {
            webViewCallback.error(BroadcastError.JSON_ERROR, new Object[0]);
        }
    }
}
