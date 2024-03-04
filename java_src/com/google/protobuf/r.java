package com.google.protobuf;

import com.google.protobuf.WireFormat;
import com.google.protobuf.Writer;
import com.google.protobuf.f1;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class r implements Writer {

    /* renamed from: a  reason: collision with root package name */
    private final CodedOutputStream f15206a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15207a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f15207a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15207a[WireFormat.FieldType.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15207a[WireFormat.FieldType.INT32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15207a[WireFormat.FieldType.SFIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15207a[WireFormat.FieldType.SINT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15207a[WireFormat.FieldType.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15207a[WireFormat.FieldType.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15207a[WireFormat.FieldType.INT64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15207a[WireFormat.FieldType.SFIXED64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f15207a[WireFormat.FieldType.SINT64.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f15207a[WireFormat.FieldType.UINT64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f15207a[WireFormat.FieldType.STRING.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private r(CodedOutputStream codedOutputStream) {
        CodedOutputStream codedOutputStream2 = (CodedOutputStream) u0.b(codedOutputStream, "output");
        this.f15206a = codedOutputStream2;
        codedOutputStream2.f14305a = this;
    }

    public static r T(CodedOutputStream codedOutputStream) {
        r rVar = codedOutputStream.f14305a;
        return rVar != null ? rVar : new r(codedOutputStream);
    }

    private <V> void U(int i9, boolean z10, V v10, f1.b<Boolean, V> bVar) throws IOException {
        this.f15206a.b1(i9, 2);
        this.f15206a.d1(f1.b(bVar, Boolean.valueOf(z10), v10));
        f1.f(this.f15206a, bVar, Boolean.valueOf(z10), v10);
    }

    private <V> void V(int i9, f1.b<Integer, V> bVar, Map<Integer, V> map) throws IOException {
        int size = map.size();
        int[] iArr = new int[size];
        int i10 = 0;
        for (Integer num : map.keySet()) {
            iArr[i10] = num.intValue();
            i10++;
        }
        Arrays.sort(iArr);
        for (int i11 = 0; i11 < size; i11++) {
            int i12 = iArr[i11];
            V v10 = map.get(Integer.valueOf(i12));
            this.f15206a.b1(i9, 2);
            this.f15206a.d1(f1.b(bVar, Integer.valueOf(i12), v10));
            f1.f(this.f15206a, bVar, Integer.valueOf(i12), v10);
        }
    }

    private <V> void W(int i9, f1.b<Long, V> bVar, Map<Long, V> map) throws IOException {
        int size = map.size();
        long[] jArr = new long[size];
        int i10 = 0;
        for (Long l10 : map.keySet()) {
            jArr[i10] = l10.longValue();
            i10++;
        }
        Arrays.sort(jArr);
        for (int i11 = 0; i11 < size; i11++) {
            long j10 = jArr[i11];
            V v10 = map.get(Long.valueOf(j10));
            this.f15206a.b1(i9, 2);
            this.f15206a.d1(f1.b(bVar, Long.valueOf(j10), v10));
            f1.f(this.f15206a, bVar, Long.valueOf(j10), v10);
        }
    }

    private <K, V> void X(int i9, f1.b<K, V> bVar, Map<K, V> map) throws IOException {
        switch (a.f15207a[bVar.f14957a.ordinal()]) {
            case 1:
                V v10 = map.get(Boolean.FALSE);
                if (v10 != null) {
                    U(i9, false, v10, bVar);
                }
                V v11 = map.get(Boolean.TRUE);
                if (v11 != null) {
                    U(i9, true, v11, bVar);
                    return;
                }
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                V(i9, bVar, map);
                return;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                W(i9, bVar, map);
                return;
            case 12:
                Y(i9, bVar, map);
                return;
            default:
                throw new IllegalArgumentException("does not support key type: " + bVar.f14957a);
        }
    }

    private <V> void Y(int i9, f1.b<String, V> bVar, Map<String, V> map) throws IOException {
        int size = map.size();
        String[] strArr = new String[size];
        int i10 = 0;
        for (String str : map.keySet()) {
            strArr[i10] = str;
            i10++;
        }
        Arrays.sort(strArr);
        for (int i11 = 0; i11 < size; i11++) {
            String str2 = strArr[i11];
            V v10 = map.get(str2);
            this.f15206a.b1(i9, 2);
            this.f15206a.d1(f1.b(bVar, str2, v10));
            f1.f(this.f15206a, bVar, str2, v10);
        }
    }

    private void Z(int i9, Object obj) throws IOException {
        if (obj instanceof String) {
            this.f15206a.Z0(i9, (String) obj);
        } else {
            this.f15206a.r0(i9, (ByteString) obj);
        }
    }

    @Override // com.google.protobuf.Writer
    public void A(int i9, List<?> list) throws IOException {
        for (int i10 = 0; i10 < list.size(); i10++) {
            B(i9, list.get(i10));
        }
    }

    @Override // com.google.protobuf.Writer
    public void B(int i9, Object obj) throws IOException {
        this.f15206a.L0(i9, (o1) obj);
    }

    @Override // com.google.protobuf.Writer
    public void C(int i9, long j10) throws IOException {
        this.f15206a.J0(i9, j10);
    }

    @Override // com.google.protobuf.Writer
    public void D(int i9, boolean z10) throws IOException {
        this.f15206a.n0(i9, z10);
    }

    @Override // com.google.protobuf.Writer
    public void E(int i9, int i10) throws IOException {
        this.f15206a.R0(i9, i10);
    }

    @Override // com.google.protobuf.Writer
    public void F(int i9) throws IOException {
        this.f15206a.b1(i9, 3);
    }

    @Override // com.google.protobuf.Writer
    public void G(int i9, List<Long> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f15206a.b1(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += CodedOutputStream.q(list.get(i12).longValue());
            }
            this.f15206a.d1(i11);
            while (i10 < list.size()) {
                this.f15206a.A0(list.get(i10).longValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f15206a.z0(i9, list.get(i10).longValue());
            i10++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void H(int i9, List<Integer> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f15206a.b1(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += CodedOutputStream.O(list.get(i12).intValue());
            }
            this.f15206a.d1(i11);
            while (i10 < list.size()) {
                this.f15206a.S0(list.get(i10).intValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f15206a.R0(i9, list.get(i10).intValue());
            i10++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void I(int i9, List<Boolean> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f15206a.b1(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += CodedOutputStream.f(list.get(i12).booleanValue());
            }
            this.f15206a.d1(i11);
            while (i10 < list.size()) {
                this.f15206a.o0(list.get(i10).booleanValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f15206a.n0(i9, list.get(i10).booleanValue());
            i10++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void J(int i9, Object obj) throws IOException {
        this.f15206a.D0(i9, (o1) obj);
    }

    @Override // com.google.protobuf.Writer
    public <K, V> void K(int i9, f1.b<K, V> bVar, Map<K, V> map) throws IOException {
        if (this.f15206a.g0()) {
            X(i9, bVar, map);
            return;
        }
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f15206a.b1(i9, 2);
            this.f15206a.d1(f1.b(bVar, entry.getKey(), entry.getValue()));
            f1.f(this.f15206a, bVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.protobuf.Writer
    public void L(int i9, float f10) throws IOException {
        this.f15206a.B0(i9, f10);
    }

    @Override // com.google.protobuf.Writer
    public void M(int i9) throws IOException {
        this.f15206a.b1(i9, 4);
    }

    @Override // com.google.protobuf.Writer
    public void N(int i9, List<Integer> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f15206a.b1(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += CodedOutputStream.S(list.get(i12).intValue());
            }
            this.f15206a.d1(i11);
            while (i10 < list.size()) {
                this.f15206a.W0(list.get(i10).intValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f15206a.V0(i9, list.get(i10).intValue());
            i10++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void O(int i9, int i10) throws IOException {
        this.f15206a.v0(i9, i10);
    }

    @Override // com.google.protobuf.Writer
    public void P(int i9, List<Long> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f15206a.b1(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += CodedOutputStream.A(list.get(i12).longValue());
            }
            this.f15206a.d1(i11);
            while (i10 < list.size()) {
                this.f15206a.K0(list.get(i10).longValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f15206a.J0(i9, list.get(i10).longValue());
            i10++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void Q(int i9, List<Double> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f15206a.b1(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += CodedOutputStream.k(list.get(i12).doubleValue());
            }
            this.f15206a.d1(i11);
            while (i10 < list.size()) {
                this.f15206a.u0(list.get(i10).doubleValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f15206a.t0(i9, list.get(i10).doubleValue());
            i10++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void R(int i9, int i10) throws IOException {
        this.f15206a.V0(i9, i10);
    }

    @Override // com.google.protobuf.Writer
    public void S(int i9, List<ByteString> list) throws IOException {
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.f15206a.r0(i9, list.get(i10));
        }
    }

    @Override // com.google.protobuf.Writer
    public void a(int i9, List<?> list, n2 n2Var) throws IOException {
        for (int i10 = 0; i10 < list.size(); i10++) {
            x(i9, list.get(i10), n2Var);
        }
    }

    @Override // com.google.protobuf.Writer
    public void b(int i9, List<Float> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f15206a.b1(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += CodedOutputStream.s(list.get(i12).floatValue());
            }
            this.f15206a.d1(i11);
            while (i10 < list.size()) {
                this.f15206a.C0(list.get(i10).floatValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f15206a.B0(i9, list.get(i10).floatValue());
            i10++;
        }
    }

    @Override // com.google.protobuf.Writer
    public final void c(int i9, Object obj) throws IOException {
        if (obj instanceof ByteString) {
            this.f15206a.P0(i9, (ByteString) obj);
        } else {
            this.f15206a.O0(i9, (o1) obj);
        }
    }

    @Override // com.google.protobuf.Writer
    public void d(int i9, int i10) throws IOException {
        this.f15206a.x0(i9, i10);
    }

    @Override // com.google.protobuf.Writer
    public void e(int i9, List<?> list) throws IOException {
        for (int i10 = 0; i10 < list.size(); i10++) {
            J(i9, list.get(i10));
        }
    }

    @Override // com.google.protobuf.Writer
    public void f(int i9, List<String> list) throws IOException {
        int i10 = 0;
        if (list instanceof z0) {
            z0 z0Var = (z0) list;
            while (i10 < list.size()) {
                Z(i9, z0Var.c1(i10));
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f15206a.Z0(i9, list.get(i10));
            i10++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void g(int i9, String str) throws IOException {
        this.f15206a.Z0(i9, str);
    }

    @Override // com.google.protobuf.Writer
    public void h(int i9, long j10) throws IOException {
        this.f15206a.e1(i9, j10);
    }

    @Override // com.google.protobuf.Writer
    public void i(int i9, List<Integer> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f15206a.b1(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += CodedOutputStream.y(list.get(i12).intValue());
            }
            this.f15206a.d1(i11);
            while (i10 < list.size()) {
                this.f15206a.I0(list.get(i10).intValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f15206a.H0(i9, list.get(i10).intValue());
            i10++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void j(int i9, Object obj, n2 n2Var) throws IOException {
        this.f15206a.E0(i9, (o1) obj, n2Var);
    }

    @Override // com.google.protobuf.Writer
    public void k(int i9, ByteString byteString) throws IOException {
        this.f15206a.r0(i9, byteString);
    }

    @Override // com.google.protobuf.Writer
    public void l(int i9, int i10) throws IOException {
        this.f15206a.H0(i9, i10);
    }

    @Override // com.google.protobuf.Writer
    public void m(int i9, long j10) throws IOException {
        this.f15206a.T0(i9, j10);
    }

    @Override // com.google.protobuf.Writer
    public void n(int i9, List<Integer> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f15206a.b1(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += CodedOutputStream.o(list.get(i12).intValue());
            }
            this.f15206a.d1(i11);
            while (i10 < list.size()) {
                this.f15206a.y0(list.get(i10).intValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f15206a.x0(i9, list.get(i10).intValue());
            i10++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void o(int i9, List<Integer> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f15206a.b1(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += CodedOutputStream.Z(list.get(i12).intValue());
            }
            this.f15206a.d1(i11);
            while (i10 < list.size()) {
                this.f15206a.d1(list.get(i10).intValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f15206a.c1(i9, list.get(i10).intValue());
            i10++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void p(int i9, List<Long> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f15206a.b1(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += CodedOutputStream.U(list.get(i12).longValue());
            }
            this.f15206a.d1(i11);
            while (i10 < list.size()) {
                this.f15206a.Y0(list.get(i10).longValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f15206a.X0(i9, list.get(i10).longValue());
            i10++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void q(int i9, long j10) throws IOException {
        this.f15206a.X0(i9, j10);
    }

    @Override // com.google.protobuf.Writer
    public void r(int i9, List<Integer> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f15206a.b1(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += CodedOutputStream.m(list.get(i12).intValue());
            }
            this.f15206a.d1(i11);
            while (i10 < list.size()) {
                this.f15206a.w0(list.get(i10).intValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f15206a.v0(i9, list.get(i10).intValue());
            i10++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void s(int i9, List<?> list, n2 n2Var) throws IOException {
        for (int i10 = 0; i10 < list.size(); i10++) {
            j(i9, list.get(i10), n2Var);
        }
    }

    @Override // com.google.protobuf.Writer
    public void t(int i9, int i10) throws IOException {
        this.f15206a.c1(i9, i10);
    }

    @Override // com.google.protobuf.Writer
    public void u(int i9, double d10) throws IOException {
        this.f15206a.t0(i9, d10);
    }

    @Override // com.google.protobuf.Writer
    public void v(int i9, List<Long> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f15206a.b1(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += CodedOutputStream.Q(list.get(i12).longValue());
            }
            this.f15206a.d1(i11);
            while (i10 < list.size()) {
                this.f15206a.U0(list.get(i10).longValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f15206a.T0(i9, list.get(i10).longValue());
            i10++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void w(int i9, List<Long> list, boolean z10) throws IOException {
        int i10 = 0;
        if (z10) {
            this.f15206a.b1(i9, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                i11 += CodedOutputStream.b0(list.get(i12).longValue());
            }
            this.f15206a.d1(i11);
            while (i10 < list.size()) {
                this.f15206a.f1(list.get(i10).longValue());
                i10++;
            }
            return;
        }
        while (i10 < list.size()) {
            this.f15206a.e1(i9, list.get(i10).longValue());
            i10++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void x(int i9, Object obj, n2 n2Var) throws IOException {
        this.f15206a.M0(i9, (o1) obj, n2Var);
    }

    @Override // com.google.protobuf.Writer
    public void y(int i9, long j10) throws IOException {
        this.f15206a.z0(i9, j10);
    }

    @Override // com.google.protobuf.Writer
    public Writer.FieldOrder z() {
        return Writer.FieldOrder.ASCENDING;
    }
}
