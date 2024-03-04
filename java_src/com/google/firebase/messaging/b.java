package com.google.firebase.messaging;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Queue;
/* loaded from: classes2.dex */
final class b {
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

    public static InputStream b(InputStream inputStream, long j10) {
        return new a(inputStream, j10);
    }

    private static int c(long j10) {
        if (j10 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j10 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j10;
    }

    public static byte[] d(InputStream inputStream) throws IOException {
        return e(inputStream, new ArrayDeque(20), 0);
    }

    private static byte[] e(InputStream inputStream, Queue<byte[]> queue, int i9) throws IOException {
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
            min = c(min * (min < 4096 ? 4 : 2));
        }
        if (inputStream.read() == -1) {
            return a(queue, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }

    /* loaded from: classes2.dex */
    private static final class a extends FilterInputStream {

        /* renamed from: a  reason: collision with root package name */
        private long f14035a;

        /* renamed from: b  reason: collision with root package name */
        private long f14036b;

        a(InputStream inputStream, long j10) {
            super(inputStream);
            this.f14036b = -1L;
            this.f14035a = j10;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int available() throws IOException {
            return (int) Math.min(((FilterInputStream) this).in.available(), this.f14035a);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public synchronized void mark(int i9) {
            ((FilterInputStream) this).in.mark(i9);
            this.f14036b = this.f14035a;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            if (this.f14035a == 0) {
                return -1;
            }
            int read = ((FilterInputStream) this).in.read();
            if (read != -1) {
                this.f14035a--;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public synchronized void reset() throws IOException {
            if (((FilterInputStream) this).in.markSupported()) {
                if (this.f14036b != -1) {
                    ((FilterInputStream) this).in.reset();
                    this.f14035a = this.f14036b;
                } else {
                    throw new IOException("Mark not set");
                }
            } else {
                throw new IOException("Mark not supported");
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j10) throws IOException {
            long skip = ((FilterInputStream) this).in.skip(Math.min(j10, this.f14035a));
            this.f14035a -= skip;
            return skip;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i9, int i10) throws IOException {
            long j10 = this.f14035a;
            if (j10 == 0) {
                return -1;
            }
            int read = ((FilterInputStream) this).in.read(bArr, i9, (int) Math.min(i10, j10));
            if (read != -1) {
                this.f14035a -= read;
            }
            return read;
        }
    }
}
