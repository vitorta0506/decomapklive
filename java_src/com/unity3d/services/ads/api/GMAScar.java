package com.unity3d.services.ads.api;

import com.unity3d.services.ads.gmascar.GMAScarAdapterBridge;
import com.unity3d.services.core.webview.bridge.WebViewCallback;
import com.unity3d.services.core.webview.bridge.WebViewExposed;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes4.dex */
public class GMAScar {
    private static GMAScarAdapterBridge gmaScarAdapterBridge = new GMAScarAdapterBridge();

    private static String[] getPlacementList(JSONArray jSONArray) throws JSONException {
        String[] strArr = new String[jSONArray.length()];
        for (int i9 = 0; i9 < jSONArray.length(); i9++) {
            strArr[i9] = jSONArray.getString(i9);
        }
        return strArr;
    }

    @WebViewExposed
    public static void getSCARSignals(JSONArray jSONArray, JSONArray jSONArray2, WebViewCallback webViewCallback) throws JSONException {
        gmaScarAdapterBridge.getSCARSignals(getPlacementList(jSONArray), getPlacementList(jSONArray2));
        webViewCallback.invoke(new Object[0]);
    }

    @WebViewExposed
    public static void getVersion(WebViewCallback webViewCallback) {
        gmaScarAdapterBridge.getVersion();
        webViewCallback.invoke(new Object[0]);
    }

    @WebViewExposed
    public static void initializeScar(WebViewCallback webViewCallback) {
        gmaScarAdapterBridge.initializeScar();
        webViewCallback.invoke(new Object[0]);
    }

    public static void isInitialized(WebViewCallback webViewCallback) {
        gmaScarAdapterBridge.isInitialized();
        webViewCallback.invoke(new Object[0]);
    }

    @WebViewExposed
    public static void load(String str, String str2, Boolean bool, String str3, String str4, Integer num, WebViewCallback webViewCallback) {
        gmaScarAdapterBridge.load(bool.booleanValue(), str, str2, str4, str3, num.intValue());
        webViewCallback.invoke(new Object[0]);
    }

    @WebViewExposed
    public static void show(String str, String str2, Boolean bool, WebViewCallback webViewCallback) {
        gmaScarAdapterBridge.show(str, str2, bool.booleanValue());
        webViewCallback.invoke(new Object[0]);
    }
}
