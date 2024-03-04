package com.appsflyer.internal;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.internal.ServerProtocol;
import com.guochao.faceshow.utils.PushUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import java.lang.ref.WeakReference;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;
import org.light.utils.FileUtils;
/* loaded from: classes.dex */
public final class AFc1xSDK {
    @VisibleForTesting
    private static String AFInAppEventParameterName = null;
    @VisibleForTesting
    private static String AFInAppEventType = null;
    @VisibleForTesting
    private static String AFKeystoreWrapper = null;
    private static int AFLogger$LogLevel = 1;
    private static int afDebugLog;
    private static int[] afRDLog;
    @VisibleForTesting
    private static String valueOf;
    @VisibleForTesting
    private static String values;
    private final AFb1cSDK AFLogger;
    private final AFb1xSDK afErrorLog;
    private final AppsFlyerProperties afInfoLog;

    static {
        AFInAppEventType();
        AFInAppEventParameterName = "https://%smonitorsdk.%s/remote-debug?app_id=";
        AFInAppEventType = "https://cdn-settings.%s/android/v1/%s/settings";
        AFKeystoreWrapper = "https://cdn-testsettings.%s/android/v1/%s/settings";
        valueOf = "https://%sgcdsdk.%s/install_data/v4.0/";
        values = "https://%sonelink.%s/shortlink-sdk/v2";
        int i9 = afDebugLog + 123;
        AFLogger$LogLevel = i9 % 128;
        if (!(i9 % 2 == 0)) {
            return;
        }
        int i10 = 72 / 0;
    }

    public AFc1xSDK(AFb1xSDK aFb1xSDK, AFb1cSDK aFb1cSDK, AppsFlyerProperties appsFlyerProperties) {
        this.afErrorLog = aFb1xSDK;
        this.AFLogger = aFb1cSDK;
        this.afInfoLog = appsFlyerProperties;
    }

    static void AFInAppEventType() {
        afRDLog = new int[]{1984175354, -1864795096, -671321105, -1523422433, 373550454, 1663337785, 7507979, -467287362, -526959695, -1983139359, 956387654, 1602240158, -588479960, 1035424643, 1526187702, 1941612476, -363351997, -1668615563};
    }

    private <T> AFb1aSDK<T> values(AFb1wSDK aFb1wSDK, AFc1rSDK<T> aFc1rSDK) {
        int i9 = AFLogger$LogLevel + 123;
        afDebugLog = i9 % 128;
        if (!(i9 % 2 != 0)) {
            return valueOf(aFb1wSDK, aFc1rSDK, valueOf());
        }
        valueOf(aFb1wSDK, aFc1rSDK, valueOf());
        throw null;
    }

    @NonNull
    public final AFb1aSDK<String> AFInAppEventParameterName(Map<String, Object> map, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(String.format("https://%sviap.%s/api/v1/android/validate_purchase?app_id=", AppsFlyerLib.getInstance().getHostPrefix(), AFa1aSDK.values().getHostName()));
        sb2.append(this.AFLogger.AFKeystoreWrapper.values.getPackageName());
        try {
            AFb1aSDK<String> values2 = values(new AFb1wSDK(sb2.toString(), (byte[]) ((Class) AFa1ySDK.values((char) (View.resolveSize(0, 0) + 62912), 62 - Drawable.resolveOpacity(0, 0), View.MeasureSpec.getMode(0) + 31)).getMethod("AFInAppEventParameterName", Map.class, String.class).invoke(null, map, str), "POST", Collections.emptyMap(), true), new AFc1uSDK());
            int i9 = AFLogger$LogLevel + 51;
            afDebugLog = i9 % 128;
            int i10 = i9 % 2;
            return values2;
        } catch (Throwable th2) {
            Throwable cause = th2.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th2;
        }
    }

