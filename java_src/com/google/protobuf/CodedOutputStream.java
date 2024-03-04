package com.google.protobuf;

import com.google.protobuf.n3;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes3.dex */
public abstract class CodedOutputStream extends o {

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f14303c = Logger.getLogger(CodedOutputStream.class.getName());

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f14304d = m3.J();

    /* renamed from: a  reason: collision with root package name */
    r f14305a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f14306b;

    /* loaded from: classes3.dex */
    public static class OutOfSpaceException extends IOException {
        private static final String MESSAGE = "CodedOutputStream was writing to a flat byte array and ran out of space.";
        private static final long serialVersionUID = -6947486886997889499L;

        OutOfSpaceException() {
            super(MESSAGE);
        }

        OutOfSpaceException(String str) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + str);
        }

        OutOfSpaceException(Throwable th2) {
            super(MESSAGE, th2);
        }

        OutOfSpaceException(String str, Throwable th2) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + str, th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static abstract class b extends CodedOutputStream {

        /* renamed from: e  reason: collision with root package name */
        final byte[] f14307e;

        /* renamed from: f  reason: collision with root package name */
        final int f14308f;

        /* renamed from: g  reason: collision with root package name */
        int f14309g;

        /* renamed from: h  reason: collision with root package name */
        int f14310h;

        b(int i9) {
            super();
            if (i9 >= 0) {
                byte[] bArr = new byte[Math.max(i9, 20)];
                this.f14307e = bArr;
                this.f14308f = bArr.length;
                return;
            }
            throw new IllegalArgumentException("bufferSize must be >= 0");
        }

        final void g1(byte b10) {
            byte[] bArr = this.f14307e;
            int i9 = this.f14309g;
            this.f14309g = i9 + 1;
            bArr[i9] = b10;
            this.f14310h++;
        }

        final void h1(int i9) {
            byte[] bArr = this.f14307e;
            int i10 = this.f14309g;
            int i11 = i10 + 1;
            this.f14309g = i11;
            bArr[i10] = (byte) (i9 & 255);
            int i12 = i11 + 1;
            this.f14309g = i12;
            bArr[i11] = (byte) ((i9 >> 8) & 255);
            int i13 = i12 + 1;
            this.f14309g = i13;
            bArr[i12] = (byte) ((i9 >> 16) & 255);
            this.f14309g = i13 + 1;
            bArr[i13] = (byte) ((i9 >> 24) & 255);
            this.f14310h += 4;
        }

        final void i1(long j10) {
            byte[] bArr = this.f14307e;
            int i9 = this.f14309g;
            int i10 = i9 + 1;
            this.f14309g = i10;
            bArr[i9] = (byte) (j10 & 255);
            int i11 = i10 + 1;
            this.f14309g = i11;
            bArr[i10] = (byte) ((j10 >> 8) & 255);
            int i12 = i11 + 1;
            this.f14309g = i12;
            bArr[i11] = (byte) ((j10 >> 16) & 255);
            int i13 = i12 + 1;
            this.f14309g = i13;
            bArr[i12] = (byte) (255 & (j10 >> 24));
            int i14 = i13 + 1;
            this.f14309g = i14;
            bArr[i13] = (byte) (((int) (j10 >> 32)) & 255);
            int i15 = i14 + 1;
            this.f14309g = i15;
            bArr[i14] = (byte) (((int) (j10 >> 40)) & 255);
            int i16 = i15 + 1;
            this.f14309g = i16;
            bArr[i15] = (byte) (((int) (j10 >> 48)) & 255);
            this.f14309g = i16 + 1;
            bArr[i16] = (byte) (((int) (j10 >> 56)) & 255);
            this.f14310h += 8;
        }

        final void j1(int i9) {
            if (i9 >= 0) {
                l1(i9);
            } else {
                m1(i9);
            }
        }

        final void k1(int i9, int i10) {
            l1(WireFormat.c(i9, i10));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final int l0() {
            throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
        }

        final void l1(int i9) {
            if (CodedOutputStream.f14304d) {
                long j10 = this.f14309g;
                while ((i9 & (-128)) != 0) {
                    byte[] bArr = this.f14307e;
                    int i10 = this.f14309g;
                    this.f14309g = i10 + 1;
                    m3.Q(bArr, i10, (byte) ((i9 & 127) | 128));
                    i9 >>>= 7;
                }
                byte[] bArr2 = this.f14307e;
                int i11 = this.f14309g;
                this.f14309g = i11 + 1;
                m3.Q(bArr2, i11, (byte) i9);
                this.f14310h += (int) (this.f14309g - j10);
                return;
            }
            while ((i9 & (-128)) != 0) {
                byte[] bArr3 = this.f14307e;
                int i12 = this.f14309g;
                this.f14309g = i12 + 1;
                bArr3[i12] = (byte) ((i9 & 127) | 128);
                this.f14310h++;
                i9 >>>= 7;
            }
            byte[] bArr4 = this.f14307e;
            int i13 = this.f14309g;
            this.f14309g = i13 + 1;
            bArr4[i13] = (byte) i9;
            this.f14310h++;
        }

        final void m1(long j10) {
            if (CodedOutputStream.f14304d) {
                long j11 = this.f14309g;
                while ((j10 & (-128)) != 0) {
                    byte[] bArr = this.f14307e;
                    int i9 = this.f14309g;
                    this.f14309g = i9 + 1;
                    m3.Q(bArr, i9, (byte) ((((int) j10) & 127) | 128));
                    j10 >>>= 7;
                }
                byte[] bArr2 = this.f14307e;
                int i10 = this.f14309g;
                this.f14309g = i10 + 1;
                m3.Q(bArr2, i10, (byte) j10);
                this.f14310h += (int) (this.f14309g - j11);
                return;
            }
            while ((j10 & (-128)) != 0) {
                byte[] bArr3 = this.f14307e;
                int i11 = this.f14309g;
                this.f14309g = i11 + 1;
                bArr3[i11] = (byte) ((((int) j10) & 127) | 128);
                this.f14310h++;
                j10 >>>= 7;
            }
            byte[] bArr4 = this.f14307e;
            int i12 = this.f14309g;
            this.f14309g = i12 + 1;
            bArr4[i12] = (byte) j10;
            this.f14310h++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class c extends CodedOutputStream {

        /* renamed from: e  reason: collision with root package name */
        private final byte[] f14311e;

        /* renamed from: f  reason: collision with root package name */
        private final int f14312f;

        /* renamed from: g  reason: collision with root package name */
        private final int f14313g;

        /* renamed from: h  reason: collision with root package name */
        private int f14314h;

        c(byte[] bArr, int i9, int i10) {
            super();
            Objects.requireNonNull(bArr, "buffer");
            int i11 = i9 + i10;
            if ((i9 | i10 | (bArr.length - i11)) >= 0) {
                this.f14311e = bArr;
                this.f14312f = i9;
                this.f14314h = i9;
                this.f14313g = i11;
                return;
            }
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i9), Integer.valueOf(i10)));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void A0(long j10) throws IOException {
            try {
                byte[] bArr = this.f14311e;
                int i9 = this.f14314h;
                int i10 = i9 + 1;
                this.f14314h = i10;
                bArr[i9] = (byte) (((int) j10) & 255);
                int i11 = i10 + 1;
                this.f14314h = i11;
                bArr[i10] = (byte) (((int) (j10 >> 8)) & 255);
                int i12 = i11 + 1;
                this.f14314h = i12;
                bArr[i11] = (byte) (((int) (j10 >> 16)) & 255);
                int i13 = i12 + 1;
                this.f14314h = i13;
                bArr[i12] = (byte) (((int) (j10 >> 24)) & 255);
                int i14 = i13 + 1;
                this.f14314h = i14;
                bArr[i13] = (byte) (((int) (j10 >> 32)) & 255);
                int i15 = i14 + 1;
                this.f14314h = i15;
                bArr[i14] = (byte) (((int) (j10 >> 40)) & 255);
                int i16 = i15 + 1;
                this.f14314h = i16;
                bArr[i15] = (byte) (((int) (j10 >> 48)) & 255);
                this.f14314h = i16 + 1;
                bArr[i16] = (byte) (((int) (j10 >> 56)) & 255);
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f14314h), Integer.valueOf(this.f14313g), 1), e10);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void H0(int i9, int i10) throws IOException {
            b1(i9, 0);
            I0(i10);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void I0(int i9) throws IOException {
            if (i9 >= 0) {
                d1(i9);
            } else {
                f1(i9);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void L0(int i9, o1 o1Var) throws IOException {
            b1(i9, 2);
            N0(o1Var);
        }

        @Override // com.google.protobuf.CodedOutputStream
        final void M0(int i9, o1 o1Var, n2 n2Var) throws IOException {
            b1(i9, 2);
            d1(((com.google.protobuf.b) o1Var).getSerializedSize(n2Var));
            n2Var.d(o1Var, this.f14305a);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void N0(o1 o1Var) throws IOException {
            d1(o1Var.getSerializedSize());
            o1Var.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void O0(int i9, o1 o1Var) throws IOException {
            b1(1, 3);
            c1(2, i9);
            L0(3, o1Var);
            b1(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void P0(int i9, ByteString byteString) throws IOException {
            b1(1, 3);
            c1(2, i9);
            r0(3, byteString);
            b1(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void Z0(int i9, String str) throws IOException {
            b1(i9, 2);
            a1(str);
        }

        @Override // com.google.protobuf.o
        public final void a(ByteBuffer byteBuffer) throws IOException {
            g1(byteBuffer);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void a1(String str) throws IOException {
            int i9 = this.f14314h;
            try {
                int Z = CodedOutputStream.Z(str.length() * 3);
                int Z2 = CodedOutputStream.Z(str.length());
                if (Z2 == Z) {
                    int i10 = i9 + Z2;
                    this.f14314h = i10;
                    int i11 = n3.i(str, this.f14311e, i10, l0());
                    this.f14314h = i9;
                    d1((i11 - i9) - Z2);
                    this.f14314h = i11;
                } else {
                    d1(n3.j(str));
                    this.f14314h = n3.i(str, this.f14311e, this.f14314h, l0());
                }
            } catch (n3.d e10) {
                this.f14314h = i9;
                f0(str, e10);
            } catch (IndexOutOfBoundsException e11) {
                throw new OutOfSpaceException(e11);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.o
        public final void b(byte[] bArr, int i9, int i10) throws IOException {
            h1(bArr, i9, i10);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void b1(int i9, int i10) throws IOException {
            d1(WireFormat.c(i9, i10));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void c1(int i9, int i10) throws IOException {
            b1(i9, 0);
            d1(i10);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void d1(int i9) throws IOException {
            if (!CodedOutputStream.f14304d || e.c() || l0() < 5) {
                while ((i9 & (-128)) != 0) {
                    try {
                        byte[] bArr = this.f14311e;
                        int i10 = this.f14314h;
                        this.f14314h = i10 + 1;
                        bArr[i10] = (byte) ((i9 & 127) | 128);
                        i9 >>>= 7;
                    } catch (IndexOutOfBoundsException e10) {
                        throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f14314h), Integer.valueOf(this.f14313g), 1), e10);
                    }
                }
                byte[] bArr2 = this.f14311e;
                int i11 = this.f14314h;
                this.f14314h = i11 + 1;
                bArr2[i11] = (byte) i9;
            } else if ((i9 & (-128)) == 0) {
                byte[] bArr3 = this.f14311e;
                int i12 = this.f14314h;
                this.f14314h = i12 + 1;
                m3.Q(bArr3, i12, (byte) i9);
            } else {
                byte[] bArr4 = this.f14311e;
                int i13 = this.f14314h;
                this.f14314h = i13 + 1;
                m3.Q(bArr4, i13, (byte) (i9 | 128));
                int i14 = i9 >>> 7;
                if ((i14 & (-128)) == 0) {
                    byte[] bArr5 = this.f14311e;
                    int i15 = this.f14314h;
                    this.f14314h = i15 + 1;
                    m3.Q(bArr5, i15, (byte) i14);
                    return;
                }
                byte[] bArr6 = this.f14311e;
                int i16 = this.f14314h;
                this.f14314h = i16 + 1;
                m3.Q(bArr6, i16, (byte) (i14 | 128));
                int i17 = i14 >>> 7;
                if ((i17 & (-128)) == 0) {
                    byte[] bArr7 = this.f14311e;
                    int i18 = this.f14314h;
                    this.f14314h = i18 + 1;
                    m3.Q(bArr7, i18, (byte) i17);
                    return;
                }
                byte[] bArr8 = this.f14311e;
                int i19 = this.f14314h;
                this.f14314h = i19 + 1;
                m3.Q(bArr8, i19, (byte) (i17 | 128));
                int i20 = i17 >>> 7;
                if ((i20 & (-128)) == 0) {
                    byte[] bArr9 = this.f14311e;
                    int i21 = this.f14314h;
                    this.f14314h = i21 + 1;
                    m3.Q(bArr9, i21, (byte) i20);
                    return;
                }
                byte[] bArr10 = this.f14311e;
                int i22 = this.f14314h;
                this.f14314h = i22 + 1;
                m3.Q(bArr10, i22, (byte) (i20 | 128));
                byte[] bArr11 = this.f14311e;
                int i23 = this.f14314h;
                this.f14314h = i23 + 1;
                m3.Q(bArr11, i23, (byte) (i20 >>> 7));
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void e0() {
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void e1(int i9, long j10) throws IOException {
            b1(i9, 0);
            f1(j10);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void f1(long j10) throws IOException {
            if (CodedOutputStream.f14304d && l0() >= 10) {
                while ((j10 & (-128)) != 0) {
                    byte[] bArr = this.f14311e;
                    int i9 = this.f14314h;
                    this.f14314h = i9 + 1;
                    m3.Q(bArr, i9, (byte) ((((int) j10) & 127) | 128));
                    j10 >>>= 7;
                }
                byte[] bArr2 = this.f14311e;
                int i10 = this.f14314h;
                this.f14314h = i10 + 1;
                m3.Q(bArr2, i10, (byte) j10);
                return;
            }
            while ((j10 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f14311e;
                    int i11 = this.f14314h;
                    this.f14314h = i11 + 1;
                    bArr3[i11] = (byte) ((((int) j10) & 127) | 128);
                    j10 >>>= 7;
                } catch (IndexOutOfBoundsException e10) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f14314h), Integer.valueOf(this.f14313g), 1), e10);
                }
            }
            byte[] bArr4 = this.f14311e;
            int i12 = this.f14314h;
            this.f14314h = i12 + 1;
            bArr4[i12] = (byte) j10;
        }

        public final void g1(ByteBuffer byteBuffer) throws IOException {
            int remaining = byteBuffer.remaining();
            try {
                byteBuffer.get(this.f14311e, this.f14314h, remaining);
                this.f14314h += remaining;
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f14314h), Integer.valueOf(this.f14313g), Integer.valueOf(remaining)), e10);
            }
        }

        public final void h1(byte[] bArr, int i9, int i10) throws IOException {
            try {
                System.arraycopy(bArr, i9, this.f14311e, this.f14314h, i10);
                this.f14314h += i10;
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f14314h), Integer.valueOf(this.f14313g), Integer.valueOf(i10)), e10);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final int l0() {
            return this.f14313g - this.f14314h;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void m0(byte b10) throws IOException {
            try {
                byte[] bArr = this.f14311e;
                int i9 = this.f14314h;
                this.f14314h = i9 + 1;
                bArr[i9] = b10;
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f14314h), Integer.valueOf(this.f14313g), 1), e10);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void n0(int i9, boolean z10) throws IOException {
            b1(i9, 0);
            m0(z10 ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void q0(byte[] bArr, int i9, int i10) throws IOException {
            d1(i10);
            h1(bArr, i9, i10);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void r0(int i9, ByteString byteString) throws IOException {
            b1(i9, 2);
            s0(byteString);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void s0(ByteString byteString) throws IOException {
            d1(byteString.size());
            byteString.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void x0(int i9, int i10) throws IOException {
            b1(i9, 5);
            y0(i10);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void y0(int i9) throws IOException {
            try {
                byte[] bArr = this.f14311e;
                int i10 = this.f14314h;
                int i11 = i10 + 1;
                this.f14314h = i11;
                bArr[i10] = (byte) (i9 & 255);
                int i12 = i11 + 1;
                this.f14314h = i12;
                bArr[i11] = (byte) ((i9 >> 8) & 255);
                int i13 = i12 + 1;
                this.f14314h = i13;
                bArr[i12] = (byte) ((i9 >> 16) & 255);
                this.f14314h = i13 + 1;
                bArr[i13] = (byte) ((i9 >> 24) & 255);
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f14314h), Integer.valueOf(this.f14313g), 1), e10);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void z0(int i9, long j10) throws IOException {
            b1(i9, 1);
            A0(j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class d extends b {

        /* renamed from: i  reason: collision with root package name */
        private final OutputStream f14315i;

        d(OutputStream outputStream, int i9) {
            super(i9);
            Objects.requireNonNull(outputStream, "out");
            this.f14315i = outputStream;
        }

        private void n1() throws IOException {
            this.f14315i.write(this.f14307e, 0, this.f14309g);
            this.f14309g = 0;
        }

        private void o1(int i9) throws IOException {
            if (this.f14308f - this.f14309g < i9) {
                n1();
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void A0(long j10) throws IOException {
            o1(8);
            i1(j10);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void H0(int i9, int i10) throws IOException {
            o1(20);
            k1(i9, 0);
            j1(i10);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void I0(int i9) throws IOException {
            if (i9 >= 0) {
                d1(i9);
            } else {
                f1(i9);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void L0(int i9, o1 o1Var) throws IOException {
            b1(i9, 2);
            N0(o1Var);
        }

        @Override // com.google.protobuf.CodedOutputStream
        void M0(int i9, o1 o1Var, n2 n2Var) throws IOException {
            b1(i9, 2);
            r1(o1Var, n2Var);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void N0(o1 o1Var) throws IOException {
            d1(o1Var.getSerializedSize());
            o1Var.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void O0(int i9, o1 o1Var) throws IOException {
            b1(1, 3);
            c1(2, i9);
            L0(3, o1Var);
            b1(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void P0(int i9, ByteString byteString) throws IOException {
            b1(1, 3);
            c1(2, i9);
            r0(3, byteString);
            b1(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void Z0(int i9, String str) throws IOException {
            b1(i9, 2);
            a1(str);
        }

        @Override // com.google.protobuf.o
        public void a(ByteBuffer byteBuffer) throws IOException {
            p1(byteBuffer);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void a1(String str) throws IOException {
            int j10;
            try {
                int length = str.length() * 3;
                int Z = CodedOutputStream.Z(length);
                int i9 = Z + length;
                int i10 = this.f14308f;
                if (i9 > i10) {
                    byte[] bArr = new byte[length];
                    int i11 = n3.i(str, bArr, 0, length);
                    d1(i11);
                    b(bArr, 0, i11);
                    return;
                }
                if (i9 > i10 - this.f14309g) {
                    n1();
                }
                int Z2 = CodedOutputStream.Z(str.length());
                int i12 = this.f14309g;
                try {
                    if (Z2 == Z) {
                        int i13 = i12 + Z2;
                        this.f14309g = i13;
                        int i14 = n3.i(str, this.f14307e, i13, this.f14308f - i13);
                        this.f14309g = i12;
                        j10 = (i14 - i12) - Z2;
                        l1(j10);
                        this.f14309g = i14;
                    } else {
                        j10 = n3.j(str);
                        l1(j10);
                        this.f14309g = n3.i(str, this.f14307e, this.f14309g, j10);
                    }
                    this.f14310h += j10;
                } catch (n3.d e10) {
                    this.f14310h -= this.f14309g - i12;
                    this.f14309g = i12;
                    throw e10;
                } catch (ArrayIndexOutOfBoundsException e11) {
                    throw new OutOfSpaceException(e11);
                }
            } catch (n3.d e12) {
                f0(str, e12);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.o
        public void b(byte[] bArr, int i9, int i10) throws IOException {
            q1(bArr, i9, i10);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void b1(int i9, int i10) throws IOException {
            d1(WireFormat.c(i9, i10));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void c1(int i9, int i10) throws IOException {
            o1(20);
            k1(i9, 0);
            l1(i10);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void d1(int i9) throws IOException {
            o1(5);
            l1(i9);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void e0() throws IOException {
            if (this.f14309g > 0) {
                n1();
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void e1(int i9, long j10) throws IOException {
            o1(20);
            k1(i9, 0);
            m1(j10);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void f1(long j10) throws IOException {
            o1(10);
            m1(j10);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void m0(byte b10) throws IOException {
            if (this.f14309g == this.f14308f) {
                n1();
            }
            g1(b10);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void n0(int i9, boolean z10) throws IOException {
            o1(11);
            k1(i9, 0);
            g1(z10 ? (byte) 1 : (byte) 0);
        }

        public void p1(ByteBuffer byteBuffer) throws IOException {
            int remaining = byteBuffer.remaining();
            int i9 = this.f14308f;
            int i10 = this.f14309g;
            if (i9 - i10 >= remaining) {
                byteBuffer.get(this.f14307e, i10, remaining);
                this.f14309g += remaining;
                this.f14310h += remaining;
                return;
            }
            int i11 = i9 - i10;
            byteBuffer.get(this.f14307e, i10, i11);
            int i12 = remaining - i11;
            this.f14309g = this.f14308f;
            this.f14310h += i11;
            n1();
            while (true) {
                int i13 = this.f14308f;
                if (i12 > i13) {
                    byteBuffer.get(this.f14307e, 0, i13);
                    this.f14315i.write(this.f14307e, 0, this.f14308f);
                    int i14 = this.f14308f;
                    i12 -= i14;
                    this.f14310h += i14;
                } else {
                    byteBuffer.get(this.f14307e, 0, i12);
                    this.f14309g = i12;
                    this.f14310h += i12;
                    return;
                }
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void q0(byte[] bArr, int i9, int i10) throws IOException {
            d1(i10);
            q1(bArr, i9, i10);
        }

        public void q1(byte[] bArr, int i9, int i10) throws IOException {
            int i11 = this.f14308f;
            int i12 = this.f14309g;
            if (i11 - i12 >= i10) {
                System.arraycopy(bArr, i9, this.f14307e, i12, i10);
                this.f14309g += i10;
                this.f14310h += i10;
                return;
            }
            int i13 = i11 - i12;
            System.arraycopy(bArr, i9, this.f14307e, i12, i13);
            int i14 = i9 + i13;
            int i15 = i10 - i13;
            this.f14309g = this.f14308f;
            this.f14310h += i13;
            n1();
            if (i15 <= this.f14308f) {
                System.arraycopy(bArr, i14, this.f14307e, 0, i15);
                this.f14309g = i15;
            } else {
                this.f14315i.write(bArr, i14, i15);
            }
            this.f14310h += i15;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void r0(int i9, ByteString byteString) throws IOException {
            b1(i9, 2);
            s0(byteString);
        }

        void r1(o1 o1Var, n2 n2Var) throws IOException {
            d1(((com.google.protobuf.b) o1Var).getSerializedSize(n2Var));
            n2Var.d(o1Var, this.f14305a);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void s0(ByteString byteString) throws IOException {
            d1(byteString.size());
            byteString.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void x0(int i9, int i10) throws IOException {
            o1(14);
            k1(i9, 5);
            h1(i10);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void y0(int i9) throws IOException {
            o1(4);
            h1(i9);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void z0(int i9, long j10) throws IOException {
            o1(18);
            k1(i9, 1);
            i1(j10);
        }
    }

    public static int A(long j10) {
        return b0(j10);
    }

    public static int B(int i9, x0 x0Var) {
        return (X(1) * 2) + Y(2, i9) + C(3, x0Var);
    }

    public static int C(int i9, x0 x0Var) {
        return X(i9) + D(x0Var);
    }

    public static int D(x0 x0Var) {
        return E(x0Var.c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int E(int i9) {
        return Z(i9) + i9;
    }

    public static int F(int i9, o1 o1Var) {
        return (X(1) * 2) + Y(2, i9) + G(3, o1Var);
    }

    public static int G(int i9, o1 o1Var) {
        return X(i9) + I(o1Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int H(int i9, o1 o1Var, n2 n2Var) {
        return X(i9) + J(o1Var, n2Var);
    }

    public static int I(o1 o1Var) {
        return E(o1Var.getSerializedSize());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int J(o1 o1Var, n2 n2Var) {
        return E(((com.google.protobuf.b) o1Var).getSerializedSize(n2Var));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int K(int i9) {
        if (i9 > 4096) {
            return 4096;
        }
        return i9;
    }

    public static int L(int i9, ByteString byteString) {
        return (X(1) * 2) + Y(2, i9) + h(3, byteString);
    }

    @Deprecated
    public static int M(int i9) {
        return Z(i9);
    }

    public static int N(int i9, int i10) {
        return X(i9) + O(i10);
    }

    public static int O(int i9) {
        return 4;
    }

    public static int P(int i9, long j10) {
        return X(i9) + Q(j10);
    }

    public static int Q(long j10) {
        return 8;
    }

    public static int R(int i9, int i10) {
        return X(i9) + S(i10);
    }

    public static int S(int i9) {
        return Z(c0(i9));
    }

    public static int T(int i9, long j10) {
        return X(i9) + U(j10);
    }

    public static int U(long j10) {
        return b0(d0(j10));
    }

    public static int V(int i9, String str) {
        return X(i9) + W(str);
    }

    public static int W(String str) {
        int length;
        try {
            length = n3.j(str);
        } catch (n3.d unused) {
            length = str.getBytes(u0.f15284b).length;
        }
        return E(length);
    }

    public static int X(int i9) {
        return Z(WireFormat.c(i9, 0));
    }

    public static int Y(int i9, int i10) {
        return X(i9) + Z(i10);
    }

    public static int Z(int i9) {
        if ((i9 & (-128)) == 0) {
            return 1;
        }
        if ((i9 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i9) == 0) {
            return 3;
        }
        return (i9 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int a0(int i9, long j10) {
        return X(i9) + b0(j10);
    }

    public static int b0(long j10) {
        int i9;
        if (((-128) & j10) == 0) {
            return 1;
        }
        if (j10 < 0) {
            return 10;
        }
        if (((-34359738368L) & j10) != 0) {
            i9 = 6;
            j10 >>>= 28;
        } else {
            i9 = 2;
        }
        if (((-2097152) & j10) != 0) {
            i9 += 2;
            j10 >>>= 14;
        }
        return (j10 & (-16384)) != 0 ? i9 + 1 : i9;
    }

    public static int c0(int i9) {
        return (i9 >> 31) ^ (i9 << 1);
    }

    public static long d0(long j10) {
        return (j10 >> 63) ^ (j10 << 1);
    }

    public static int e(int i9, boolean z10) {
        return X(i9) + f(z10);
    }

    public static int f(boolean z10) {
        return 1;
    }

    public static int g(byte[] bArr) {
        return E(bArr.length);
    }

    public static int h(int i9, ByteString byteString) {
        return X(i9) + i(byteString);
    }

    public static CodedOutputStream h0(OutputStream outputStream) {
        return i0(outputStream, 4096);
    }

    public static int i(ByteString byteString) {
        return E(byteString.size());
    }

    public static CodedOutputStream i0(OutputStream outputStream, int i9) {
        return new d(outputStream, i9);
    }

    public static int j(int i9, double d10) {
        return X(i9) + k(d10);
    }

    public static CodedOutputStream j0(byte[] bArr) {
        return k0(bArr, 0, bArr.length);
    }

    public static int k(double d10) {
        return 8;
    }

    public static CodedOutputStream k0(byte[] bArr, int i9, int i10) {
        return new c(bArr, i9, i10);
    }

    public static int l(int i9, int i10) {
        return X(i9) + m(i10);
    }

    public static int m(int i9) {
        return y(i9);
    }

    public static int n(int i9, int i10) {
        return X(i9) + o(i10);
    }

    public static int o(int i9) {
        return 4;
    }

    public static int p(int i9, long j10) {
        return X(i9) + q(j10);
    }

    public static int q(long j10) {
        return 8;
    }

    public static int r(int i9, float f10) {
        return X(i9) + s(f10);
    }

    public static int s(float f10) {
        return 4;
    }

    @Deprecated
    public static int t(int i9, o1 o1Var) {
        return (X(i9) * 2) + v(o1Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public static int u(int i9, o1 o1Var, n2 n2Var) {
        return (X(i9) * 2) + w(o1Var, n2Var);
    }

    @Deprecated
    public static int v(o1 o1Var) {
        return o1Var.getSerializedSize();
    }

    @Deprecated
    static int w(o1 o1Var, n2 n2Var) {
        return ((com.google.protobuf.b) o1Var).getSerializedSize(n2Var);
    }

    public static int x(int i9, int i10) {
        return X(i9) + y(i10);
    }

    public static int y(int i9) {
        if (i9 >= 0) {
            return Z(i9);
        }
        return 10;
    }

    public static int z(int i9, long j10) {
        return X(i9) + A(j10);
    }

    public abstract void A0(long j10) throws IOException;

    public final void B0(int i9, float f10) throws IOException {
        x0(i9, Float.floatToRawIntBits(f10));
    }

    public final void C0(float f10) throws IOException {
        y0(Float.floatToRawIntBits(f10));
    }

    @Deprecated
    public final void D0(int i9, o1 o1Var) throws IOException {
        b1(i9, 3);
        F0(o1Var);
        b1(i9, 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public final void E0(int i9, o1 o1Var, n2 n2Var) throws IOException {
        b1(i9, 3);
        G0(o1Var, n2Var);
        b1(i9, 4);
    }

    @Deprecated
    public final void F0(o1 o1Var) throws IOException {
        o1Var.writeTo(this);
    }

    @Deprecated
    final void G0(o1 o1Var, n2 n2Var) throws IOException {
        n2Var.d(o1Var, this.f14305a);
    }

    public abstract void H0(int i9, int i10) throws IOException;

    public abstract void I0(int i9) throws IOException;

    public final void J0(int i9, long j10) throws IOException {
        e1(i9, j10);
    }

    public final void K0(long j10) throws IOException {
        f1(j10);
    }

    public abstract void L0(int i9, o1 o1Var) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void M0(int i9, o1 o1Var, n2 n2Var) throws IOException;

    public abstract void N0(o1 o1Var) throws IOException;

    public abstract void O0(int i9, o1 o1Var) throws IOException;

    public abstract void P0(int i9, ByteString byteString) throws IOException;

    @Deprecated
    public final void Q0(int i9) throws IOException {
        d1(i9);
    }

    public final void R0(int i9, int i10) throws IOException {
        x0(i9, i10);
    }

    public final void S0(int i9) throws IOException {
        y0(i9);
    }

    public final void T0(int i9, long j10) throws IOException {
        z0(i9, j10);
    }

    public final void U0(long j10) throws IOException {
        A0(j10);
    }

    public final void V0(int i9, int i10) throws IOException {
        c1(i9, c0(i10));
    }

    public final void W0(int i9) throws IOException {
        d1(c0(i9));
    }

    public final void X0(int i9, long j10) throws IOException {
        e1(i9, d0(j10));
    }

    public final void Y0(long j10) throws IOException {
        f1(d0(j10));
    }

    public abstract void Z0(int i9, String str) throws IOException;

    public abstract void a1(String str) throws IOException;

    @Override // com.google.protobuf.o
    public abstract void b(byte[] bArr, int i9, int i10) throws IOException;

    public abstract void b1(int i9, int i10) throws IOException;

    public abstract void c1(int i9, int i10) throws IOException;

    public final void d() {
        if (l0() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public abstract void d1(int i9) throws IOException;

    public abstract void e0() throws IOException;

    public abstract void e1(int i9, long j10) throws IOException;

    final void f0(String str, n3.d dVar) throws IOException {
        f14303c.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) dVar);
        byte[] bytes = str.getBytes(u0.f15284b);
        try {
            d1(bytes.length);
            b(bytes, 0, bytes.length);
        } catch (OutOfSpaceException e10) {
            throw e10;
        } catch (IndexOutOfBoundsException e11) {
            throw new OutOfSpaceException(e11);
        }
    }

    public abstract void f1(long j10) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g0() {
        return this.f14306b;
    }

    public abstract int l0();

    public abstract void m0(byte b10) throws IOException;

    public abstract void n0(int i9, boolean z10) throws IOException;

    public final void o0(boolean z10) throws IOException {
        m0(z10 ? (byte) 1 : (byte) 0);
    }

    public final void p0(byte[] bArr) throws IOException {
        q0(bArr, 0, bArr.length);
    }

    abstract void q0(byte[] bArr, int i9, int i10) throws IOException;

    public abstract void r0(int i9, ByteString byteString) throws IOException;

    public abstract void s0(ByteString byteString) throws IOException;

    public final void t0(int i9, double d10) throws IOException {
        z0(i9, Double.doubleToRawLongBits(d10));
    }

    public final void u0(double d10) throws IOException {
        A0(Double.doubleToRawLongBits(d10));
    }

    public final void v0(int i9, int i10) throws IOException {
        H0(i9, i10);
    }

    public final void w0(int i9) throws IOException {
        I0(i9);
    }

    public abstract void x0(int i9, int i10) throws IOException;

    public abstract void y0(int i9) throws IOException;

    public abstract void z0(int i9, long j10) throws IOException;

    private CodedOutputStream() {
    }
}
