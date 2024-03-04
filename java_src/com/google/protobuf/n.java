package com.google.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
/* loaded from: classes3.dex */
final class n {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<SoftReference<byte[]>> f15108a = new ThreadLocal<>();

    /* renamed from: b  reason: collision with root package name */
    private static final Class<?> f15109b;

    /* renamed from: c  reason: collision with root package name */
    private static final long f15110c;

    static {
        Class<?> e10 = e("java.io.FileOutputStream");
        f15109b = e10;
        f15110c = b(e10);
    }

    private static byte[] a() {
        SoftReference<byte[]> softReference = f15108a.get();
        if (softReference == null) {
            return null;
        }
        return softReference.get();
    }

    private static long b(Class<?> cls) {
        if (cls != null) {
            try {
                if (m3.J()) {
                    return m3.M(cls.getDeclaredField("channel"));
                }
                return -1L;
            } catch (Throwable unused) {
                return -1L;
            }
        }
        return -1L;
    }

    private static byte[] c(int i9) {
        int max = Math.max(i9, 1024);
        byte[] a10 = a();
        if (a10 == null || d(max, a10.length)) {
            a10 = new byte[max];
            if (max <= 16384) {
                f(a10);
            }
        }
        return a10;
    }

    private static boolean d(int i9, int i10) {
        return i10 < i9 && ((float) i10) < ((float) i9) * 0.5f;
    }

    private static Class<?> e(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    private static void f(byte[] bArr) {
        f15108a.set(new SoftReference<>(bArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g(ByteBuffer byteBuffer, OutputStream outputStream) throws IOException {
        int position = byteBuffer.position();
        try {
            if (byteBuffer.hasArray()) {
                outputStream.write(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            } else if (!h(byteBuffer, outputStream)) {
                byte[] c10 = c(byteBuffer.remaining());
                while (byteBuffer.hasRemaining()) {
                    int min = Math.min(byteBuffer.remaining(), c10.length);
                    byteBuffer.get(c10, 0, min);
                    outputStream.write(c10, 0, min);
                }
            }
        } finally {
            byteBuffer.position(position);
        }
    }

    private static boolean h(ByteBuffer byteBuffer, OutputStream outputStream) throws IOException {
        long j10 = f15110c;
        if (j10 < 0 || !f15109b.isInstance(outputStream)) {
            return false;
        }
        WritableByteChannel writableByteChannel = null;
        try {
            writableByteChannel = (WritableByteChannel) m3.G(outputStream, j10);
        } catch (ClassCastException unused) {
        }
        if (writableByteChannel != null) {
            writableByteChannel.write(byteBuffer);
            return true;
        }
        return false;
    }
}
