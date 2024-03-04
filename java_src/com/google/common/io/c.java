package com.google.common.io;

import com.google.common.base.o;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Queue;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final OutputStream f13574a = new a();

    /* loaded from: classes2.dex */
    class a extends OutputStream {
        a() {
        }

        public String toString() {
            return "ByteStreams.nullOutputStream()";
        }

        @Override // java.io.OutputStream
        public void write(int i9) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            o.s(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i9, int i10) {
            o.s(bArr);
            o.y(i9, i10 + i9, bArr.length);
        }
    }

    private static byte[] a(Queue<byte[]> queue, int i9) {
        if (queue.isEmpty()) {
            return new byte[0];
        }
        byte[] remove = queue.remove();
        if (remove.length == i9) {
            return remove;
        }
        int length = i9 - remove.length;
        byte[] copyOf = Arrays.copyOf(remove, i9);
        while (length > 0) {
            byte[] remove2 = queue.remove();
            int min = Math.min(length, remove2.length);
            System.arraycopy(remove2, 0, copyOf, i9 - length, min);
            length -= min;
        }
        return copyOf;
    }

    public static long b(InputStream inputStream, OutputStream outputStream) throws IOException {
        o.s(inputStream);
        o.s(outputStream);
        byte[] c10 = c();
        long j10 = 0;
        while (true) {
            int read = inputStream.read(c10);
            if (read == -1) {
                return j10;
            }
            outputStream.write(c10, 0, read);
            j10 += read;
        }
    }

    static byte[] c() {
        return new byte[8192];
    }

    public static long d(InputStream inputStream) throws IOException {
        byte[] c10 = c();
        long j10 = 0;
        while (true) {
            long read = inputStream.read(c10);
            if (read == -1) {
                return j10;
            }
            j10 += read;
        }
    }

    public static byte[] e(InputStream inputStream) throws IOException {
        o.s(inputStream);
        return f(inputStream, new ArrayDeque(20), 0);
    }

    private static byte[] f(InputStream inputStream, Queue<byte[]> queue, int i9) throws IOException {
        int min = Math.min(8192, Math.max(128, Integer.highestOneBit(i9) * 2));
        while (i9 < 2147483639) {
            int min2 = Math.min(min, 2147483639 - i9);
            byte[] bArr = new byte[min2];
            queue.add(bArr);
            int i10 = 0;
            while (i10 < min2) {
                int read = inputStream.read(bArr, i10, min2 - i10);
                if (read == -1) {
                    return a(queue, i9);
                }
                i10 += read;
                i9 += read;
            }
            min = com.google.common.math.c.f(min, min < 4096 ? 4 : 2);
        }
        if (inputStream.read() == -1) {
            return a(queue, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }
}
