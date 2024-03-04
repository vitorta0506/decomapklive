package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class li {

    /* renamed from: f  reason: collision with root package name */
    private static final li f8840f = new li(0, new int[0], new Object[0], false);

    /* renamed from: a  reason: collision with root package name */
    private int f8841a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f8842b;

    /* renamed from: c  reason: collision with root package name */
    private Object[] f8843c;

    /* renamed from: d  reason: collision with root package name */
    private int f8844d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f8845e;

    private li() {
        this(0, new int[8], new Object[8], true);
    }

    private li(int i9, int[] iArr, Object[] objArr, boolean z10) {
        this.f8844d = -1;
        this.f8841a = i9;
        this.f8842b = iArr;
        this.f8843c = objArr;
        this.f8845e = z10;
    }

    public static li c() {
        return f8840f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static li d(li liVar, li liVar2) {
        int i9 = liVar.f8841a + liVar2.f8841a;
        int[] copyOf = Arrays.copyOf(liVar.f8842b, i9);
        System.arraycopy(liVar2.f8842b, 0, copyOf, liVar.f8841a, liVar2.f8841a);
        Object[] copyOf2 = Arrays.copyOf(liVar.f8843c, i9);
        System.arraycopy(liVar2.f8843c, 0, copyOf2, liVar.f8841a, liVar2.f8841a);
        return new li(i9, copyOf, copyOf2, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static li e() {
        return new li(0, new int[8], new Object[8], true);
    }

    public final int a() {
        int l10;
        int m10;
        int i9;
        int i10 = this.f8844d;
        if (i10 == -1) {
            int i11 = 0;
            for (int i12 = 0; i12 < this.f8841a; i12++) {
                int i13 = this.f8842b[i12];
                int i14 = i13 >>> 3;
                int i15 = i13 & 7;
                if (i15 != 0) {
                    if (i15 == 1) {
                        ((Long) this.f8843c[i12]).longValue();
                        i9 = hf.l(i14 << 3) + 8;
                    } else if (i15 == 2) {
                        int l11 = hf.l(i14 << 3);
                        int zzd = ((zzpy) this.f8843c[i12]).zzd();
                        i11 += l11 + hf.l(zzd) + zzd;
                    } else if (i15 == 3) {
                        int k10 = hf.k(i14);
                        l10 = k10 + k10;
                        m10 = ((li) this.f8843c[i12]).a();
                    } else if (i15 == 5) {
                        ((Integer) this.f8843c[i12]).intValue();
                        i9 = hf.l(i14 << 3) + 4;
                    } else {
                        throw new IllegalStateException(zzrr.zza());
                    }
                    i11 += i9;
                } else {
                    long longValue = ((Long) this.f8843c[i12]).longValue();
                    l10 = hf.l(i14 << 3);
                    m10 = hf.m(longValue);
                }
                i9 = l10 + m10;
                i11 += i9;
            }
            this.f8844d = i11;
            return i11;
        }
        return i10;
    }

    public final int b() {
        int i9 = this.f8844d;
        if (i9 == -1) {
            int i10 = 0;
            for (int i11 = 0; i11 < this.f8841a; i11++) {
                int i12 = this.f8842b[i11];
                int l10 = hf.l(8);
                int zzd = ((zzpy) this.f8843c[i11]).zzd();
                i10 += l10 + l10 + hf.l(16) + hf.l(i12 >>> 3) + hf.l(24) + hf.l(zzd) + zzd;
            }
            this.f8844d = i10;
            return i10;
        }
        return i9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof li)) {
            li liVar = (li) obj;
            int i9 = this.f8841a;
            if (i9 == liVar.f8841a) {
                int[] iArr = this.f8842b;
                int[] iArr2 = liVar.f8842b;
                int i10 = 0;
                while (true) {
                    if (i10 >= i9) {
                        Object[] objArr = this.f8843c;
                        Object[] objArr2 = liVar.f8843c;
                        int i11 = this.f8841a;
                        for (int i12 = 0; i12 < i11; i12++) {
                            if (objArr[i12].equals(objArr2[i12])) {
                            }
                        }
                        return true;
                    } else if (iArr[i10] != iArr2[i10]) {
                        break;
                    } else {
                        i10++;
                    }
                }
            }
            return false;
        }
        return false;
    }

    public final void f() {
        this.f8845e = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g(StringBuilder sb2, int i9) {
        for (int i10 = 0; i10 < this.f8841a; i10++) {
            ih.b(sb2, i9, String.valueOf(this.f8842b[i10] >>> 3), this.f8843c[i10]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h(int i9, Object obj) {
        if (this.f8845e) {
            int i10 = this.f8841a;
            int[] iArr = this.f8842b;
            if (i10 == iArr.length) {
                int i11 = i10 + (i10 < 4 ? 8 : i10 >> 1);
                this.f8842b = Arrays.copyOf(iArr, i11);
                this.f8843c = Arrays.copyOf(this.f8843c, i11);
            }
            int[] iArr2 = this.f8842b;
            int i12 = this.f8841a;
            iArr2[i12] = i9;
            this.f8843c[i12] = obj;
            this.f8841a = i12 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final int hashCode() {
        int i9 = this.f8841a;
        int i10 = (i9 + 527) * 31;
        int[] iArr = this.f8842b;
        int i11 = 17;
        int i12 = 17;
        for (int i13 = 0; i13 < i9; i13++) {
            i12 = (i12 * 31) + iArr[i13];
        }
        int i14 = (i10 + i12) * 31;
        Object[] objArr = this.f8843c;
        int i15 = this.f8841a;
        for (int i16 = 0; i16 < i15; i16++) {
            i11 = (i11 * 31) + objArr[i16].hashCode();
        }
        return i14 + i11;
    }

    public final void i(bj bjVar) throws IOException {
        if (this.f8841a != 0) {
            for (int i9 = 0; i9 < this.f8841a; i9++) {
                int i10 = this.f8842b[i9];
                Object obj = this.f8843c[i9];
                int i11 = i10 >>> 3;
                int i12 = i10 & 7;
                if (i12 == 0) {
                    bjVar.h(i11, ((Long) obj).longValue());
                } else if (i12 == 1) {
                    bjVar.v(i11, ((Long) obj).longValue());
                } else if (i12 == 2) {
                    bjVar.F(i11, (zzpy) obj);
                } else if (i12 == 3) {
                    bjVar.B(i11);
                    ((li) obj).i(bjVar);
                    bjVar.e(i11);
                } else if (i12 == 5) {
                    bjVar.o(i11, ((Integer) obj).intValue());
                } else {
                    throw new RuntimeException(zzrr.zza());
                }
            }
        }
    }
}
