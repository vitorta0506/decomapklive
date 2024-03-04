package cn.jiguang.as;

import android.content.Context;
import android.util.Log;
import cn.jiguang.f.f;
import cn.jiguang.internal.JConstants;
import com.facebook.internal.security.CertificateUtil;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringReader;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.light.utils.FileUtils;
import org.light.utils.IOUtils;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static String f2085a = "log";

    /* renamed from: b  reason: collision with root package name */
    public static String f2086b = "internal_debug_log.txt";

    /* renamed from: c  reason: collision with root package name */
    private static final SimpleDateFormat f2087c = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.ENGLISH);

    /* renamed from: d  reason: collision with root package name */
    private static final Object f2088d = new Object();

    public static void a() {
        try {
            synchronized (f2088d) {
                Context appContext = JConstants.getAppContext(null);
                if (appContext == null) {
                    appContext = f.a();
                }
                if (appContext == null) {
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(appContext.getFilesDir());
                String str = File.separator;
                sb2.append(str);
                sb2.append(f2085a);
                sb2.append(str);
                File file = new File(sb2.toString());
                if (!file.exists()) {
                    file.delete();
                    return;
                }
                if (file.listFiles() != null) {
                    for (File file2 : file.listFiles()) {
                        file2.delete();
                    }
                }
                file.delete();
            }
        } catch (Throwable th2) {
            d.g("Logger", "clearLogFiles error is " + th2.getMessage());
        }
    }

    private static void a(final String str) {
        try {
            cn.jiguang.bg.d.a("ONCE_TASK", new Runnable() { // from class: cn.jiguang.as.c.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        synchronized (c.f2088d) {
                            Context appContext = JConstants.getAppContext(null);
                            if (appContext == null) {
                                appContext = f.a();
                            }
                            if (appContext == null) {
                                return;
                            }
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(appContext.getFilesDir());
                            String str2 = File.separator;
                            sb2.append(str2);
                            sb2.append(c.f2085a);
                            sb2.append(str2);
                            String sb3 = sb2.toString();
                            File file = new File(sb3 + c.f2086b);
                            File parentFile = file.getParentFile();
                            if (!parentFile.exists()) {
                                parentFile.mkdirs();
                            }
                            if (!file.exists()) {
                                file.createNewFile();
                                d.a("Logger", "create log file: " + file.getName());
                            }
                            cn.jiguang.f.c.a(file, str + IOUtils.LINE_SEPARATOR_UNIX);
                        }
                    } catch (Throwable th2) {
                        d.g("Logger", "write logs to file error is " + th2.getMessage());
                    }
                }
            });
        } catch (Throwable th2) {
            d.g("Logger", "saveLogs error is " + th2.getMessage());
        }
    }

    public static void a(String str, String str2, String str3, String str4, Throwable th2) {
        str3 = (str3 == null || str3.trim().equals("")) ? "Logger" : "Logger";
        if (str4 == null) {
            return;
        }
        try {
            String format = f2087c.format(new Date());
            BufferedReader bufferedReader = new BufferedReader(new StringReader(str4), 256);
            String str5 = "[" + str3 + "] ";
            String a10 = cn.jiguang.f.a.a(f.a());
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    a(((Object) format) + " " + a10 + " " + str + FileUtils.RES_PREFIX_STORAGE + str2 + CertificateUtil.DELIMITER + " " + str5 + readLine);
                } catch (IOException e10) {
                    d.i("Logger", e10.getMessage());
                }
            }
            if (th2 != null) {
                StringWriter stringWriter = new StringWriter();
                th2.printStackTrace(new PrintWriter(stringWriter));
                a(((Object) format) + " " + str + stringWriter.toString());
            }
        } catch (Throwable th3) {
            Log.w("Logger", "log2File call failed:" + th3.getMessage());
        }
    }
}
