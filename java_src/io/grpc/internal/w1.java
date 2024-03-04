package io.grpc.internal;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.InvalidMarkException;
import java.nio.charset.Charset;
import kotlin.UByte;
/* loaded from: classes5.dex */
public final class w1 {

    /* renamed from: a  reason: collision with root package name */
    private static final v1 f43105a = new c(new byte[0]);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends p0 {
        a(v1 v1Var) {
            super(v1Var);
        }

        @Override // io.grpc.internal.v1, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }
    }

    /* loaded from: classes5.dex */
    private static class c extends io.grpc.internal.c {

        /* renamed from: a  reason: collision with root package name */
        int f43107a;

        /* renamed from: b  reason: collision with root package name */
        final int f43108b;

        /* renamed from: c  reason: collision with root package name */
        final byte[] f43109c;

        /* renamed from: d  reason: collision with root package name */
        int f43110d;

        c(byte[] bArr) {
            this(bArr, 0, bArr.length);
        }

        @Override // io.grpc.internal.v1
        public void a1(byte[] bArr, int i9, int i10) {
            System.arraycopy(this.f43109c, this.f43107a, bArr, i9, i10);
            this.f43107a += i10;
        }

        @Override // io.grpc.internal.v1
        /* renamed from: b */
        public c G(int i9) {
            a(i9);
            int i10 = this.f43107a;
            this.f43107a = i10 + i9;
            return new c(this.f43109c, i10, i9);
        }

        @Override // io.grpc.internal.c, io.grpc.internal.v1
        public void k1() {
            this.f43110d = this.f43107a;
        }

        @Override // io.grpc.internal.c, io.grpc.internal.v1
        public boolean markSupported() {
            return true;
        }

        @Override // io.grpc.internal.v1
        public int n() {
            return this.f43108b - this.f43107a;
        }

        @Override // io.grpc.internal.v1
        public int readUnsignedByte() {
            a(1);
            byte[] bArr = this.f43109c;
            int i9 = this.f43107a;
            this.f43107a = i9 + 1;
            return bArr[i9] & UByte.MAX_VALUE;
        }

        @Override // io.grpc.internal.c, io.grpc.internal.v1
        public void reset() {
            int i9 = this.f43110d;
            if (i9 != -1) {
                this.f43107a = i9;
                return;
            }
            throw new InvalidMarkException();
        }

        @Override // io.grpc.internal.v1
        public void skipBytes(int i9) {
            a(i9);
            this.f43107a += i9;
        }

        @Override // io.grpc.internal.v1
        public void v0(ByteBuffer byteBuffer) {
            com.google.common.base.o.t(byteBuffer, "dest");
            int remaining = byteBuffer.remaining();
            a(remaining);
            byteBuffer.put(this.f43109c, this.f43107a, remaining);
            this.f43107a += remaining;
        }

        @Override // io.grpc.internal.v1
        public void x1(OutputStream outputStream, int i9) throws IOException {
            a(i9);
            outputStream.write(this.f43109c, this.f43107a, i9);
            this.f43107a += i9;
        }

        c(byte[] bArr, int i9, int i10) {
            this.f43110d = -1;
            com.google.common.base.o.e(i9 >= 0, "offset must be >= 0");
            com.google.common.base.o.e(i10 >= 0, "length must be >= 0");
            int i11 = i10 + i9;
            com.google.common.base.o.e(i11 <= bArr.length, "offset + length exceeds array boundary");
            this.f43109c = (byte[]) com.google.common.base.o.t(bArr, "bytes");
            this.f43107a = i9;
            this.f43108b = i11;
        }
    }

    public static v1 a() {
        return f43105a;
    }

    public static v1 b(v1 v1Var) {
        return new a(v1Var);
    }

    public static InputStream c(v1 v1Var, boolean z10) {
        if (!z10) {
            v1Var = b(v1Var);
        }
        return new b(v1Var);
    }

    public static byte[] d(v1 v1Var) {
        com.google.common.base.o.t(v1Var, "buffer");
        int n9 = v1Var.n();
        byte[] bArr = new byte[n9];
        v1Var.a1(bArr, 0, n9);
        return bArr;
    }

    public static String e(v1 v1Var, Charset charset) {
        com.google.common.base.o.t(charset, "charset");
        return new String(d(v1Var), charset);
    }

    public static v1 f(byte[] bArr, int i9, int i10) {
        return new c(bArr, i9, i10);
    }

    /* loaded from: classes5.dex */
    private static final class b extends InputStream implements io.grpc.m0 {

        /* renamed from: a  reason: collision with root package name */
        private v1 f43106a;

        public b(v1 v1Var) {
            this.f43106a = (v1) com.google.common.base.o.t(v1Var, "buffer");
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.f43106a.n();
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f43106a.close();
        }

        @Override // java.io.InputStream
        public void mark(int i9) {
            this.f43106a.k1();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return this.f43106a.markSupported();
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.f43106a.n() == 0) {
                return -1;
            }
            return this.f43106a.readUnsignedByte();
        }

        @Override // java.io.InputStream
        public void reset() throws IOException {
            this.f43106a.reset();
        }

        @Override // java.io.InputStream
        public long skip(long j10) throws IOException {
            int min = (int) Math.min(this.f43106a.n(), j10);
            this.f43106a.skipBytes(min);
            return min;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i9, int i10) throws IOException {
            if (this.f43106a.n() == 0) {
                return -1;
            }
            int min = Math.min(this.f43106a.n(), i10);
            this.f43106a.a1(bArr, i9, min);
            return min;
        }
    }
}
