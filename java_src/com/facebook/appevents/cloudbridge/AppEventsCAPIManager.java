package com.facebook.appevents.cloudbridge;

import android.content.SharedPreferences;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0007J\u0015\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0000¢\u0006\u0002\b\u0018R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR@\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r2\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r8A@@X\u0080\u000e¢\u0006\f\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0019"}, d2 = {"Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;", "", "()V", "SETTINGS_PATH", "", "TAG", "isEnabled", "", "isEnabled$facebook_core_release", "()Z", "setEnabled$facebook_core_release", "(Z)V", "valuesToSave", "", "savedCloudBridgeCredentials", "getSavedCloudBridgeCredentials$facebook_core_release", "()Ljava/util/Map;", "setSavedCloudBridgeCredentials$facebook_core_release", "(Ljava/util/Map;)V", "enable", "", "getCAPIGSettingsFromGraphResponse", "response", "Lcom/facebook/GraphResponse;", "getCAPIGSettingsFromGraphResponse$facebook_core_release", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AppEventsCAPIManager {
    @NotNull
    private static final String SETTINGS_PATH = "/cloudbridge_settings";
    private static boolean isEnabled;
    @NotNull
    public static final AppEventsCAPIManager INSTANCE = new AppEventsCAPIManager();
    @Nullable
    private static final String TAG = AppEventsCAPIManager.class.getCanonicalName();

    private AppEventsCAPIManager() {
    }

    @JvmStatic
    public static final void enable() {
        String stackTraceToString;
        try {
            a aVar = new GraphRequest.Callback() { // from class: com.facebook.appevents.cloudbridge.a
                @Override // com.facebook.GraphRequest.Callback
                public final void onCompleted(GraphResponse graphResponse) {
                    AppEventsCAPIManager.m83enable$lambda0(graphResponse);
                }
            };
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            GraphRequest graphRequest = new GraphRequest(null, Intrinsics.stringPlus(FacebookSdk.getApplicationId(), SETTINGS_PATH), null, HttpMethod.GET, aVar, null, 32, null);
            Logger.Companion companion = Logger.Companion;
            LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
            String str = TAG;
            if (str != null) {
                companion.log(loggingBehavior, str, " \n\nCreating Graph Request: \n=============\n%s\n\n ", graphRequest);
                graphRequest.executeAsync();
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
        } catch (JSONException e10) {
            Logger.Companion companion2 = Logger.Companion;
            LoggingBehavior loggingBehavior2 = LoggingBehavior.APP_EVENTS;
            String str2 = TAG;
            Objects.requireNonNull(str2, "null cannot be cast to non-null type kotlin.String");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(e10);
            companion2.log(loggingBehavior2, str2, " \n\nGraph Request Exception: \n=============\n%s\n\n ", stackTraceToString);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: enable$lambda-0  reason: not valid java name */
    public static final void m83enable$lambda0(GraphResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        INSTANCE.getCAPIGSettingsFromGraphResponse$facebook_core_release(response);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0064 A[Catch: all -> 0x0099, TRY_LEAVE, TryCatch #0 {all -> 0x0099, blocks: (B:5:0x000a, B:8:0x001a, B:10:0x003b, B:17:0x0049, B:24:0x0057, B:31:0x0064), top: B:37:0x000a }] */
    @kotlin.jvm.JvmStatic
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.util.Map<java.lang.String, java.lang.Object> getSavedCloudBridgeCredentials$facebook_core_release() {
        /*
            java.lang.Class<com.facebook.appevents.cloudbridge.AppEventsCAPIManager> r0 = com.facebook.appevents.cloudbridge.AppEventsCAPIManager.class
            boolean r1 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.isObjectCrashing(r0)
            r2 = 0
            if (r1 == 0) goto La
            return r2
        La:
            com.facebook.FacebookSdk r1 = com.facebook.FacebookSdk.INSTANCE     // Catch: java.lang.Throwable -> L99
            android.content.Context r1 = com.facebook.FacebookSdk.getApplicationContext()     // Catch: java.lang.Throwable -> L99
            java.lang.String r3 = "com.facebook.sdk.CloudBridgeSavedCredentials"
            r4 = 0
            android.content.SharedPreferences r1 = r1.getSharedPreferences(r3, r4)     // Catch: java.lang.Throwable -> L99
            if (r1 != 0) goto L1a
            return r2
        L1a:
            com.facebook.appevents.cloudbridge.SettingsAPIFields r3 = com.facebook.appevents.cloudbridge.SettingsAPIFields.DATASETID     // Catch: java.lang.Throwable -> L99
            java.lang.String r5 = r3.getRawValue()     // Catch: java.lang.Throwable -> L99
            java.lang.String r5 = r1.getString(r5, r2)     // Catch: java.lang.Throwable -> L99
            com.facebook.appevents.cloudbridge.SettingsAPIFields r6 = com.facebook.appevents.cloudbridge.SettingsAPIFields.URL     // Catch: java.lang.Throwable -> L99
            java.lang.String r7 = r6.getRawValue()     // Catch: java.lang.Throwable -> L99
            java.lang.String r7 = r1.getString(r7, r2)     // Catch: java.lang.Throwable -> L99
            com.facebook.appevents.cloudbridge.SettingsAPIFields r8 = com.facebook.appevents.cloudbridge.SettingsAPIFields.ACCESSKEY     // Catch: java.lang.Throwable -> L99
            java.lang.String r9 = r8.getRawValue()     // Catch: java.lang.Throwable -> L99
            java.lang.String r1 = r1.getString(r9, r2)     // Catch: java.lang.Throwable -> L99
            r9 = 1
            if (r5 == 0) goto L44
            boolean r10 = kotlin.text.StringsKt.isBlank(r5)     // Catch: java.lang.Throwable -> L99
            if (r10 == 0) goto L42
            goto L44
        L42:
            r10 = 0
            goto L45
        L44:
            r10 = 1
        L45:
            if (r10 != 0) goto L98
            if (r7 == 0) goto L52
            boolean r10 = kotlin.text.StringsKt.isBlank(r7)     // Catch: java.lang.Throwable -> L99
            if (r10 == 0) goto L50
            goto L52
        L50:
            r10 = 0
            goto L53
        L52:
            r10 = 1
        L53:
            if (r10 != 0) goto L98
            if (r1 == 0) goto L60
            boolean r10 = kotlin.text.StringsKt.isBlank(r1)     // Catch: java.lang.Throwable -> L99
            if (r10 == 0) goto L5e
            goto L60
        L5e:
            r10 = 0
            goto L61
        L60:
            r10 = 1
        L61:
            if (r10 == 0) goto L64
            goto L98
        L64:
            java.util.LinkedHashMap r10 = new java.util.LinkedHashMap     // Catch: java.lang.Throwable -> L99
            r10.<init>()     // Catch: java.lang.Throwable -> L99
            java.lang.String r6 = r6.getRawValue()     // Catch: java.lang.Throwable -> L99
            r10.put(r6, r7)     // Catch: java.lang.Throwable -> L99
            java.lang.String r3 = r3.getRawValue()     // Catch: java.lang.Throwable -> L99
            r10.put(r3, r5)     // Catch: java.lang.Throwable -> L99
            java.lang.String r3 = r8.getRawValue()     // Catch: java.lang.Throwable -> L99
            r10.put(r3, r1)     // Catch: java.lang.Throwable -> L99
            com.facebook.internal.Logger$Companion r3 = com.facebook.internal.Logger.Companion     // Catch: java.lang.Throwable -> L99
            com.facebook.LoggingBehavior r6 = com.facebook.LoggingBehavior.APP_EVENTS     // Catch: java.lang.Throwable -> L99
            java.lang.String r8 = com.facebook.appevents.cloudbridge.AppEventsCAPIManager.TAG     // Catch: java.lang.Throwable -> L99
            java.lang.String r8 = java.lang.String.valueOf(r8)     // Catch: java.lang.Throwable -> L99
            java.lang.String r11 = " \n\nLoading Cloudbridge settings from saved Prefs: \n================\n DATASETID: %s\n URL: %s \n ACCESSKEY: %s \n\n "
            r12 = 3
            java.lang.Object[] r12 = new java.lang.Object[r12]     // Catch: java.lang.Throwable -> L99
            r12[r4] = r5     // Catch: java.lang.Throwable -> L99
            r12[r9] = r7     // Catch: java.lang.Throwable -> L99
            r4 = 2
            r12[r4] = r1     // Catch: java.lang.Throwable -> L99
            r3.log(r6, r8, r11, r12)     // Catch: java.lang.Throwable -> L99
            return r10
        L98:
            return r2
        L99:
            r1 = move-exception
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.handleThrowable(r1, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.cloudbridge.AppEventsCAPIManager.getSavedCloudBridgeCredentials$facebook_core_release():java.util.Map");
    }

    public final void getCAPIGSettingsFromGraphResponse$facebook_core_release(@NotNull GraphResponse response) {
        String stackTraceToString;
        String stackTraceToString2;
        Object first;
        String stackTraceToString3;
        Intrinsics.checkNotNullParameter(response, "response");
        boolean z10 = false;
        if (response.getError() != null) {
            Logger.Companion companion = Logger.Companion;
            LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
            String str = TAG;
            Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.String");
            companion.log(loggingBehavior, str, " \n\nGraph Response Error: \n================\nResponse Error: %s\nResponse Error Exception: %s\n\n ", response.getError().toString(), String.valueOf(response.getError().getException()));
            Map<String, Object> savedCloudBridgeCredentials$facebook_core_release = getSavedCloudBridgeCredentials$facebook_core_release();
            if (savedCloudBridgeCredentials$facebook_core_release != null) {
                URL url = new URL(String.valueOf(savedCloudBridgeCredentials$facebook_core_release.get(SettingsAPIFields.URL.getRawValue())));
                AppEventsConversionsAPITransformerWebRequests appEventsConversionsAPITransformerWebRequests = AppEventsConversionsAPITransformerWebRequests.INSTANCE;
                String valueOf = String.valueOf(savedCloudBridgeCredentials$facebook_core_release.get(SettingsAPIFields.DATASETID.getRawValue()));
                AppEventsConversionsAPITransformerWebRequests.configure(valueOf, url.getProtocol() + "://" + ((Object) url.getHost()), String.valueOf(savedCloudBridgeCredentials$facebook_core_release.get(SettingsAPIFields.ACCESSKEY.getRawValue())));
                isEnabled = true;
                return;
            }
            return;
        }
        Logger.Companion companion2 = Logger.Companion;
        LoggingBehavior loggingBehavior2 = LoggingBehavior.APP_EVENTS;
        String str2 = TAG;
        Objects.requireNonNull(str2, "null cannot be cast to non-null type kotlin.String");
        companion2.log(loggingBehavior2, str2, " \n\nGraph Response Received: \n================\n%s\n\n ", response);
        JSONObject jSONObject = response.getJSONObject();
        try {
            Utility utility = Utility.INSTANCE;
            Object obj = jSONObject == null ? null : jSONObject.get("data");
            if (obj != null) {
                first = CollectionsKt___CollectionsKt.first((List<? extends Object>) Utility.convertJSONArrayToList((JSONArray) obj));
                Map<String, ? extends Object> convertJSONObjectToHashMap = Utility.convertJSONObjectToHashMap(new JSONObject((String) first));
                String str3 = (String) convertJSONObjectToHashMap.get(SettingsAPIFields.URL.getRawValue());
                String str4 = (String) convertJSONObjectToHashMap.get(SettingsAPIFields.DATASETID.getRawValue());
                String str5 = (String) convertJSONObjectToHashMap.get(SettingsAPIFields.ACCESSKEY.getRawValue());
                if (str3 != null && str4 != null && str5 != null) {
                    try {
                        AppEventsConversionsAPITransformerWebRequests appEventsConversionsAPITransformerWebRequests2 = AppEventsConversionsAPITransformerWebRequests.INSTANCE;
                        AppEventsConversionsAPITransformerWebRequests.configure(str4, str3, str5);
                        setSavedCloudBridgeCredentials$facebook_core_release(convertJSONObjectToHashMap);
                        SettingsAPIFields settingsAPIFields = SettingsAPIFields.ENABLED;
                        if (convertJSONObjectToHashMap.get(settingsAPIFields.getRawValue()) != null) {
                            Object obj2 = convertJSONObjectToHashMap.get(settingsAPIFields.getRawValue());
                            Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.Boolean");
                            z10 = ((Boolean) obj2).booleanValue();
                        }
                        isEnabled = z10;
                        return;
                    } catch (MalformedURLException e10) {
                        Logger.Companion companion3 = Logger.Companion;
                        LoggingBehavior loggingBehavior3 = LoggingBehavior.APP_EVENTS;
                        String str6 = TAG;
                        stackTraceToString3 = ExceptionsKt__ExceptionsKt.stackTraceToString(e10);
                        companion3.log(loggingBehavior3, str6, "CloudBridge Settings API response doesn't have valid url\n %s ", stackTraceToString3);
                        return;
                    }
                }
                companion2.log(loggingBehavior2, str2, "CloudBridge Settings API response doesn't have valid data");
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type org.json.JSONArray");
        } catch (NullPointerException e11) {
            Logger.Companion companion4 = Logger.Companion;
            LoggingBehavior loggingBehavior4 = LoggingBehavior.APP_EVENTS;
            String str7 = TAG;
            stackTraceToString2 = ExceptionsKt__ExceptionsKt.stackTraceToString(e11);
            companion4.log(loggingBehavior4, str7, "CloudBridge Settings API response is not a valid json: \n%s ", stackTraceToString2);
        } catch (JSONException e12) {
            Logger.Companion companion5 = Logger.Companion;
            LoggingBehavior loggingBehavior5 = LoggingBehavior.APP_EVENTS;
            String str8 = TAG;
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(e12);
            companion5.log(loggingBehavior5, str8, "CloudBridge Settings API response is not a valid json: \n%s ", stackTraceToString);
        }
    }

    public final boolean isEnabled$facebook_core_release() {
        return isEnabled;
    }

    public final void setEnabled$facebook_core_release(boolean z10) {
        isEnabled = z10;
    }

    public final void setSavedCloudBridgeCredentials$facebook_core_release(@Nullable Map<String, ? extends Object> map) {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        SharedPreferences sharedPreferences = FacebookSdk.getApplicationContext().getSharedPreferences(FacebookSdk.CLOUDBRIDGE_SAVED_CREDENTIALS, 0);
        if (sharedPreferences == null) {
            return;
        }
        if (map == null) {
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.clear();
            edit.apply();
            return;
        }
        SettingsAPIFields settingsAPIFields = SettingsAPIFields.DATASETID;
        Object obj = map.get(settingsAPIFields.getRawValue());
        SettingsAPIFields settingsAPIFields2 = SettingsAPIFields.URL;
        Object obj2 = map.get(settingsAPIFields2.getRawValue());
        SettingsAPIFields settingsAPIFields3 = SettingsAPIFields.ACCESSKEY;
        Object obj3 = map.get(settingsAPIFields3.getRawValue());
        if (obj == null || obj2 == null || obj3 == null) {
            return;
        }
        SharedPreferences.Editor edit2 = sharedPreferences.edit();
        edit2.putString(settingsAPIFields.getRawValue(), obj.toString());
        edit2.putString(settingsAPIFields2.getRawValue(), obj2.toString());
        edit2.putString(settingsAPIFields3.getRawValue(), obj3.toString());
        edit2.apply();
        Logger.Companion.log(LoggingBehavior.APP_EVENTS, String.valueOf(TAG), " \n\nSaving Cloudbridge settings from saved Prefs: \n================\n DATASETID: %s\n URL: %s \n ACCESSKEY: %s \n\n ", obj, obj2, obj3);
    }
}
