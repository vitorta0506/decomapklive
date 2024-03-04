package com.google.protobuf;

import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class q implements k2 {

    /* renamed from: a  reason: collision with root package name */
    private final p f15197a;

    /* renamed from: b  reason: collision with root package name */
    private int f15198b;

    /* renamed from: c  reason: collision with root package name */
    private int f15199c;

    /* renamed from: d  reason: collision with root package name */
    private int f15200d = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15201a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f15201a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15201a[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15201a[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15201a[WireFormat.FieldType.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15201a[WireFormat.FieldType.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15201a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15201a[WireFormat.FieldType.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15201a[WireFormat.FieldType.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15201a[WireFormat.FieldType.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f15201a[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f15201a[WireFormat.FieldType.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f15201a[WireFormat.FieldType.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f15201a[WireFormat.FieldType.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f15201a[WireFormat.FieldType.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f15201a[WireFormat.FieldType.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f15201a[WireFormat.FieldType.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f15201a[WireFormat.FieldType.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private q(p pVar) {
        p pVar2 = (p) u0.b(pVar, "input");
        this.f15197a = pVar2;
        pVar2.f15126d = this;
    }

    public static q Q(p pVar) {
        q qVar = pVar.f15126d;
        return qVar != null ? qVar : new q(pVar);
    }

    private Object R(WireFormat.FieldType fieldType, Class<?> cls, f0 f0Var) throws IOException {
        switch (a.f15201a[fieldType.ordinal()]) {
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

    private <T> T S(n2<T> n2Var, f0 f0Var) throws IOException {
        int i9 = this.f15199c;
        this.f15199c = WireFormat.c(WireFormat.a(this.f15198b), 4);
        try {
            T h10 = n2Var.h();
            n2Var.i(h10, this, f0Var);
            n2Var.e(h10);
            if (this.f15198b == this.f15199c) {
                return h10;
            }
            throw InvalidProtocolBufferException.parseFailure();
        } finally {
            this.f15199c = i9;
        }
    }

    private <T> T T(n2<T> n2Var, f0 f0Var) throws IOException {
        p pVar;
        int M = this.f15197a.M();
        p pVar2 = this.f15197a;
        if (pVar2.f15123a < pVar2.f15124b) {
            int q10 = pVar2.q(M);
            T h10 = n2Var.h();
            this.f15197a.f15123a++;
            n2Var.i(h10, this, f0Var);
            n2Var.e(h10);
            this.f15197a.a(0);
            pVar.f15123a--;
            this.f15197a.p(q10);
            return h10;
        }
        throw InvalidProtocolBufferException.recursionLimitExceeded();
    }

    private void V(int i9) throws IOException {
        if (this.f15197a.f() != i9) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    private void W(int i9) throws IOException {
        if (WireFormat.b(this.f15198b) != i9) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    private void X(int i9) throws IOException {
        if ((i9 & 3) != 0) {
            throw InvalidProtocolBufferException.parseFailure();
        }
    }

    private void Y(int i9) throws IOException {
        if ((i9 & 7) != 0) {
            throw InvalidProtocolBufferException.parseFailure();
        }
    }

    @Override // com.google.protobuf.k2
    public void A(List<Long> list) throws IOException {
        int L;
        int L2;
        if (list instanceof c1) {
            c1 c1Var = (c1) list;
            int b10 = WireFormat.b(this.f15198b);
            if (b10 == 1) {
                do {
                    c1Var.I0(this.f15197a.G());
                    if (this.f15197a.g()) {
                        return;
                    }
                    L2 = this.f15197a.L();
                } while (L2 == this.f15198b);
                this.f15200d = L2;
                return;
            } else if (b10 == 2) {
                int M = this.f15197a.M();
                Y(M);
                int f10 = this.f15197a.f() + M;
                do {
                    c1Var.I0(this.f15197a.G());
                } while (this.f15197a.f() < f10);
                return;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        int b11 = WireFormat.b(this.f15198b);
        if (b11 == 1) {
            do {
                list.add(Long.valueOf(this.f15197a.G()));
                if (this.f15197a.g()) {
                    return;
                }
                L = this.f15197a.L();
            } while (L == this.f15198b);
            this.f15200d = L;
        } else if (b11 == 2) {
            int M2 = this.f15197a.M();
            Y(M2);
            int f11 = this.f15197a.f() + M2;
            do {
                list.add(Long.valueOf(this.f15197a.G()));
            } while (this.f15197a.f() < f11);
        } else {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    @Override // com.google.protobuf.k2
    public void B(List<Integer> list) throws IOException {
        int L;
        int L2;
        if (list instanceof t0) {
            t0 t0Var = (t0) list;
            int b10 = WireFormat.b(this.f15198b);
            if (b10 == 0) {
                do {
                    t0Var.D0(this.f15197a.z());
                    if (this.f15197a.g()) {
                        return;
                    }
                    L2 = this.f15197a.L();
                } while (L2 == this.f15198b);
                this.f15200d = L2;
                return;
            } else if (b10 == 2) {
                int f10 = this.f15197a.f() + this.f15197a.M();
                do {
                    t0Var.D0(this.f15197a.z());
                } while (this.f15197a.f() < f10);
                V(f10);
                return;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        int b11 = WireFormat.b(this.f15198b);
        if (b11 == 0) {
            do {
                list.add(Integer.valueOf(this.f15197a.z()));
                if (this.f15197a.g()) {
                    return;
                }
                L = this.f15197a.L();
            } while (L == this.f15198b);
            this.f15200d = L;
        } else if (b11 == 2) {
            int f11 = this.f15197a.f() + this.f15197a.M();
            do {
                list.add(Integer.valueOf(this.f15197a.z()));
            } while (this.f15197a.f() < f11);
            V(f11);
        } else {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    @Override // com.google.protobuf.k2
    public void C(List<Integer> list) throws IOException {
        int L;
        int L2;
        if (list instanceof t0) {
            t0 t0Var = (t0) list;
            int b10 = WireFormat.b(this.f15198b);
            if (b10 == 2) {
                int M = this.f15197a.M();
                X(M);
                int f10 = this.f15197a.f() + M;
                do {
                    t0Var.D0(this.f15197a.v());
                } while (this.f15197a.f() < f10);
                return;
            } else if (b10 == 5) {
                do {
                    t0Var.D0(this.f15197a.v());
                    if (this.f15197a.g()) {
                        return;
                    }
                    L2 = this.f15197a.L();
                } while (L2 == this.f15198b);
                this.f15200d = L2;
                return;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        int b11 = WireFormat.b(this.f15198b);
        if (b11 == 2) {
            int M2 = this.f15197a.M();
            X(M2);
            int f11 = this.f15197a.f() + M2;
            do {
                list.add(Integer.valueOf(this.f15197a.v()));
            } while (this.f15197a.f() < f11);
        } else if (b11 == 5) {
            do {
                list.add(Integer.valueOf(this.f15197a.v()));
                if (this.f15197a.g()) {
                    return;
                }
                L = this.f15197a.L();
            } while (L == this.f15198b);
            this.f15200d = L;
        } else {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    @Override // com.google.protobuf.k2
    public long D() throws IOException {
        W(0);
        return this.f15197a.I();
    }

    @Override // com.google.protobuf.k2
    public String E() throws IOException {
        W(2);
        return this.f15197a.J();
    }

    @Override // com.google.protobuf.k2
    public int F() throws IOException {
        int i9 = this.f15200d;
        if (i9 != 0) {
            this.f15198b = i9;
            this.f15200d = 0;
        } else {
            this.f15198b = this.f15197a.L();
        }
        int i10 = this.f15198b;
        if (i10 == 0 || i10 == this.f15199c) {
            return Integer.MAX_VALUE;
        }
        return WireFormat.a(i10);
    }

    @Override // com.google.protobuf.k2
    public void G(List<String> list) throws IOException {
        U(list, false);
    }

    @Override // com.google.protobuf.k2
    public <T> T H(n2<T> n2Var, f0 f0Var) throws IOException {
        W(2);
        return (T) T(n2Var, f0Var);
    }

    @Override // com.google.protobuf.k2
    public void I(List<Float> list) throws IOException {
        int L;
        int L2;
        if (list instanceof p0) {
            p0 p0Var = (p0) list;
            int b10 = WireFormat.b(this.f15198b);
            if (b10 == 2) {
                int M = this.f15197a.M();
                X(M);
                int f10 = this.f15197a.f() + M;
                do {
                    p0Var.A(this.f15197a.x());
                } while (this.f15197a.f() < f10);
                return;
            } else if (b10 == 5) {
                do {
                    p0Var.A(this.f15197a.x());
                    if (this.f15197a.g()) {
                        return;
                    }
                    L2 = this.f15197a.L();
                } while (L2 == this.f15198b);
                this.f15200d = L2;
                return;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        int b11 = WireFormat.b(this.f15198b);
        if (b11 == 2) {
            int M2 = this.f15197a.M();
            X(M2);
            int f11 = this.f15197a.f() + M2;
            do {
                list.add(Float.valueOf(this.f15197a.x()));
            } while (this.f15197a.f() < f11);
        } else if (b11 == 5) {
            do {
                list.add(Float.valueOf(this.f15197a.x()));
                if (this.f15197a.g()) {
                    return;
                }
                L = this.f15197a.L();
            } while (L == this.f15198b);
            this.f15200d = L;
        } else {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    @Override // com.google.protobuf.k2
    public boolean J() {
        return this.f15197a.P();
    }

    @Override // com.google.protobuf.k2
    public boolean K() throws IOException {
        int i9;
        if (this.f15197a.g() || (i9 = this.f15198b) == this.f15199c) {
            return false;
        }
        return this.f15197a.Q(i9);
    }

    @Override // com.google.protobuf.k2
    public int L() throws IOException {
        W(5);
        return this.f15197a.F();
    }

    @Override // com.google.protobuf.k2
    public void M(List<ByteString> list) throws IOException {
        int L;
        if (WireFormat.b(this.f15198b) == 2) {
            do {
                list.add(r());
                if (this.f15197a.g()) {
                    return;
                }
                L = this.f15197a.L();
            } while (L == this.f15198b);
            this.f15200d = L;
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // com.google.protobuf.k2
    public void N(List<Double> list) throws IOException {
        int L;
        int L2;
        if (list instanceof t) {
            t tVar = (t) list;
            int b10 = WireFormat.b(this.f15198b);
            if (b10 == 1) {
                do {
                    tVar.N0(this.f15197a.t());
                    if (this.f15197a.g()) {
                        return;
                    }
                    L2 = this.f15197a.L();
                } while (L2 == this.f15198b);
                this.f15200d = L2;
                return;
            } else if (b10 == 2) {
                int M = this.f15197a.M();
                Y(M);
                int f10 = this.f15197a.f() + M;
                do {
                    tVar.N0(this.f15197a.t());
                } while (this.f15197a.f() < f10);
                return;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        int b11 = WireFormat.b(this.f15198b);
        if (b11 == 1) {
            do {
                list.add(Double.valueOf(this.f15197a.t()));
                if (this.f15197a.g()) {
                    return;
                }
                L = this.f15197a.L();
            } while (L == this.f15198b);
            this.f15200d = L;
        } else if (b11 == 2) {
            int M2 = this.f15197a.M();
            Y(M2);
            int f11 = this.f15197a.f() + M2;
            do {
                list.add(Double.valueOf(this.f15197a.t()));
            } while (this.f15197a.f() < f11);
        } else {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    @Override // com.google.protobuf.k2
    public long O() throws IOException {
        W(0);
        return this.f15197a.A();
    }

    @Override // com.google.protobuf.k2
    public String P() throws IOException {
        W(2);
        return this.f15197a.K();
    }

    public void U(List<String> list, boolean z10) throws IOException {
        int L;
        int L2;
        if (WireFormat.b(this.f15198b) == 2) {
            if ((list instanceof z0) && !z10) {
                z0 z0Var = (z0) list;
                do {
                    z0Var.X(r());
                    if (this.f15197a.g()) {
                        return;
                    }
                    L2 = this.f15197a.L();
                } while (L2 == this.f15198b);
                this.f15200d = L2;
                return;
            }
            do {
                list.add(z10 ? P() : E());
                if (this.f15197a.g()) {
                    return;
                }
                L = this.f15197a.L();
            } while (L == this.f15198b);
            this.f15200d = L;
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // com.google.protobuf.k2
    public long a() throws IOException {
        W(1);
        return this.f15197a.w();
    }

    @Override // com.google.protobuf.k2
    public void b(List<Integer> list) throws IOException {
        int L;
        int L2;
        if (list instanceof t0) {
            t0 t0Var = (t0) list;
            int b10 = WireFormat.b(this.f15198b);
            if (b10 == 2) {
                int M = this.f15197a.M();
                X(M);
                int f10 = this.f15197a.f() + M;
                do {
                    t0Var.D0(this.f15197a.F());
                } while (this.f15197a.f() < f10);
                return;
            } else if (b10 == 5) {
                do {
                    t0Var.D0(this.f15197a.F());
                    if (this.f15197a.g()) {
                        return;
                    }
                    L2 = this.f15197a.L();
                } while (L2 == this.f15198b);
                this.f15200d = L2;
                return;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        int b11 = WireFormat.b(this.f15198b);
        if (b11 == 2) {
            int M2 = this.f15197a.M();
            X(M2);
            int f11 = this.f15197a.f() + M2;
            do {
                list.add(Integer.valueOf(this.f15197a.F()));
            } while (this.f15197a.f() < f11);
        } else if (b11 == 5) {
            do {
                list.add(Integer.valueOf(this.f15197a.F()));
                if (this.f15197a.g()) {
                    return;
                }
                L = this.f15197a.L();
            } while (L == this.f15198b);
            this.f15200d = L;
        } else {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    @Override // com.google.protobuf.k2
    public void c(List<Long> list) throws IOException {
        int L;
        int L2;
        if (list instanceof c1) {
            c1 c1Var = (c1) list;
            int b10 = WireFormat.b(this.f15198b);
            if (b10 == 0) {
                do {
                    c1Var.I0(this.f15197a.I());
                    if (this.f15197a.g()) {
                        return;
                    }
                    L2 = this.f15197a.L();
                } while (L2 == this.f15198b);
                this.f15200d = L2;
                return;
            } else if (b10 == 2) {
                int f10 = this.f15197a.f() + this.f15197a.M();
                do {
                    c1Var.I0(this.f15197a.I());
                } while (this.f15197a.f() < f10);
                V(f10);
                return;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        int b11 = WireFormat.b(this.f15198b);
        if (b11 == 0) {
            do {
                list.add(Long.valueOf(this.f15197a.I()));
                if (this.f15197a.g()) {
                    return;
                }
                L = this.f15197a.L();
            } while (L == this.f15198b);
            this.f15200d = L;
        } else if (b11 == 2) {
            int f11 = this.f15197a.f() + this.f15197a.M();
            do {
                list.add(Long.valueOf(this.f15197a.I()));
            } while (this.f15197a.f() < f11);
            V(f11);
        } else {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.k2
    public <T> void d(List<T> list, n2<T> n2Var, f0 f0Var) throws IOException {
        int L;
        if (WireFormat.b(this.f15198b) == 3) {
            int i9 = this.f15198b;
            do {
                list.add(S(n2Var, f0Var));
                if (this.f15197a.g() || this.f15200d != 0) {
                    return;
                }
                L = this.f15197a.L();
            } while (L == i9);
            this.f15200d = L;
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // com.google.protobuf.k2
    public boolean e() throws IOException {
        W(0);
        return this.f15197a.r();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.k2
    public <T> void f(List<T> list, n2<T> n2Var, f0 f0Var) throws IOException {
        int L;
        if (WireFormat.b(this.f15198b) == 2) {
            int i9 = this.f15198b;
            do {
                list.add(T(n2Var, f0Var));
                if (this.f15197a.g() || this.f15200d != 0) {
                    return;
                }
                L = this.f15197a.L();
            } while (L == i9);
            this.f15200d = L;
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // com.google.protobuf.k2
    public long g() throws IOException {
        W(1);
        return this.f15197a.G();
    }

    @Override // com.google.protobuf.k2
    public int getTag() {
        return this.f15198b;
    }

    @Override // com.google.protobuf.k2
    public void h(List<Long> list) throws IOException {
        int L;
        int L2;
        if (list instanceof c1) {
            c1 c1Var = (c1) list;
            int b10 = WireFormat.b(this.f15198b);
            if (b10 == 0) {
                do {
                    c1Var.I0(this.f15197a.N());
                    if (this.f15197a.g()) {
                        return;
                    }
                    L2 = this.f15197a.L();
                } while (L2 == this.f15198b);
                this.f15200d = L2;
                return;
            } else if (b10 == 2) {
                int f10 = this.f15197a.f() + this.f15197a.M();
                do {
                    c1Var.I0(this.f15197a.N());
                } while (this.f15197a.f() < f10);
                V(f10);
                return;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        int b11 = WireFormat.b(this.f15198b);
        if (b11 == 0) {
            do {
                list.add(Long.valueOf(this.f15197a.N()));
                if (this.f15197a.g()) {
                    return;
                }
                L = this.f15197a.L();
            } while (L == this.f15198b);
            this.f15200d = L;
        } else if (b11 == 2) {
            int f11 = this.f15197a.f() + this.f15197a.M();
            do {
                list.add(Long.valueOf(this.f15197a.N()));
            } while (this.f15197a.f() < f11);
            V(f11);
        } else {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    @Override // com.google.protobuf.k2
    public int i() throws IOException {
        W(0);
        return this.f15197a.M();
    }

    @Override // com.google.protobuf.k2
    public void j(List<Long> list) throws IOException {
        int L;
        int L2;
        if (list instanceof c1) {
            c1 c1Var = (c1) list;
            int b10 = WireFormat.b(this.f15198b);
            if (b10 == 0) {
                do {
                    c1Var.I0(this.f15197a.A());
                    if (this.f15197a.g()) {
                        return;
                    }
                    L2 = this.f15197a.L();
                } while (L2 == this.f15198b);
                this.f15200d = L2;
                return;
            } else if (b10 == 2) {
                int f10 = this.f15197a.f() + this.f15197a.M();
                do {
                    c1Var.I0(this.f15197a.A());
                } while (this.f15197a.f() < f10);
                V(f10);
                return;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        int b11 = WireFormat.b(this.f15198b);
        if (b11 == 0) {
            do {
                list.add(Long.valueOf(this.f15197a.A()));
                if (this.f15197a.g()) {
                    return;
                }
                L = this.f15197a.L();
            } while (L == this.f15198b);
            this.f15200d = L;
        } else if (b11 == 2) {
            int f11 = this.f15197a.f() + this.f15197a.M();
            do {
                list.add(Long.valueOf(this.f15197a.A()));
            } while (this.f15197a.f() < f11);
            V(f11);
        } else {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    @Override // com.google.protobuf.k2
    public void k(List<Integer> list) throws IOException {
        int L;
        int L2;
        if (list instanceof t0) {
            t0 t0Var = (t0) list;
            int b10 = WireFormat.b(this.f15198b);
            if (b10 == 0) {
                do {
                    t0Var.D0(this.f15197a.u());
                    if (this.f15197a.g()) {
                        return;
                    }
                    L2 = this.f15197a.L();
                } while (L2 == this.f15198b);
                this.f15200d = L2;
                return;
            } else if (b10 == 2) {
                int f10 = this.f15197a.f() + this.f15197a.M();
                do {
                    t0Var.D0(this.f15197a.u());
                } while (this.f15197a.f() < f10);
                V(f10);
                return;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        int b11 = WireFormat.b(this.f15198b);
        if (b11 == 0) {
            do {
                list.add(Integer.valueOf(this.f15197a.u()));
                if (this.f15197a.g()) {
                    return;
                }
                L = this.f15197a.L();
            } while (L == this.f15198b);
            this.f15200d = L;
        } else if (b11 == 2) {
            int f11 = this.f15197a.f() + this.f15197a.M();
            do {
                list.add(Integer.valueOf(this.f15197a.u()));
            } while (this.f15197a.f() < f11);
            V(f11);
        } else {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    @Override // com.google.protobuf.k2
    public int l() throws IOException {
        W(0);
        return this.f15197a.u();
    }

    @Override // com.google.protobuf.k2
    public int m() throws IOException {
        W(0);
        return this.f15197a.H();
    }

    @Override // com.google.protobuf.k2
    public void n(List<Boolean> list) throws IOException {
        int L;
        int L2;
        if (list instanceof m) {
            m mVar = (m) list;
            int b10 = WireFormat.b(this.f15198b);
            if (b10 == 0) {
                do {
                    mVar.m(this.f15197a.r());
                    if (this.f15197a.g()) {
                        return;
                    }
                    L2 = this.f15197a.L();
                } while (L2 == this.f15198b);
                this.f15200d = L2;
                return;
            } else if (b10 == 2) {
                int f10 = this.f15197a.f() + this.f15197a.M();
                do {
                    mVar.m(this.f15197a.r());
                } while (this.f15197a.f() < f10);
                V(f10);
                return;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        int b11 = WireFormat.b(this.f15198b);
        if (b11 == 0) {
            do {
                list.add(Boolean.valueOf(this.f15197a.r()));
                if (this.f15197a.g()) {
                    return;
                }
                L = this.f15197a.L();
            } while (L == this.f15198b);
            this.f15200d = L;
        } else if (b11 == 2) {
            int f11 = this.f15197a.f() + this.f15197a.M();
            do {
                list.add(Boolean.valueOf(this.f15197a.r()));
            } while (this.f15197a.f() < f11);
            V(f11);
        } else {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    @Override // com.google.protobuf.k2
    public <T> T o(Class<T> cls, f0 f0Var) throws IOException {
        W(3);
        return (T) S(g2.a().d(cls), f0Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x005c, code lost:
        r8.put(r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0064, code lost:
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.k2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <K, V> void p(java.util.Map<K, V> r8, com.google.protobuf.f1.b<K, V> r9, com.google.protobuf.f0 r10) throws java.io.IOException {
        /*
            r7 = this;
            r0 = 2
            r7.W(r0)
            com.google.protobuf.p r1 = r7.f15197a
            int r1 = r1.M()
            com.google.protobuf.p r2 = r7.f15197a
            int r1 = r2.q(r1)
            K r2 = r9.f14958b
            V r3 = r9.f14960d
        L14:
            int r4 = r7.F()     // Catch: java.lang.Throwable -> L65
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 == r5) goto L5c
            com.google.protobuf.p r5 = r7.f15197a     // Catch: java.lang.Throwable -> L65
            boolean r5 = r5.g()     // Catch: java.lang.Throwable -> L65
            if (r5 == 0) goto L26
            goto L5c
        L26:
            r5 = 1
            java.lang.String r6 = "Unable to parse map entry."
            if (r4 == r5) goto L47
            if (r4 == r0) goto L3a
            boolean r4 = r7.K()     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4f java.lang.Throwable -> L65
            if (r4 == 0) goto L34
            goto L14
        L34:
            com.google.protobuf.InvalidProtocolBufferException r4 = new com.google.protobuf.InvalidProtocolBufferException     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4f java.lang.Throwable -> L65
            r4.<init>(r6)     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4f java.lang.Throwable -> L65
            throw r4     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4f java.lang.Throwable -> L65
        L3a:
            com.google.protobuf.WireFormat$FieldType r4 = r9.f14959c     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4f java.lang.Throwable -> L65
            V r5 = r9.f14960d     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4f java.lang.Throwable -> L65
            java.lang.Class r5 = r5.getClass()     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4f java.lang.Throwable -> L65
            java.lang.Object r3 = r7.R(r4, r5, r10)     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4f java.lang.Throwable -> L65
            goto L14
        L47:
            com.google.protobuf.WireFormat$FieldType r4 = r9.f14957a     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4f java.lang.Throwable -> L65
            r5 = 0
            java.lang.Object r2 = r7.R(r4, r5, r5)     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L4f java.lang.Throwable -> L65
            goto L14
        L4f:
            boolean r4 = r7.K()     // Catch: java.lang.Throwable -> L65
            if (r4 == 0) goto L56
            goto L14
        L56:
            com.google.protobuf.InvalidProtocolBufferException r8 = new com.google.protobuf.InvalidProtocolBufferException     // Catch: java.lang.Throwable -> L65
            r8.<init>(r6)     // Catch: java.lang.Throwable -> L65
            throw r8     // Catch: java.lang.Throwable -> L65
        L5c:
            r8.put(r2, r3)     // Catch: java.lang.Throwable -> L65
            com.google.protobuf.p r8 = r7.f15197a
            r8.p(r1)
            return
        L65:
            r8 = move-exception
            com.google.protobuf.p r9 = r7.f15197a
            r9.p(r1)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.q.p(java.util.Map, com.google.protobuf.f1$b, com.google.protobuf.f0):void");
    }

    @Override // com.google.protobuf.k2
    public void q(List<String> list) throws IOException {
        U(list, true);
    }

    @Override // com.google.protobuf.k2
    public ByteString r() throws IOException {
        W(2);
        return this.f15197a.s();
    }

    @Override // com.google.protobuf.k2
    public double readDouble() throws IOException {
        W(1);
        return this.f15197a.t();
    }

    @Override // com.google.protobuf.k2
    public float readFloat() throws IOException {
        W(5);
        return this.f15197a.x();
    }

    @Override // com.google.protobuf.k2
    public int s() throws IOException {
        W(0);
        return this.f15197a.z();
    }

    @Override // com.google.protobuf.k2
    public void t(List<Long> list) throws IOException {
        int L;
        int L2;
        if (list instanceof c1) {
            c1 c1Var = (c1) list;
            int b10 = WireFormat.b(this.f15198b);
            if (b10 == 1) {
                do {
                    c1Var.I0(this.f15197a.w());
                    if (this.f15197a.g()) {
                        return;
                    }
                    L2 = this.f15197a.L();
                } while (L2 == this.f15198b);
                this.f15200d = L2;
                return;
            } else if (b10 == 2) {
                int M = this.f15197a.M();
                Y(M);
                int f10 = this.f15197a.f() + M;
                do {
                    c1Var.I0(this.f15197a.w());
                } while (this.f15197a.f() < f10);
                return;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        int b11 = WireFormat.b(this.f15198b);
        if (b11 == 1) {
            do {
                list.add(Long.valueOf(this.f15197a.w()));
                if (this.f15197a.g()) {
                    return;
                }
                L = this.f15197a.L();
            } while (L == this.f15198b);
            this.f15200d = L;
        } else if (b11 == 2) {
            int M2 = this.f15197a.M();
            Y(M2);
            int f11 = this.f15197a.f() + M2;
            do {
                list.add(Long.valueOf(this.f15197a.w()));
            } while (this.f15197a.f() < f11);
        } else {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    @Override // com.google.protobuf.k2
    public void u(List<Integer> list) throws IOException {
        int L;
        int L2;
        if (list instanceof t0) {
            t0 t0Var = (t0) list;
            int b10 = WireFormat.b(this.f15198b);
            if (b10 == 0) {
                do {
                    t0Var.D0(this.f15197a.H());
                    if (this.f15197a.g()) {
                        return;
                    }
                    L2 = this.f15197a.L();
                } while (L2 == this.f15198b);
                this.f15200d = L2;
                return;
            } else if (b10 == 2) {
                int f10 = this.f15197a.f() + this.f15197a.M();
                do {
                    t0Var.D0(this.f15197a.H());
                } while (this.f15197a.f() < f10);
                V(f10);
                return;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        int b11 = WireFormat.b(this.f15198b);
        if (b11 == 0) {
            do {
                list.add(Integer.valueOf(this.f15197a.H()));
                if (this.f15197a.g()) {
                    return;
                }
                L = this.f15197a.L();
            } while (L == this.f15198b);
            this.f15200d = L;
        } else if (b11 == 2) {
            int f11 = this.f15197a.f() + this.f15197a.M();
            do {
                list.add(Integer.valueOf(this.f15197a.H()));
            } while (this.f15197a.f() < f11);
            V(f11);
        } else {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    @Override // com.google.protobuf.k2
    public long v() throws IOException {
        W(0);
        return this.f15197a.N();
    }

    @Override // com.google.protobuf.k2
    public void w(List<Integer> list) throws IOException {
        int L;
        int L2;
        if (list instanceof t0) {
            t0 t0Var = (t0) list;
            int b10 = WireFormat.b(this.f15198b);
            if (b10 == 0) {
                do {
                    t0Var.D0(this.f15197a.M());
                    if (this.f15197a.g()) {
                        return;
                    }
                    L2 = this.f15197a.L();
                } while (L2 == this.f15198b);
                this.f15200d = L2;
                return;
            } else if (b10 == 2) {
                int f10 = this.f15197a.f() + this.f15197a.M();
                do {
                    t0Var.D0(this.f15197a.M());
                } while (this.f15197a.f() < f10);
                V(f10);
                return;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        int b11 = WireFormat.b(this.f15198b);
        if (b11 == 0) {
            do {
                list.add(Integer.valueOf(this.f15197a.M()));
                if (this.f15197a.g()) {
                    return;
                }
                L = this.f15197a.L();
            } while (L == this.f15198b);
            this.f15200d = L;
        } else if (b11 == 2) {
            int f11 = this.f15197a.f() + this.f15197a.M();
            do {
                list.add(Integer.valueOf(this.f15197a.M()));
            } while (this.f15197a.f() < f11);
            V(f11);
        } else {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    @Override // com.google.protobuf.k2
    public <T> T x(Class<T> cls, f0 f0Var) throws IOException {
        W(2);
        return (T) T(g2.a().d(cls), f0Var);
    }

    @Override // com.google.protobuf.k2
    public int y() throws IOException {
        W(5);
        return this.f15197a.v();
    }

    @Override // com.google.protobuf.k2
    public <T> T z(n2<T> n2Var, f0 f0Var) throws IOException {
        W(3);
        return (T) S(n2Var, f0Var);
    }
}
