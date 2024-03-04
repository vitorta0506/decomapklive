package org.light.device;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ConfigurationInfo;
import android.content.res.Resources;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Debug;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;
import android.os.StatFs;
import android.provider.Settings;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.RequiresApi;
import com.facebook.appevents.integrity.IntegrityManager;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.light.gles.GLCapabilities;
import org.light.utils.LightDataUtils;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public class LightDeviceUtils {
    private static final int MIN_OPENGL_ES_VERSION = 131072;
    public static final int MIN_STORAGE_SIZE = 52428800;
    public static final int MOBILE_NETWORK_2G = 1;
    public static final int MOBILE_NETWORK_3G = 2;
    public static final int MOBILE_NETWORK_4G = 3;
    public static final int MOBILE_NETWORK_DISCONNECT = 5;
    public static final int MOBILE_NETWORK_UNKNOWN = 4;
    public static final int NET_2G = 2;
    public static final int NET_3G = 3;
    public static final int NET_4G = 4;
    public static final int NET_NONE = 0;
    public static final int NET_OTHER = 5;
    public static final int NET_WIFI = 1;
    public static final int RECORD_CPU_INTERVAL = 100;
    private static final String TAG = "LightDeviceUtils";
    private static String allCpuFreqKhz;
    private static String allCpuParts;
    private static Boolean isRooted;
    private static String lastCpuPart;
    private static int sCpuCount;
    private static int sMaxCpuFreq;
    private static int sTotalMemory;
    private static String socName;
    private static final String BUILD_MODEL = "Build.MODEL";
    private static String buildModel = LightDataUtils.getValue(BUILD_MODEL);
    public static HandlerThread handlerThread = null;
    public static Handler handler = null;
    private static int recordCpuCount = 0;
    private static float cpuRate = 0.0f;
    private static long lastCpuTotalTime = 0;
    private static long lastCpuIdleTime = 0;
    private static boolean mIsAllUnusable = false;
    private static boolean mIsOpenGlEsValid = true;
    public static int openGLESVersion = 65536;

    /* loaded from: classes7.dex */
    public static class MEMORY_CLASS {
        public static final int IN_B = 0;
        public static final int IN_KB = 1;
        public static final int IN_MB = 2;
    }

    public static boolean canWriteFile(String str, boolean z10) {
        int lastIndexOf;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if ((z10 || str.endsWith(File.separator)) && (lastIndexOf = str.lastIndexOf(File.separator)) > -1) {
            str = str.substring(0, lastIndexOf);
        }
        File file = new File(str + File.separator + "test_temp.txt");
        try {
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            if (file.exists()) {
                file.delete();
            }
            file.createNewFile();
            file.delete();
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private static int extractValue(byte[] bArr, int i9) {
        while (i9 < bArr.length && bArr[i9] != 10) {
            if (bArr[i9] >= 48 && bArr[i9] <= 57) {
                int i10 = i9 + 1;
                while (i10 < bArr.length && bArr[i10] >= 48 && bArr[i10] <= 57) {
                    i10++;
                }
                return Integer.parseInt(new String(bArr, 0, i9, i10 - i9));
            }
            i9++;
        }
        return -1;
    }

    public static String getAllCpuFreqKhz() {
        if (allCpuFreqKhz == null) {
            initCpuFreq();
        }
        return allCpuFreqKhz;
    }

    public static String getAllCpuParts() {
        if (allCpuParts == null) {
            initSocModelInfo();
        }
        return allCpuParts;
    }

    @RequiresApi(api = 19)
    public static int getApplicationMemory() {
        Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
        Debug.getMemoryInfo(memoryInfo);
        int totalPrivateClean = memoryInfo.getTotalPrivateClean();
        int totalPrivateDirty = memoryInfo.getTotalPrivateDirty();
        int totalPss = memoryInfo.getTotalPss();
        int totalSharedClean = memoryInfo.getTotalSharedClean();
        return totalPrivateClean + totalPrivateDirty + totalPss + totalSharedClean + memoryInfo.getTotalSharedDirty() + memoryInfo.getTotalSwappablePss();
    }

    public static long getAvailableSize(StatFs statFs) {
        if (ApiHelper.hasJellyBeanMR2()) {
            return statFs.getAvailableBytes();
        }
        return statFs.getAvailableBlocks() * statFs.getBlockSize();
    }

    public static String getBenchmarkStrategy() {
        return OfflineConfig.getBenchmarkStrategy();
    }

    public static String getBuildModel() {
        if (TextUtils.isEmpty(buildModel)) {
            String str = Build.MODEL;
            buildModel = str;
            LightDataUtils.saveValue(BUILD_MODEL, str);
        }
        return buildModel;
    }

    public static String getBuildVersionName(Context context) {
        String versionName = getVersionName(context);
        return TextUtils.isEmpty(versionName) ? "" : versionName.substring(versionName.lastIndexOf(".") + 1);
    }

    public static String getCpuNameOnce() {
        return getSocName();
    }

    public static float getCpuRate() {
        return cpuRate;
    }

    public static String getCurrentProcessName(Context context) {
        int myPid = Process.myPid();
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService(PushConstants.INTENT_ACTIVITY_NAME)).getRunningAppProcesses()) {
            if (runningAppProcessInfo.pid == myPid) {
                return runningAppProcessInfo.processName;
            }
        }
        return null;
    }

    public static File getExternalFilesDir(Context context) {
        File externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            return new File(context.getExternalFilesDir(null) + ("/Android/data/" + context.getPackageName() + "/files/"));
        }
        return externalFilesDir;
    }

    public static String getGpuInfo() {
        return GLCapabilities.getGPUInfo();
    }

    public static float getHeapAllocatedPercent(Context context) {
        return (((float) getHeapAllocatedSizeInKb()) * 1.0f) / ((float) getHeapMaxSizeInKb(context));
    }

    public static long getHeapAllocatedSizeInKb() {
        long runtimeTotalMemory = getRuntimeTotalMemory(1) - getRuntimeFreeMemory(1);
        String str = TAG;
        LightLogUtil.v(str, "getHeapAllocatedSizeInKb(), heapAllocated = " + (((float) runtimeTotalMemory) / 1024.0f) + "(Mb), " + runtimeTotalMemory + "(Kb)");
        return runtimeTotalMemory;
    }

    public static long getHeapMaxSizeInKb(Context context) {
        long runtimeMaxMemory = getRuntimeMaxMemory(1);
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(PushConstants.INTENT_ACTIVITY_NAME);
            String str = TAG;
            LightLogUtil.v(str, "getHeapMaxSizeInKb(), heap size(Mb) = " + activityManager.getMemoryClass());
            return activityManager.getMemoryClass() * 1024;
        } catch (Exception e10) {
            LightLogUtil.e(e10);
            return runtimeMaxMemory;
        }
    }

    public static long getHeapMaxSizeInMb(Context context) {
        long runtimeMaxMemory = getRuntimeMaxMemory(2);
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(PushConstants.INTENT_ACTIVITY_NAME);
            String str = TAG;
            LightLogUtil.v(str, "getHeapMaxSizeInMb(), heap size(Mb) = " + activityManager.getMemoryClass());
            return activityManager.getMemoryClass();
        } catch (Exception e10) {
            LightLogUtil.e(e10);
            return runtimeMaxMemory;
        }
    }

    public static long getHeapRemainSizeInKb(Context context) {
        long heapMaxSizeInKb = getHeapMaxSizeInKb(context) - getHeapAllocatedSizeInKb();
        String str = TAG;
        LightLogUtil.v(str, "getHeapRemainSizeInKb(), remainSize = " + (((float) heapMaxSizeInKb) / 1024.0f) + "(Mb), " + heapMaxSizeInKb + "(Kb)");
        return heapMaxSizeInKb;
    }

    public static long getLargeHeapMaxSizeInKb(Context context) {
        long runtimeMaxMemory = getRuntimeMaxMemory(1);
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(PushConstants.INTENT_ACTIVITY_NAME);
            String str = TAG;
            LightLogUtil.v(str, "getLargeHeapMaxSizeInKb(), heap size(Mb) = " + activityManager.getLargeMemoryClass());
            return activityManager.getLargeMemoryClass() * 1024;
        } catch (Exception e10) {
            LightLogUtil.e(e10);
            return runtimeMaxMemory;
        }
    }

    public static long getLargeHeapRemainSizeInKb(Context context) {
        long largeHeapMaxSizeInKb = getLargeHeapMaxSizeInKb(context) - getHeapAllocatedSizeInKb();
        String str = TAG;
        LightLogUtil.v(str, "getLargeHeapRemainSizeInKb(), remainSize = " + (((float) largeHeapMaxSizeInKb) / 1024.0f) + "(Mb), " + largeHeapMaxSizeInKb + "(Kb)");
        return largeHeapMaxSizeInKb;
    }

    public static String getLastCpuPart() {
        if (lastCpuPart == null) {
            initSocModelInfo();
        }
        return lastCpuPart;
    }

    public static String getLocalIpAddress() {
        return "";
    }

    public static String getMachineInfo() {
        return DeviceInstance.getInstance().getDeviceName();
    }

    public static int getMaxCpuFreq() {
        if (sMaxCpuFreq <= 0) {
            initCpuFreq();
        }
        return sMaxCpuFreq;
    }

    public static int getMobileNetworkType(Context context) {
        ConnectivityManager connectivityManager;
        if (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return 4;
        }
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
        if (networkInfo != null && networkInfo.isAvailable() && networkInfo.isConnected()) {
            switch (networkInfo.getSubtype()) {
                case 1:
                case 2:
                case 4:
                    return 1;
                case 3:
                case 7:
                case 11:
                case 14:
                default:
                    return 4;
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 15:
                    return 2;
                case 13:
                    return 3;
            }
        }
        return 5;
    }

    public static int getNavigationBarHeight(Activity activity) {
        if (isNavigationBarShow(activity)) {
            Resources resources = activity.getResources();
            return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", "android"));
        }
        return 0;
    }

    public static int getNetworkType(Context context) {
        try {
            if (isNetworkAvailable(context)) {
                if (isWifiNetwork(context)) {
                    return 1;
                }
                int mobileNetworkType = getMobileNetworkType(context);
                if (mobileNetworkType != 1) {
                    if (mobileNetworkType != 2) {
                        return mobileNetworkType != 3 ? 5 : 4;
                    }
                    return 3;
                }
                return 2;
            }
            return 0;
        } catch (Exception e10) {
            LightLogUtil.e(e10);
            return 5;
        }
    }

    public static String getNetworkTypeName(Context context) {
        int networkType = getNetworkType(context);
        return networkType != 0 ? networkType != 1 ? networkType != 2 ? networkType != 3 ? networkType != 4 ? "unknow" : "4G" : "3G" : "2G" : "wifi" : IntegrityManager.INTEGRITY_TYPE_NONE;
    }

    public static int getNumCores() {
        int i9 = sCpuCount;
        if (i9 > 0) {
            return i9;
        }
        try {
            File[] listFiles = new File("/sys/devices/system/cpu/").listFiles(new FileFilter() { // from class: org.light.device.LightDeviceUtils.1CpuFilter
                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    return Pattern.matches("cpu[0-9]", file.getName());
                }
            });
            if (listFiles != null) {
                sCpuCount = listFiles.length;
            } else {
                sCpuCount = 1;
            }
        } catch (Throwable th2) {
            LightLogUtil.e(th2);
            sCpuCount = 1;
        }
        LightLogUtil.v("DeviceUtils", "sCpuCount:" + sCpuCount);
        return sCpuCount;
    }

    public static String getOSVersion() {
        return Build.VERSION.RELEASE;
    }

    public static int getOpenGlEsVersion(Context context) {
        ConfigurationInfo deviceConfigurationInfo = ((ActivityManager) context.getSystemService(PushConstants.INTENT_ACTIVITY_NAME)).getDeviceConfigurationInfo();
        if (deviceConfigurationInfo != null) {
            openGLESVersion = deviceConfigurationInfo.reqGlEsVersion;
        }
        return openGLESVersion;
    }

    public static int getPhonePerfLevel(Context context) {
        return OfflineConfig.getPhonePerfLevel(context);
    }

    private static long getRuntimeFreeMemory(int i9) {
        long freeMemory;
        if (i9 == 0) {
            freeMemory = Runtime.getRuntime().freeMemory();
        } else if (i9 == 1) {
            freeMemory = Runtime.getRuntime().freeMemory() / 1024;
        } else if (i9 != 2) {
            freeMemory = Runtime.getRuntime().freeMemory();
        } else {
            freeMemory = (Runtime.getRuntime().freeMemory() / 1024) / 1024;
        }
        String str = TAG;
        LightLogUtil.v(str, "[getRuntimeFreeMemory] freeMemory = " + ((Runtime.getRuntime().freeMemory() / 1024) / 1024) + "(Mb), " + (Runtime.getRuntime().freeMemory() / 1024) + "(Kb)");
        return freeMemory;
    }

    private static long getRuntimeMaxMemory(int i9) {
        long maxMemory = Runtime.getRuntime().maxMemory();
        if (i9 == 0) {
            maxMemory = Runtime.getRuntime().maxMemory();
        } else if (i9 == 1) {
            maxMemory = Runtime.getRuntime().maxMemory() / 1024;
        } else if (i9 == 2) {
            maxMemory = (Runtime.getRuntime().maxMemory() / 1024) / 1024;
        }
        String str = TAG;
        LightLogUtil.v(str, "[getRuntimeMaxMemory] maxMemory = " + ((Runtime.getRuntime().maxMemory() / 1024) / 1024) + "(Mb), " + (Runtime.getRuntime().maxMemory() / 1024) + "(Kb)");
        return maxMemory;
    }

    public static long getRuntimeRemainSize(int i9) {
        long maxMemory = Runtime.getRuntime().maxMemory() - (getHeapAllocatedSizeInKb() * 1024);
        if (i9 == 1) {
            maxMemory /= 1024;
        } else if (i9 == 2) {
            maxMemory /= PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
        }
        String str = TAG;
        LightLogUtil.v(str, "[getRuntimeRemainSize] remainMemory = " + maxMemory + " " + i9);
        return maxMemory;
    }

    private static long getRuntimeTotalMemory(int i9) {
        long j10;
        if (i9 == 0) {
            j10 = Runtime.getRuntime().totalMemory();
        } else if (i9 == 1) {
            j10 = Runtime.getRuntime().totalMemory() / 1024;
        } else if (i9 != 2) {
            j10 = Runtime.getRuntime().totalMemory();
        } else {
            j10 = (Runtime.getRuntime().totalMemory() / 1024) / 1024;
        }
        String str = TAG;
        LightLogUtil.v(str, "[getRuntimeTotalMemory] totalMemory = " + ((Runtime.getRuntime().totalMemory() / 1024) / 1024) + "(Mb), " + (Runtime.getRuntime().totalMemory() / 1024) + "(Kb)");
        return j10;
    }

    public static int getScreenHeight(Context context) {
        if (context == null) {
            return 1;
        }
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static int getScreenHeightWithNavigationBar(Activity activity) {
        return getScreenHeight(activity) + getNavigationBarHeight(activity);
    }

    public static float getScreenRatio(Context context) {
        int screenWidth = getScreenWidth(context);
        int screenHeight = getScreenHeight(context);
        int max = Math.max(screenWidth, screenHeight);
        int min = Math.min(screenWidth, screenHeight);
        if (NotchInScreenUtils.hasNotchInScreenHw(context)) {
            max -= NotchInScreenUtils.getNotchHeightHw(context);
        }
        return (min * 1.0f) / max;
    }

    public static String getScreenSize(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return "" + displayMetrics.widthPixels + " * " + displayMetrics.heightPixels;
    }

    public static int getScreenWidth(Context context) {
        if (context == null) {
            return 1;
        }
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static String getSocName() {
        if (socName == null) {
            initSocModelInfo();
        }
        return socName;
    }

    public static int getSystemScreenBrightness(ContentResolver contentResolver) {
        try {
            return Settings.System.getInt(contentResolver, "screen_brightness");
        } catch (Exception e10) {
            LightLogUtil.e(e10);
            return 0;
        }
    }

    public static int getSystemScreenMode(ContentResolver contentResolver) {
        try {
            return Settings.System.getInt(contentResolver, "screen_brightness_mode");
        } catch (Exception e10) {
            LightLogUtil.e(e10);
            return -1;
        }
    }

    public static long getTotalRamMemory(Context context) {
        if (context != null) {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            ((ActivityManager) context.getSystemService(PushConstants.INTENT_ACTIVITY_NAME)).getMemoryInfo(memoryInfo);
            return memoryInfo.totalMem;
        }
        long j10 = -1;
        try {
            FileInputStream fileInputStream = new FileInputStream("/proc/meminfo");
            j10 = parseFileForValue("MemTotal", fileInputStream) * 1024;
            fileInputStream.close();
        } catch (IOException unused) {
        }
        return j10;
    }

    public static long getTotalSize(StatFs statFs) {
        if (ApiHelper.hasJellyBeanMR2()) {
            return statFs.getTotalBytes();
        }
        return statFs.getBlockCount() * statFs.getBlockSize();
    }

    public static int getVersionCode(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 16384).versionCode;
        } catch (Exception e10) {
            e10.printStackTrace();
            return -1;
        }
    }

    public static String getVersionName(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static float getWindowScreenBrightness(Window window) {
        return window.getAttributes().screenBrightness;
    }

    public static void hideNavigationBar(Activity activity) {
        final View decorView = activity.getWindow().getDecorView();
        decorView.setSystemUiVisibility(5894);
        decorView.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: org.light.device.LightDeviceUtils.2
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public void onSystemUiVisibilityChange(int i9) {
                if ((i9 & 4) == 0) {
                    decorView.setSystemUiVisibility(5894);
                }
            }
        });
    }

    private static void initCpuFreq() {
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < getNumCores(); i9++) {
            try {
                File file = new File("/sys/devices/system/cpu/cpu" + i9 + "/cpufreq/cpuinfo_max_freq");
                if (file.exists()) {
                    byte[] bArr = new byte[128];
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        fileInputStream.read(bArr);
                        int i10 = 0;
                        while (bArr[i10] >= 48 && bArr[i10] <= 57 && i10 < 128) {
                            i10++;
                        }
                        String str = new String(bArr, 0, i10);
                        arrayList.add(str);
                        Integer valueOf = Integer.valueOf(Integer.parseInt(str));
                        if (valueOf.intValue() > sMaxCpuFreq) {
                            sMaxCpuFreq = valueOf.intValue();
                        }
                    } catch (NumberFormatException unused) {
                    }
                    fileInputStream.close();
                }
            } catch (IOException unused2) {
                sMaxCpuFreq = -1;
            }
        }
        if (sMaxCpuFreq == -1) {
            FileInputStream fileInputStream2 = new FileInputStream("/proc/cpuinfo");
            int parseFileForValue = parseFileForValue("cpu MHz", fileInputStream2) * 1000;
            arrayList.add(String.valueOf(parseFileForValue));
            if (parseFileForValue > sMaxCpuFreq) {
                sMaxCpuFreq = parseFileForValue;
            }
            fileInputStream2.close();
        }
        allCpuFreqKhz = TextUtils.join(";", arrayList);
        LightLogUtil.v("DeviceUtils", "sMaxCpuFreq:" + sMaxCpuFreq);
    }

    /* JADX WARN: Not initialized variable reg: 3, insn: 0x00b7: MOVE  (r1 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:47:0x00b7 */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ba A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void initSocModelInfo() {
        /*
            java.util.LinkedList r0 = new java.util.LinkedList
            r0.<init>()
            r1 = 0
            java.io.FileReader r2 = new java.io.FileReader     // Catch: java.lang.Throwable -> L72 java.io.IOException -> L74 java.io.FileNotFoundException -> L80
            java.lang.String r3 = "/proc/cpuinfo"
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L72 java.io.IOException -> L74 java.io.FileNotFoundException -> L80
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L72 java.io.IOException -> L74 java.io.FileNotFoundException -> L80
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L72 java.io.IOException -> L74 java.io.FileNotFoundException -> L80
            java.lang.String r1 = r3.readLine()     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
        L16:
            if (r1 == 0) goto L6a
            java.lang.String r2 = ":\\s+"
            r4 = 2
            java.lang.String[] r2 = r1.split(r2, r4)     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
            int r4 = r2.length     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
            r5 = 1
            if (r4 <= r5) goto L65
            r4 = 0
            r4 = r2[r4]     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
            java.lang.String r4 = r4.trim()     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
            java.lang.String r4 = r4.toLowerCase()     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
            java.lang.String r6 = "hardware"
            boolean r6 = r4.contains(r6)     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
            if (r6 == 0) goto L54
            java.lang.String r6 = org.light.device.LightDeviceUtils.TAG     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
            r7.<init>()     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
            java.lang.String r8 = "/proc/cpuinfo => hardware line = "
            r7.append(r8)     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
            r7.append(r1)     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
            java.lang.String r1 = r7.toString()     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
            org.light.utils.LightLogUtil.w(r6, r1)     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
            r1 = r2[r5]     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
            java.lang.String r1 = r1.trim()     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
            org.light.device.LightDeviceUtils.socName = r1     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
        L54:
            java.lang.String r1 = "cpu part"
            boolean r1 = r4.contains(r1)     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
            if (r1 == 0) goto L65
            r1 = r2[r5]     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
            java.lang.String r1 = r1.trim()     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
            r0.add(r1)     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
        L65:
            java.lang.String r1 = r3.readLine()     // Catch: java.io.IOException -> L6e java.io.FileNotFoundException -> L70 java.lang.Throwable -> Lb6
            goto L16
        L6a:
            r3.close()     // Catch: java.io.IOException -> L8c
            goto L90
        L6e:
            r1 = move-exception
            goto L77
        L70:
            r1 = move-exception
            goto L83
        L72:
            r0 = move-exception
            goto Lb8
        L74:
            r2 = move-exception
            r3 = r1
            r1 = r2
        L77:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> Lb6
            if (r3 == 0) goto L90
            r3.close()     // Catch: java.io.IOException -> L8c
            goto L90
        L80:
            r2 = move-exception
            r3 = r1
            r1 = r2
        L83:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> Lb6
            if (r3 == 0) goto L90
            r3.close()     // Catch: java.io.IOException -> L8c
            goto L90
        L8c:
            r1 = move-exception
            r1.printStackTrace()
        L90:
            java.lang.String r1 = ";"
            java.lang.String r1 = android.text.TextUtils.join(r1, r0)
            org.light.device.LightDeviceUtils.allCpuParts = r1
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto La1
            java.lang.String r0 = ""
            goto La7
        La1:
            java.lang.Object r0 = r0.getLast()
            java.lang.String r0 = (java.lang.String) r0
        La7:
            org.light.device.LightDeviceUtils.lastCpuPart = r0
            java.lang.String r0 = org.light.device.LightDeviceUtils.socName
            if (r0 != 0) goto Lb5
            java.lang.String r0 = "ro.board.platform"
            java.lang.String r0 = org.light.device.NotchInScreenUtils.getSystemProperties(r0)
            org.light.device.LightDeviceUtils.socName = r0
        Lb5:
            return
        Lb6:
            r0 = move-exception
            r1 = r3
        Lb8:
            if (r1 == 0) goto Lc2
            r1.close()     // Catch: java.io.IOException -> Lbe
            goto Lc2
        Lbe:
            r1 = move-exception
            r1.printStackTrace()
        Lc2:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.light.device.LightDeviceUtils.initSocModelInfo():void");
    }

    public static boolean isExternalStorageAvailable(Context context) {
        try {
            if (!"mounted".equals(Environment.getExternalStorageState()) && Environment.isExternalStorageRemovable()) {
                return false;
            }
            new StatFs(context.getExternalFilesDir(null).getAbsolutePath());
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isExternalStorageSpaceEnough(Context context, long j10) {
        try {
            return getAvailableSize(new StatFs(context.getExternalFilesDir(null).getAbsolutePath())) > j10;
        } catch (IllegalArgumentException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean isMainProcess(Context context) {
        return context != null && context.getPackageName().equals(getCurrentProcessName(context));
    }

    public static boolean isMobileNetwork(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo networkInfo;
        return (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null || (networkInfo = connectivityManager.getNetworkInfo(0)) == null || !networkInfo.isAvailable() || !networkInfo.isConnected()) ? false : true;
    }

    public static boolean isNavigationBarShow(Activity activity) {
        if (getBuildModel().equals("Redmi 6")) {
            return Settings.Global.getInt(activity.getContentResolver(), "force_fsg_nav_bar", 0) != 1;
        }
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        Point point2 = new Point();
        defaultDisplay.getSize(point);
        defaultDisplay.getRealSize(point2);
        return point2.y != point.y;
    }

    public static boolean isNetworkAvailable(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnectedOrConnecting()) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002c, code lost:
        org.light.device.LightDeviceUtils.isRooted = java.lang.Boolean.TRUE;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isRooted() {
        /*
            java.lang.Boolean r0 = org.light.device.LightDeviceUtils.isRooted
            if (r0 == 0) goto L9
            boolean r0 = r0.booleanValue()
            return r0
        L9:
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            org.light.device.LightDeviceUtils.isRooted = r0
            r0 = 5
            java.lang.String r1 = "/system/bin/su"
            java.lang.String r2 = "/system/xbin/su"
            java.lang.String r3 = "/system/sbin/su"
            java.lang.String r4 = "/sbin/su"
            java.lang.String r5 = "/vendor/bin/su"
            java.lang.String[] r1 = new java.lang.String[]{r1, r2, r3, r4, r5}
            r2 = 0
        L1d:
            if (r2 >= r0) goto L38
            r3 = r1[r2]     // Catch: java.lang.Exception -> L34
            java.io.File r4 = new java.io.File     // Catch: java.lang.Exception -> L34
            r4.<init>(r3)     // Catch: java.lang.Exception -> L34
            boolean r3 = r4.exists()     // Catch: java.lang.Exception -> L34
            if (r3 == 0) goto L31
            java.lang.Boolean r0 = java.lang.Boolean.TRUE     // Catch: java.lang.Exception -> L34
            org.light.device.LightDeviceUtils.isRooted = r0     // Catch: java.lang.Exception -> L34
            goto L38
        L31:
            int r2 = r2 + 1
            goto L1d
        L34:
            r0 = move-exception
            r0.printStackTrace()
        L38:
            java.lang.Boolean r0 = org.light.device.LightDeviceUtils.isRooted
            boolean r0 = r0.booleanValue()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.light.device.LightDeviceUtils.isRooted():boolean");
    }

    public static boolean isValid(Context context) {
        boolean z10 = getOpenGlEsVersion(context) >= 131072;
        mIsOpenGlEsValid = z10;
        mIsAllUnusable = false;
        return z10;
    }

    public static boolean isWifiNetwork(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo networkInfo;
        return (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null || (networkInfo = connectivityManager.getNetworkInfo(1)) == null || !networkInfo.isAvailable() || !networkInfo.isConnected()) ? false : true;
    }

    private static String parse(String str) {
        Matcher matcher = Pattern.compile("(\\d{1,3})[.](\\d{1,3})[.](\\d{1,3})[.](\\d{1,3})", 2).matcher(str);
        if (matcher.find()) {
            return matcher.group(0);
        }
        return null;
    }

    private static int parseFileForValue(String str, FileInputStream fileInputStream) {
        byte[] bArr = new byte[1024];
        try {
            int read = fileInputStream.read(bArr);
            int i9 = 0;
            while (i9 < read) {
                if (bArr[i9] == 10 || i9 == 0) {
                    if (bArr[i9] == 10) {
                        i9++;
                    }
                    for (int i10 = i9; i10 < read; i10++) {
                        int i11 = i10 - i9;
                        if (bArr[i10] != str.charAt(i11)) {
                            break;
                        } else if (i11 == str.length() - 1) {
                            return extractValue(bArr, i10);
                        }
                    }
                    continue;
                }
                i9++;
            }
            return -1;
        } catch (IOException | NumberFormatException unused) {
            return -1;
        }
    }

    public static void recordCpuInfo() {
        if (Build.VERSION.SDK_INT >= 26) {
            return;
        }
        if (handlerThread == null) {
            HandlerThread handlerThread2 = new HandlerThread("CAL_CPU_RATE");
            handlerThread = handlerThread2;
            handlerThread2.start();
            handler = new Handler(handlerThread.getLooper());
        }
        int i9 = recordCpuCount;
        if (i9 % 100 == 0) {
            handler.post(new Runnable() { // from class: org.light.device.LightDeviceUtils.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/stat")), 1000);
                        String readLine = bufferedReader.readLine();
                        bufferedReader.close();
                        String[] split = readLine.split(" ");
                        try {
                            long parseLong = Long.parseLong(split[2]) + Long.parseLong(split[3]) + Long.parseLong(split[4]) + Long.parseLong(split[6]) + Long.parseLong(split[5]) + Long.parseLong(split[7]) + Long.parseLong(split[8]);
                            long parseLong2 = Long.parseLong(split[5]);
                            if (LightDeviceUtils.lastCpuIdleTime > 0 && LightDeviceUtils.lastCpuTotalTime > 0 && parseLong != LightDeviceUtils.lastCpuTotalTime) {
                                float unused = LightDeviceUtils.cpuRate = 1.0f - ((((float) (parseLong2 - LightDeviceUtils.lastCpuIdleTime)) * 1.0f) / ((float) (parseLong - LightDeviceUtils.lastCpuTotalTime)));
                            }
                            long unused2 = LightDeviceUtils.lastCpuIdleTime = parseLong2;
                            long unused3 = LightDeviceUtils.lastCpuTotalTime = parseLong;
                            int unused4 = LightDeviceUtils.recordCpuCount = 1;
                        } catch (ArrayIndexOutOfBoundsException e10) {
                            String str = LightDeviceUtils.TAG;
                            LightLogUtil.e(str, "ArrayIndexOutOfBoundsException" + e10.toString());
                        }
                    } catch (IOException e11) {
                        String str2 = LightDeviceUtils.TAG;
                        LightLogUtil.e(str2, "IOException" + e11.toString());
                    }
                }
            });
        } else {
            recordCpuCount = i9 + 1;
        }
    }

    public static void resetWindowScreenBrightness(Window window) {
        if (window == null) {
            return;
        }
        setWindowScreenBrightness(window, -1.0f);
    }

    public static void setNavigationBarColor(Activity activity, int i9) {
        Window window = activity.getWindow();
        window.clearFlags(201326592);
        window.getDecorView().setSystemUiVisibility(getBuildModel().equals("Pixel") ? 1808 : 1792);
        window.addFlags(Integer.MIN_VALUE);
        window.setNavigationBarColor(i9);
    }

    public static void setSystemScreenBrightness(ContentResolver contentResolver, int i9) {
        try {
            Settings.System.putInt(contentResolver, "screen_brightness", i9);
        } catch (Exception e10) {
            LightLogUtil.e(e10);
        }
    }

    public static void setSystemScreenMode(ContentResolver contentResolver, int i9) {
        try {
            Settings.System.putInt(contentResolver, "screen_brightness_mode", i9);
            contentResolver.notifyChange(Settings.System.getUriFor("screen_brightness_mode"), null);
        } catch (Exception e10) {
            LightLogUtil.e(e10);
        }
    }

    public static void setWindowScreenBrightness(Window window, float f10) {
        if (window == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.screenBrightness = f10;
        window.setAttributes(attributes);
    }

    public static void setWindowScreenBrightnessMax(Activity activity) {
        if (activity == null) {
            return;
        }
        if (veryLargeScreen(activity)) {
            setWindowScreenBrightness(activity.getWindow(), 0.8f);
        } else {
            setWindowScreenBrightness(activity.getWindow(), 1.0f);
        }
    }

    public static boolean veryLargeScreen(Context context) {
        return getScreenHeight(context) * getScreenWidth(context) >= 2073600;
    }

    public static File getExternalFilesDir(Context context, String str) {
        String path = (isExternalStorageAvailable(context) && isExternalStorageSpaceEnough(context, 52428800L)) ? getExternalFilesDir(context).getPath() : null;
        File file = new File(path + File.separator + str);
        try {
            if (file.exists() && file.isFile()) {
                file.delete();
            }
            if (!file.exists()) {
                file.mkdirs();
            }
        } catch (Exception unused) {
        }
        return file;
    }
}
