package cn.jiguang.r;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Point;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import androidx.webkit.ProxyConfig;
import com.facebook.internal.security.CertificateUtil;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.rtmp.TXLiveConstants;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileReader;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private static String f2754b = "";

    /* renamed from: c  reason: collision with root package name */
    private static String f2755c = "";

    /* renamed from: d  reason: collision with root package name */
    private static final FileFilter f2756d = new FileFilter() { // from class: cn.jiguang.r.b.1
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            String name = file.getName();
            if (name.startsWith("cpu")) {
                for (int i9 = 3; i9 < name.length(); i9++) {
                    if (name.charAt(i9) < '0' || name.charAt(i9) > '9') {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public static JSONArray f2753a = new JSONArray();

    private static int a(String str, FileInputStream fileInputStream) {
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
                            return a(bArr, i10);
                        }
                    }
                    continue;
                }
                i9++;
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    private static int a(byte[] bArr, int i9) {
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

    private static long a(String str) {
        String readLine;
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 4096);
            do {
                readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
            } while (!readLine.contains(str));
            bufferedReader.close();
            return Integer.valueOf(readLine.split("\\s+")[1]).intValue();
        } catch (Throwable unused) {
            return -1L;
        }
    }

    public static String a() {
        if (TextUtils.isEmpty(f2754b)) {
            e();
            return f2754b;
        }
        return f2754b;
    }

    public static String a(Context context) {
        DisplayMetrics displayMetrics;
        if (context == null || context.getResources() == null || (displayMetrics = context.getResources().getDisplayMetrics()) == null) {
            return "0*0";
        }
        int i9 = displayMetrics.widthPixels;
        int i10 = displayMetrics.heightPixels;
        return i9 + ProxyConfig.MATCH_ALL_SCHEMES + i10;
    }

    public static String a(Context context, int i9) {
        if (i9 != 53) {
            return null;
        }
        try {
            String g10 = g(context);
            if (TextUtils.isEmpty(g10)) {
                g10 = f(context);
            }
            JSONObject jSONObject = new JSONObject(g10);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("rom_type", (int) cn.jiguang.o.d.n(context));
            jSONObject2.put("regid", cn.jiguang.o.d.o(context));
            jSONObject.put("rom_info", jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("cmd", 53);
            jSONObject3.put("content", jSONObject);
            return jSONObject3.toString();
        } catch (JSONException unused) {
            return null;
        }
    }

    public static void a(Context context, String str) {
        cn.jiguang.g.b.a(context, new cn.jiguang.g.a("cn.jpush.preferences.v2", "n_udp_report_device_info", "").a((cn.jiguang.g.a) Base64.encodeToString(str.getBytes(), 2)));
        cn.jiguang.al.a.a("JDeviceHelper", "save device info:" + str);
    }

    public static double b(Context context) {
        double pow;
        int i9;
        Point point = new Point();
        if (context instanceof Activity) {
            ((Activity) context).getWindowManager().getDefaultDisplay().getRealSize(point);
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (context instanceof Activity) {
            pow = Math.pow(point.x / displayMetrics.xdpi, 2.0d);
            i9 = point.y;
        } else {
            pow = Math.pow(displayMetrics.widthPixels / displayMetrics.xdpi, 2.0d);
            i9 = displayMetrics.heightPixels;
        }
        return Math.sqrt(pow + Math.pow(i9 / displayMetrics.ydpi, 2.0d));
    }

    public static String b() {
        if (TextUtils.isEmpty(f2755c)) {
            e();
            return f2755c;
        }
        return f2755c;
    }

    public static int c() {
        try {
            return new File("/sys/devices/system/cpu/").listFiles(f2756d).length;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static long c(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(PushConstants.INTENT_ACTIVITY_NAME);
            activityManager.getProcessMemoryInfo(new int[]{0});
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return memoryInfo.totalMem / 1024;
        } catch (Throwable unused) {
            return a("MemTotal");
        }
    }

    public static int d() {
        int i9 = -1;
        for (int i10 = 0; i10 < c(); i10++) {
            try {
                File file = new File("/sys/devices/system/cpu/cpu" + i10 + "/cpufreq/cpuinfo_max_freq");
                if (file.exists()) {
                    byte[] bArr = new byte[128];
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        fileInputStream.read(bArr);
                        int i11 = 0;
                        while (bArr[i11] >= 48 && bArr[i11] <= 57 && i11 < 128) {
                            i11++;
                        }
                        Integer valueOf = Integer.valueOf(Integer.parseInt(new String(bArr, 0, i11)));
                        if (valueOf.intValue() > i9) {
                            i9 = valueOf.intValue();
                        }
                    } catch (Throwable unused) {
                    }
                    fileInputStream.close();
                }
            } catch (Throwable unused2) {
                return -1;
            }
        }
        if (i9 == -1) {
            FileInputStream fileInputStream2 = new FileInputStream("/proc/cpuinfo");
            int a10 = a("cpu MHz", fileInputStream2) * 1000;
            if (a10 > i9) {
                i9 = a10;
            }
            fileInputStream2.close();
        }
        return i9;
    }

    public static long d(Context context) {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return (statFs.getBlockCount() * statFs.getBlockSize()) / 1024;
        } catch (Throwable unused) {
            return -1L;
        }
    }

    public static JSONArray e(Context context) {
        return new JSONArray();
    }

    private static void e() {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            if (new File("/proc/cpuinfo").exists()) {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(new File("/proc/cpuinfo")));
                String str = null;
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    if (readLine.contains("Processor")) {
                        int indexOf = readLine.indexOf(CertificateUtil.DELIMITER);
                        if (indexOf >= 0 && indexOf < readLine.length() - 1) {
                            str = readLine.substring(indexOf + 1).trim();
                        }
                        if (str != null && !stringBuffer.toString().contains(str)) {
                            stringBuffer.append(str);
                        }
                    }
                    if (readLine.contains("Hardware")) {
                        try {
                            String trim = readLine.substring(readLine.indexOf(CertificateUtil.DELIMITER) + 1).trim();
                            if (!TextUtils.isEmpty(trim)) {
                                f2755c = trim;
                            }
                        } catch (Throwable unused) {
                        }
                    }
                }
                bufferedReader.close();
            }
        } catch (Throwable unused2) {
        }
        f2754b = stringBuffer.toString();
    }

    public static String f(Context context) {
        try {
            cn.jiguang.be.a a10 = cn.jiguang.be.a.a(context);
            JSONObject jSONObject = new JSONObject();
            if (cn.jiguang.i.a.a().d(1022)) {
                jSONObject.put("sim_slots", e(context));
            }
            jSONObject.put("packagename", context.getPackageName());
            jSONObject.put("appkey", cn.jiguang.o.d.b(context));
            jSONObject.put("platform", 0);
            jSONObject.put("apkversion", a10.f2451a);
            jSONObject.put("systemversion", a10.f2452b);
            if (cn.jiguang.i.a.a().d(2009)) {
                jSONObject.put("modelnumber", a10.f2453c);
            }
            if (cn.jiguang.i.a.a().d(2001)) {
                jSONObject.put("basebandversion", a10.f2454d);
            }
            jSONObject.put("buildnumber", a10.f2455e);
            jSONObject.put("channel", a10.f2456f);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("PushSDKVer", cn.jiguang.o.d.b(0));
            jSONObject2.put("StatisticSDKVer", cn.jiguang.o.d.b(1));
            jSONObject2.put("ShareSDKVer", cn.jiguang.o.d.b(2));
            jSONObject2.put("CoreSDKVer", cn.jiguang.o.d.b(3));
            jSONObject2.put("SspSDKVer", cn.jiguang.o.d.b(4));
            jSONObject2.put("VerificationSDKVer", cn.jiguang.o.d.b(5));
            jSONObject.put("sdkver", jSONObject2);
            jSONObject.put("installation", a10.f2457g);
            jSONObject.put("business", cn.jiguang.o.d.g());
            jSONObject.put("device_id_status", cn.jiguang.o.d.i(context));
            jSONObject.put("device_id", cn.jiguang.o.d.g(context));
            if (cn.jiguang.i.a.a().d(TXLiveConstants.PLAY_EVT_GET_MESSAGE)) {
                jSONObject.put("resolution", a10.f2458h);
            }
            if (cn.jiguang.i.a.a().d(2000)) {
                jSONObject.put("android_id", a10.f2459i);
            }
            if (cn.jiguang.i.a.a().d(2007)) {
                jSONObject.put("mac_address", cn.jiguang.o.d.c(context, ""));
            }
            if (cn.jiguang.i.a.a().d(2013)) {
                jSONObject.put("serial_number", a10.f2460j);
            }
            return jSONObject.toString();
        } catch (JSONException unused) {
            return null;
        }
    }

    public static String g(Context context) {
        String str;
        String str2 = (String) cn.jiguang.g.b.b(context, new cn.jiguang.g.a("cn.jpush.preferences.v2", "n_udp_report_device_info", ""));
        if (TextUtils.isEmpty(str2)) {
            str = (String) cn.jiguang.g.b.b(context, new cn.jiguang.g.a("cn.jpush.preferences.v2", "udp_report_device_info", ""));
            if (!TextUtils.isEmpty(str)) {
                a(context, str);
            }
        } else {
            str = new String(Base64.decode(str2, 2));
        }
        cn.jiguang.al.a.a("JDeviceHelper", "read deviceinfo:" + str);
        return str;
    }
}
