package com.guochao.faceshow.aaspring.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.hardware.Camera;
import android.hardware.SensorManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.WindowInsets;
import androidx.core.content.ContextCompat;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import com.guochao.faceshow.aaspring.modulars.login.activity.LoginOrRegisterActivity;
import com.guochao.faceshow.aaspring.utils.Constants;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.utils.SystemUtil;
import com.guochao.faceshow.views.e;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.notification.model.AdvanceSetting;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class PhoneUtils {
    public static final int VIVO_FILLET = 8;
    public static final int VIVO_NOTCH = 32;
    private static Boolean sIsLowMemoryDevice;

    static /* synthetic */ boolean access$000() {
        return pingGoogle();
    }

    private static boolean checkCameraFacing(int i9) {
        int numberOfCameras = Camera.getNumberOfCameras();
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        for (int i10 = 0; i10 < numberOfCameras; i10++) {
            Camera.getCameraInfo(i10, cameraInfo);
            if (i9 == cameraInfo.facing) {
                return true;
            }
        }
        return false;
    }

    public static boolean checkInterceptLoginType(final BaseActivity baseActivity) {
        if (isSouthKorea()) {
            baseActivity.alert("", baseActivity.getString(R.string.register_intercepty_to_phone), new e.a() { // from class: com.guochao.faceshow.aaspring.utils.PhoneUtils.2
                @Override // com.guochao.faceshow.views.e.a
                public void onClick(Dialog dialog, boolean z10) {
                    dialog.dismiss();
                    if (z10) {
                        Intent addFlags = new Intent(BaseActivity.this, LoginOrRegisterActivity.class).addFlags(335544320);
                        com.guochao.faceshow.aaspring.modulars.login.utils.j.e().z(Constants.ThirdPartyLogin.PHONE);
                        BaseActivity.this.startActivity(addFlags);
                        BaseActivity baseActivity2 = BaseActivity.this;
                        if (baseActivity2 instanceof LoginOrRegisterActivity) {
                            baseActivity2.finish();
                        }
                    }
                }

                @Override // com.guochao.faceshow.views.e.a
                public /* bridge */ /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                    com.guochao.faceshow.views.d.a(this, eVar);
                }
            }, false);
            return true;
        }
        return false;
    }

    public static boolean checkMcc() {
        List<SubscriptionInfo> activeSubscriptionInfoList;
        BaseApplication baseApplication = BaseApplication.getInstance();
        TelephonyManager telephonyManager = (TelephonyManager) baseApplication.getSystemService("phone");
        int simState = telephonyManager.getSimState();
        if (simState != 5) {
            ToastUtils.showToast("检查插卡状态：" + simState);
            return true;
        }
        String networkOperator = telephonyManager.getNetworkOperator();
        ToastUtils.debug("运营商代码：" + networkOperator);
        if (TextUtils.isEmpty(networkOperator)) {
            return true;
        }
        if (!networkOperator.startsWith("460") && Build.VERSION.SDK_INT >= 22 && ContextCompat.checkSelfPermission(baseApplication, "android.permission.READ_PHONE_STATE") == 0 && (activeSubscriptionInfoList = ((SubscriptionManager) baseApplication.getSystemService("telephony_subscription_service")).getActiveSubscriptionInfoList()) != null) {
            for (SubscriptionInfo subscriptionInfo : activeSubscriptionInfoList) {
                if (subscriptionInfo != null && 460 == subscriptionInfo.getMcc()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String getAppLanguage() {
        Locale locale;
        if (Build.VERSION.SDK_INT >= 24) {
            locale = BaseApplication.getInstance().getResources().getConfiguration().getLocales().get(0);
        } else {
            locale = BaseApplication.getInstance().getResources().getConfiguration().locale;
        }
        return locale.getLanguage();
    }

    public static String getAppRegion() {
        Locale locale;
        if (Build.VERSION.SDK_INT >= 24) {
            locale = BaseApplication.getInstance().getResources().getConfiguration().getLocales().get(0);
        } else {
            locale = BaseApplication.getInstance().getResources().getConfiguration().locale;
        }
        return locale.getCountry();
    }

    public static int getInt(String str, Activity activity) {
        if (isXiaomi()) {
            try {
                Class<?> loadClass = activity.getClassLoader().loadClass("android.os.SystemProperties");
                return ((Integer) loadClass.getMethod("getInt", String.class, Integer.TYPE).invoke(loadClass, new String(str), new Integer(0))).intValue();
            } catch (ClassNotFoundException e10) {
                e10.printStackTrace();
                return 0;
            } catch (IllegalAccessException e11) {
                e11.printStackTrace();
                return 0;
            } catch (IllegalArgumentException e12) {
                e12.printStackTrace();
                return 0;
            } catch (NoSuchMethodException e13) {
                e13.printStackTrace();
                return 0;
            } catch (InvocationTargetException e14) {
                e14.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    public static String getLocalCountry() {
        if (Build.VERSION.SDK_INT >= 24) {
            return ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration()).get(0).getCountry();
        }
        return Locale.getDefault().getCountry();
    }

    public static String getLocalIpAddress() {
        WifiManager wifiManager;
        WifiInfo connectionInfo;
        int ipAddress;
        try {
            wifiManager = (WifiManager) BaseApplication.getInstance().getApplicationContext().getSystemService("wifi");
        } catch (SocketException e10) {
            e10.printStackTrace();
        }
        if (wifiManager != null && (connectionInfo = wifiManager.getConnectionInfo()) != null && (ipAddress = connectionInfo.getIpAddress()) > 0) {
            return ((ipAddress >> 24) & 255) + "." + ((ipAddress >> 16) & 255) + "." + ((ipAddress >> 8) & 255) + "." + (ipAddress & 255);
        }
        ArrayList<NetworkInterface> list = Collections.list(NetworkInterface.getNetworkInterfaces());
        if (list.isEmpty()) {
            return "";
        }
        for (NetworkInterface networkInterface : list) {
            for (InetAddress inetAddress : Collections.list(networkInterface.getInetAddresses())) {
                if (!inetAddress.isLoopbackAddress()) {
                    return inetAddress.getHostAddress();
                }
            }
        }
        return "";
    }

    public static boolean hasBackFacingCamera() {
        return checkCameraFacing(0);
    }

    public static boolean hasCamera() {
        return hasBackFacingCamera() || hasFrontFacingCamera();
    }

    public static boolean hasFrontFacingCamera() {
        return checkCameraFacing(1);
    }

    public static boolean hasNotchAtHuawei(Context context) {
        try {
            try {
                try {
                    Class<?> loadClass = context.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
                    return ((Boolean) loadClass.getMethod("hasNotchInScreen", new Class[0]).invoke(loadClass, new Object[0])).booleanValue();
                } catch (Exception unused) {
                    LogUtils.e("zune:", "hasNotchAtHuawei Exception");
                    return false;
                }
            } catch (ClassNotFoundException unused2) {
                LogUtils.e("zune:", "hasNotchAtHuawei ClassNotFoundException");
                return false;
            } catch (NoSuchMethodException unused3) {
                LogUtils.e("zune:", "hasNotchAtHuawei NoSuchMethodException");
                return false;
            }
        } catch (Throwable unused4) {
            return false;
        }
    }

    public static boolean hasNotchAtOPPO(Context context) {
        return context.getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
    }

    public static boolean hasNotchAtVivo(Context context) {
        try {
            try {
                try {
                    try {
                        Class<?> loadClass = context.getClassLoader().loadClass("android.util.FtFeature");
                        return ((Boolean) loadClass.getMethod("isFeatureSupport", Integer.TYPE).invoke(loadClass, 32)).booleanValue();
                    } catch (Exception unused) {
                        LogUtils.e("zune:", "hasNotchAtVivo Exception");
                        return false;
                    }
                } catch (NoSuchMethodException unused2) {
                    LogUtils.e("zune:", "hasNotchAtVivo NoSuchMethodException");
                    return false;
                }
            } catch (ClassNotFoundException unused3) {
                LogUtils.e("zune:", "hasNotchAtVivo ClassNotFoundException");
                return false;
            }
        } catch (Throwable unused4) {
            return false;
        }
    }

    public static boolean hasNotchScreen(Activity activity) {
        return getInt("ro.miui.notch", activity) == 1 || hasNotchAtHuawei(activity) || hasNotchAtOPPO(activity) || hasNotchAtVivo(activity) || isAndroidP(activity) != null;
    }

    public static DisplayCutout isAndroidP(Activity activity) {
        WindowInsets rootWindowInsets;
        View decorView = activity.getWindow().getDecorView();
        if (decorView == null || Build.VERSION.SDK_INT < 28 || (rootWindowInsets = decorView.getRootWindowInsets()) == null) {
            return null;
        }
        return rootWindowInsets.getDisplayCutout();
    }

    public static boolean isBackground(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        String str;
        ActivityManager activityManager = (ActivityManager) context.getSystemService(PushConstants.INTENT_ACTIVITY_NAME);
        if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
            return true;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo != null && (str = runningAppProcessInfo.processName) != null && str.equals(context.getPackageName())) {
                return runningAppProcessInfo.importance == 400;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isCameraCanUse(android.content.Context r1) {
        /*
            android.hardware.Camera r1 = android.hardware.Camera.open()     // Catch: java.lang.Exception -> Ld
            android.hardware.Camera$Parameters r0 = r1.getParameters()     // Catch: java.lang.Exception -> Le
            r1.setParameters(r0)     // Catch: java.lang.Exception -> Le
            r0 = 1
            goto Lf
        Ld:
            r1 = 0
        Le:
            r0 = 0
        Lf:
            if (r1 == 0) goto L14
            r1.release()
        L14:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.utils.PhoneUtils.isCameraCanUse(android.content.Context):boolean");
    }

    public static boolean isFeatures(Context context) {
        String str = Build.SERIAL;
        String str2 = Build.FINGERPRINT;
        if (!str2.startsWith("generic") && !str2.toLowerCase().contains("vbox") && !str2.toLowerCase().contains("test-keys")) {
            String str3 = Build.MODEL;
            if (!str3.contains("google_sdk") && !str3.contains("Emulator") && !"unknown".equalsIgnoreCase(str) && !"android".equalsIgnoreCase(str) && !str3.contains("Android SDK built for x86") && !Build.MANUFACTURER.contains("Genymotion") && ((!Build.BRAND.startsWith("generic") || !Build.DEVICE.startsWith("generic")) && !"google_sdk".equals(Build.PRODUCT) && !((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName().toLowerCase().equals("android") && ((SensorManager) context.getSystemService("sensor")).getDefaultSensor(5) != null && !readCpuInfo().contains("amd") && !readCpuInfo().contains("intel") && hasCamera())) {
                return false;
            }
        }
        return true;
    }

    public static void isGoogleEnable(final Context context, SimpleObserver<Boolean> simpleObserver) {
        io.reactivex.k.just(1).map(new vh.o<Integer, Boolean>() { // from class: com.guochao.faceshow.aaspring.utils.PhoneUtils.1
            @Override // vh.o
            public Boolean apply(@NotNull Integer num) throws Exception {
                int g10 = com.google.android.gms.common.a.m().g(context);
                boolean checkApkExist = SharePlatformBean.checkApkExist("com.android.vending");
                if (g10 == 0 && checkApkExist) {
                    if (PhoneUtils.access$000()) {
                        return Boolean.TRUE;
                    }
                    return Boolean.FALSE;
                }
                return Boolean.FALSE;
            }
        }).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(simpleObserver);
    }

    public static boolean isLocalChina() {
        String country;
        String language;
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
            country = locales.get(0).getCountry();
            language = locales.get(0).getLanguage();
        } else {
            country = Locale.getDefault().getCountry();
            language = Locale.getDefault().getLanguage();
        }
        return TextUtils.isEmpty(country) ? "CN".equals(language) || AdvanceSetting.CLEAR_NOTIFICATION.equals(language) || "ZH".equals(language) || Language.SIMPLE_CHINESE.equals(language) : "ZH".equals(country) || Language.SIMPLE_CHINESE.equals(country) || "CN".equals(country) || AdvanceSetting.CLEAR_NOTIFICATION.equals(country);
    }

    public static boolean isLowMemoryDevice() {
        if (sIsLowMemoryDevice == null) {
            ActivityManager activityManager = (ActivityManager) BaseApplication.getInstance().getSystemService(PushConstants.INTENT_ACTIVITY_NAME);
            if (activityManager == null) {
                sIsLowMemoryDevice = Boolean.FALSE;
                return false;
            }
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            sIsLowMemoryDevice = Boolean.valueOf((memoryInfo.totalMem / 1024) / 1024 <= 3072);
        }
        return sIsLowMemoryDevice.booleanValue();
    }

    public static boolean isMoto() {
        return "motorola".equalsIgnoreCase(Build.BRAND);
    }

    public static boolean isSouthKorea() {
        String country;
        String language;
        List<SubscriptionInfo> activeSubscriptionInfoList;
        int i9 = Build.VERSION.SDK_INT;
        if (i9 >= 24) {
            LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
            if (!locales.isEmpty()) {
                country = locales.get(0).getCountry();
                language = locales.get(0).getLanguage();
            } else {
                country = Locale.getDefault().getCountry();
                language = Locale.getDefault().getLanguage();
            }
        } else {
            country = Locale.getDefault().getCountry();
            language = Locale.getDefault().getLanguage();
        }
        if ("kr".equalsIgnoreCase(country) || Language.KOREAN.equalsIgnoreCase(language)) {
            return true;
        }
        LogUtils.i("zune: ", "systemCountry = " + country + ", systemLanguage = " + language);
        GCApplication app = GCApplication.app();
        String networkOperator = ((TelephonyManager) app.getSystemService("phone")).getNetworkOperator();
        if (!TextUtils.isEmpty(networkOperator)) {
            if (networkOperator.startsWith("450")) {
                return true;
            }
            LogUtils.i("zune: ", "mcc1 = " + networkOperator);
        }
        String imsi = SystemUtil.getIMSI();
        if (!TextUtils.isEmpty(imsi)) {
            if (imsi.startsWith("450")) {
                return true;
            }
            LogUtils.i("zune: ", "mcc2 = " + imsi);
        }
        if (i9 >= 22 && ContextCompat.checkSelfPermission(app, "android.permission.READ_PHONE_STATE") == 0 && (activeSubscriptionInfoList = ((SubscriptionManager) app.getSystemService("telephony_subscription_service")).getActiveSubscriptionInfoList()) != null) {
            for (SubscriptionInfo subscriptionInfo : activeSubscriptionInfoList) {
                if (subscriptionInfo != null) {
                    int mcc = subscriptionInfo.getMcc();
                    subscriptionInfo.getMnc();
                    if (450 == mcc) {
                        return true;
                    }
                    LogUtils.i("zune: ", "mcc3 = " + mcc);
                }
            }
        }
        return false;
    }

    public static boolean isXiaomi() {
        return "Xiaomi".equals(Build.MANUFACTURER);
    }

    private static boolean isYidong(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("46000") || str.startsWith("46002") || str.startsWith("46007");
    }

    private static boolean pingGoogle() {
        try {
            return ShellUtils.execCmd(String.format("ping -c 3 -w 5 %s", InetAddress.getByName("www.google.com").getHostAddress()), false).result == 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public static String readCpuInfo() {
        try {
            Process start = new ProcessBuilder("/system/bin/cat", "/proc/cpuinfo").start();
            StringBuffer stringBuffer = new StringBuffer();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(start.getInputStream(), "utf-8"));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    stringBuffer.append(readLine);
                } else {
                    bufferedReader.close();
                    return stringBuffer.toString().toLowerCase();
                }
            }
        } catch (Exception unused) {
            return "";
        }
    }
}
