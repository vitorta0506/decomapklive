package com.unity3d.services.ads.api;

import com.unity3d.services.ads.webplayer.WebPlayerError;
import com.unity3d.services.ads.webplayer.WebPlayerEventBridge;
import com.unity3d.services.ads.webplayer.WebPlayerSettingsCache;
import com.unity3d.services.ads.webplayer.WebPlayerView;
import com.unity3d.services.ads.webplayer.WebPlayerViewCache;
import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.misc.Utilities;
import com.unity3d.services.core.webview.bridge.WebViewCallback;
import com.unity3d.services.core.webview.bridge.WebViewExposed;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class WebPlayer {
    @WebViewExposed
    public static void clearSettings(String str, WebViewCallback webViewCallback) {
        WebPlayerSettingsCache webPlayerSettingsCache = WebPlayerSettingsCache.getInstance();
        webPlayerSettingsCache.removeWebSettings(str);
        webPlayerSettingsCache.removeWebPlayerSettings(str);
        webPlayerSettingsCache.removeWebPlayerEventSettings(str);
        final WebPlayerView webPlayer = WebPlayerViewCache.getInstance().getWebPlayer(str);
        if (webPlayer != null) {
            Utilities.runOnUiThread(new Runnable() { // from class: com.unity3d.services.ads.api.WebPlayer.6
                @Override // java.lang.Runnable
                public void run() {
                    WebPlayerView.this.setSettings(new JSONObject(), new JSONObject());
                    WebPlayerView.this.setEventSettings(new JSONObject());
                }
            });
            webViewCallback.invoke(new Object[0]);
            return;
        }
        webViewCallback.error(WebPlayerError.WEBPLAYER_NULL, new Object[0]);
    }

    @WebViewExposed
    public static void getErroredSettings(String str, WebViewCallback webViewCallback) {
        WebPlayerView webPlayer = WebPlayerViewCache.getInstance().getWebPlayer(str);
        if (webPlayer != null) {
            Map<String, String> erroredSettings = webPlayer.getErroredSettings();
            JSONObject jSONObject = new JSONObject();
            try {
                for (Map.Entry<String, String> entry : erroredSettings.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            } catch (Exception e10) {
                DeviceLog.exception("Error forming JSON object", e10);
            }
            webViewCallback.invoke(jSONObject);
            webViewCallback.invoke(new Object[0]);
            return;
        }
        webViewCallback.error(WebPlayerError.WEBPLAYER_NULL, new Object[0]);
    }

    @WebViewExposed
    public static void getFrame(final String str, final String str2, WebViewCallback webViewCallback) {
        webViewCallback.invoke(new Object[0]);
        final WebPlayerView webPlayer = WebPlayerViewCache.getInstance().getWebPlayer(str2);
        if (webPlayer != null) {
            Utilities.runOnUiThread(new Runnable() { // from class: com.unity3d.services.ads.api.WebPlayer.7
                @Override // java.lang.Runnable
                public void run() {
                    int[] iArr = new int[2];
                    WebPlayerView.this.getLocationOnScreen(iArr);
                    WebPlayerEventBridge.sendGetFrameResponse(str, str2, iArr[0], iArr[1], WebPlayerView.this.getWidth(), WebPlayerView.this.getHeight(), WebPlayerView.this.getAlpha());
                }
            });
        }
    }

    @WebViewExposed
    public static void sendEvent(JSONArray jSONArray, String str, WebViewCallback webViewCallback) {
        WebPlayerView webPlayer = WebPlayerViewCache.getInstance().getWebPlayer(str);
        if (webPlayer != null) {
            webPlayer.sendEvent(jSONArray);
            webViewCallback.invoke(new Object[0]);
            return;
        }
        webViewCallback.error(WebPlayerError.WEBPLAYER_NULL, new Object[0]);
    }

    @WebViewExposed
    public static void setData(final String str, final String str2, final String str3, String str4, WebViewCallback webViewCallback) {
        final WebPlayerView webPlayer = WebPlayerViewCache.getInstance().getWebPlayer(str4);
        if (webPlayer != null) {
            Utilities.runOnUiThread(new Runnable() { // from class: com.unity3d.services.ads.api.WebPlayer.2
                @Override // java.lang.Runnable
                public void run() {
                    WebPlayerView.this.loadData(str, str2, str3);
                }
            });
            webViewCallback.invoke(new Object[0]);
            return;
        }
        webViewCallback.error(WebPlayerError.WEBPLAYER_NULL, new Object[0]);
    }

    @WebViewExposed
    public static void setDataWithUrl(final String str, final String str2, final String str3, final String str4, String str5, WebViewCallback webViewCallback) {
        final WebPlayerView webPlayer = WebPlayerViewCache.getInstance().getWebPlayer(str5);
        if (webPlayer != null) {
            Utilities.runOnUiThread(new Runnable() { // from class: com.unity3d.services.ads.api.WebPlayer.3
                @Override // java.lang.Runnable
                public void run() {
                    WebPlayerView.this.loadDataWithBaseURL(str, str2, str3, str4, null);
                }
            });
            webViewCallback.invoke(new Object[0]);
            return;
        }
        webViewCallback.error(WebPlayerError.WEBPLAYER_NULL, new Object[0]);
    }

    @WebViewExposed
    public static void setEventSettings(final JSONObject jSONObject, String str, WebViewCallback webViewCallback) {
        WebPlayerSettingsCache.getInstance().addWebPlayerEventSettings(str, jSONObject);
        final WebPlayerView webPlayer = WebPlayerViewCache.getInstance().getWebPlayer(str);
        if (webPlayer != null) {
            Utilities.runOnUiThread(new Runnable() { // from class: com.unity3d.services.ads.api.WebPlayer.5
                @Override // java.lang.Runnable
                public void run() {
                    WebPlayerView.this.setEventSettings(jSONObject);
                }
            });
            webViewCallback.invoke(new Object[0]);
            return;
        }
        webViewCallback.error(WebPlayerError.WEBPLAYER_NULL, new Object[0]);
    }

    @WebViewExposed
    public static void setSettings(final JSONObject jSONObject, final JSONObject jSONObject2, String str, WebViewCallback webViewCallback) {
        WebPlayerSettingsCache.getInstance().addWebSettings(str, jSONObject);
        WebPlayerSettingsCache.getInstance().addWebPlayerSettings(str, jSONObject2);
        final WebPlayerView webPlayer = WebPlayerViewCache.getInstance().getWebPlayer(str);
        if (webPlayer != null) {
            Utilities.runOnUiThread(new Runnable() { // from class: com.unity3d.services.ads.api.WebPlayer.4
                @Override // java.lang.Runnable
                public void run() {
                    WebPlayerView.this.setSettings(jSONObject, jSONObject2);
                }
            });
            webViewCallback.invoke(new Object[0]);
            return;
        }
        webViewCallback.error(WebPlayerError.WEBPLAYER_NULL, new Object[0]);
    }

    @WebViewExposed
    public static void setUrl(final String str, String str2, WebViewCallback webViewCallback) {
        final WebPlayerView webPlayer = WebPlayerViewCache.getInstance().getWebPlayer(str2);
        if (webPlayer != null) {
            Utilities.runOnUiThread(new Runnable() { // from class: com.unity3d.services.ads.api.WebPlayer.1
                @Override // java.lang.Runnable
                public void run() {
                    WebPlayerView.this.loadUrl(str);
                }
            });
            webViewCallback.invoke(new Object[0]);
            return;
        }
        webViewCallback.error(WebPlayerError.WEBPLAYER_NULL, new Object[0]);
    }
}
