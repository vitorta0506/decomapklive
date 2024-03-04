package com.google.protobuf;

import com.google.protobuf.Writer;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes3.dex */
public final class i3 {

    /* renamed from: f  reason: collision with root package name */
    private static final i3 f15007f = new i3(0, new int[0], new Object[0], false);

    /* renamed from: a  reason: collision with root package name */
    private int f15008a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f15009b;

    /* renamed from: c  reason: collision with root package name */
    private Object[] f15010c;

    /* renamed from: d  reason: collision with root package name */
    private int f15011d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f15012e;

    private i3() {
        this(0, new int[8], new Object[8], true);
    }

    private void b() {
        int i9 = this.f15008a;
        int[] iArr = this.f15009b;
        if (i9 == iArr.length) {
            int i10 = i9 + (i9 < 4 ? 8 : i9 >> 1);
            this.f15009b = Arrays.copyOf(iArr, i10);
            this.f15010c = Arrays.copyOf(this.f15010c, i10);
        }
    }

    public static i3 c() {
        return f15007f;
    }

    private static int f(int[] iArr, int i9) {
        int i10 = 17;
        for (int i11 = 0; i11 < i9; i11++) {
            i10 = (i10 * 31) + iArr[i11];
        }
        return i10;
    }

    private static int g(Object[] objArr, int i9) {
        int i10 = 17;
        for (int i11 = 0; i11 < i9; i11++) {
            i10 = (i10 * 31) + objArr[i11].hashCode();
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i3 i(i3 i3Var, i3 i3Var2) {
        int i9 = i3Var.f15008a + i3Var2.f15008a;
        int[] copyOf = Arrays.copyOf(i3Var.f15009b, i9);
        System.arraycopy(i3Var2.f15009b, 0, copyOf, i3Var.f15008a, i3Var2.f15008a);
        Object[] copyOf2 = Arrays.copyOf(i3Var.f15010c, i9);
        System.arraycopy(i3Var2.f15010c, 0, copyOf2, i3Var.f15008a, i3Var2.f15008a);
        return new i3(i9, copyOf, copyOf2, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i3 j() {
        return new i3();
    }

    private static boolean k(Object[] objArr, Object[] objArr2, int i9) {
        for (int i10 = 0; i10 < i9; i10++) {
            if (!objArr[i10].equals(objArr2[i10])) {
                return false;
            }
        }
        return true;
    }

    private static boolean n(int[] iArr, int[] iArr2, int i9) {
        for (int i10 = 0; i10 < i9; i10++) {
            if (iArr[i10] != iArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    private static void p(int i9, Object obj, Writer writer) throws IOException {
        int a10 = WireFormat.a(i9);
        int b10 = WireFormat.b(i9);
        if (b10 == 0) {
            writer.C(a10, ((Long) obj).longValue());
        } else if (b10 == 1) {
            writer.y(a10, ((Long) obj).longValue());
        } else if (b10 == 2) {
            writer.k(a10, (ByteString) obj);
        } else if (b10 != 3) {
            if (b10 == 5) {
                writer.d(a10, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(InvalidProtocolBufferException.invalidWireType());
        } else if (writer.z() == Writer.FieldOrder.ASCENDING) {
            writer.F(a10);
            ((i3) obj).q(writer);
            writer.M(a10);
        } else {
            writer.M(a10);
            ((i3) obj).q(writer);
            writer.F(a10);
        }
    }

    void a() {
        if (!this.f15012e) {
            throw new UnsupportedOperationException();
        }
    }

    public int d() {
        int a02;
        int i9 = this.f15011d;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.f15008a; i11++) {
            int i12 = this.f15009b[i11];
            int a10 = WireFormat.a(i12);
            int b10 = WireFormat.b(i12);
            if (b10 == 0) {
                a02 = CodedOutputStream.a0(a10, ((Long) this.f15010c[i11]).longValue());
            } else if (b10 == 1) {
                a02 = CodedOutputStream.p(a10, ((Long) this.f15010c[i11]).longValue());
            } else if (b10 == 2) {
                a02 = CodedOutputStream.h(a10, (ByteString) this.f15010c[i11]);
            } else if (b10 == 3) {
                a02 = (CodedOutputStream.X(a10) * 2) + ((i3) this.f15010c[i11]).d();
            } else if (b10 == 5) {
                a02 = CodedOutputStream.n(a10, ((Integer) this.f15010c[i11]).intValue());
            } else {
                throw new IllegalStateException(InvalidProtocolBufferException.invalidWireType());
            }
            i10 += a02;
        }
        this.f15011d = i10;
        return i10;
    }

    public int e() {
        int i9 = this.f15011d;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.f15008a; i11++) {
            i10 += CodedOutputStream.L(WireFormat.a(this.f15009b[i11]), (ByteString) this.f15010c[i11]);
        }
        this.f15011d = i10;
        return i10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof i3)) {
            i3 i3Var = (i3) obj;
            int i9 = this.f15008a;
            return i9 == i3Var.f15008a && n(this.f15009b, i3Var.f15009b, i9) && k(this.f15010c, i3Var.f15010c, this.f15008a);
        }
        return false;
    }

    public void h() {
        this.f15012e = false;
    }

    public int hashCode() {
        int i9 = this.f15008a;
        return ((((527 + i9) * 31) + f(this.f15009b, i9)) * 31) + g(this.f15010c, this.f15008a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void l(StringBuilder sb2, int i9) {
        for (int i10 = 0; i10 < this.f15008a; i10++) {
            q1.c(sb2, i9, String.valueOf(WireFormat.a(this.f15009b[i10])), this.f15010c[i10]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(int i9, Object obj) {
        a();
        b();
        int[] iArr = this.f15009b;
        int i10 = this.f15008a;
        iArr[i10] = i9;
        this.f15010c[i10] = obj;
        this.f15008a = i10 + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(Writer writer) throws IOException {
        if (writer.z() == Writer.FieldOrder.DESCENDING) {
            for (int i9 = this.f15008a - 1; i9 >= 0; i9--) {
                writer.c(WireFormat.a(this.f15009b[i9]), this.f15010c[i9]);
            }
            return;
        }
        for (int i10 = 0; i10 < this.f15008a; i10++) {
            writer.c(WireFormat.a(this.f15009b[i10]), this.f15010c[i10]);
        }
    }

    public void q(Writer writer) throws IOException {
        if (this.f15008a == 0) {
            return;
        }
        if (writer.z() == Writer.FieldOrder.ASCENDING) {
            for (int i9 = 0; i9 < this.f15008a; i9++) {
                p(this.f15009b[i9], this.f15010c[i9], writer);
            }
            return;
        }
        for (int i10 = this.f15008a - 1; i10 >= 0; i10--) {
            p(this.f15009b[i10], this.f15010c[i10], writer);
        }
    }

    private i3(int i9, int[] iArr, Object[] objArr, boolean z10) {
        this.f15011d = -1;
        this.f15008a = i9;
        this.f15009b = iArr;
        this.f15010c = objArr;
        this.f15012e = z10;
    }
}
