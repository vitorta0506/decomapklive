package com.tencent.liteav.base.system;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.AsyncTask;
import android.os.Debug;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.s;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
@JNINamespace("liteav")
/* loaded from: classes4.dex */
public class LiteavSystemInfo {
    private static final int APP_SYSTEM_METHOD_DEFAULT_GET_INTERVAL_MS = 1000;
    private static final String EXT_KEY_APP_BACKGROUND = "isAppBackground";
    private static final String EXT_KEY_APP_NAME = "appName";
    private static final String EXT_KEY_APP_PACKAGE_NAME = "appPackageName";
    private static final String EXT_KEY_APP_VERSION = "appVersion";
    private static final String EXT_KEY_BUILD_BOARD = "buildBoard";
    private static final String EXT_KEY_BUILD_BRAND = "buildBrand";
    private static final String EXT_KEY_BUILD_HARDWARE = "buildHardware";
    private static final String EXT_KEY_BUILD_MANUFACTURER = "buildManufacturer";
    private static final String EXT_KEY_BUILD_MODEL = "buildModel";
    private static final String EXT_KEY_BUILD_VERSION = "buildVersion";
    private static final String EXT_KEY_BUILD_VERSION_INT = "buildVersionInt";
    private static final int GET_APP_MEMORY_INTERVAL_MS = 15000;
    private static final int NETWORK_TYPE_2G = 4;
    private static final int NETWORK_TYPE_3G = 3;
    private static final int NETWORK_TYPE_4G = 2;
    private static final int NETWORK_TYPE_5G = 6;
    private static final int NETWORK_TYPE_UNKNOWN = 0;
    private static final int NETWORK_TYPE_WIFI = 1;
    private static final int NETWORK_TYPE_WIRED = 5;
    private static final String TAG = "LiteavBaseSystemInfo";
    private static volatile com.tencent.liteav.base.util.i sProcessStateOwner;
    private static final s<String> sModel = new s<>(h.a());
    private static final s<String> sBrand = new s<>(i.a());
    private static final s<String> sManufacturer = new s<>(j.a());
    private static final s<String> sHardware = new s<>(k.a());
    private static final s<String> sSystemOSVersion = new s<>(l.a());
    private static final s<Integer> sSystemOSVersionInt = new s<>(m.a());
    private static final s<String> sBoard = new s<>(n.a());
    private static final s<String> sAppPackageName = new s<>(o.a());
    private static final s<String> sAppName = new s<>(d.a());
    private static final s<String> sAppVersion = new s<>(e.a());
    private static final s<String> sUUID = new s<>(f.a());
    private static final s<Boolean> sIsAppBackground = new s<>(g.a());
    private static AtomicBoolean sIsGettingMemoryUsage = new AtomicBoolean(false);
    private static AtomicInteger sLastMemoryUsage = new AtomicInteger(0);
    private static final com.tencent.liteav.base.b.a sMemoryUsageThrottler = new com.tencent.liteav.base.b.a(15000);
    private static final Object sProcessStateOwnerLock = new Object();
    private static int sLastNetworkType = 0;
    private static final com.tencent.liteav.base.b.a sNetworkTypeThrottler = new com.tencent.liteav.base.b.a(1000);
    private static int sLastGateway = 0;
    private static final com.tencent.liteav.base.b.a sGatewayThrottler = new com.tencent.liteav.base.b.a(1000);

    @CalledByNative
    public static synchronized int getAppBackgroundState() {
        int i9;
        synchronized (LiteavSystemInfo.class) {
            if (sProcessStateOwner == null) {
                synchronized (sProcessStateOwnerLock) {
                    if (sProcessStateOwner == null) {
                        sProcessStateOwner = new com.tencent.liteav.base.util.i(ContextUtils.getApplicationContext(), sIsAppBackground);
                    }
                }
            }
            i9 = sProcessStateOwner.f31005a ? 1 : 0;
        }
        return i9;
    }

    @CalledByNative
    public static synchronized int getAppMemoryUsage() {
        int i9;
        synchronized (LiteavSystemInfo.class) {
            if (sMemoryUsageThrottler.a()) {
                getAppMemoryUsageFromSystem();
            }
            i9 = sLastMemoryUsage.get();
        }
        return i9;
    }

    private static void getAppMemoryUsageFromSystem() {
        if (sIsGettingMemoryUsage.get()) {
            return;
        }
        sIsGettingMemoryUsage.set(true);
        AsyncTask.execute(c.a());
    }

    @CalledByNative
    public static String getAppName() {
        return sAppName.a();
    }

    @CalledByNative
    public static String getAppPackageName() {
        return sAppPackageName.a();
    }

    @CalledByNative
    public static String getAppVersion() {
        return sAppVersion.a();
    }

    public static String getBoard() {
        return sBoard.a();
    }

    public static String getBrand() {
        return sBrand.a();
    }

    @CalledByNative
    public static String getDeviceUuid() {
        return sUUID.a();
    }

    @CalledByNative
    public static synchronized int getGateway() {
        int i9;
        synchronized (LiteavSystemInfo.class) {
            if (sGatewayThrottler.a()) {
                sLastGateway = getGatewayFromSystem();
            }
            i9 = sLastGateway;
        }
        return i9;
    }

    private static int getGatewayFromSystem() {
        Context applicationContext = ContextUtils.getApplicationContext();
        if (applicationContext == null) {
            return 0;
        }
        try {
            return ((WifiManager) applicationContext.getSystemService("wifi")).getDhcpInfo().gateway;
        } catch (Throwable th2) {
            Log.e(TAG, "getGateway error " + th2.getMessage(), new Object[0]);
            return 0;
        }
    }

