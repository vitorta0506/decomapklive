package com.facebook.appevents.iap;

import android.content.SharedPreferences;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.facebook.FacebookSdk;
import com.facebook.appevents.internal.AutomaticAnalyticsLogger;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\u0010\t\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J-\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00150\u00142\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00150\rH\u0001¢\u0006\u0002\b\u0017J\r\u0010\u0018\u001a\u00020\u0019H\u0001¢\u0006\u0002\b\u001aJC\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00142\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00150\u00142\u0014\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0014H\u0001¢\u0006\u0002\b\u001dJ\b\u0010\u001e\u001a\u00020\u001fH\u0007J2\u0010 \u001a\u00020\u00192\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00150\r2\u0014\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0014H\u0007J\u001c\u0010!\u001a\u00020\u00192\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0014H\u0002J\b\u0010\"\u001a\u00020\u0019H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;", "", "()V", "CACHE_CLEAR_TIME_LIMIT_SEC", "", InAppPurchaseLoggerManager.LAST_CLEARED_TIME, "", InAppPurchaseLoggerManager.LAST_QUERY_PURCHASE_HISTORY_TIME, "PRODUCT_DETAILS_STORE", InAppPurchaseLoggerManager.PURCHASE_DETAILS_SET, "PURCHASE_IN_CACHE_INTERVAL", "PURCHASE_TIME", "cachedPurchaseMap", "", "", "cachedPurchaseSet", "", "sharedPreferences", "Landroid/content/SharedPreferences;", "cacheDeDupPurchase", "", "Lorg/json/JSONObject;", "purchaseDetailsMap", "cacheDeDupPurchase$facebook_core_release", "clearOutdatedProductInfoInCache", "", "clearOutdatedProductInfoInCache$facebook_core_release", "constructLoggingReadyMap", "skuDetailsMap", "constructLoggingReadyMap$facebook_core_release", "eligibleQueryPurchaseHistory", "", "filterPurchaseLogging", "logPurchases", "readPurchaseCache", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class InAppPurchaseLoggerManager {
    private static final int CACHE_CLEAR_TIME_LIMIT_SEC = 604800;
    @NotNull
    private static final String LAST_CLEARED_TIME = "LAST_CLEARED_TIME";
    @NotNull
    private static final String LAST_QUERY_PURCHASE_HISTORY_TIME = "LAST_QUERY_PURCHASE_HISTORY_TIME";
    @NotNull
    private static final String PRODUCT_DETAILS_STORE = "com.facebook.internal.iap.PRODUCT_DETAILS";
    @NotNull
    private static final String PURCHASE_DETAILS_SET = "PURCHASE_DETAILS_SET";
    private static final int PURCHASE_IN_CACHE_INTERVAL = 86400;
    @NotNull
    private static final String PURCHASE_TIME = "purchaseTime";
    private static SharedPreferences sharedPreferences;
    @NotNull
    public static final InAppPurchaseLoggerManager INSTANCE = new InAppPurchaseLoggerManager();
    @NotNull
    private static final Set<String> cachedPurchaseSet = new CopyOnWriteArraySet();
    @NotNull
    private static final Map<String, Long> cachedPurchaseMap = new ConcurrentHashMap();

    private InAppPurchaseLoggerManager() {
    }

    @JvmStatic
    public static final boolean eligibleQueryPurchaseHistory() {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseLoggerManager.class)) {
            return false;
        }
        try {
            INSTANCE.readPurchaseCache();
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            SharedPreferences sharedPreferences2 = sharedPreferences;
            if (sharedPreferences2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sharedPreferences");
                throw null;
            }
            long j10 = sharedPreferences2.getLong(LAST_QUERY_PURCHASE_HISTORY_TIME, 0L);
            if (j10 == 0 || currentTimeMillis - j10 >= 86400) {
                SharedPreferences sharedPreferences3 = sharedPreferences;
                if (sharedPreferences3 != null) {
                    sharedPreferences3.edit().putLong(LAST_QUERY_PURCHASE_HISTORY_TIME, currentTimeMillis).apply();
                    return true;
                }
                Intrinsics.throwUninitializedPropertyAccessException("sharedPreferences");
                throw null;
            }
            return false;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, InAppPurchaseLoggerManager.class);
            return false;
        }
    }

    @JvmStatic
    public static final void filterPurchaseLogging(@NotNull Map<String, JSONObject> purchaseDetailsMap, @NotNull Map<String, ? extends JSONObject> skuDetailsMap) {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseLoggerManager.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(purchaseDetailsMap, "purchaseDetailsMap");
            Intrinsics.checkNotNullParameter(skuDetailsMap, "skuDetailsMap");
            InAppPurchaseLoggerManager inAppPurchaseLoggerManager = INSTANCE;
            inAppPurchaseLoggerManager.readPurchaseCache();
            inAppPurchaseLoggerManager.logPurchases(inAppPurchaseLoggerManager.constructLoggingReadyMap$facebook_core_release(inAppPurchaseLoggerManager.cacheDeDupPurchase$facebook_core_release(purchaseDetailsMap), skuDetailsMap));
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, InAppPurchaseLoggerManager.class);
        }
    }

    private final void logPurchases(Map<String, String> map) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (key != null && value != null) {
                    AutomaticAnalyticsLogger automaticAnalyticsLogger = AutomaticAnalyticsLogger.INSTANCE;
                    AutomaticAnalyticsLogger.logPurchase(key, value, false);
                }
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void readPurchaseCache() {
        List split$default;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            SharedPreferences sharedPreferences2 = FacebookSdk.getApplicationContext().getSharedPreferences("com.facebook.internal.SKU_DETAILS", 0);
            SharedPreferences sharedPreferences3 = FacebookSdk.getApplicationContext().getSharedPreferences("com.facebook.internal.PURCHASE", 0);
            if (sharedPreferences2.contains(LAST_CLEARED_TIME)) {
                sharedPreferences2.edit().clear().apply();
                sharedPreferences3.edit().clear().apply();
            }
            SharedPreferences sharedPreferences4 = FacebookSdk.getApplicationContext().getSharedPreferences(PRODUCT_DETAILS_STORE, 0);
            Intrinsics.checkNotNullExpressionValue(sharedPreferences4, "getApplicationContext().getSharedPreferences(PRODUCT_DETAILS_STORE, Context.MODE_PRIVATE)");
            sharedPreferences = sharedPreferences4;
            Set<String> set = cachedPurchaseSet;
            if (sharedPreferences4 != null) {
                Set<String> stringSet = sharedPreferences4.getStringSet(PURCHASE_DETAILS_SET, new HashSet());
                if (stringSet == null) {
                    stringSet = new HashSet<>();
                }
                set.addAll(stringSet);
                for (String str : set) {
                    split$default = StringsKt__StringsKt.split$default((CharSequence) str, new String[]{";"}, false, 2, 2, (Object) null);
                    cachedPurchaseMap.put(split$default.get(0), Long.valueOf(Long.parseLong((String) split$default.get(1))));
                }
                clearOutdatedProductInfoInCache$facebook_core_release();
                return;
            }
            Intrinsics.throwUninitializedPropertyAccessException("sharedPreferences");
            throw null;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    @VisibleForTesting(otherwise = 2)
    @NotNull
    public final Map<String, JSONObject> cacheDeDupPurchase$facebook_core_release(@NotNull Map<String, JSONObject> purchaseDetailsMap) {
        Map map;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(purchaseDetailsMap, "purchaseDetailsMap");
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            map = MapsKt__MapsKt.toMap(purchaseDetailsMap);
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                JSONObject jSONObject = (JSONObject) entry.getValue();
                try {
                    if (jSONObject.has("purchaseToken")) {
                        String string = jSONObject.getString("purchaseToken");
                        if (cachedPurchaseMap.containsKey(string)) {
                            purchaseDetailsMap.remove(str);
                        } else {
                            Set<String> set = cachedPurchaseSet;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append((Object) string);
                            sb2.append(';');
                            sb2.append(currentTimeMillis);
                            set.add(sb2.toString());
                        }
                    }
                } catch (Exception unused) {
                }
            }
            SharedPreferences sharedPreferences2 = sharedPreferences;
            if (sharedPreferences2 != null) {
                sharedPreferences2.edit().putStringSet(PURCHASE_DETAILS_SET, cachedPurchaseSet).apply();
                return new HashMap(purchaseDetailsMap);
            }
            Intrinsics.throwUninitializedPropertyAccessException("sharedPreferences");
            throw null;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    @VisibleForTesting(otherwise = 2)
    public final void clearOutdatedProductInfoInCache$facebook_core_release() {
        Map map;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            SharedPreferences sharedPreferences2 = sharedPreferences;
            if (sharedPreferences2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sharedPreferences");
                throw null;
            }
            long j10 = sharedPreferences2.getLong(LAST_CLEARED_TIME, 0L);
            if (j10 == 0) {
                SharedPreferences sharedPreferences3 = sharedPreferences;
                if (sharedPreferences3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("sharedPreferences");
                    throw null;
                }
                sharedPreferences3.edit().putLong(LAST_CLEARED_TIME, currentTimeMillis).apply();
            } else if (currentTimeMillis - j10 > 604800) {
                map = MapsKt__MapsKt.toMap(cachedPurchaseMap);
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    long longValue = ((Number) entry.getValue()).longValue();
                    if (currentTimeMillis - longValue > 86400) {
                        Set<String> set = cachedPurchaseSet;
                        set.remove(str + ';' + longValue);
                        cachedPurchaseMap.remove(str);
                    }
                }
                SharedPreferences sharedPreferences4 = sharedPreferences;
                if (sharedPreferences4 != null) {
                    sharedPreferences4.edit().putStringSet(PURCHASE_DETAILS_SET, cachedPurchaseSet).putLong(LAST_CLEARED_TIME, currentTimeMillis).apply();
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("sharedPreferences");
                    throw null;
                }
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    @VisibleForTesting(otherwise = 2)
    @NotNull
    public final Map<String, String> constructLoggingReadyMap$facebook_core_release(@NotNull Map<String, ? extends JSONObject> purchaseDetailsMap, @NotNull Map<String, ? extends JSONObject> skuDetailsMap) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(purchaseDetailsMap, "purchaseDetailsMap");
            Intrinsics.checkNotNullParameter(skuDetailsMap, "skuDetailsMap");
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, ? extends JSONObject> entry : purchaseDetailsMap.entrySet()) {
                JSONObject value = entry.getValue();
                JSONObject jSONObject = skuDetailsMap.get(entry.getKey());
                if (value != null && value.has(PURCHASE_TIME)) {
                    try {
                        if (currentTimeMillis - (value.getLong(PURCHASE_TIME) / 1000) <= 86400 && jSONObject != null) {
                            String jSONObject2 = value.toString();
                            Intrinsics.checkNotNullExpressionValue(jSONObject2, "purchaseDetail.toString()");
                            String jSONObject3 = jSONObject.toString();
                            Intrinsics.checkNotNullExpressionValue(jSONObject3, "skuDetail.toString()");
                            linkedHashMap.put(jSONObject2, jSONObject3);
                        }
                    } catch (Exception unused) {
                    }
                }
            }
            return linkedHashMap;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }
}
