package cn.jiguang.s;

import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.text.SimpleDateFormat;
import java.util.concurrent.ConcurrentHashMap;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f2769a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static ConcurrentHashMap<String, ThreadLocal<SimpleDateFormat>> f2770b = new ConcurrentHashMap<>();

    public static String a(String str) {
        return new String(Base64.decode(str.getBytes(), 2));
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static byte[] a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = null;
        try {
            GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream2.write(bArr);
                gZIPOutputStream2.close();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                a(byteArrayOutputStream);
                a(gZIPOutputStream2);
                return byteArray;
            } catch (Throwable th2) {
                th = th2;
                gZIPOutputStream = gZIPOutputStream2;
                a(byteArrayOutputStream);
                a(gZIPOutputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String b(String str) {
        return Base64.encodeToString(str.getBytes(), 2);
    }

    public static byte[] b(byte[] bArr) {
        GZIPInputStream gZIPInputStream;
        Throwable th2;
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            try {
                byte[] bArr2 = new byte[256];
                while (true) {
                    int read = gZIPInputStream.read(bArr2);
                    if (read < 0) {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        a(byteArrayOutputStream);
                        a(byteArrayInputStream);
                        a(gZIPInputStream);
                        return byteArray;
                    }
                    byteArrayOutputStream.write(bArr2, 0, read);
                }
            } catch (Throwable th3) {
                th2 = th3;
                a(byteArrayOutputStream);
                a(byteArrayInputStream);
                a(gZIPInputStream);
                throw th2;
            }
        } catch (Throwable th4) {
            gZIPInputStream = null;
            th2 = th4;
        }
    }
}
