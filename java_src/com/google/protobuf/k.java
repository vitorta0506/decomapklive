package com.google.protobuf;

import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.WireFormat;
import com.google.protobuf.f1;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes3.dex */
abstract class k implements k2 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15024a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f15024a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15024a[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15024a[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15024a[WireFormat.FieldType.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15024a[WireFormat.FieldType.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15024a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15024a[WireFormat.FieldType.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15024a[WireFormat.FieldType.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15024a[WireFormat.FieldType.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f15024a[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f15024a[WireFormat.FieldType.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f15024a[WireFormat.FieldType.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f15024a[WireFormat.FieldType.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f15024a[WireFormat.FieldType.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f15024a[WireFormat.FieldType.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f15024a[WireFormat.FieldType.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f15024a[WireFormat.FieldType.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    /* loaded from: classes3.dex */
    private static final class b extends k {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f15025a;

        /* renamed from: b  reason: collision with root package name */
        private final byte[] f15026b;

        /* renamed from: c  reason: collision with root package name */
        private int f15027c;

        /* renamed from: d  reason: collision with root package name */
        private final int f15028d;

        /* renamed from: e  reason: collision with root package name */
        private int f15029e;

        /* renamed from: f  reason: collision with root package name */
        private int f15030f;

        /* renamed from: g  reason: collision with root package name */
        private int f15031g;

        public b(ByteBuffer byteBuffer, boolean z10) {
            super(null);
            this.f15025a = z10;
            this.f15026b = byteBuffer.array();
            int arrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
            this.f15027c = arrayOffset;
            this.f15028d = arrayOffset;
            this.f15029e = byteBuffer.arrayOffset() + byteBuffer.limit();
        }

        private boolean R() {
            return this.f15027c == this.f15029e;
        }

        private byte S() throws IOException {
            int i9 = this.f15027c;
            if (i9 != this.f15029e) {
                byte[] bArr = this.f15026b;
                this.f15027c = i9 + 1;
                return bArr[i9];
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        private Object T(WireFormat.FieldType fieldType, Class<?> cls, f0 f0Var) throws IOException {
            switch (a.f15024a[fieldType.ordinal()]) {
                case 1:
                    return Boolean.valueOf(e());
                case 2:
                    return r();
                case 3:
                    return Double.valueOf(readDouble());
                case 4:
                    return Integer.valueOf(l());
                case 5:
                    return Integer.valueOf(y());
                case 6:
                    return Long.valueOf(a());
                case 7:
                    return Float.valueOf(readFloat());
                case 8:
                    return Integer.valueOf(s());
                case 9:
                    return Long.valueOf(O());
                case 10:
                    return x(cls, f0Var);
                case 11:
                    return Integer.valueOf(L());
                case 12:
                    return Long.valueOf(g());
                case 13:
                    return Integer.valueOf(m());
                case 14:
                    return Long.valueOf(D());
                case 15:
                    return P();
                case 16:
                    return Integer.valueOf(i());
                case 17:
                    return Long.valueOf(v());
                default:
                    throw new RuntimeException("unsupported field type.");
            }
        }

        private <T> T U(n2<T> n2Var, f0 f0Var) throws IOException {
            int i9 = this.f15031g;
            this.f15031g = WireFormat.c(WireFormat.a(this.f15030f), 4);
            try {
                T h10 = n2Var.h();
                n2Var.i(h10, this, f0Var);
                n2Var.e(h10);
                if (this.f15030f == this.f15031g) {
                    return h10;
                }
                throw InvalidProtocolBufferException.parseFailure();
            } finally {
                this.f15031g = i9;
            }
        }

        private int V() throws IOException {
            f0(4);
            return W();
        }

        private int W() {
            int i9 = this.f15027c;
            byte[] bArr = this.f15026b;
            this.f15027c = i9 + 4;
            return ((bArr[i9 + 3] & UByte.MAX_VALUE) << 24) | (bArr[i9] & UByte.MAX_VALUE) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 16);
        }

        private long X() throws IOException {
            f0(8);
            return Y();
        }

        private long Y() {
            int i9 = this.f15027c;
            byte[] bArr = this.f15026b;
            this.f15027c = i9 + 8;
            return ((bArr[i9 + 7] & 255) << 56) | (bArr[i9] & 255) | ((bArr[i9 + 1] & 255) << 8) | ((bArr[i9 + 2] & 255) << 16) | ((bArr[i9 + 3] & 255) << 24) | ((bArr[i9 + 4] & 255) << 32) | ((bArr[i9 + 5] & 255) << 40) | ((bArr[i9 + 6] & 255) << 48);
        }

        private <T> T Z(n2<T> n2Var, f0 f0Var) throws IOException {
            int c02 = c0();
            f0(c02);
            int i9 = this.f15029e;
            int i10 = this.f15027c + c02;
            this.f15029e = i10;
            try {
                T h10 = n2Var.h();
                n2Var.i(h10, this, f0Var);
                n2Var.e(h10);
                if (this.f15027c == i10) {
                    return h10;
                }
                throw InvalidProtocolBufferException.parseFailure();
            } finally {
                this.f15029e = i9;
            }
        }

        private int c0() throws IOException {
            int i9;
            int i10 = this.f15027c;
            int i11 = this.f15029e;
            if (i11 != i10) {
                byte[] bArr = this.f15026b;
                int i12 = i10 + 1;
                byte b10 = bArr[i10];
                if (b10 >= 0) {
                    this.f15027c = i12;
                    return b10;
                } else if (i11 - i12 < 9) {
                    return (int) e0();
                } else {
                    int i13 = i12 + 1;
                    int i14 = b10 ^ (bArr[i12] << 7);
                    if (i14 < 0) {
                        i9 = i14 ^ (-128);
                    } else {
                        int i15 = i13 + 1;
                        int i16 = i14 ^ (bArr[i13] << 14);
                        if (i16 >= 0) {
                            i9 = i16 ^ 16256;
                        } else {
                            i13 = i15 + 1;
                            int i17 = i16 ^ (bArr[i15] << 21);
                            if (i17 < 0) {
                                i9 = i17 ^ (-2080896);
                            } else {
                                i15 = i13 + 1;
                                byte b11 = bArr[i13];
                                i9 = (i17 ^ (b11 << 28)) ^ 266354560;
                                if (b11 < 0) {
                                    i13 = i15 + 1;
                                    if (bArr[i15] < 0) {
                                        i15 = i13 + 1;
                                        if (bArr[i13] < 0) {
                                            i13 = i15 + 1;
                                            if (bArr[i15] < 0) {
                                                i15 = i13 + 1;
                                                if (bArr[i13] < 0) {
                                                    i13 = i15 + 1;
                                                    if (bArr[i15] < 0) {
                                                        throw InvalidProtocolBufferException.malformedVarint();
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        i13 = i15;
                    }
                    this.f15027c = i13;
                    return i9;
                }
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        private long e0() throws IOException {
            long j10 = 0;
            for (int i9 = 0; i9 < 64; i9 += 7) {
                byte S = S();
                j10 |= (S & ByteCompanionObject.MAX_VALUE) << i9;
                if ((S & ByteCompanionObject.MIN_VALUE) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void f0(int i9) throws IOException {
            if (i9 < 0 || i9 > this.f15029e - this.f15027c) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        private void g0(int i9) throws IOException {
            if (this.f15027c != i9) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        private void h0(int i9) throws IOException {
            if (WireFormat.b(this.f15030f) != i9) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        private void i0(int i9) throws IOException {
            f0(i9);
            this.f15027c += i9;
        }

        private void j0() throws IOException {
            int i9 = this.f15031g;
            this.f15031g = WireFormat.c(WireFormat.a(this.f15030f), 4);
            while (F() != Integer.MAX_VALUE && K()) {
            }
            if (this.f15030f == this.f15031g) {
                this.f15031g = i9;
                return;
            }
            throw InvalidProtocolBufferException.parseFailure();
        }

        private void k0() throws IOException {
            int i9 = this.f15029e;
            int i10 = this.f15027c;
            if (i9 - i10 >= 10) {
                byte[] bArr = this.f15026b;
                int i11 = 0;
                while (i11 < 10) {
                    int i12 = i10 + 1;
                    if (bArr[i10] >= 0) {
                        this.f15027c = i12;
                        return;
                    } else {
                        i11++;
                        i10 = i12;
                    }
                }
            }
            l0();
        }

        private void l0() throws IOException {
            for (int i9 = 0; i9 < 10; i9++) {
                if (S() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void m0(int i9) throws IOException {
            f0(i9);
            if ((i9 & 3) != 0) {
                throw InvalidProtocolBufferException.parseFailure();
            }
        }

        private void n0(int i9) throws IOException {
            f0(i9);
            if ((i9 & 7) != 0) {
                throw InvalidProtocolBufferException.parseFailure();
            }
        }

        @Override // com.google.protobuf.k2
        public void A(List<Long> list) throws IOException {
            int i9;
            int i10;
            if (list instanceof c1) {
                c1 c1Var = (c1) list;
                int b10 = WireFormat.b(this.f15030f);
                if (b10 == 1) {
                    do {
                        c1Var.I0(g());
                        if (R()) {
                            return;
                        }
                        i10 = this.f15027c;
                    } while (c0() == this.f15030f);
                    this.f15027c = i10;
                    return;
                } else if (b10 == 2) {
                    int c02 = c0();
                    n0(c02);
                    int i11 = this.f15027c + c02;
                    while (this.f15027c < i11) {
                        c1Var.I0(Y());
                    }
                    return;
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
            int b11 = WireFormat.b(this.f15030f);
            if (b11 == 1) {
                do {
                    list.add(Long.valueOf(g()));
                    if (R()) {
                        return;
                    }
                    i9 = this.f15027c;
                } while (c0() == this.f15030f);
                this.f15027c = i9;
            } else if (b11 == 2) {
                int c03 = c0();
                n0(c03);
                int i12 = this.f15027c + c03;
                while (this.f15027c < i12) {
                    list.add(Long.valueOf(Y()));
                }
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        @Override // com.google.protobuf.k2
        public void B(List<Integer> list) throws IOException {
            int i9;
            int i10;
            if (list instanceof t0) {
                t0 t0Var = (t0) list;
                int b10 = WireFormat.b(this.f15030f);
                if (b10 == 0) {
                    do {
                        t0Var.D0(s());
                        if (R()) {
                            return;
                        }
                        i10 = this.f15027c;
                    } while (c0() == this.f15030f);
                    this.f15027c = i10;
                    return;
                } else if (b10 == 2) {
                    int c02 = this.f15027c + c0();
                    while (this.f15027c < c02) {
                        t0Var.D0(c0());
                    }
                    g0(c02);
                    return;
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
            int b11 = WireFormat.b(this.f15030f);
            if (b11 == 0) {
                do {
                    list.add(Integer.valueOf(s()));
                    if (R()) {
                        return;
                    }
                    i9 = this.f15027c;
                } while (c0() == this.f15030f);
                this.f15027c = i9;
            } else if (b11 == 2) {
                int c03 = this.f15027c + c0();
                while (this.f15027c < c03) {
                    list.add(Integer.valueOf(c0()));
                }
                g0(c03);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        @Override // com.google.protobuf.k2
        public void C(List<Integer> list) throws IOException {
            int i9;
            int i10;
            if (list instanceof t0) {
                t0 t0Var = (t0) list;
                int b10 = WireFormat.b(this.f15030f);
                if (b10 == 2) {
                    int c02 = c0();
                    m0(c02);
                    int i11 = this.f15027c + c02;
                    while (this.f15027c < i11) {
                        t0Var.D0(W());
                    }
                    return;
                } else if (b10 == 5) {
                    do {
                        t0Var.D0(y());
                        if (R()) {
                            return;
                        }
                        i10 = this.f15027c;
                    } while (c0() == this.f15030f);
                    this.f15027c = i10;
                    return;
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
            int b11 = WireFormat.b(this.f15030f);
            if (b11 == 2) {
                int c03 = c0();
                m0(c03);
                int i12 = this.f15027c + c03;
                while (this.f15027c < i12) {
                    list.add(Integer.valueOf(W()));
                }
            } else if (b11 == 5) {
                do {
                    list.add(Integer.valueOf(y()));
                    if (R()) {
                        return;
                    }
                    i9 = this.f15027c;
                } while (c0() == this.f15030f);
                this.f15027c = i9;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        @Override // com.google.protobuf.k2
        public long D() throws IOException {
            h0(0);
            return p.d(d0());
        }

        @Override // com.google.protobuf.k2
        public String E() throws IOException {
            return a0(false);
        }

        @Override // com.google.protobuf.k2
        public int F() throws IOException {
            if (R()) {
                return Integer.MAX_VALUE;
            }
            int c02 = c0();
            this.f15030f = c02;
            if (c02 == this.f15031g) {
                return Integer.MAX_VALUE;
            }
            return WireFormat.a(c02);
        }

        @Override // com.google.protobuf.k2
        public void G(List<String> list) throws IOException {
            b0(list, false);
        }

        @Override // com.google.protobuf.k2
        public <T> T H(n2<T> n2Var, f0 f0Var) throws IOException {
            h0(2);
            return (T) Z(n2Var, f0Var);
        }

        @Override // com.google.protobuf.k2
        public void I(List<Float> list) throws IOException {
            int i9;
            int i10;
            if (list instanceof p0) {
                p0 p0Var = (p0) list;
                int b10 = WireFormat.b(this.f15030f);
                if (b10 == 2) {
                    int c02 = c0();
                    m0(c02);
                    int i11 = this.f15027c + c02;
                    while (this.f15027c < i11) {
                        p0Var.A(Float.intBitsToFloat(W()));
                    }
                    return;
                } else if (b10 == 5) {
                    do {
                        p0Var.A(readFloat());
                        if (R()) {
                            return;
                        }
                        i10 = this.f15027c;
                    } while (c0() == this.f15030f);
                    this.f15027c = i10;
                    return;
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
            int b11 = WireFormat.b(this.f15030f);
            if (b11 == 2) {
                int c03 = c0();
                m0(c03);
                int i12 = this.f15027c + c03;
                while (this.f15027c < i12) {
                    list.add(Float.valueOf(Float.intBitsToFloat(W())));
                }
            } else if (b11 == 5) {
                do {
                    list.add(Float.valueOf(readFloat()));
                    if (R()) {
                        return;
                    }
                    i9 = this.f15027c;
                } while (c0() == this.f15030f);
                this.f15027c = i9;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        @Override // com.google.protobuf.k2
        public boolean K() throws IOException {
            int i9;
            if (R() || (i9 = this.f15030f) == this.f15031g) {
                return false;
            }
            int b10 = WireFormat.b(i9);
            if (b10 == 0) {
                k0();
                return true;
            } else if (b10 == 1) {
                i0(8);
                return true;
            } else if (b10 == 2) {
                i0(c0());
                return true;
            } else if (b10 == 3) {
                j0();
                return true;
            } else if (b10 == 5) {
                i0(4);
                return true;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        @Override // com.google.protobuf.k2
        public int L() throws IOException {
            h0(5);
            return V();
        }

        @Override // com.google.protobuf.k2
        public void M(List<ByteString> list) throws IOException {
            int i9;
            if (WireFormat.b(this.f15030f) == 2) {
                do {
                    list.add(r());
                    if (R()) {
                        return;
                    }
                    i9 = this.f15027c;
                } while (c0() == this.f15030f);
                this.f15027c = i9;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.google.protobuf.k2
        public void N(List<Double> list) throws IOException {
            int i9;
            int i10;
            if (list instanceof t) {
                t tVar = (t) list;
                int b10 = WireFormat.b(this.f15030f);
                if (b10 == 1) {
                    do {
                        tVar.N0(readDouble());
                        if (R()) {
                            return;
                        }
                        i10 = this.f15027c;
                    } while (c0() == this.f15030f);
                    this.f15027c = i10;
                    return;
                } else if (b10 == 2) {
                    int c02 = c0();
                    n0(c02);
                    int i11 = this.f15027c + c02;
                    while (this.f15027c < i11) {
                        tVar.N0(Double.longBitsToDouble(Y()));
                    }
                    return;
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
            int b11 = WireFormat.b(this.f15030f);
            if (b11 == 1) {
                do {
                    list.add(Double.valueOf(readDouble()));
                    if (R()) {
                        return;
                    }
                    i9 = this.f15027c;
                } while (c0() == this.f15030f);
                this.f15027c = i9;
            } else if (b11 == 2) {
                int c03 = c0();
                n0(c03);
                int i12 = this.f15027c + c03;
                while (this.f15027c < i12) {
                    list.add(Double.valueOf(Double.longBitsToDouble(Y())));
                }
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        @Override // com.google.protobuf.k2
        public long O() throws IOException {
            h0(0);
            return d0();
        }

        @Override // com.google.protobuf.k2
        public String P() throws IOException {
            return a0(true);
        }

        @Override // com.google.protobuf.k2
        public long a() throws IOException {
            h0(1);
            return X();
        }

        public String a0(boolean z10) throws IOException {
            h0(2);
            int c02 = c0();
            if (c02 == 0) {
                return "";
            }
            f0(c02);
            if (z10) {
                byte[] bArr = this.f15026b;
                int i9 = this.f15027c;
                if (!n3.t(bArr, i9, i9 + c02)) {
                    throw InvalidProtocolBufferException.invalidUtf8();
                }
            }
            String str = new String(this.f15026b, this.f15027c, c02, u0.f15284b);
            this.f15027c += c02;
            return str;
        }

        @Override // com.google.protobuf.k2
        public void b(List<Integer> list) throws IOException {
            int i9;
            int i10;
            if (list instanceof t0) {
                t0 t0Var = (t0) list;
                int b10 = WireFormat.b(this.f15030f);
                if (b10 == 2) {
                    int c02 = c0();
                    m0(c02);
                    int i11 = this.f15027c + c02;
                    while (this.f15027c < i11) {
                        t0Var.D0(W());
                    }
                    return;
                } else if (b10 == 5) {
                    do {
                        t0Var.D0(L());
                        if (R()) {
                            return;
                        }
                        i10 = this.f15027c;
                    } while (c0() == this.f15030f);
                    this.f15027c = i10;
                    return;
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
            int b11 = WireFormat.b(this.f15030f);
            if (b11 == 2) {
                int c03 = c0();
                m0(c03);
                int i12 = this.f15027c + c03;
                while (this.f15027c < i12) {
                    list.add(Integer.valueOf(W()));
                }
            } else if (b11 == 5) {
                do {
                    list.add(Integer.valueOf(L()));
                    if (R()) {
                        return;
                    }
                    i9 = this.f15027c;
                } while (c0() == this.f15030f);
                this.f15027c = i9;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        public void b0(List<String> list, boolean z10) throws IOException {
            int i9;
            int i10;
            if (WireFormat.b(this.f15030f) == 2) {
                if ((list instanceof z0) && !z10) {
                    z0 z0Var = (z0) list;
                    do {
                        z0Var.X(r());
                        if (R()) {
                            return;
                        }
                        i10 = this.f15027c;
                    } while (c0() == this.f15030f);
                    this.f15027c = i10;
                    return;
                }
                do {
                    list.add(a0(z10));
                    if (R()) {
                        return;
                    }
                    i9 = this.f15027c;
                } while (c0() == this.f15030f);
                this.f15027c = i9;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.google.protobuf.k2
        public void c(List<Long> list) throws IOException {
            int i9;
            int i10;
            if (list instanceof c1) {
                c1 c1Var = (c1) list;
                int b10 = WireFormat.b(this.f15030f);
                if (b10 != 0) {
                    if (b10 == 2) {
                        int c02 = this.f15027c + c0();
                        while (this.f15027c < c02) {
                            c1Var.I0(p.d(d0()));
                        }
                        return;
                    }
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    c1Var.I0(D());
                    if (R()) {
                        return;
                    }
                    i10 = this.f15027c;
                } while (c0() == this.f15030f);
                this.f15027c = i10;
                return;
            }
            int b11 = WireFormat.b(this.f15030f);
            if (b11 != 0) {
                if (b11 == 2) {
                    int c03 = this.f15027c + c0();
                    while (this.f15027c < c03) {
                        list.add(Long.valueOf(p.d(d0())));
                    }
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Long.valueOf(D()));
                if (R()) {
                    return;
                }
                i9 = this.f15027c;
            } while (c0() == this.f15030f);
            this.f15027c = i9;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.k2
        public <T> void d(List<T> list, n2<T> n2Var, f0 f0Var) throws IOException {
            int i9;
            if (WireFormat.b(this.f15030f) == 3) {
                int i10 = this.f15030f;
                do {
                    list.add(U(n2Var, f0Var));
                    if (R()) {
                        return;
                    }
                    i9 = this.f15027c;
                } while (c0() == i10);
                this.f15027c = i9;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        public long d0() throws IOException {
            long j10;
            long j11;
            long j12;
            int i9;
            int i10 = this.f15027c;
            int i11 = this.f15029e;
            if (i11 != i10) {
                byte[] bArr = this.f15026b;
                int i12 = i10 + 1;
                byte b10 = bArr[i10];
                if (b10 >= 0) {
                    this.f15027c = i12;
                    return b10;
                } else if (i11 - i12 < 9) {
                    return e0();
                } else {
                    int i13 = i12 + 1;
                    int i14 = b10 ^ (bArr[i12] << 7);
                    if (i14 >= 0) {
                        int i15 = i13 + 1;
                        int i16 = i14 ^ (bArr[i13] << 14);
                        if (i16 >= 0) {
                            i13 = i15;
                            j10 = i16 ^ 16256;
                        } else {
                            i13 = i15 + 1;
                            int i17 = i16 ^ (bArr[i15] << 21);
                            if (i17 < 0) {
                                i9 = i17 ^ (-2080896);
                            } else {
                                long j13 = i17;
                                int i18 = i13 + 1;
                                long j14 = j13 ^ (bArr[i13] << 28);
                                if (j14 >= 0) {
                                    j12 = 266354560;
                                } else {
                                    i13 = i18 + 1;
                                    long j15 = j14 ^ (bArr[i18] << 35);
                                    if (j15 < 0) {
                                        j11 = -34093383808L;
                                    } else {
                                        i18 = i13 + 1;
                                        j14 = j15 ^ (bArr[i13] << 42);
                                        if (j14 >= 0) {
                                            j12 = 4363953127296L;
                                        } else {
                                            i13 = i18 + 1;
                                            j15 = j14 ^ (bArr[i18] << 49);
                                            if (j15 < 0) {
                                                j11 = -558586000294016L;
                                            } else {
                                                int i19 = i13 + 1;
                                                long j16 = (j15 ^ (bArr[i13] << 56)) ^ 71499008037633920L;
                                                if (j16 < 0) {
                                                    i13 = i19 + 1;
                                                    if (bArr[i19] < 0) {
                                                        throw InvalidProtocolBufferException.malformedVarint();
                                                    }
                                                } else {
                                                    i13 = i19;
                                                }
                                                j10 = j16;
                                            }
                                        }
                                    }
                                    j10 = j15 ^ j11;
                                }
                                j10 = j14 ^ j12;
                                i13 = i18;
                            }
                        }
                        this.f15027c = i13;
                        return j10;
                    }
                    i9 = i14 ^ (-128);
                    j10 = i9;
                    this.f15027c = i13;
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.k2
        public boolean e() throws IOException {
            h0(0);
            return c0() != 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.k2
        public <T> void f(List<T> list, n2<T> n2Var, f0 f0Var) throws IOException {
            int i9;
            if (WireFormat.b(this.f15030f) == 2) {
                int i10 = this.f15030f;
                do {
                    list.add(Z(n2Var, f0Var));
                    if (R()) {
                        return;
                    }
                    i9 = this.f15027c;
                } while (c0() == i10);
                this.f15027c = i9;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.google.protobuf.k2
        public long g() throws IOException {
            h0(1);
            return X();
        }

        @Override // com.google.protobuf.k2
        public int getTag() {
            return this.f15030f;
        }

        @Override // com.google.protobuf.k2
        public void h(List<Long> list) throws IOException {
            int i9;
            int i10;
            if (list instanceof c1) {
                c1 c1Var = (c1) list;
                int b10 = WireFormat.b(this.f15030f);
                if (b10 == 0) {
                    do {
                        c1Var.I0(v());
                        if (R()) {
                            return;
                        }
                        i10 = this.f15027c;
                    } while (c0() == this.f15030f);
                    this.f15027c = i10;
                    return;
                } else if (b10 == 2) {
                    int c02 = this.f15027c + c0();
                    while (this.f15027c < c02) {
                        c1Var.I0(d0());
                    }
                    g0(c02);
                    return;
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
            int b11 = WireFormat.b(this.f15030f);
            if (b11 == 0) {
                do {
                    list.add(Long.valueOf(v()));
                    if (R()) {
                        return;
                    }
                    i9 = this.f15027c;
                } while (c0() == this.f15030f);
                this.f15027c = i9;
            } else if (b11 == 2) {
                int c03 = this.f15027c + c0();
                while (this.f15027c < c03) {
                    list.add(Long.valueOf(d0()));
                }
                g0(c03);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        @Override // com.google.protobuf.k2
        public int i() throws IOException {
            h0(0);
            return c0();
        }

        @Override // com.google.protobuf.k2
        public void j(List<Long> list) throws IOException {
            int i9;
            int i10;
            if (list instanceof c1) {
                c1 c1Var = (c1) list;
                int b10 = WireFormat.b(this.f15030f);
                if (b10 == 0) {
                    do {
                        c1Var.I0(O());
                        if (R()) {
                            return;
                        }
                        i10 = this.f15027c;
                    } while (c0() == this.f15030f);
                    this.f15027c = i10;
                    return;
                } else if (b10 == 2) {
                    int c02 = this.f15027c + c0();
                    while (this.f15027c < c02) {
                        c1Var.I0(d0());
                    }
                    g0(c02);
                    return;
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
            int b11 = WireFormat.b(this.f15030f);
            if (b11 == 0) {
                do {
                    list.add(Long.valueOf(O()));
                    if (R()) {
                        return;
                    }
                    i9 = this.f15027c;
                } while (c0() == this.f15030f);
                this.f15027c = i9;
            } else if (b11 == 2) {
                int c03 = this.f15027c + c0();
                while (this.f15027c < c03) {
                    list.add(Long.valueOf(d0()));
                }
                g0(c03);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        @Override // com.google.protobuf.k2
        public void k(List<Integer> list) throws IOException {
            int i9;
            int i10;
            if (list instanceof t0) {
                t0 t0Var = (t0) list;
                int b10 = WireFormat.b(this.f15030f);
                if (b10 != 0) {
                    if (b10 == 2) {
                        int c02 = this.f15027c + c0();
                        while (this.f15027c < c02) {
                            t0Var.D0(c0());
                        }
                        return;
                    }
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    t0Var.D0(l());
                    if (R()) {
                        return;
                    }
                    i10 = this.f15027c;
                } while (c0() == this.f15030f);
                this.f15027c = i10;
                return;
            }
            int b11 = WireFormat.b(this.f15030f);
            if (b11 != 0) {
                if (b11 == 2) {
                    int c03 = this.f15027c + c0();
                    while (this.f15027c < c03) {
                        list.add(Integer.valueOf(c0()));
                    }
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Integer.valueOf(l()));
                if (R()) {
                    return;
                }
                i9 = this.f15027c;
            } while (c0() == this.f15030f);
            this.f15027c = i9;
        }

        @Override // com.google.protobuf.k2
        public int l() throws IOException {
            h0(0);
            return c0();
        }

        @Override // com.google.protobuf.k2
        public int m() throws IOException {
            h0(0);
            return p.c(c0());
        }

        @Override // com.google.protobuf.k2
        public void n(List<Boolean> list) throws IOException {
            int i9;
            int i10;
            if (list instanceof m) {
                m mVar = (m) list;
                int b10 = WireFormat.b(this.f15030f);
                if (b10 != 0) {
                    if (b10 == 2) {
                        int c02 = this.f15027c + c0();
                        while (this.f15027c < c02) {
                            mVar.m(c0() != 0);
                        }
                        g0(c02);
                        return;
                    }
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    mVar.m(e());
                    if (R()) {
                        return;
                    }
                    i10 = this.f15027c;
                } while (c0() == this.f15030f);
                this.f15027c = i10;
                return;
            }
            int b11 = WireFormat.b(this.f15030f);
            if (b11 != 0) {
                if (b11 == 2) {
                    int c03 = this.f15027c + c0();
                    while (this.f15027c < c03) {
                        list.add(Boolean.valueOf(c0() != 0));
                    }
                    g0(c03);
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Boolean.valueOf(e()));
                if (R()) {
                    return;
                }
                i9 = this.f15027c;
            } while (c0() == this.f15030f);
            this.f15027c = i9;
        }

        @Override // com.google.protobuf.k2
        public <T> T o(Class<T> cls, f0 f0Var) throws IOException {
            h0(3);
            return (T) U(g2.a().d(cls), f0Var);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.k2
        public <K, V> void p(Map<K, V> map, f1.b<K, V> bVar, f0 f0Var) throws IOException {
            h0(2);
            int c02 = c0();
            f0(c02);
            int i9 = this.f15029e;
            this.f15029e = this.f15027c + c02;
            try {
                Object obj = bVar.f14958b;
                Object obj2 = bVar.f14960d;
                while (true) {
                    int F = F();
                    if (F == Integer.MAX_VALUE) {
                        map.put(obj, obj2);
                        return;
                    } else if (F == 1) {
                        obj = T(bVar.f14957a, null, null);
                    } else if (F != 2) {
                        try {
                            if (!K()) {
                                throw new InvalidProtocolBufferException("Unable to parse map entry.");
                                break;
                            }
                        } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                            if (!K()) {
                                throw new InvalidProtocolBufferException("Unable to parse map entry.");
                            }
                        }
                    } else {
                        obj2 = T(bVar.f14959c, bVar.f14960d.getClass(), f0Var);
                    }
                }
            } finally {
                this.f15029e = i9;
            }
        }

        @Override // com.google.protobuf.k2
        public void q(List<String> list) throws IOException {
            b0(list, true);
        }

        @Override // com.google.protobuf.k2
        public ByteString r() throws IOException {
            ByteString copyFrom;
            h0(2);
            int c02 = c0();
            if (c02 == 0) {
                return ByteString.EMPTY;
            }
            f0(c02);
            if (this.f15025a) {
                copyFrom = ByteString.wrap(this.f15026b, this.f15027c, c02);
            } else {
                copyFrom = ByteString.copyFrom(this.f15026b, this.f15027c, c02);
            }
            this.f15027c += c02;
            return copyFrom;
        }

        @Override // com.google.protobuf.k2
        public double readDouble() throws IOException {
            h0(1);
            return Double.longBitsToDouble(X());
        }

        @Override // com.google.protobuf.k2
        public float readFloat() throws IOException {
            h0(5);
            return Float.intBitsToFloat(V());
        }

        @Override // com.google.protobuf.k2
        public int s() throws IOException {
            h0(0);
            return c0();
        }

        @Override // com.google.protobuf.k2
        public void t(List<Long> list) throws IOException {
            int i9;
            int i10;
            if (list instanceof c1) {
                c1 c1Var = (c1) list;
                int b10 = WireFormat.b(this.f15030f);
                if (b10 == 1) {
                    do {
                        c1Var.I0(a());
                        if (R()) {
                            return;
                        }
                        i10 = this.f15027c;
                    } while (c0() == this.f15030f);
                    this.f15027c = i10;
                    return;
                } else if (b10 == 2) {
                    int c02 = c0();
                    n0(c02);
                    int i11 = this.f15027c + c02;
                    while (this.f15027c < i11) {
                        c1Var.I0(Y());
                    }
                    return;
                } else {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
            }
            int b11 = WireFormat.b(this.f15030f);
            if (b11 == 1) {
                do {
                    list.add(Long.valueOf(a()));
                    if (R()) {
                        return;
                    }
                    i9 = this.f15027c;
                } while (c0() == this.f15030f);
                this.f15027c = i9;
            } else if (b11 == 2) {
                int c03 = c0();
                n0(c03);
                int i12 = this.f15027c + c03;
                while (this.f15027c < i12) {
                    list.add(Long.valueOf(Y()));
                }
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        @Override // com.google.protobuf.k2
        public void u(List<Integer> list) throws IOException {
            int i9;
            int i10;
            if (list instanceof t0) {
                t0 t0Var = (t0) list;
                int b10 = WireFormat.b(this.f15030f);
                if (b10 != 0) {
                    if (b10 == 2) {
                        int c02 = this.f15027c + c0();
                        while (this.f15027c < c02) {
                            t0Var.D0(p.c(c0()));
                        }
                        return;
                    }
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    t0Var.D0(m());
                    if (R()) {
                        return;
                    }
                    i10 = this.f15027c;
                } while (c0() == this.f15030f);
                this.f15027c = i10;
                return;
            }
            int b11 = WireFormat.b(this.f15030f);
            if (b11 != 0) {
                if (b11 == 2) {
                    int c03 = this.f15027c + c0();
                    while (this.f15027c < c03) {
                        list.add(Integer.valueOf(p.c(c0())));
                    }
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Integer.valueOf(m()));
                if (R()) {
                    return;
                }
                i9 = this.f15027c;
            } while (c0() == this.f15030f);
            this.f15027c = i9;
        }

        @Override // com.google.protobuf.k2
        public long v() throws IOException {
            h0(0);
            return d0();
        }

        @Override // com.google.protobuf.k2
        public void w(List<Integer> list) throws IOException {
            int i9;
            int i10;
            if (list instanceof t0) {
                t0 t0Var = (t0) list;
                int b10 = WireFormat.b(this.f15030f);
                if (b10 != 0) {
                    if (b10 == 2) {
                        int c02 = this.f15027c + c0();
                        while (this.f15027c < c02) {
                            t0Var.D0(c0());
                        }
                        return;
                    }
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    t0Var.D0(i());
                    if (R()) {
                        return;
                    }
                    i10 = this.f15027c;
                } while (c0() == this.f15030f);
                this.f15027c = i10;
                return;
            }
            int b11 = WireFormat.b(this.f15030f);
            if (b11 != 0) {
                if (b11 == 2) {
                    int c03 = this.f15027c + c0();
                    while (this.f15027c < c03) {
                        list.add(Integer.valueOf(c0()));
                    }
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Integer.valueOf(i()));
                if (R()) {
                    return;
                }
                i9 = this.f15027c;
            } while (c0() == this.f15030f);
            this.f15027c = i9;
        }

        @Override // com.google.protobuf.k2
        public <T> T x(Class<T> cls, f0 f0Var) throws IOException {
            h0(2);
            return (T) Z(g2.a().d(cls), f0Var);
        }

        @Override // com.google.protobuf.k2
        public int y() throws IOException {
            h0(5);
            return V();
        }

        @Override // com.google.protobuf.k2
        public <T> T z(n2<T> n2Var, f0 f0Var) throws IOException {
            h0(3);
            return (T) U(n2Var, f0Var);
        }
    }

    private k() {
    }

    /* synthetic */ k(a aVar) {
        this();
    }

    public static k Q(ByteBuffer byteBuffer, boolean z10) {
        if (byteBuffer.hasArray()) {
            return new b(byteBuffer, z10);
        }
        throw new IllegalArgumentException("Direct buffers not yet supported");
    }

    @Override // com.google.protobuf.k2
    public boolean J() {
        return false;
    }
}