    public final AFb1aSDK<String> AFInAppEventType(AFa1tSDK aFa1tSDK, String str) {
        try {
            AFb1aSDK<String> values2 = values(new AFb1wSDK(aFa1tSDK.afInfoLog, (byte[]) ((Class) AFa1ySDK.values((char) (62912 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1))), (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 62, View.combineMeasuredStates(0, 0) + 31)).getMethod("AFInAppEventParameterName", AFa1tSDK.class, String.class).invoke(null, aFa1tSDK, str), "POST", Collections.emptyMap(), aFa1tSDK.valueOf()), new AFc1uSDK());
            int i9 = afDebugLog + 121;
            AFLogger$LogLevel = i9 % 128;
            int i10 = i9 % 2;
            return values2;
        } catch (Throwable th2) {
            Throwable cause = th2.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th2;
        }
    }

    @NonNull
    public final AFb1aSDK<String> AFKeystoreWrapper(Map<String, Object> map, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(String.format("https://%sars.%s/api/v2/android/validate_subscription?app_id=", AppsFlyerLib.getInstance().getHostPrefix(), AFa1aSDK.values().getHostName()));
        sb2.append(this.AFLogger.AFKeystoreWrapper.values.getPackageName());
        try {
            AFb1aSDK<String> values2 = values(new AFb1wSDK(sb2.toString(), (byte[]) ((Class) AFa1ySDK.values((char) ((ViewConfiguration.getMinimumFlingVelocity() >> 16) + 62912), Color.argb(0, 0, 0, 0) + 62, View.MeasureSpec.makeMeasureSpec(0, 0) + 31)).getMethod("AFInAppEventParameterName", Map.class, String.class).invoke(null, map, str), "POST", Collections.emptyMap(), true), new AFc1uSDK());
            int i9 = afDebugLog + 81;
            AFLogger$LogLevel = i9 % 128;
            int i10 = i9 % 2;
            return values2;
        } catch (Throwable th2) {
            Throwable cause = th2.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th2;
        }
    }

    @NonNull
    public final AFb1aSDK<AFb1sSDK> valueOf(boolean z10, @NonNull String str, int i9) {
        AFb1wSDK aFb1wSDK = new AFb1wSDK(AFKeystoreWrapper(z10, str), "GET");
        aFb1wSDK.AFLogger = 1500;
        AFb1aSDK<AFb1sSDK> values2 = values(aFb1wSDK, new AFc1sSDK());
        int i10 = AFLogger$LogLevel + 57;
        afDebugLog = i10 % 128;
        int i11 = i10 % 2;
        return values2;
    }

    public final AFb1aSDK<String> valueOf(AFe1vSDK aFe1vSDK) {
        AFb1aSDK<String> values2 = values(new AFb1wSDK(aFe1vSDK.afInfoLog, aFe1vSDK.values(), "POST", Collections.emptyMap(), true), new AFc1uSDK());
        int i9 = afDebugLog + 83;
        AFLogger$LogLevel = i9 % 128;
        int i10 = i9 % 2;
        return values2;
    }

    private static String values(int[] iArr, int i9) {
        String str;
        synchronized (AFf1xSDK.AFKeystoreWrapper) {
            char[] cArr = new char[4];
            char[] cArr2 = new char[iArr.length << 1];
            int[] iArr2 = (int[]) afRDLog.clone();
            AFf1xSDK.AFInAppEventType = 0;
            while (true) {
                int i10 = AFf1xSDK.AFInAppEventType;
                if (i10 < iArr.length) {
                    cArr[0] = (char) (iArr[i10] >> 16);
                    cArr[1] = (char) iArr[i10];
                    cArr[2] = (char) (iArr[i10 + 1] >> 16);
                    cArr[3] = (char) iArr[i10 + 1];
                    AFf1xSDK.values = (cArr[0] << 16) + cArr[1];
                    AFf1xSDK.valueOf = (cArr[2] << 16) + cArr[3];
                    AFf1xSDK.AFInAppEventType(iArr2);
                    for (int i11 = 0; i11 < 16; i11++) {
                        int i12 = AFf1xSDK.values ^ iArr2[i11];
                        AFf1xSDK.values = i12;
                        AFf1xSDK.valueOf = AFf1xSDK.AFKeystoreWrapper(i12) ^ AFf1xSDK.valueOf;
                        int i13 = AFf1xSDK.values;
                        AFf1xSDK.values = AFf1xSDK.valueOf;
                        AFf1xSDK.valueOf = i13;
                    }
                    int i14 = AFf1xSDK.values;
                    AFf1xSDK.values = AFf1xSDK.valueOf;
                    AFf1xSDK.valueOf = i14;
                    AFf1xSDK.valueOf = i14 ^ iArr2[16];
                    AFf1xSDK.values ^= iArr2[17];
                    int i15 = AFf1xSDK.valueOf;
                    int i16 = AFf1xSDK.values;
                    cArr[0] = (char) (i16 >>> 16);
                    cArr[1] = (char) i16;
                    int i17 = AFf1xSDK.valueOf;
                    cArr[2] = (char) (i17 >>> 16);
                    cArr[3] = (char) i17;
                    AFf1xSDK.AFInAppEventType(iArr2);
                    int i18 = AFf1xSDK.AFInAppEventType;
                    cArr2[i18 << 1] = cArr[0];
                    cArr2[(i18 << 1) + 1] = cArr[1];
                    cArr2[(i18 << 1) + 2] = cArr[2];
                    cArr2[(i18 << 1) + 3] = cArr[3];
                    AFf1xSDK.AFInAppEventType = i18 + 2;
                } else {
                    str = new String(cArr2, 0, i9);
                }
            }
        }
        return str;
    }

    public final AFb1aSDK<String> valueOf(@NonNull String str) {
        AFb1wSDK aFb1wSDK = new AFb1wSDK(str, null, "GET", Collections.emptyMap(), false);
        aFb1wSDK.AFLogger = 10000;
        aFb1wSDK.AFKeystoreWrapper = false;
        AFb1aSDK<String> values2 = values(aFb1wSDK, new AFc1uSDK());
        int i9 = afDebugLog + 3;
        AFLogger$LogLevel = i9 % 128;
        if ((i9 % 2 == 0 ? '\f' : '[') == '[') {
            return values2;
        }
        throw null;
    }

    @VisibleForTesting
    private Map<String, Object> AFInAppEventParameterName() {
        HashMap hashMap = new HashMap();
        hashMap.put("build_number", "6.9.0");
        hashMap.put("counter", Integer.valueOf(this.AFLogger.AFInAppEventType.AFInAppEventType("appsFlyerCount")));
        hashMap.put(DeviceRequestsHelper.DEVICE_INFO_MODEL, Build.MODEL);
        hashMap.put(values(new int[]{1067524664, 1631839199, 1218275557, 634646297}, 5 - (ViewConfiguration.getKeyRepeatDelay() >> 16)).intern(), Build.BRAND);
        hashMap.put(ServerProtocol.DIALOG_PARAM_SDK_VERSION, Integer.toString(Build.VERSION.SDK_INT));
        Context context = this.AFLogger.AFKeystoreWrapper.values;
        hashMap.put(TPDownloadProxyEnum.USER_APP_VERSION, AFb1wSDK.AFInAppEventParameterName(context, context.getPackageName()));
        hashMap.put("app_id", this.AFLogger.AFKeystoreWrapper.values.getPackageName());
        hashMap.put("platformextension", new AFb1vSDK().values());
        int i9 = afDebugLog + 61;
        AFLogger$LogLevel = i9 % 128;
        if (i9 % 2 != 0) {
            return hashMap;
        }
        int i10 = 50 / 0;
        return hashMap;
    }

    @NonNull
    public final AFb1aSDK<String> AFKeystoreWrapper(Map<String, Object> map) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(String.format(AFInAppEventParameterName, AppsFlyerLib.getInstance().getHostPrefix(), AFa1aSDK.values().getHostName()));
        sb2.append(this.AFLogger.AFKeystoreWrapper.values.getPackageName());
        AFb1aSDK<String> values2 = values(new AFb1wSDK(sb2.toString(), new JSONObject(map).toString().getBytes(), "POST", Collections.emptyMap(), false), new AFc1uSDK());
        int i9 = AFLogger$LogLevel + 83;
        afDebugLog = i9 % 128;
        if ((i9 % 2 != 0 ? 'T' : '5') != 'T') {
            return values2;
        }
        int i10 = 8 / 0;
        return values2;
    }

    private boolean valueOf() {
        int i9 = AFLogger$LogLevel + 35;
        afDebugLog = i9 % 128;
        int i10 = i9 % 2;
        if ((!this.afInfoLog.getBoolean(AppsFlyerProperties.HTTP_CACHE, true) ? (char) 21 : ';') == 21) {
            int i11 = afDebugLog + 39;
            AFLogger$LogLevel = i11 % 128;
            int i12 = i11 % 2;
            return true;
        }
        int i13 = AFLogger$LogLevel + 47;
        afDebugLog = i13 % 128;
        if ((i13 % 2 != 0 ? (char) 18 : (char) 1) != 18) {
            return false;
        }
        int i14 = 38 / 0;
        return false;
    }

    private <T> AFb1aSDK<T> valueOf(AFb1wSDK aFb1wSDK, AFc1rSDK<T> aFc1rSDK, boolean z10) {
        aFb1wSDK.values = z10;
        AFb1aSDK<T> aFb1aSDK = new AFb1aSDK<>(aFb1wSDK, this.afErrorLog.values, aFc1rSDK);
        int i9 = afDebugLog + 75;
        AFLogger$LogLevel = i9 % 128;
        int i10 = i9 % 2;
        return aFb1aSDK;
    }

    public final AFb1aSDK<Map<String, Object>> AFKeystoreWrapper(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(String.format(valueOf, AppsFlyerLib.getInstance().getHostPrefix(), AFa1aSDK.values().getHostName()));
        sb2.append(this.AFLogger.AFKeystoreWrapper.values.getPackageName());
        sb2.append(str);
        sb2.append("?devkey=");
        sb2.append(str2);
        sb2.append("&device_id=");
        sb2.append(AFb1uSDK.AFInAppEventParameterName(new WeakReference(this.AFLogger.AFKeystoreWrapper.values)));
        String obj = sb2.toString();
        HashMap hashMap = new HashMap();
        hashMap.put("Connection", "close");
        AFb1wSDK aFb1wSDK = new AFb1wSDK(obj, null, "GET", hashMap, false);
        aFb1wSDK.AFLogger = 10000;
        AFb1aSDK<Map<String, Object>> values2 = values(aFb1wSDK, new AFc1zSDK());
        int i9 = afDebugLog + 35;
        AFLogger$LogLevel = i9 % 128;
        int i10 = i9 % 2;
        return values2;
    }

    public final AFb1aSDK<String> AFKeystoreWrapper(@NonNull String str, @NonNull Map<String, String> map, @Nullable String str2, @NonNull UUID uuid, @NonNull String str3) {
        String obj = uuid.toString();
        HashMap hashMap = new HashMap();
        hashMap.put(RemoteMessageConst.TTL, PushUtils.CHAT_PUSH_TYPE);
        hashMap.put("uuid", obj);
        hashMap.put("data", map);
        hashMap.put("meta", AFInAppEventParameterName());
        if (str2 != null) {
            int i9 = afDebugLog + 115;
            AFLogger$LogLevel = i9 % 128;
            int i10 = i9 % 2;
            hashMap.put("brand_domain", str2);
            int i11 = AFLogger$LogLevel + 39;
            afDebugLog = i11 % 128;
            int i12 = i11 % 2;
        }
        String jSONObject = AFa1lSDK.AFInAppEventType(hashMap).toString();
        HashMap hashMap2 = new HashMap();
        hashMap2.put(values(new int[]{-241347070, -581752973, 2062036802, 672860233, -1235466147, 1304496251}, 12 - View.combineMeasuredStates(0, 0)).intern(), AFKeystoreWrapper(str3, obj, "POST", jSONObject));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(String.format(values, AppsFlyerLib.getInstance().getHostPrefix(), AFa1aSDK.values().getHostName()));
        sb2.append(FileUtils.RES_PREFIX_STORAGE);
        sb2.append(str);
        return valueOf(new AFb1wSDK(sb2.toString(), jSONObject.getBytes(Charset.forName("UTF-8")), "POST", hashMap2, false), (AFc1rSDK) new AFc1uSDK(), true);
    }

    public final AFb1aSDK<Map<String, String>> AFKeystoreWrapper(@NonNull String str, @NonNull String str2, @NonNull UUID uuid, @NonNull String str3) {
        String obj = uuid.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(String.format(values, AppsFlyerLib.getInstance().getHostPrefix(), AFa1aSDK.values().getHostName()));
        sb2.append(FileUtils.RES_PREFIX_STORAGE);
        sb2.append(str);
        sb2.append("?id=");
        sb2.append(str2);
        String obj2 = sb2.toString();
        Map<String, Object> AFInAppEventParameterName2 = AFInAppEventParameterName();
        String valueOf2 = String.valueOf(AFInAppEventParameterName2.get("build_number"));
        HashMap hashMap = new HashMap();
        hashMap.put("Af-UUID", uuid.toString());
        hashMap.put("Af-Meta-Sdk-Ver", valueOf2);
        hashMap.put("Af-Meta-Counter", String.valueOf(AFInAppEventParameterName2.get("counter")));
        hashMap.put("Af-Meta-Model", String.valueOf(AFInAppEventParameterName2.get(DeviceRequestsHelper.DEVICE_INFO_MODEL)));
        hashMap.put("Af-Meta-Platform", String.valueOf(AFInAppEventParameterName2.get("platformextension")));
        hashMap.put("Af-Meta-System-Version", String.valueOf(AFInAppEventParameterName2.get(ServerProtocol.DIALOG_PARAM_SDK_VERSION)));
        hashMap.put(values(new int[]{-241347070, -581752973, 2062036802, 672860233, -1235466147, 1304496251}, KeyEvent.keyCodeFromString("") + 12).intern(), AFKeystoreWrapper(str3, obj, "GET", obj, str, str2, valueOf2));
        AFb1aSDK<Map<String, String>> values2 = values(new AFb1wSDK(obj2, null, "GET", hashMap, false), new AFc1tSDK());
        int i9 = AFLogger$LogLevel + 15;
        afDebugLog = i9 % 128;
        if ((i9 % 2 != 0 ? '7' : '\t') != '7') {
            return values2;
        }
        throw null;
    }

    private static String AFKeystoreWrapper(String str, String str2, String... strArr) {
        ArrayList arrayList = new ArrayList(Arrays.asList(strArr));
        arrayList.add(1, "v2");
        String AFInAppEventType2 = AFb1rSDK.AFInAppEventType((String[]) arrayList.toArray(new String[0]));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(str2);
        sb2.append("v2");
        String AFInAppEventType3 = AFb1rSDK.AFInAppEventType(AFInAppEventType2, sb2.toString());
        int i9 = AFLogger$LogLevel + 115;
        afDebugLog = i9 % 128;
        int i10 = i9 % 2;
        return AFInAppEventType3;
    }

    @NonNull
    private static String AFKeystoreWrapper(boolean z10, String str) {
        boolean z11;
        String hostName = AppsFlyerLib.getInstance().getHostName();
        if (!(!"appsflyer.com".equals(hostName))) {
            z11 = false;
        } else {
            int i9 = AFLogger$LogLevel + 79;
            afDebugLog = i9 % 128;
            int i10 = i9 % 2;
            z11 = true;
        }
        String str2 = !z10 ? AFInAppEventType : AFKeystoreWrapper;
        Object[] objArr = new Object[2];
        if (z11) {
            int i11 = afDebugLog + 89;
            AFLogger$LogLevel = i11 % 128;
            int i12 = i11 % 2;
        } else {
            hostName = "appsflyersdk.com";
        }
        objArr[0] = hostName;
        objArr[1] = str;
        String format = String.format(str2, objArr);
        int i13 = AFLogger$LogLevel + 95;
        afDebugLog = i13 % 128;
        if ((i13 % 2 != 0 ? 'c' : (char) 15) == 15) {
            return format;
        }
        throw null;
    }
}
