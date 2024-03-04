package com.tencent.bugly.crashreport.common.info;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.z;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f30218a = {"/su", "/su/bin/su", "/sbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/data/local/su", "/system/xbin/su", "/system/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/system/bin/cufsdosck", "/system/xbin/cufsdosck", "/system/bin/cufsmgr", "/system/xbin/cufsmgr", "/system/bin/cufaevdd", "/system/xbin/cufaevdd", "/system/bin/conbb", "/system/xbin/conbb"};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f30219b = {"com.ami.duosupdater.ui", "com.ami.launchmetro", "com.ami.syncduosservices", "com.bluestacks.home", "com.bluestacks.windowsfilemanager", "com.bluestacks.settings", "com.bluestacks.bluestackslocationprovider", "com.bluestacks.appsettings", "com.bluestacks.bstfolder", "com.bluestacks.BstCommandProcessor", "com.bluestacks.s2p", "com.bluestacks.setup", "com.kaopu001.tiantianserver", "com.kpzs.helpercenter", "com.kaopu001.tiantianime", "com.android.development_settings", "com.android.development", "com.android.customlocale2", "com.genymotion.superuser", "com.genymotion.clipboardproxy", "com.uc.xxzs.keyboard", "com.uc.xxzs", "com.blue.huang17.agent", "com.blue.huang17.launcher", "com.blue.huang17.ime", "com.microvirt.guide", "com.microvirt.market", "com.microvirt.memuime", "cn.itools.vm.launcher", "cn.itools.vm.proxy", "cn.itools.vm.softkeyboard", "cn.itools.avdmarket", "com.syd.IME", "com.bignox.app.store.hd", "com.bignox.launcher", "com.bignox.app.phone", "com.bignox.app.noxservice", "com.android.noxpush", "com.haimawan.push", "me.haima.helpcenter", "com.windroy.launcher", "com.windroy.superuser", "com.windroy.launcher", "com.windroy.ime", "com.android.flysilkworm", "com.android.emu.inputservice", "com.tiantian.ime", "com.microvirt.launcher", "me.le8.androidassist", "com.vphone.helper", "com.vphone.launcher", "com.duoyi.giftcenter.giftcenter"};

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f30220c = {"/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq", "/system/lib/libc_malloc_debug_qemu.so", "/sys/qemu_trace", "/system/bin/qemu-props", "/dev/socket/qemud", "/dev/qemu_pipe", "/dev/socket/baseband_genyd", "/dev/socket/genyd"};

    public static String a() {
        try {
            return Build.MODEL;
        } catch (Throwable th2) {
            if (x.a(th2)) {
                return "fail";
            }
            th2.printStackTrace();
            return "fail";
        }
    }

    public static String b() {
        try {
            return Build.VERSION.RELEASE;
        } catch (Throwable th2) {
            if (x.a(th2)) {
                return "fail";
            }
            th2.printStackTrace();
            return "fail";
        }
    }

    public static int c() {
        try {
            return Build.VERSION.SDK_INT;
        } catch (Throwable th2) {
            if (x.a(th2)) {
                return -1;
            }
            th2.printStackTrace();
            return -1;
        }
    }

    public static long d() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getBlockCount() * statFs.getBlockSize();
        } catch (Throwable th2) {
            if (!x.a(th2)) {
                th2.printStackTrace();
            }
            return -1L;
        }
    }

    public static long e() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (Throwable th2) {
            if (!x.a(th2)) {
                th2.printStackTrace();
            }
            return -1L;
        }
    }

    public static long f() {
        FileReader fileReader;
        Throwable th2;
        BufferedReader bufferedReader;
        try {
            fileReader = new FileReader("/proc/meminfo");
            try {
                bufferedReader = new BufferedReader(fileReader, 2048);
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e10) {
                            if (!x.a(e10)) {
                                e10.printStackTrace();
                            }
                        }
                        try {
                            fileReader.close();
                            return -1L;
                        } catch (IOException e11) {
                            if (x.a(e11)) {
                                return -1L;
                            }
                            e11.printStackTrace();
                            return -1L;
                        }
                    }
                    long parseLong = Long.parseLong(readLine.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) << 10;
                    try {
                        bufferedReader.close();
                    } catch (IOException e12) {
                        if (!x.a(e12)) {
                            e12.printStackTrace();
                        }
                    }
                    try {
                        fileReader.close();
                    } catch (IOException e13) {
                        if (!x.a(e13)) {
                            e13.printStackTrace();
                        }
                    }
                    return parseLong;
                } catch (Throwable th3) {
                    th2 = th3;
                    try {
                        if (!x.a(th2)) {
                            th2.printStackTrace();
                        }
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e14) {
                                if (!x.a(e14)) {
                                    e14.printStackTrace();
                                }
                            }
                        }
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                                return -2L;
                            } catch (IOException e15) {
                                if (x.a(e15)) {
                                    return -2L;
                                }
                                e15.printStackTrace();
                                return -2L;
                            }
                        }
                        return -2L;
                    } catch (Throwable th4) {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e16) {
                                if (!x.a(e16)) {
                                    e16.printStackTrace();
                                }
                            }
                        }
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (IOException e17) {
                                if (!x.a(e17)) {
                                    e17.printStackTrace();
                                }
                            }
                        }
                        throw th4;
                    }
                }
            } catch (Throwable th5) {
                th2 = th5;
                bufferedReader = null;
            }
        } catch (Throwable th6) {
            fileReader = null;
            th2 = th6;
            bufferedReader = null;
        }
    }

    public static long g() {
        FileReader fileReader;
        BufferedReader bufferedReader = null;
        try {
            fileReader = new FileReader("/proc/meminfo");
            try {
                BufferedReader bufferedReader2 = new BufferedReader(fileReader, 2048);
                try {
                    bufferedReader2.readLine();
                    String readLine = bufferedReader2.readLine();
                    if (readLine == null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e10) {
                            if (!x.a(e10)) {
                                e10.printStackTrace();
                            }
                        }
                        try {
                            fileReader.close();
                        } catch (IOException e11) {
                            if (!x.a(e11)) {
                                e11.printStackTrace();
                            }
                        }
                        return -1L;
                    }
                    long parseLong = (Long.parseLong(readLine.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) << 10) + 0;
                    String readLine2 = bufferedReader2.readLine();
                    if (readLine2 == null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e12) {
                            if (!x.a(e12)) {
                                e12.printStackTrace();
                            }
                        }
                        try {
                            fileReader.close();
                        } catch (IOException e13) {
                            if (!x.a(e13)) {
                                e13.printStackTrace();
                            }
                        }
                        return -1L;
                    }
                    long parseLong2 = parseLong + (Long.parseLong(readLine2.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) << 10);
                    String readLine3 = bufferedReader2.readLine();
                    if (readLine3 == null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e14) {
                            if (!x.a(e14)) {
                                e14.printStackTrace();
                            }
                        }
                        try {
                            fileReader.close();
                        } catch (IOException e15) {
                            if (!x.a(e15)) {
                                e15.printStackTrace();
                            }
                        }
                        return -1L;
                    }
                    long parseLong3 = parseLong2 + (Long.parseLong(readLine3.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) << 10);
                    try {
                        bufferedReader2.close();
                    } catch (IOException e16) {
                        if (!x.a(e16)) {
                            e16.printStackTrace();
                        }
                    }
                    try {
                        fileReader.close();
                    } catch (IOException e17) {
                        if (!x.a(e17)) {
                            e17.printStackTrace();
                        }
                    }
                    return parseLong3;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = bufferedReader2;
                    try {
                        if (!x.a(th)) {
                            th.printStackTrace();
                        }
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e18) {
                                if (!x.a(e18)) {
                                    e18.printStackTrace();
                                }
                            }
                        }
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                                return -2L;
                            } catch (IOException e19) {
                                if (x.a(e19)) {
                                    return -2L;
                                }
                                e19.printStackTrace();
                                return -2L;
                            }
                        }
                        return -2L;
                    } catch (Throwable th3) {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e20) {
                                if (!x.a(e20)) {
                                    e20.printStackTrace();
                                }
                            }
                        }
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (IOException e21) {
                                if (!x.a(e21)) {
                                    e21.printStackTrace();
                                }
                            }
                        }
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            th = th5;
            fileReader = null;
        }
    }

    public static long h() {
        if (n()) {
            try {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                return statFs.getBlockCount() * statFs.getBlockSize();
            } catch (Throwable th2) {
                if (x.a(th2)) {
                    return -2L;
                }
                th2.printStackTrace();
                return -2L;
            }
        }
        return 0L;
    }

    public static long i() {
        if (n()) {
            try {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                return statFs.getAvailableBlocks() * statFs.getBlockSize();
            } catch (Throwable th2) {
                if (x.a(th2)) {
                    return -2L;
                }
                th2.printStackTrace();
                return -2L;
            }
        }
        return 0L;
    }

    public static String j() {
        return "";
    }

    public static String k() {
        try {
            return Build.BRAND;
        } catch (Throwable th2) {
            if (!x.a(th2)) {
                th2.printStackTrace();
            }
            return "fail";
        }
    }

    public static boolean l() {
        boolean z10;
        String[] strArr = f30218a;
        int length = strArr.length;
        int i9 = 0;
        while (true) {
            if (i9 >= length) {
                z10 = false;
                break;
            } else if (new File(strArr[i9]).exists()) {
                z10 = true;
                break;
            } else {
                i9++;
            }
        }
        String str = Build.TAGS;
        return (str != null && str.contains("test-keys")) || z10;
    }

    public static boolean m() {
        float maxMemory = (float) (Runtime.getRuntime().maxMemory() / 1048576.0d);
        float f10 = (float) (Runtime.getRuntime().totalMemory() / 1048576.0d);
        float f11 = maxMemory - f10;
        x.c("maxMemory : %f", Float.valueOf(maxMemory));
        x.c("totalMemory : %f", Float.valueOf(f10));
        x.c("freeMemory : %f", Float.valueOf(f11));
        return f11 < 10.0f;
    }

    private static boolean n() {
        try {
            return Environment.getExternalStorageState().equals("mounted");
        } catch (Throwable th2) {
            if (x.a(th2)) {
                return false;
            }
            th2.printStackTrace();
            return false;
        }
    }

    private static int o() {
        try {
            Method method = Class.forName("android.app.ActivityManagerNative").getMethod("getDefault", new Class[0]);
            method.setAccessible(true);
            return method.invoke(null, new Object[0]).getClass().getName().startsWith("$Proxy") ? 256 : 0;
        } catch (Exception unused) {
            return 256;
        }
    }

    private static int p() {
        StackTraceElement[] stackTrace;
        try {
            throw new Exception("detect hook");
        } catch (Exception e10) {
            int i9 = 0;
            int i10 = 0;
            for (StackTraceElement stackTraceElement : e10.getStackTrace()) {
                if (stackTraceElement.getClassName().equals("de.robv.android.xposed.XposedBridge") && stackTraceElement.getMethodName().equals("main")) {
                    i9 |= 4;
                }
                if (stackTraceElement.getClassName().equals("de.robv.android.xposed.XposedBridge") && stackTraceElement.getMethodName().equals("handleHookedMethod")) {
                    i9 |= 8;
                }
                if (stackTraceElement.getClassName().equals("com.saurik.substrate.MS$2") && stackTraceElement.getMethodName().equals("invoked")) {
                    i9 |= 16;
                }
                if (stackTraceElement.getClassName().equals("com.android.internal.os.ZygoteInit") && (i10 = i10 + 1) == 2) {
                    i9 |= 32;
                }
            }
            return i9;
        }
    }

    /* JADX WARN: Not initialized variable reg: 3, insn: 0x00b9: MOVE  (r1 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:51:0x00b9 */
    private static int q() {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        IOException e10;
        UnsupportedEncodingException e11;
        FileNotFoundException e12;
        int i9 = 0;
        BufferedReader bufferedReader3 = null;
        try {
        } catch (Throwable th2) {
            th = th2;
            bufferedReader3 = bufferedReader;
        }
        try {
            try {
                HashSet hashSet = new HashSet();
                bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + Process.myPid() + "/maps"), "utf-8"));
                while (true) {
                    try {
                        String readLine = bufferedReader2.readLine();
                        if (readLine == null) {
                            break;
                        } else if (readLine.endsWith(".so") || readLine.endsWith(".jar")) {
                            hashSet.add(readLine.substring(readLine.lastIndexOf(" ") + 1));
                        }
                    } catch (FileNotFoundException e13) {
                        e12 = e13;
                        e12.printStackTrace();
                        if (bufferedReader2 != null) {
                            bufferedReader2.close();
                        }
                        return i9;
                    } catch (UnsupportedEncodingException e14) {
                        e11 = e14;
                        e11.printStackTrace();
                        if (bufferedReader2 != null) {
                            bufferedReader2.close();
                        }
                        return i9;
                    } catch (IOException e15) {
                        e10 = e15;
                        e10.printStackTrace();
                        if (bufferedReader2 != null) {
                            bufferedReader2.close();
                        }
                        return i9;
                    }
                }
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (((String) next).toLowerCase().contains("xposed")) {
                        i9 |= 64;
                    }
                    if (((String) next).contains("com.saurik.substrate")) {
                        i9 |= 128;
                    }
                }
                bufferedReader2.close();
            } catch (IOException e16) {
                e16.printStackTrace();
            }
        } catch (FileNotFoundException e17) {
            bufferedReader2 = null;
            e12 = e17;
        } catch (UnsupportedEncodingException e18) {
            bufferedReader2 = null;
            e11 = e18;
        } catch (IOException e19) {
            bufferedReader2 = null;
            e10 = e19;
        } catch (Throwable th3) {
            th = th3;
            if (bufferedReader3 != null) {
                try {
                    bufferedReader3.close();
                } catch (IOException e20) {
                    e20.printStackTrace();
                }
            }
            throw th;
        }
        return i9;
    }

    public static String a(Context context) {
        String str = "fail";
        if (context == null) {
            return "fail";
        }
        try {
            str = Settings.Secure.getString(context.getContentResolver(), "android_id");
            return str == null ? "null" : str.toLowerCase();
        } catch (Throwable th2) {
            if (!x.a(th2)) {
                x.a("Failed to get Android ID.", new Object[0]);
            }
            return str;
        }
    }

    public static String b(Context context) {
        TelephonyManager telephonyManager;
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return null;
            }
            if (activeNetworkInfo.getType() == 1) {
                return "WIFI";
            }
            if (activeNetworkInfo.getType() != 0 || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) {
                return "unknown";
            }
            int networkType = telephonyManager.getNetworkType();
            switch (networkType) {
                case 1:
                    return "GPRS";
                case 2:
                    return "EDGE";
                case 3:
                    return "UMTS";
                case 4:
                    return "CDMA";
                case 5:
                    return "EVDO_0";
                case 6:
                    return "EVDO_A";
                case 7:
                    return "1xRTT";
                case 8:
                    return "HSDPA";
                case 9:
                    return "HSUPA";
                case 10:
                    return "HSPA";
                case 11:
                    return "iDen";
                case 12:
                    return "EVDO_B";
                case 13:
                    return "LTE";
                case 14:
                    return "eHRPD";
                case 15:
                    return "HSPA+";
                default:
                    return "MOBILE(" + networkType + ")";
            }
        } catch (Exception e10) {
            if (x.a(e10)) {
                return "unknown";
            }
            e10.printStackTrace();
            return "unknown";
        }
    }

    public static String c(Context context) {
        String a10 = z.a(context, "ro.miui.ui.version.name");
        if (!z.a(a10) && !a10.equals("fail")) {
            return "XiaoMi/MIUI/" + a10;
        }
        String a11 = z.a(context, "ro.build.version.emui");
        if (!z.a(a11) && !a11.equals("fail")) {
            return "HuaWei/EMOTION/" + a11;
        }
        String a12 = z.a(context, "ro.lenovo.series");
        if (!z.a(a12) && !a12.equals("fail")) {
            String a13 = z.a(context, "ro.build.version.incremental");
            return "Lenovo/VIBE/" + a13;
        }
        String a14 = z.a(context, "ro.build.nubia.rom.name");
        if (!z.a(a14) && !a14.equals("fail")) {
            return "Zte/NUBIA/" + a14 + "_" + z.a(context, "ro.build.nubia.rom.code");
        }
        String a15 = z.a(context, "ro.meizu.product.model");
        if (!z.a(a15) && !a15.equals("fail")) {
            return "Meizu/FLYME/" + z.a(context, "ro.build.display.id");
        }
        String a16 = z.a(context, "ro.build.version.opporom");
        if (!z.a(a16) && !a16.equals("fail")) {
            return "Oppo/COLOROS/" + a16;
        }
        String a17 = z.a(context, "ro.vivo.os.build.display.id");
        if (!z.a(a17) && !a17.equals("fail")) {
            return "vivo/FUNTOUCH/" + a17;
        }
        String a18 = z.a(context, "ro.aa.romver");
        if (!z.a(a18) && !a18.equals("fail")) {
            return "htc/" + a18 + FileUtils.RES_PREFIX_STORAGE + z.a(context, "ro.build.description");
        }
        String a19 = z.a(context, "ro.lewa.version");
        if (!z.a(a19) && !a19.equals("fail")) {
            return "tcl/" + a19 + FileUtils.RES_PREFIX_STORAGE + z.a(context, "ro.build.display.id");
        }
        String a20 = z.a(context, "ro.gn.gnromvernumber");
        if (!z.a(a20) && !a20.equals("fail")) {
            return "amigo/" + a20 + FileUtils.RES_PREFIX_STORAGE + z.a(context, "ro.build.display.id");
        }
        String a21 = z.a(context, "ro.build.tyd.kbstyle_version");
        if (!z.a(a21) && !a21.equals("fail")) {
            return "dido/" + a21;
        }
        return z.a(context, "ro.build.fingerprint") + FileUtils.RES_PREFIX_STORAGE + z.a(context, "ro.build.rom.id");
    }

    public static String d(Context context) {
        return z.a(context, "ro.board.platform");
    }

    public static boolean e(Context context) {
        int i9;
        if (g(context) == null) {
            ArrayList arrayList = new ArrayList();
            while (true) {
                String[] strArr = f30220c;
                if (i9 >= strArr.length) {
                    break;
                } else if (i9 == 0) {
                    i9 = new File(strArr[i9]).exists() ? i9 + 1 : 0;
                    arrayList.add(Integer.valueOf(i9));
                } else {
                    if (!new File(strArr[i9]).exists()) {
                    }
                    arrayList.add(Integer.valueOf(i9));
                }
            }
            return (arrayList.isEmpty() ? null : arrayList.toString()) != null;
        }
        return true;
    }

    private static int h(Context context) {
        int i9;
        PackageManager packageManager = context.getPackageManager();
        try {
            packageManager.getInstallerPackageName("de.robv.android.xposed.installer");
            i9 = 1;
        } catch (Exception unused) {
            i9 = 0;
        }
        try {
            packageManager.getInstallerPackageName("com.saurik.substrate");
            return i9 | 2;
        } catch (Exception unused2) {
            return i9;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x004d, code lost:
        r0 = java.lang.System.getProperty("os.arch");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(android.content.Context r4, boolean r5) {
        /*
            r0 = 0
            java.lang.String r1 = "fail"
            if (r5 == 0) goto L4b
            java.lang.String r5 = "ro.product.cpu.abilist"
            java.lang.String r5 = com.tencent.bugly.proguard.z.a(r4, r5)     // Catch: java.lang.Throwable -> L49
            boolean r2 = com.tencent.bugly.proguard.z.a(r5)     // Catch: java.lang.Throwable -> L49
            if (r2 != 0) goto L17
            boolean r2 = r5.equals(r1)     // Catch: java.lang.Throwable -> L49
            if (r2 == 0) goto L1d
        L17:
            java.lang.String r5 = "ro.product.cpu.abi"
            java.lang.String r5 = com.tencent.bugly.proguard.z.a(r4, r5)     // Catch: java.lang.Throwable -> L49
        L1d:
            boolean r4 = com.tencent.bugly.proguard.z.a(r5)     // Catch: java.lang.Throwable -> L49
            if (r4 != 0) goto L4b
            boolean r4 = r5.equals(r1)     // Catch: java.lang.Throwable -> L49
            if (r4 == 0) goto L2a
            goto L4b
        L2a:
            java.lang.Class<com.tencent.bugly.crashreport.common.info.b> r4 = com.tencent.bugly.crashreport.common.info.b.class
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L49
            java.lang.String r2 = "ABI list: "
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L49
            r0.append(r5)     // Catch: java.lang.Throwable -> L49
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L49
            r2 = 0
            java.lang.Object[] r3 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> L49
            com.tencent.bugly.proguard.x.b(r4, r0, r3)     // Catch: java.lang.Throwable -> L49
            java.lang.String r4 = ","
            java.lang.String[] r4 = r5.split(r4)     // Catch: java.lang.Throwable -> L49
            r0 = r4[r2]     // Catch: java.lang.Throwable -> L49
            goto L4b
        L49:
            r4 = move-exception
            goto L60
        L4b:
            if (r0 != 0) goto L53
            java.lang.String r4 = "os.arch"
            java.lang.String r0 = java.lang.System.getProperty(r4)     // Catch: java.lang.Throwable -> L49
        L53:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L49
            r4.<init>()     // Catch: java.lang.Throwable -> L49
            r4.append(r0)     // Catch: java.lang.Throwable -> L49
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L49
            return r4
        L60:
            boolean r5 = com.tencent.bugly.proguard.x.a(r4)
            if (r5 != 0) goto L69
            r4.printStackTrace()
        L69:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.common.info.b.a(android.content.Context, boolean):java.lang.String");
    }

    public static boolean f(Context context) {
        return (((h(context) | p()) | q()) | o()) > 0;
    }

    private static String g(Context context) {
        PackageManager packageManager = context.getPackageManager();
        ArrayList arrayList = new ArrayList();
        int i9 = 0;
        while (true) {
            String[] strArr = f30219b;
            if (i9 >= strArr.length) {
                break;
            }
            try {
                packageManager.getPackageInfo(strArr[i9], 1);
                arrayList.add(Integer.valueOf(i9));
            } catch (PackageManager.NameNotFoundException unused) {
            }
            i9++;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList.toString();
    }
}
