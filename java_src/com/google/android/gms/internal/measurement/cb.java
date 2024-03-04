package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class cb {

    /* renamed from: f  reason: collision with root package name */
    private static final cb f8014f = new cb(0, new int[0], new Object[0], false);

    /* renamed from: a  reason: collision with root package name */
    private int f8015a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f8016b;

    /* renamed from: c  reason: collision with root package name */
    private Object[] f8017c;

    /* renamed from: d  reason: collision with root package name */
    private int f8018d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f8019e;

    private cb() {
        this(0, new int[8], new Object[8], true);
    }

    private cb(int i9, int[] iArr, Object[] objArr, boolean z10) {
        this.f8018d = -1;
        this.f8015a = i9;
        this.f8016b = iArr;
        this.f8017c = objArr;
        this.f8019e = z10;
    }

    public static cb c() {
        return f8014f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static cb d(cb cbVar, cb cbVar2) {
        int i9 = cbVar.f8015a + cbVar2.f8015a;
        int[] copyOf = Arrays.copyOf(cbVar.f8016b, i9);
        System.arraycopy(cbVar2.f8016b, 0, copyOf, cbVar.f8015a, cbVar2.f8015a);
        Object[] copyOf2 = Arrays.copyOf(cbVar.f8017c, i9);
        System.arraycopy(cbVar2.f8017c, 0, copyOf2, cbVar.f8015a, cbVar2.f8015a);
        return new cb(i9, copyOf, copyOf2, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static cb e() {
        return new cb(0, new int[8], new Object[8], true);
    }

    public final int a() {
        int a10;
        int b10;
        int i9;
        int i10 = this.f8018d;
        if (i10 == -1) {
            int i11 = 0;
            for (int i12 = 0; i12 < this.f8015a; i12++) {
                int i13 = this.f8016b[i12];
                int i14 = i13 >>> 3;
                int i15 = i13 & 7;
                if (i15 != 0) {
                    if (i15 == 1) {
                        ((Long) this.f8017c[i12]).longValue();
                        i9 = f8.a(i14 << 3) + 8;
                    } else if (i15 == 2) {
                        int a11 = f8.a(i14 << 3);
                        int zzd = ((zzjd) this.f8017c[i12]).zzd();
                        i11 += a11 + f8.a(zzd) + zzd;
                    } else if (i15 == 3) {
                        int D = f8.D(i14);
                        a10 = D + D;
                        b10 = ((cb) this.f8017c[i12]).a();
                    } else if (i15 == 5) {
                        ((Integer) this.f8017c[i12]).intValue();
                        i9 = f8.a(i14 << 3) + 4;
                    } else {
                        throw new IllegalStateException(zzko.zza());
                    }
                    i11 += i9;
                } else {
                    long longValue = ((Long) this.f8017c[i12]).longValue();
                    a10 = f8.a(i14 << 3);
                    b10 = f8.b(longValue);
                }
                i9 = a10 + b10;
                i11 += i9;
            }
            this.f8018d = i11;
            return i11;
        }
        return i10;
    }

    public final int b() {
        int i9 = this.f8018d;
        if (i9 == -1) {
            int i10 = 0;
            for (int i11 = 0; i11 < this.f8015a; i11++) {
                int i12 = this.f8016b[i11];
                int a10 = f8.a(8);
                int zzd = ((zzjd) this.f8017c[i11]).zzd();
                i10 += a10 + a10 + f8.a(16) + f8.a(i12 >>> 3) + f8.a(24) + f8.a(zzd) + zzd;
            }
            this.f8018d = i10;
            return i10;
        }
        return i9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof cb)) {
            cb cbVar = (cb) obj;
            int i9 = this.f8015a;
            if (i9 == cbVar.f8015a) {
                int[] iArr = this.f8016b;
                int[] iArr2 = cbVar.f8016b;
                int i10 = 0;
                while (true) {
                    if (i10 >= i9) {
                        Object[] objArr = this.f8017c;
                        Object[] objArr2 = cbVar.f8017c;
                        int i11 = this.f8015a;
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
        this.f8019e = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g(StringBuilder sb2, int i9) {
        for (int i10 = 0; i10 < this.f8015a; i10++) {
            ba.b(sb2, i9, String.valueOf(this.f8016b[i10] >>> 3), this.f8017c[i10]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h(int i9, Object obj) {
        if (this.f8019e) {
            int i10 = this.f8015a;
            int[] iArr = this.f8016b;
            if (i10 == iArr.length) {
                int i11 = i10 + (i10 < 4 ? 8 : i10 >> 1);
                this.f8016b = Arrays.copyOf(iArr, i11);
                this.f8017c = Arrays.copyOf(this.f8017c, i11);
            }
            int[] iArr2 = this.f8016b;
            int i12 = this.f8015a;
            iArr2[i12] = i9;
            this.f8017c[i12] = obj;
            this.f8015a = i12 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final int hashCode() {
        int i9 = this.f8015a;
        int i10 = (i9 + 527) * 31;
        int[] iArr = this.f8016b;
        int i11 = 17;
        int i12 = 17;
        for (int i13 = 0; i13 < i9; i13++) {
            i12 = (i12 * 31) + iArr[i13];
        }
        int i14 = (i10 + i12) * 31;
        Object[] objArr = this.f8017c;
        int i15 = this.f8015a;
        for (int i16 = 0; i16 < i15; i16++) {
            i11 = (i11 * 31) + objArr[i16].hashCode();
        }
        return i14 + i11;
    }

    public final void i(sb sbVar) throws IOException {
        if (this.f8015a != 0) {
            for (int i9 = 0; i9 < this.f8015a; i9++) {
                int i10 = this.f8016b[i9];
                Object obj = this.f8017c[i9];
                int i11 = i10 >>> 3;
                int i12 = i10 & 7;
                if (i12 == 0) {
                    sbVar.h(i11, ((Long) obj).longValue());
                } else if (i12 == 1) {
                    sbVar.v(i11, ((Long) obj).longValue());
                } else if (i12 == 2) {
                    sbVar.y(i11, (zzjd) obj);
                } else if (i12 == 3) {
                    sbVar.C(i11);
                    ((cb) obj).i(sbVar);
                    sbVar.e(i11);
                } else if (i12 == 5) {
                    sbVar.o(i11, ((Integer) obj).intValue());
                } else {
                    throw new RuntimeException(zzko.zza());
                }
            }
        }
    }
}
