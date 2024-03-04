package com.unity3d.services.analytics;

import androidx.core.app.NotificationCompat;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.utils.Contants;
import com.huawei.hms.adapter.internal.CommonCode;
import com.meizu.cloud.pushsdk.notification.model.TimeDisplaySetting;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import com.unity3d.services.core.webview.WebViewApp;
import com.unity3d.services.core.webview.WebViewEventCategory;
import java.util.Date;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class UnityAnalytics {
    protected static JSONArray eventQueue = new JSONArray();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public enum AnalyticsEventType {
        POSTEVENT
    }

    private static JSONObject createAdComplete(String str, String str2, Boolean bool) {
        HashMap hashMap = new HashMap();
        hashMap.put("rewarded", bool);
        hashMap.put("network", str);
        hashMap.put("placement_id", str2);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("custom_params", hashMap);
        hashMap2.put(TimeDisplaySetting.TIME_DISPLAY_SETTING, Long.valueOf(new Date().getTime()));
        hashMap2.put("name", "ad_complete");
        HashMap hashMap3 = new HashMap();
        hashMap3.put("type", "analytics.custom.v1");
        hashMap3.put("msg", hashMap2);
        return new JSONObject(hashMap3);
    }

    private static JSONObject createIapTransaction(String str, Float f10, String str2, Boolean bool, String str3) {
        HashMap hashMap = new HashMap();
        hashMap.put(TimeDisplaySetting.TIME_DISPLAY_SETTING, Long.valueOf(new Date().getTime()));
        hashMap.put("productid", str);
        hashMap.put("amount", f10);
        hashMap.put(InAppPurchaseMetaData.KEY_CURRENCY, str2);
        hashMap.put(NotificationCompat.CATEGORY_PROMO, bool);
        hashMap.put("receipt", str3);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("type", "analytics.transaction.v1");
        hashMap2.put("msg", hashMap);
        return new JSONObject(hashMap2);
    }

    private static JSONObject createItemAcquired(String str, Float f10, String str2, Float f11, String str3, String str4, String str5, AcquisitionType acquisitionType) {
        HashMap hashMap = new HashMap();
        hashMap.put("currency_type", acquisitionType.toString());
        hashMap.put("transaction_context", str);
        hashMap.put("amount", f10);
        hashMap.put(EventTrackingUtils.ITEM_ID, str2);
        hashMap.put(Contants.USER_balance, f11);
        hashMap.put("item_type", str3);
        hashMap.put("level", str4);
        hashMap.put(CommonCode.MapKey.TRANSACTION_ID, str5);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("custom_params", hashMap);
        hashMap2.put(TimeDisplaySetting.TIME_DISPLAY_SETTING, 1533594423477L);
        hashMap2.put("name", "item_acquired");
        HashMap hashMap3 = new HashMap();
        hashMap3.put("type", "analytics.custom.v1");
        hashMap3.put("msg", hashMap2);
        return new JSONObject(hashMap3);
    }

    private static JSONObject createItemSpent(String str, Float f10, String str2, Float f11, String str3, String str4, String str5, AcquisitionType acquisitionType) {
        HashMap hashMap = new HashMap();
        hashMap.put("currency_type", acquisitionType.toString());
        hashMap.put("transaction_context", str);
        hashMap.put("amount", f10);
        hashMap.put(EventTrackingUtils.ITEM_ID, str2);
        hashMap.put(Contants.USER_balance, f11);
        hashMap.put("item_type", str3);
        hashMap.put("level", str4);
        hashMap.put(CommonCode.MapKey.TRANSACTION_ID, str5);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("custom_params", hashMap);
        hashMap2.put(TimeDisplaySetting.TIME_DISPLAY_SETTING, Long.valueOf(new Date().getTime()));
        hashMap2.put("name", "item_spent");
        HashMap hashMap3 = new HashMap();
        hashMap3.put("type", "analytics.custom.v1");
        hashMap3.put("msg", hashMap2);
        return new JSONObject(hashMap3);
    }

    private static JSONObject createLevelFail(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("level_index", str);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("custom_params", hashMap);
        hashMap2.put(TimeDisplaySetting.TIME_DISPLAY_SETTING, Long.valueOf(new Date().getTime()));
        hashMap2.put("name", "level_fail");
        HashMap hashMap3 = new HashMap();
        hashMap3.put("type", "analytics.custom.v1");
        hashMap3.put("msg", hashMap2);
        return new JSONObject(hashMap3);
    }

    private static JSONObject createLevelUp(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("new_level_index", str);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("custom_params", hashMap);
        hashMap2.put(TimeDisplaySetting.TIME_DISPLAY_SETTING, Long.valueOf(new Date().getTime()));
        hashMap2.put("name", "level_up");
        HashMap hashMap3 = new HashMap();
        hashMap3.put("type", "analytics.custom.v1");
        hashMap3.put("msg", hashMap2);
        return new JSONObject(hashMap3);
    }

    public static void onAdComplete(String str, String str2, Boolean bool) {
        postEvent(createAdComplete(str, str2, bool));
    }

    public static void onEvent(JSONObject jSONObject) {
        postEvent(jSONObject);
    }

    public static void onIapTransaction(String str, Float f10, String str2, Boolean bool, String str3) {
        postEvent(createIapTransaction(str, f10, str2, bool, str3));
    }

    public static void onItemAcquired(String str, Float f10, String str2, Float f11, String str3, String str4, String str5, AcquisitionType acquisitionType) {
        postEvent(createItemAcquired(str, f10, str2, f11, str3, str4, str5, acquisitionType));
    }

    public static void onItemSpent(String str, Float f10, String str2, Float f11, String str3, String str4, String str5, AcquisitionType acquisitionType) {
        postEvent(createItemSpent(str, f10, str2, f11, str3, str4, str5, acquisitionType));
    }

    public static void onLevelFail(String str) {
        postEvent(createLevelFail(str));
    }

    public static void onLevelUp(String str) {
        postEvent(createLevelUp(str));
    }

    private static synchronized void postEvent(JSONObject jSONObject) {
        synchronized (UnityAnalytics.class) {
            if (eventQueue.length() < 200) {
                eventQueue.put(jSONObject);
            }
            WebViewApp currentApp = WebViewApp.getCurrentApp();
            if (currentApp != null && Boolean.valueOf(currentApp.sendEvent(WebViewEventCategory.ANALYTICS, AnalyticsEventType.POSTEVENT, eventQueue.toString())).booleanValue()) {
                eventQueue = new JSONArray();
            }
        }
    }
}
