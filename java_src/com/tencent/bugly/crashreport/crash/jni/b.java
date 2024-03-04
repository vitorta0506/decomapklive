package com.tencent.bugly.crashreport.crash.jni;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.security.CertificateUtil;
import com.guochao.faceshow.utils.Contants;
import com.huawei.hms.framework.common.ContainerUtils;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.z;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static List<File> f30431a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: protected */
    public static String a(String str) {
        if (str == null) {
            return "";
        }
        String[] split = str.split(IOUtils.LINE_SEPARATOR_UNIX);
        if (split == null || split.length == 0) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : split) {
            if (!str2.contains("java.lang.Thread.getStackTrace(")) {
                sb2.append(str2);
                sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
            }
        }
        return sb2.toString();
    }

    private static String b(String str, String str2) {
        BufferedReader a10 = z.a(str, "reg_record.txt");
        if (a10 == null) {
            return null;
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            String readLine = a10.readLine();
            if (readLine != null && readLine.startsWith(str2)) {
                int i9 = 18;
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    String readLine2 = a10.readLine();
                    if (readLine2 == null) {
                        break;
                    }
                    if (i10 % 4 == 0) {
                        if (i10 > 0) {
                            sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
                        }
                        sb2.append("  ");
                    } else {
                        if (readLine2.length() > 16) {
                            i9 = 28;
                        }
                        sb2.append("                ".substring(0, i9 - i11));
                    }
                    i11 = readLine2.length();
                    sb2.append(readLine2);
                    i10++;
                }
                sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
                return sb2.toString();
            }
            try {
                a10.close();
            } catch (Exception e10) {
                x.a(e10);
            }
            return null;
        } catch (Throwable th2) {
            try {
                x.a(th2);
                try {
                    a10.close();
                } catch (Exception e11) {
                    x.a(e11);
                }
                return null;
            } finally {
                try {
                    a10.close();
                } catch (Exception e12) {
                    x.a(e12);
                }
            }
        }
    }

    private static String c(String str, String str2) {
        BufferedReader a10 = z.a(str, "map_record.txt");
        if (a10 == null) {
            return null;
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            String readLine = a10.readLine();
            if (readLine != null && readLine.startsWith(str2)) {
                while (true) {
                    String readLine2 = a10.readLine();
                    if (readLine2 == null) {
                        break;
                    }
                    sb2.append("  ");
                    sb2.append(readLine2);
                    sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
                }
                return sb2.toString();
            }
            try {
                a10.close();
            } catch (Exception e10) {
                x.a(e10);
            }
            return null;
        } catch (Throwable th2) {
            try {
                x.a(th2);
                try {
                    a10.close();
                } catch (Exception e11) {
                    x.a(e11);
                }
                return null;
            } finally {
                try {
                    a10.close();
                } catch (Exception e12) {
                    x.a(e12);
                }
            }
        }
    }

    private static Map<String, Integer> d(String str) {
        String[] split;
        if (str == null) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            for (String str2 : str.split(",")) {
                String[] split2 = str2.split(CertificateUtil.DELIMITER);
                if (split2.length != 2) {
                    x.e("error format at %s", str2);
                    return null;
                }
                hashMap.put(split2[0], Integer.valueOf(Integer.parseInt(split2[1])));
            }
            return hashMap;
        } catch (Exception e10) {
            x.e("error format intStateStr %s", str);
            e10.printStackTrace();
            return null;
        }
    }

    private static CrashDetailBean a(Context context, Map<String, String> map, NativeExceptionHandler nativeExceptionHandler) {
        String str;
        String str2;
        HashMap hashMap;
        if (map == null) {
            return null;
        }
        if (com.tencent.bugly.crashreport.common.info.a.a(context) == null) {
            x.e("abnormal com info not created", new Object[0]);
            return null;
        }
        String str3 = map.get("intStateStr");
        if (str3 != null && str3.trim().length() > 0) {
            Map<String, Integer> d10 = d(str3);
            if (d10 == null) {
                x.e("parse intSateMap fail", Integer.valueOf(map.size()));
                return null;
            }
            try {
                d10.get("sino").intValue();
                d10.get("sud").intValue();
                String str4 = map.get("soVersion");
                if (TextUtils.isEmpty(str4)) {
                    x.e("error format at version", new Object[0]);
                    return null;
                }
                String str5 = map.get("errorAddr");
                String str6 = "unknown";
                String str7 = str5 == null ? "unknown" : str5;
                String str8 = map.get("codeMsg");
                if (str8 == null) {
                    str8 = "unknown";
                }
                String str9 = map.get("tombPath");
                String str10 = str9 == null ? "unknown" : str9;
                String str11 = map.get("signalName");
                if (str11 == null) {
                    str11 = "unknown";
                }
                map.get("errnoMsg");
                String str12 = map.get("stack");
                if (str12 == null) {
                    str12 = "unknown";
                }
                String str13 = map.get("jstack");
                if (str13 != null) {
                    str12 = str12 + "java:\n" + str13;
                }
                Integer num = d10.get("sico");
                if (num == null || num.intValue() <= 0) {
                    str = str8;
                    str2 = str11;
                } else {
                    str2 = str11 + "(" + str8 + ")";
                    str = "KERNEL";
                }
                String str14 = map.get("nativeLog");
                byte[] a10 = (str14 == null || str14.isEmpty()) ? null : z.a((File) null, str14, "BuglyNativeLog.txt");
                String str15 = map.get("sendingProcess");
                if (str15 == null) {
                    str15 = "unknown";
                }
                Integer num2 = d10.get("spd");
                if (num2 != null) {
                    str15 = str15 + "(" + num2 + ")";
                }
                String str16 = str15;
                String str17 = map.get("threadName");
                if (str17 == null) {
                    str17 = "unknown";
                }
                Integer num3 = d10.get("et");
                if (num3 != null) {
                    str17 = str17 + "(" + num3 + ")";
                }
                String str18 = str17;
                String str19 = map.get("processName");
                if (str19 != null) {
                    str6 = str19;
                }
                Integer num4 = d10.get("ep");
                if (num4 != null) {
                    str6 = str6 + "(" + num4 + ")";
                }
                String str20 = str6;
                String str21 = map.get("key-value");
                if (str21 != null) {
                    HashMap hashMap2 = new HashMap();
                    String[] split = str21.split(IOUtils.LINE_SEPARATOR_UNIX);
                    int length = split.length;
                    int i9 = 0;
                    while (i9 < length) {
                        String[] split2 = split[i9].split(ContainerUtils.KEY_VALUE_DELIMITER);
                        String[] strArr = split;
                        if (split2.length == 2) {
                            hashMap2.put(split2[0], split2[1]);
                        }
                        i9++;
                        split = strArr;
                    }
                    hashMap = hashMap2;
                } else {
                    hashMap = null;
                }
                CrashDetailBean packageCrashDatas = nativeExceptionHandler.packageCrashDatas(str20, str18, (d10.get("etms").intValue() / 1000) + (d10.get("ets").intValue() * 1000), str2, str7, a(str12), str, str16, str10, map.get("sysLogPath"), map.get("jniLogPath"), str4, a10, hashMap, false, false);
                if (packageCrashDatas != null) {
                    String str22 = map.get(Contants.USER_ID);
                    if (str22 != null) {
                        x.c("[Native record info] userId: %s", str22);
                        packageCrashDatas.f30271m = str22;
                    }
                    String str23 = map.get("sysLog");
                    if (str23 != null) {
                        packageCrashDatas.f30281w = str23;
                    }
                    String str24 = map.get("appVersion");
                    if (str24 != null) {
                        x.c("[Native record info] appVersion: %s", str24);
                        packageCrashDatas.f30264f = str24;
                    }
                    String str25 = map.get("isAppForeground");
                    if (str25 != null) {
                        x.c("[Native record info] isAppForeground: %s", str25);
                        packageCrashDatas.N = str25.equalsIgnoreCase(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
                    }
                    String str26 = map.get("launchTime");
                    if (str26 != null) {
                        x.c("[Native record info] launchTime: %s", str26);
                        try {
                            packageCrashDatas.M = Long.parseLong(str26);
                        } catch (NumberFormatException e10) {
                            if (!x.a(e10)) {
                                e10.printStackTrace();
                            }
                        }
                    }
                    packageCrashDatas.f30284z = null;
                    packageCrashDatas.f30269k = true;
                }
                return packageCrashDatas;
            } catch (Throwable th2) {
                x.e("error format", new Object[0]);
                th2.printStackTrace();
                return null;
            }
        }
        x.e("no intStateStr", new Object[0]);
        return null;
    }

    public static void c(String str) {
        File[] listFiles;
        if (str == null) {
            return;
        }
        try {
            File file = new File(str);
            if (file.canRead() && file.isDirectory() && (listFiles = file.listFiles()) != null) {
                for (File file2 : listFiles) {
                    if (file2.canRead() && file2.canWrite() && file2.length() == 0) {
                        file2.delete();
                        x.c("Delete empty record file %s", file2.getAbsoluteFile());
                    }
                }
            }
        } catch (Throwable th2) {
            x.a(th2);
        }
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        File file = new File(str, "backup_record.txt");
        if (file.exists()) {
            return file.getAbsolutePath();
        }
        return null;
    }

    private static String a(BufferedInputStream bufferedInputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream;
        if (bufferedInputStream == null) {
            return null;
        }
        try {
            byteArrayOutputStream = new ByteArrayOutputStream(1024);
            while (true) {
                try {
                    int read = bufferedInputStream.read();
                    if (read == -1) {
                        byteArrayOutputStream.close();
                        break;
                    } else if (read == 0) {
                        String str = new String(byteArrayOutputStream.toByteArray(), "UTf-8");
                        byteArrayOutputStream.close();
                        return str;
                    } else {
                        byteArrayOutputStream.write(read);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        x.a(th);
                        return null;
                    } finally {
                        if (byteArrayOutputStream != null) {
                            byteArrayOutputStream.close();
                        }
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
        }
    }

    /* JADX WARN: Type inference failed for: r7v3, types: [boolean] */
    public static CrashDetailBean a(Context context, String str, NativeExceptionHandler nativeExceptionHandler) {
        BufferedInputStream bufferedInputStream;
        String str2;
        String a10;
        BufferedInputStream bufferedInputStream2 = null;
        if (context != null && str != null && nativeExceptionHandler != null) {
            File file = new File(str, "rqd_record.eup");
            if (file.exists()) {
                ?? canRead = file.canRead();
                try {
                    if (canRead != 0) {
                        try {
                            bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                            try {
                                String a11 = a(bufferedInputStream);
                                if (a11 != null && a11.equals("NATIVE_RQD_REPORT")) {
                                    HashMap hashMap = new HashMap();
                                    loop0: while (true) {
                                        str2 = null;
                                        while (true) {
                                            a10 = a(bufferedInputStream);
                                            if (a10 == null) {
                                                break loop0;
                                            } else if (str2 == null) {
                                                str2 = a10;
                                            }
                                        }
                                        hashMap.put(str2, a10);
                                    }
                                    if (str2 != null) {
                                        x.e("record not pair! drop! %s", str2);
                                        try {
                                            bufferedInputStream.close();
                                        } catch (IOException e10) {
                                            e10.printStackTrace();
                                        }
                                        return null;
                                    }
                                    CrashDetailBean a12 = a(context, hashMap, nativeExceptionHandler);
                                    try {
                                        bufferedInputStream.close();
                                    } catch (IOException e11) {
                                        e11.printStackTrace();
                                    }
                                    return a12;
                                }
                                x.e("record read fail! %s", a11);
                                try {
                                    bufferedInputStream.close();
                                } catch (IOException e12) {
                                    e12.printStackTrace();
                                }
                                return null;
                            } catch (IOException e13) {
                                e = e13;
                                e.printStackTrace();
                                if (bufferedInputStream != null) {
                                    try {
                                        bufferedInputStream.close();
                                    } catch (IOException e14) {
                                        e14.printStackTrace();
                                    }
                                }
                                return null;
                            }
                        } catch (IOException e15) {
                            e = e15;
                            bufferedInputStream = null;
                        } catch (Throwable th2) {
                            th = th2;
                            if (bufferedInputStream2 != null) {
                                try {
                                    bufferedInputStream2.close();
                                } catch (IOException e16) {
                                    e16.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    bufferedInputStream2 = canRead;
                }
            }
            return null;
        }
        x.e("get eup record file args error", new Object[0]);
        return null;
    }

    public static String a(String str, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        String b10 = b(str, str2);
        if (b10 != null && !b10.isEmpty()) {
            sb2.append("Register infos:\n");
            sb2.append(b10);
        }
        String c10 = c(str, str2);
        if (c10 != null && !c10.isEmpty()) {
            if (sb2.length() > 0) {
                sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
            }
            sb2.append("System SO infos:\n");
            sb2.append(c10);
        }
        return sb2.toString();
    }

    public static void a(boolean z10, String str) {
        if (str != null) {
            f30431a.add(new File(str, "rqd_record.eup"));
            f30431a.add(new File(str, "reg_record.txt"));
            f30431a.add(new File(str, "map_record.txt"));
            f30431a.add(new File(str, "backup_record.txt"));
            if (z10) {
                c(str);
            }
        }
        List<File> list = f30431a;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (File file : f30431a) {
            if (file.exists() && file.canWrite()) {
                file.delete();
                x.c("Delete record file %s", file.getAbsoluteFile());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.String] */
    public static String a(String str, int i9, String str2, boolean z10) {
        BufferedReader bufferedReader = null;
        if (str != null && i9 > 0) {
            File file = new File(str);
            if (file.exists() && file.canRead()) {
                x.a("Read system log from native record file(length: %s bytes): %s", Long.valueOf(file.length()), file.getAbsolutePath());
                f30431a.add(file);
                x.c("Add this record file to list for cleaning lastly.", new Object[0]);
                if (str2 == null) {
                    return z.a(new File(str), i9, z10);
                }
                String sb2 = new StringBuilder();
                try {
                    try {
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(file), "utf-8"));
                        while (true) {
                            try {
                                String readLine = bufferedReader2.readLine();
                                if (readLine == null) {
                                    break;
                                }
                                if (Pattern.compile(str2 + "[ ]*:").matcher(readLine).find()) {
                                    sb2.append(readLine);
                                    sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
                                }
                                if (i9 > 0 && sb2.length() > i9) {
                                    if (z10) {
                                        sb2.delete(i9, sb2.length());
                                        break;
                                    }
                                    sb2.delete(0, sb2.length() - i9);
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                bufferedReader = bufferedReader2;
                                try {
                                    x.a(th);
                                    sb2.append("\n[error:" + th.toString() + "]");
                                    String sb3 = sb2.toString();
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                        sb2 = sb3;
                                        return sb2;
                                    }
                                    return sb3;
                                } catch (Throwable th3) {
                                    if (bufferedReader != null) {
                                        try {
                                            bufferedReader.close();
                                        } catch (Exception e10) {
                                            x.a(e10);
                                        }
                                    }
                                    throw th3;
                                }
                            }
                        }
                        String sb4 = sb2.toString();
                        bufferedReader2.close();
                        sb2 = sb4;
                    } catch (Exception e11) {
                        x.a(e11);
                        return sb2;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
                return sb2;
            }
        }
        return null;
    }
}
