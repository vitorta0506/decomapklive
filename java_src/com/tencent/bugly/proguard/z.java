package com.tencent.bugly.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import com.tencent.bugly.crashreport.common.info.AppInfo;
import com.tencent.bugly.crashreport.common.info.PlugInBean;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import kotlin.UByte;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, String> f30702a;

    public static String a(Throwable th2) {
        if (th2 == null) {
            return "";
        }
        try {
            StringWriter stringWriter = new StringWriter();
            th2.printStackTrace(new PrintWriter(stringWriter));
            return stringWriter.getBuffer().toString();
        } catch (Throwable th3) {
            if (x.a(th3)) {
                return "fail";
            }
            th3.printStackTrace();
            return "fail";
        }
    }

    public static byte[] b(byte[] bArr, int i9) {
        if (bArr == null) {
            return bArr;
        }
        x.c("[Util] Unzip %d bytes data with type %s", Integer.valueOf(bArr.length), "Gzip");
        try {
            ae a10 = ad.a(2);
            if (a10 == null) {
                return null;
            }
            return a10.b(bArr);
        } catch (Throwable th2) {
            if (th2.getMessage() != null && th2.getMessage().contains("Not in GZIP format")) {
                x.d(th2.getMessage(), new Object[0]);
            } else if (!x.a(th2)) {
                th2.printStackTrace();
            }
            return null;
        }
    }

    public static byte[] c(long j10) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(j10);
            return sb2.toString().getBytes("utf-8");
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static boolean c(String str) {
        if (str == null || str.trim().length() <= 0) {
            return false;
        }
        if (str.length() > 255) {
            x.a("URL(%s)'s length is larger than 255.", str);
            return false;
        } else if (str.toLowerCase().startsWith("http")) {
            return true;
        } else {
            x.a("URL(%s) is not start with \"http\".", str);
            return false;
        }
    }

    public static String a() {
        return a(System.currentTimeMillis());
    }

    public static String a(long j10) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date(j10));
        } catch (Exception unused) {
            return new Date().toString();
        }
    }

    public static long b() {
        try {
            return (((System.currentTimeMillis() + TimeZone.getDefault().getRawOffset()) / 86400000) * 86400000) - TimeZone.getDefault().getRawOffset();
        } catch (Throwable th2) {
            if (x.a(th2)) {
                return -1L;
            }
            th2.printStackTrace();
            return -1L;
        }
    }

    public static String c(String str, String str2) {
        return (com.tencent.bugly.crashreport.common.info.a.b() == null || com.tencent.bugly.crashreport.common.info.a.b().E == null) ? "" : com.tencent.bugly.crashreport.common.info.a.b().E.getString(str, str2);
    }

    public static String a(Date date) {
        if (date == null) {
            return null;
        }
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(date);
        } catch (Exception unused) {
            return new Date().toString();
        }
    }

    public static void b(long j10) {
        try {
            Thread.sleep(j10);
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        }
    }

    public static byte[] a(File file, String str, String str2) {
        ZipOutputStream zipOutputStream;
        if (str == null || str.length() == 0) {
            return null;
        }
        x.c("rqdp{  ZF start}", new Object[0]);
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str.getBytes("UTF-8"));
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            zipOutputStream = new ZipOutputStream(byteArrayOutputStream);
            try {
                zipOutputStream.setMethod(8);
                zipOutputStream.putNextEntry(new ZipEntry(str2));
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = byteArrayInputStream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    zipOutputStream.write(bArr, 0, read);
                }
                zipOutputStream.closeEntry();
                zipOutputStream.flush();
                zipOutputStream.finish();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    zipOutputStream.close();
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
                x.c("rqdp{  ZF end}", new Object[0]);
                return byteArray;
            } catch (Throwable th2) {
                th = th2;
                try {
                    if (!x.a(th)) {
                        th.printStackTrace();
                    }
                    if (zipOutputStream != null) {
                        try {
                            zipOutputStream.close();
                        } catch (IOException e11) {
                            e11.printStackTrace();
                        }
                    }
                    x.c("rqdp{  ZF end}", new Object[0]);
                    return null;
                } catch (Throwable th3) {
                    if (zipOutputStream != null) {
                        try {
                            zipOutputStream.close();
                        } catch (IOException e12) {
                            e12.printStackTrace();
                        }
                    }
                    x.c("rqdp{  ZF end}", new Object[0]);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            th = th4;
            zipOutputStream = null;
        }
    }

    public static void b(String str) {
        if (str == null) {
            return;
        }
        File file = new File(str);
        if (file.isFile() && file.exists() && file.canWrite()) {
            file.delete();
        }
    }

    public static long b(byte[] bArr) {
        if (bArr == null) {
            return -1L;
        }
        try {
            return Long.parseLong(new String(bArr, "utf-8"));
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
            return -1L;
        }
    }

    public static String b(Throwable th2) {
        if (th2 == null) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th2.printStackTrace(printWriter);
        printWriter.flush();
        return stringWriter.toString();
    }

    public static void b(Parcel parcel, Map<String, String> map) {
        if (map != null && map.size() > 0) {
            int size = map.size();
            ArrayList<String> arrayList = new ArrayList<>(size);
            ArrayList<String> arrayList2 = new ArrayList<>(size);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                arrayList.add(entry.getKey());
                arrayList2.add(entry.getValue());
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("keys", arrayList);
            bundle.putStringArrayList("values", arrayList2);
            parcel.writeBundle(bundle);
            return;
        }
        parcel.writeBundle(null);
    }

    public static Map<String, String> b(Parcel parcel) {
        Bundle readBundle = parcel.readBundle();
        HashMap hashMap = null;
        if (readBundle == null) {
            return null;
        }
        ArrayList<String> stringArrayList = readBundle.getStringArrayList("keys");
        ArrayList<String> stringArrayList2 = readBundle.getStringArrayList("values");
        if (stringArrayList != null && stringArrayList2 != null && stringArrayList.size() == stringArrayList2.size()) {
            hashMap = new HashMap(stringArrayList.size());
            for (int i9 = 0; i9 < stringArrayList.size(); i9++) {
                hashMap.put(stringArrayList.get(i9), stringArrayList2.get(i9));
            }
        } else {
            x.e("map parcel error!", new Object[0]);
        }
        return hashMap;
    }

    public static byte[] a(byte[] bArr, int i9) {
        if (bArr == null) {
            return bArr;
        }
        x.c("[Util] Zip %d bytes data with type %s", Integer.valueOf(bArr.length), "Gzip");
        try {
            ae a10 = ad.a(2);
            if (a10 == null) {
                return null;
            }
            return a10.a(bArr);
        } catch (Throwable th2) {
            if (!x.a(th2)) {
                th2.printStackTrace();
            }
            return null;
        }
    }

    public static String a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "NULL";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(bArr);
            byte[] digest = messageDigest.digest();
            if (digest == null) {
                return "";
            }
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b10 : digest) {
                String hexString = Integer.toHexString(b10 & UByte.MAX_VALUE);
                if (hexString.length() == 1) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(hexString);
            }
            return stringBuffer.toString().toUpperCase();
        } catch (Throwable th2) {
            if (x.a(th2)) {
                return null;
            }
            th2.printStackTrace();
            return null;
        }
    }

    public static boolean b(Context context, String str) {
        x.c("[Util] Try to unlock file: %s (pid=%d | tid=%d)", str, Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        try {
            File file = new File(context.getFilesDir() + File.separator + str);
            if (file.exists()) {
                if (file.delete()) {
                    x.c("[Util] Successfully unlocked file: %s (pid=%d | tid=%d)", str, Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
                    return true;
                }
                return false;
            }
            return true;
        } catch (Throwable th2) {
            x.a(th2);
            return false;
        }
    }

    public static boolean a(File file, File file2, int i9) {
        ZipOutputStream zipOutputStream;
        FileInputStream fileInputStream;
        x.c("rqdp{  ZF start}", new Object[0]);
        if (file != null && file2 != null && !file.equals(file2)) {
            if (file.exists() && file.canRead()) {
                try {
                    if (file2.getParentFile() != null && !file2.getParentFile().exists()) {
                        file2.getParentFile().mkdirs();
                    }
                    if (!file2.exists()) {
                        file2.createNewFile();
                    }
                } catch (Throwable th2) {
                    if (!x.a(th2)) {
                        th2.printStackTrace();
                    }
                }
                if (file2.exists() && file2.canRead()) {
                    FileInputStream fileInputStream2 = null;
                    try {
                        fileInputStream = new FileInputStream(file);
                        try {
                            zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file2)));
                        } catch (Throwable th3) {
                            th = th3;
                            zipOutputStream = null;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        zipOutputStream = null;
                    }
                    try {
                        zipOutputStream.setMethod(8);
                        zipOutputStream.putNextEntry(new ZipEntry(file.getName()));
                        byte[] bArr = new byte[5000];
                        while (true) {
                            int read = fileInputStream.read(bArr);
                            if (read <= 0) {
                                break;
                            }
                            zipOutputStream.write(bArr, 0, read);
                        }
                        zipOutputStream.flush();
                        zipOutputStream.closeEntry();
                        try {
                            fileInputStream.close();
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                        try {
                            zipOutputStream.close();
                        } catch (IOException e11) {
                            e11.printStackTrace();
                        }
                        x.c("rqdp{  ZF end}", new Object[0]);
                        return true;
                    } catch (Throwable th5) {
                        th = th5;
                        fileInputStream2 = fileInputStream;
                        try {
                            if (!x.a(th)) {
                                th.printStackTrace();
                            }
                            if (fileInputStream2 != null) {
                                try {
                                    fileInputStream2.close();
                                } catch (IOException e12) {
                                    e12.printStackTrace();
                                }
                            }
                            if (zipOutputStream != null) {
                                try {
                                    zipOutputStream.close();
                                } catch (IOException e13) {
                                    e13.printStackTrace();
                                }
                            }
                            x.c("rqdp{  ZF end}", new Object[0]);
                            return false;
                        } catch (Throwable th6) {
                            if (fileInputStream2 != null) {
                                try {
                                    fileInputStream2.close();
                                } catch (IOException e14) {
                                    e14.printStackTrace();
                                }
                            }
                            if (zipOutputStream != null) {
                                try {
                                    zipOutputStream.close();
                                } catch (IOException e15) {
                                    e15.printStackTrace();
                                }
                            }
                            x.c("rqdp{  ZF end}", new Object[0]);
                            throw th6;
                        }
                    }
                }
                return false;
            }
            x.d("rqdp{  !sFile.exists() || !sFile.canRead(),pls check ,return!}", new Object[0]);
            return false;
        }
        x.d("rqdp{  err ZF 1R!}", new Object[0]);
        return false;
    }

    public static void b(String str, String str2) {
        if (com.tencent.bugly.crashreport.common.info.a.b() == null || com.tencent.bugly.crashreport.common.info.a.b().E == null) {
            return;
        }
        com.tencent.bugly.crashreport.common.info.a.b().E.edit().putString(str, str2).apply();
    }

    private static ArrayList<String> a(Context context, String[] strArr) {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        if (AppInfo.e(context)) {
            return new ArrayList<>(Arrays.asList("unknown(low memory)"));
        }
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            Process exec = Runtime.getRuntime().exec(strArr);
            bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    arrayList.add(readLine);
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader2 = null;
                }
            }
            bufferedReader2 = new BufferedReader(new InputStreamReader(exec.getErrorStream()));
            while (true) {
                try {
                    String readLine2 = bufferedReader2.readLine();
                    if (readLine2 != null) {
                        arrayList.add(readLine2);
                    } else {
                        try {
                            break;
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        if (!x.a(th)) {
                            th.printStackTrace();
                        }
                        return null;
                    } finally {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                        }
                        if (bufferedReader2 != null) {
                            try {
                                bufferedReader2.close();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                        }
                    }
                }
            }
            bufferedReader.close();
            try {
                bufferedReader2.close();
            } catch (IOException e13) {
                e13.printStackTrace();
            }
            return arrayList;
        } catch (Throwable th4) {
            th = th4;
            bufferedReader = null;
            bufferedReader2 = null;
        }
    }

    public static String a(Context context, String str) {
        if (str == null || str.trim().equals("")) {
            return "";
        }
        if (f30702a == null) {
            f30702a = new HashMap();
            String str2 = "/system/bin/sh";
            ArrayList<String> a10 = a(context, new String[]{(new File("/system/bin/sh").exists() && new File("/system/bin/sh").canExecute()) ? "sh" : "sh", "-c", "getprop"});
            if (a10 != null && a10.size() > 0) {
                x.b(z.class, "Successfully get 'getprop' list.", new Object[0]);
                Pattern compile = Pattern.compile("\\[(.+)\\]: \\[(.*)\\]");
                for (String str3 : a10) {
                    Matcher matcher = compile.matcher(str3);
                    if (matcher.find()) {
                        f30702a.put(matcher.group(1), matcher.group(2));
                    }
                }
                x.b(z.class, "Systems properties number: %d.", Integer.valueOf(f30702a.size()));
            }
        }
        return f30702a.containsKey(str) ? f30702a.get(str) : "fail";
    }

    public static boolean a(String str) {
        return str == null || str.trim().length() <= 0;
    }

    public static Context a(Context context) {
        Context applicationContext;
        return (context == null || (applicationContext = context.getApplicationContext()) == null) ? context : applicationContext;
    }

    public static void a(Class<?> cls, String str, Object obj, Object obj2) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            declaredField.set(null, obj);
        } catch (Exception unused) {
        }
    }

    public static Object a(String str, String str2, Object obj, Class<?>[] clsArr, Object[] objArr) {
        try {
            Method declaredMethod = Class.forName(str).getDeclaredMethod(str2, clsArr);
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(null, objArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void a(Parcel parcel, Map<String, PlugInBean> map) {
        if (map != null && map.size() > 0) {
            int size = map.size();
            ArrayList arrayList = new ArrayList(size);
            ArrayList arrayList2 = new ArrayList(size);
            for (Map.Entry<String, PlugInBean> entry : map.entrySet()) {
                arrayList.add(entry.getKey());
                arrayList2.add(entry.getValue());
            }
            Bundle bundle = new Bundle();
            bundle.putInt("pluginNum", arrayList.size());
            for (int i9 = 0; i9 < arrayList.size(); i9++) {
                bundle.putString("pluginKey" + i9, (String) arrayList.get(i9));
            }
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                bundle.putString("pluginVal" + i10 + "plugInId", ((PlugInBean) arrayList2.get(i10)).f30177a);
                bundle.putString("pluginVal" + i10 + "plugInUUID", ((PlugInBean) arrayList2.get(i10)).f30179c);
                bundle.putString("pluginVal" + i10 + "plugInVersion", ((PlugInBean) arrayList2.get(i10)).f30178b);
            }
            parcel.writeBundle(bundle);
            return;
        }
        parcel.writeBundle(null);
    }

    public static Map<String, PlugInBean> a(Parcel parcel) {
        Bundle readBundle = parcel.readBundle();
        HashMap hashMap = null;
        if (readBundle == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int intValue = ((Integer) readBundle.get("pluginNum")).intValue();
        for (int i9 = 0; i9 < intValue; i9++) {
            arrayList.add(readBundle.getString("pluginKey" + i9));
        }
        for (int i10 = 0; i10 < intValue; i10++) {
            String string = readBundle.getString("pluginVal" + i10 + "plugInId");
            String string2 = readBundle.getString("pluginVal" + i10 + "plugInUUID");
            arrayList2.add(new PlugInBean(string, readBundle.getString("pluginVal" + i10 + "plugInVersion"), string2));
        }
        if (arrayList.size() == arrayList2.size()) {
            hashMap = new HashMap(arrayList.size());
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                hashMap.put(arrayList.get(i11), PlugInBean.class.cast(arrayList2.get(i11)));
            }
        } else {
            x.e("map plugin parcel error!", new Object[0]);
        }
        return hashMap;
    }

    public static byte[] a(Parcelable parcelable) {
        Parcel obtain = Parcel.obtain();
        parcelable.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }

    public static <T> T a(byte[] bArr, Parcelable.Creator<T> creator) {
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        try {
            return creator.createFromParcel(obtain);
        } catch (Throwable th2) {
            try {
                th2.printStackTrace();
                obtain.recycle();
                return null;
            } finally {
                obtain.recycle();
            }
        }
    }

    public static String a(Context context, int i9, String str) {
        Process process = null;
        if (!AppInfo.a(context, "android.permission.READ_LOGS")) {
            x.d("no read_log permission!", new Object[0]);
            return null;
        }
        String[] strArr = str == null ? new String[]{"logcat", "-d", "-v", "threadtime"} : new String[]{"logcat", "-d", "-v", "threadtime", "-s", str};
        StringBuilder sb2 = new StringBuilder();
        try {
            process = Runtime.getRuntime().exec(strArr);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb2.append(readLine);
                sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
                if (i9 > 0 && sb2.length() > i9) {
                    sb2.delete(0, sb2.length() - i9);
                }
            }
            String sb3 = sb2.toString();
            try {
                process.getOutputStream().close();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            try {
                process.getInputStream().close();
            } catch (IOException e11) {
                e11.printStackTrace();
            }
            try {
                process.getErrorStream().close();
            } catch (IOException e12) {
                e12.printStackTrace();
            }
            return sb3;
        } catch (Throwable th2) {
            try {
                if (!x.a(th2)) {
                    th2.printStackTrace();
                }
                sb2.append("\n[error:" + th2.toString() + "]");
                return sb2.toString();
            } finally {
                if (process != null) {
                    try {
                        process.getOutputStream().close();
                    } catch (IOException e13) {
                        e13.printStackTrace();
                    }
                    try {
                        process.getInputStream().close();
                    } catch (IOException e14) {
                        e14.printStackTrace();
                    }
                    try {
                        process.getErrorStream().close();
                    } catch (IOException e15) {
                        e15.printStackTrace();
                    }
                }
            }
        }
    }

    public static Map<String, String> a(int i9, boolean z10) {
        HashMap hashMap = new HashMap(12);
        Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
        if (allStackTraces == null) {
            return null;
        }
        Thread thread = Looper.getMainLooper().getThread();
        if (!allStackTraces.containsKey(thread)) {
            allStackTraces.put(thread, thread.getStackTrace());
        }
        Thread.currentThread().getId();
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry<Thread, StackTraceElement[]> entry : allStackTraces.entrySet()) {
            int i10 = 0;
            sb2.setLength(0);
            if (entry.getValue() != null && entry.getValue().length != 0) {
                StackTraceElement[] value = entry.getValue();
                int length = value.length;
                while (true) {
                    if (i10 >= length) {
                        break;
                    }
                    StackTraceElement stackTraceElement = value[i10];
                    if (i9 > 0 && sb2.length() >= i9) {
                        sb2.append("\n[Stack over limit size :" + i9 + " , has been cut!]");
                        break;
                    }
                    sb2.append(stackTraceElement.toString());
                    sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
                    i10++;
                }
                hashMap.put(entry.getKey().getName() + "(" + entry.getKey().getId() + ")", sb2.toString());
            }
        }
        return hashMap;
    }

    public static boolean a(Context context, String str, long j10) {
        x.c("[Util] Try to lock file:%s (pid=%d | tid=%d)", str, Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        try {
            File file = new File(context.getFilesDir() + File.separator + str);
            if (file.exists()) {
                if (System.currentTimeMillis() - file.lastModified() < 10000) {
                    return false;
                }
                x.c("[Util] Lock file (%s) is expired, unlock it.", str);
                b(context, str);
            }
            if (file.createNewFile()) {
                x.c("[Util] Successfully locked file: %s (pid=%d | tid=%d)", str, Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
                return true;
            }
            x.c("[Util] Failed to locked file: %s (pid=%d | tid=%d)", str, Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            return false;
        } catch (Throwable th2) {
            x.a(th2);
            return false;
        }
    }

    public static String a(File file, int i9, boolean z10) {
        BufferedReader bufferedReader;
        if (file == null || !file.exists() || !file.canRead()) {
            return null;
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "utf-8"));
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb2.append(readLine);
                    sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
                    if (i9 > 0 && sb2.length() > i9) {
                        if (z10) {
                            sb2.delete(i9, sb2.length());
                            break;
                        }
                        sb2.delete(0, sb2.length() - i9);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        x.a(th);
                        return null;
                    } finally {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Exception e10) {
                                x.a(e10);
                            }
                        }
                    }
                }
            }
            String sb3 = sb2.toString();
            try {
                bufferedReader.close();
            } catch (Exception e11) {
                x.a(e11);
            }
            return sb3;
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
        }
    }

    private static BufferedReader a(File file) {
        if (file != null && file.exists() && file.canRead()) {
            try {
                return new BufferedReader(new InputStreamReader(new FileInputStream(file), "utf-8"));
            } catch (Throwable th2) {
                x.a(th2);
            }
        }
        return null;
    }

    public static BufferedReader a(String str, String str2) {
        if (str == null) {
            return null;
        }
        try {
            File file = new File(str, str2);
            if (file.exists() && file.canRead()) {
                return a(file);
            }
            return null;
        } catch (NullPointerException e10) {
            x.a(e10);
            return null;
        }
    }

    public static Thread a(Runnable runnable, String str) {
        try {
            Thread thread = new Thread(runnable);
            thread.setName(str);
            thread.start();
            return thread;
        } catch (Throwable th2) {
            x.e("[Util] Failed to start a thread to execute task with message: %s", th2.getMessage());
            return null;
        }
    }

    public static boolean a(Runnable runnable) {
        if (runnable != null) {
            w a10 = w.a();
            if (a10 != null) {
                return a10.a(runnable);
            }
            String[] split = runnable.getClass().getName().split("\\.");
            return a(runnable, split[split.length - 1]) != null;
        }
        return false;
    }

    public static SharedPreferences a(String str, Context context) {
        if (context != null) {
            return context.getSharedPreferences(str, 0);
        }
        return null;
    }
}
