package cn.jiguang.f;

import android.os.SystemClock;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.security.SecureRandom;
import java.util.Collection;
import java.util.LinkedList;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes.dex */
public class i {
    public static <T> LinkedList<T> a(Collection<T> collection) {
        LinkedList<T> linkedList = new LinkedList<>();
        int i9 = 0;
        int size = collection != null ? collection.size() : 0;
        if (size == 0) {
            return linkedList;
        }
        if (size == 1) {
            linkedList.addAll(collection);
            return linkedList;
        }
        SecureRandom secureRandom = new SecureRandom();
        for (T t10 : collection) {
            i9++;
            linkedList.add(secureRandom.nextInt(i9), t10);
        }
        return linkedList;
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean a(long j10, long j11) {
        if (j11 > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            return j10 <= 0 || elapsedRealtime <= j10 || elapsedRealtime > j10 + j11;
        }
        throw new AssertionError();
    }

    public static byte[] a(InputStream inputStream) {
        if (inputStream != null) {
            byte[] bArr = new byte[inputStream.available()];
            inputStream.read(bArr);
            return bArr;
        }
        throw new IOException("InputStream is null");
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

    public static byte[] b(InputStream inputStream) {
        if (inputStream == null) {
            throw new IOException("InputStream is null");
        }
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        byte[] byteArray = byteArrayOutputStream2.toByteArray();
                        a(byteArrayOutputStream2);
                        return byteArray;
                    }
                    byteArrayOutputStream2.write(bArr, 0, read);
                }
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream = byteArrayOutputStream2;
                a(byteArrayOutputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
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
                        a((Closeable) byteArrayInputStream);
                        a((Closeable) gZIPInputStream);
                        return byteArray;
                    }
                    byteArrayOutputStream.write(bArr2, 0, read);
                }
            } catch (Throwable th3) {
                th2 = th3;
                a(byteArrayOutputStream);
                a((Closeable) byteArrayInputStream);
                a((Closeable) gZIPInputStream);
                throw th2;
            }
        } catch (Throwable th4) {
            gZIPInputStream = null;
            th2 = th4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static short c(byte[] bArr) {
        int i9;
        if (bArr == 0 || bArr.length == 0) {
            throw new Exception("byte could not be empty");
        }
        if (bArr.length == 1) {
            i9 = bArr[0];
        } else {
            i9 = ((short) (bArr[1] & 255)) | ((short) ((bArr[0] & 255) << 8));
        }
        return (short) i9;
    }
}