    public static String getHardware() {
        return sHardware.a();
    }

    @CalledByNative
    public static String getManufacturer() {
        return sManufacturer.a();
    }

    @CalledByNative
    public static String getModel() {
        return sModel.a();
    }

    @CalledByNative
    public static synchronized int getNetworkType() {
        int i9;
        synchronized (LiteavSystemInfo.class) {
            if (sNetworkTypeThrottler.a()) {
                sLastNetworkType = getNetworkTypeFromSystem();
            }
            i9 = sLastNetworkType;
        }
        return i9;
    }

    private static int getNetworkTypeFromSystem() {
        Context applicationContext = ContextUtils.getApplicationContext();
        if (applicationContext == null) {
            return 0;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) applicationContext.getSystemService("connectivity");
        TelephonyManager telephonyManager = (TelephonyManager) applicationContext.getSystemService("phone");
        NetworkInfo networkInfo = null;
        try {
            networkInfo = connectivityManager.getActiveNetworkInfo();
        } catch (Exception e10) {
            Log.e(TAG, "getNetworkType error occurred.", e10);
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            if (networkInfo.getType() == 9) {
                return 5;
            }
            if (networkInfo.getType() == 1) {
                return 1;
            }
            if (networkInfo.getType() == 0) {
                try {
                    int networkType = telephonyManager.getNetworkType();
                    switch (networkType) {
                        case 1:
                        case 2:
                        case 4:
                        case 7:
                        case 11:
                            return 4;
                        case 3:
                        case 5:
                        case 6:
                        case 8:
                        case 9:
                        case 10:
                        case 12:
                        case 14:
                        case 15:
                            return 3;
                        case 13:
                            return 2;
                        default:
                            return (getSystemOSVersionInt() < 29 || networkType != 20) ? 2 : 6;
                    }
                } catch (Exception e11) {
                    Log.e(TAG, "getNetworkType error occurred.", e11);
                    return 2;
                }
            }
            return 0;
        }
        return 0;
    }

    @CalledByNative
    public static String getSystemOSVersion() {
        return sSystemOSVersion.a();
    }

    @CalledByNative
    public static int getSystemOSVersionInt() {
        return sSystemOSVersionInt.a().intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$getAppMemoryUsageFromSystem$9() {
        int i9;
        try {
            Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
            Debug.getMemoryInfo(memoryInfo);
            i9 = memoryInfo.getTotalPss();
        } catch (Exception e10) {
            Log.e(TAG, "Get App memory usage failed." + e10.getMessage(), new Object[0]);
            i9 = 0;
        }
        sLastMemoryUsage.set(i9 / 1024);
        sIsGettingMemoryUsage.set(false);
    }

    public static boolean setExtID(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            str.hashCode();
            char c10 = 65535;
            switch (str.hashCode()) {
                case -1978299099:
                    if (str.equals(EXT_KEY_APP_BACKGROUND)) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -911706486:
                    if (str.equals(EXT_KEY_BUILD_VERSION)) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -794136500:
                    if (str.equals(EXT_KEY_APP_NAME)) {
                        c10 = 2;
                        break;
                    }
                    break;
                case -589756065:
                    if (str.equals(EXT_KEY_BUILD_MANUFACTURER)) {
                        c10 = 3;
                        break;
                    }
                    break;
                case -497349352:
                    if (str.equals(EXT_KEY_BUILD_BOARD)) {
                        c10 = 4;
                        break;
                    }
                    break;
                case -497260103:
                    if (str.equals(EXT_KEY_BUILD_BRAND)) {
                        c10 = 5;
                        break;
                    }
                    break;
                case -487188133:
                    if (str.equals(EXT_KEY_BUILD_MODEL)) {
                        c10 = 6;
                        break;
                    }
                    break;
                case -441921776:
                    if (str.equals(EXT_KEY_APP_PACKAGE_NAME)) {
                        c10 = 7;
                        break;
                    }
                    break;
                case -391134602:
                    if (str.equals(EXT_KEY_BUILD_HARDWARE)) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case 725329157:
                    if (str.equals(EXT_KEY_BUILD_VERSION_INT)) {
                        c10 = '\t';
                        break;
                    }
                    break;
                case 1484112759:
                    if (str.equals(EXT_KEY_APP_VERSION)) {
                        c10 = '\n';
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    try {
                        sIsAppBackground.a(Boolean.valueOf(Integer.parseInt(str2) == 1));
                        break;
                    } catch (Exception e10) {
                        Log.e(TAG, "set app background state failed. ".concat(String.valueOf(e10)), new Object[0]);
                        break;
                    }
                case 1:
                    sSystemOSVersion.a(str2);
                    break;
                case 2:
                    sAppName.a(str2);
                    break;
                case 3:
                    sManufacturer.a(str2);
                    break;
                case 4:
                    sBoard.a(str2);
                    break;
                case 5:
                    sBrand.a(str2);
                    break;
                case 6:
                    sModel.a(str2);
                    break;
                case 7:
                    sAppPackageName.a(str2);
                    break;
                case '\b':
                    sHardware.a(str2);
                    break;
                case '\t':
                    try {
                        sSystemOSVersionInt.a(Integer.valueOf(Integer.parseInt(str2)));
                        break;
                    } catch (Exception e11) {
                        e11.printStackTrace();
                        break;
                    }
                case '\n':
                    sAppVersion.a(str2);
                    break;
                default:
                    return false;
            }
            return true;
        }
        return false;
    }
}
