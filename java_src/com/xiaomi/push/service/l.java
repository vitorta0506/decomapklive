package com.xiaomi.push.service;

import android.os.Process;
import android.text.TextUtils;
import com.xiaomi.push.y2;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.light.utils.IOUtils;
/* loaded from: classes5.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f37291a = Pattern.compile("([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3})");

    /* renamed from: b  reason: collision with root package name */
    private static long f37292b = 0;

    /* renamed from: c  reason: collision with root package name */
    private static ThreadPoolExecutor f37293c = new ThreadPoolExecutor(1, 1, 20, TimeUnit.SECONDS, new LinkedBlockingQueue());

    private static String a(String str) {
        BufferedReader bufferedReader;
        Throwable th2;
        try {
            bufferedReader = new BufferedReader(new FileReader(new File(str)));
            try {
                StringBuilder sb2 = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        String sb3 = sb2.toString();
                        y2.b(bufferedReader);
                        return sb3;
                    }
                    sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
                    sb2.append(readLine);
                }
            } catch (Exception unused) {
                y2.b(bufferedReader);
                return null;
            } catch (Throwable th3) {
                th2 = th3;
                y2.b(bufferedReader);
                throw th2;
            }
        } catch (Exception unused2) {
            bufferedReader = null;
        } catch (Throwable th4) {
            bufferedReader = null;
            th2 = th4;
        }
    }

    @Deprecated
    public static void b() {
        System.currentTimeMillis();
        f37293c.getActiveCount();
    }

    public static void c() {
        String a10 = a("/proc/self/net/tcp");
        if (!TextUtils.isEmpty(a10)) {
            tf.c.l("dump tcp for uid = " + Process.myUid());
            tf.c.l(a10);
        }
        String a11 = a("/proc/self/net/tcp6");
        if (TextUtils.isEmpty(a11)) {
            return;
        }
        tf.c.l("dump tcp6 for uid = " + Process.myUid());
        tf.c.l(a11);
    }
}
