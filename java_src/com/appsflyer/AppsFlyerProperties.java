package com.appsflyer;

import android.content.Context;
import android.content.SharedPreferences;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.AFa1aSDK;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class AppsFlyerProperties {
    public static final String ADDITIONAL_CUSTOM_DATA = "additionalCustomData";
    private static final AppsFlyerProperties AFKeystoreWrapper = new AppsFlyerProperties();
    public static final String AF_WAITFOR_CUSTOMERID = "waitForCustomerId";
    public static final String APP_ID = "appid";
    public static final String APP_USER_ID = "AppUserId";
    public static final String CHANNEL = "channel";
    public static final String COLLECT_ANDROID_ID = "collectAndroidId";
    public static final String COLLECT_ANDROID_ID_FORCE_BY_USER = "collectAndroidIdForceByUser";
    public static final String COLLECT_FACEBOOK_ATTR_ID = "collectFacebookAttrId";
    public static final String COLLECT_IMEI = "collectIMEI";
    public static final String COLLECT_IMEI_FORCE_BY_USER = "collectIMEIForceByUser";
    public static final String COLLECT_OAID = "collectOAID";
    public static final String CURRENCY_CODE = "currencyCode";
    public static final String DEVICE_TRACKING_DISABLED = "deviceTrackingDisabled";
    public static final String DISABLE_KEYSTORE = "keyPropDisableAFKeystore";
    public static final String DISABLE_LOGS_COMPLETELY = "disableLogs";
    public static final String DISABLE_NETWORK_DATA = "disableCollectNetworkData";
    public static final String DISABLE_OTHER_SDK = "disableOtherSdk";
    public static final String DPM = "disableProxy";
    public static final String EMAIL_CRYPT_TYPE = "userEmailsCryptType";
    public static final String ENABLE_GPS_FALLBACK = "enableGpsFallback";
    public static final String EXTENSION = "sdkExtension";
    public static final String HTTP_CACHE = "http_cache";
    public static final String IS_UPDATE = "IS_UPDATE";
    public static final String LAUNCH_PROTECT_ENABLED = "launchProtectEnabled";
    public static final String NEW_REFERRER_SENT = "newGPReferrerSent";
    public static final String ONELINK_DOMAIN = "onelinkDomain";
    public static final String ONELINK_ID = "oneLinkSlug";
    public static final String ONELINK_SCHEME = "onelinkScheme";
    public static final String USER_EMAIL = "userEmail";
    public static final String USER_EMAILS = "userEmails";
    public static final String USE_HTTP_FALLBACK = "useHttpFallback";
    public boolean AFInAppEventParameterName;
    public String values;
    private final Map<String, Object> valueOf = new HashMap();
    private boolean AFInAppEventType = false;

    /* loaded from: classes.dex */
    public enum EmailsCryptType {
        NONE(0),
        SHA256(3);
        
        private final int AFInAppEventType;

        EmailsCryptType(int i9) {
            this.AFInAppEventType = i9;
        }

        public final int getValue() {
            return this.AFInAppEventType;
        }
    }

    private AppsFlyerProperties() {
    }

    private boolean AFInAppEventParameterName() {
        return this.AFInAppEventType;
    }

    public static AppsFlyerProperties getInstance() {
        return AFKeystoreWrapper;
    }

    public final boolean AFKeystoreWrapper() {
        return this.AFInAppEventParameterName;
    }

    public boolean getBoolean(String str, boolean z10) {
        String string = getString(str);
        return string == null ? z10 : Boolean.parseBoolean(string);
    }

    public int getInt(String str, int i9) {
        String string = getString(str);
        return string == null ? i9 : Integer.parseInt(string);
    }

    public long getLong(String str, long j10) {
        String string = getString(str);
        return string == null ? j10 : Long.parseLong(string);
    }

    public synchronized Object getObject(String str) {
        return this.valueOf.get(str);
    }

    public String getReferrer(Context context) {
        String str = this.values;
        if (str != null) {
            return str;
        }
        if (getString("AF_REFERRER") != null) {
            return getString("AF_REFERRER");
        }
        if (context == null) {
            return null;
        }
        return AFa1aSDK.AFKeystoreWrapper(context).getString("referrer", null);
    }

    public synchronized String getString(String str) {
        return (String) this.valueOf.get(str);
    }

    public boolean isEnableLog() {
        AFLogger.LogLevel logLevel = AFLogger.LogLevel.NONE;
        return getInt("logLevel", logLevel.getLevel()) > logLevel.getLevel();
    }

    public boolean isLogsDisabledCompletely() {
        return getBoolean(DISABLE_LOGS_COMPLETELY, false);
    }

    public boolean isOtherSdkStringDisabled() {
        return getBoolean(DISABLE_OTHER_SDK, false);
    }

    public synchronized void loadProperties(Context context) {
        if (AFInAppEventParameterName()) {
            return;
        }
        SharedPreferences AFKeystoreWrapper2 = AFa1aSDK.AFKeystoreWrapper(context);
        String string = AFKeystoreWrapper2.getString("savedProperties", null);
        if (string != null) {
            AFLogger.afDebugLog("Loading properties..");
            try {
                JSONObject jSONObject = new JSONObject(string);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (this.valueOf.get(next) == null) {
                        this.valueOf.put(next, jSONObject.getString(next));
                    }
                }
                if (this.valueOf.containsKey("AppsFlyerKey")) {
                    this.valueOf.remove("AppsFlyerKey");
                    saveProperties(AFKeystoreWrapper2);
                }
                this.AFInAppEventType = true;
            } catch (JSONException e10) {
                AFLogger.afErrorLog("Failed loading properties", e10);
            }
            StringBuilder sb2 = new StringBuilder("Done loading properties: ");
            sb2.append(this.AFInAppEventType);
            AFLogger.afDebugLog(sb2.toString());
        }
    }

    public synchronized void remove(String str) {
        this.valueOf.remove(str);
    }

    public synchronized void saveProperties(SharedPreferences sharedPreferences) {
        this.valueOf.remove("AppsFlyerKey");
        sharedPreferences.edit().putString("savedProperties", new JSONObject(this.valueOf).toString()).apply();
    }

    public synchronized void set(String str, String str2) {
        this.valueOf.put(str, str2);
    }

    public synchronized void setCustomData(String str) {
        this.valueOf.put(ADDITIONAL_CUSTOM_DATA, str);
    }

    public synchronized void setUserEmails(String str) {
        this.valueOf.put(USER_EMAILS, str);
    }

    public synchronized void set(String str, String[] strArr) {
        this.valueOf.put(str, strArr);
    }

    public synchronized void set(String str, int i9) {
        this.valueOf.put(str, Integer.toString(i9));
    }

    public synchronized void set(String str, long j10) {
        this.valueOf.put(str, Long.toString(j10));
    }

    public synchronized void set(String str, boolean z10) {
        this.valueOf.put(str, Boolean.toString(z10));
    }
}
