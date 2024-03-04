package com.squareup.okhttp.internal;

import com.facebook.internal.security.CertificateUtil;
import com.squareup.okhttp.HttpUrl;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.net.Socket;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import okio.Buffer;
import okio.ByteString;
import okio.Source;
/* loaded from: classes4.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f29845a = new byte[0];

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f29846b = new String[0];

    /* renamed from: c  reason: collision with root package name */
    public static final Charset f29847c = Charset.forName("UTF-8");

    /* loaded from: classes4.dex */
    static class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29848a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f29849b;

        a(String str, boolean z10) {
            this.f29848a = str;
            this.f29849b = z10;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, this.f29848a);
            thread.setDaemon(this.f29849b);
            return thread;
        }
    }

    public static void a(long j10, long j11, long j12) {
        if ((j11 | j12) < 0 || j11 > j10 || j10 - j11 < j12) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static void b(Closeable closeable, Closeable closeable2) throws IOException {
        try {
            closeable.close();
            th = null;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            closeable2.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        if (th == null) {
            return;
        }
        if (!(th instanceof IOException)) {
            if (!(th instanceof RuntimeException)) {
                if (!(th instanceof Error)) {
                    throw new AssertionError(th);
                }
                throw th;
            }
            throw ((RuntimeException) th);
        }
        throw ((IOException) th);
    }

    public static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    public static void d(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e10) {
                if (!o(e10)) {
                    throw e10;
                }
            } catch (RuntimeException e11) {
                throw e11;
            } catch (Exception unused) {
            }
        }
    }

    public static String[] e(String[] strArr, String str) {
        int length = strArr.length + 1;
        String[] strArr2 = new String[length];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[length - 1] = str;
        return strArr2;
    }

    public static boolean f(String[] strArr, String str) {
        return Arrays.asList(strArr).contains(str);
    }

    public static boolean g(Source source, int i9, TimeUnit timeUnit) {
        try {
            return r(source, i9, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean h(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static String i(HttpUrl httpUrl) {
        if (httpUrl.port() != HttpUrl.defaultPort(httpUrl.scheme())) {
            return httpUrl.host() + CertificateUtil.DELIMITER + httpUrl.port();
        }
        return httpUrl.host();
    }

    public static <T> List<T> j(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <T> List<T> k(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static <K, V> Map<K, V> l(Map<K, V> map) {
        return Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    private static <T> List<T> m(T[] tArr, T[] tArr2) {
        ArrayList arrayList = new ArrayList();
        for (T t10 : tArr) {
            int length = tArr2.length;
            int i9 = 0;
            while (true) {
                if (i9 < length) {
                    T t11 = tArr2[i9];
                    if (t10.equals(t11)) {
                        arrayList.add(t11);
                        break;
                    }
                    i9++;
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T[] n(Class<T> cls, T[] tArr, T[] tArr2) {
        List m10 = m(tArr, tArr2);
        return (T[]) m10.toArray((Object[]) Array.newInstance((Class<?>) cls, m10.size()));
    }

    public static boolean o(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static String p(String str) {
        try {
            return ByteString.of(MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"))).hex();
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException e10) {
            throw new AssertionError(e10);
        }
    }

    public static ByteString q(ByteString byteString) {
        try {
            return ByteString.of(MessageDigest.getInstance("SHA-1").digest(byteString.toByteArray()));
        } catch (NoSuchAlgorithmException e10) {
            throw new AssertionError(e10);
        }
    }

    public static boolean r(Source source, int i9, TimeUnit timeUnit) throws IOException {
        long nanoTime = System.nanoTime();
        long deadlineNanoTime = source.timeout().hasDeadline() ? source.timeout().deadlineNanoTime() - nanoTime : Long.MAX_VALUE;
        source.timeout().deadlineNanoTime(Math.min(deadlineNanoTime, timeUnit.toNanos(i9)) + nanoTime);
        try {
            Buffer buffer = new Buffer();
            while (source.read(buffer, 2048L) != -1) {
                buffer.clear();
            }
            if (deadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(nanoTime + deadlineNanoTime);
            }
            return true;
        } catch (InterruptedIOException unused) {
            if (deadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(nanoTime + deadlineNanoTime);
            }
            return false;
        } catch (Throwable th2) {
            if (deadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(nanoTime + deadlineNanoTime);
            }
            throw th2;
        }
    }

    public static ThreadFactory s(String str, boolean z10) {
        return new a(str, z10);
    }
}
