package com.google.android.gms.internal.measurement;

import java.io.IOException;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class m7 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i9, l7 l7Var) throws zzko {
        int j10 = j(bArr, i9, l7Var);
        int i10 = l7Var.f8180a;
        if (i10 >= 0) {
            if (i10 <= bArr.length - j10) {
                if (i10 == 0) {
                    l7Var.f8182c = zzjd.zzb;
                    return j10;
                }
                l7Var.f8182c = zzjd.zzl(bArr, j10, i10);
                return j10 + i10;
            }
            throw zzko.zzf();
        }
        throw zzko.zzd();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(byte[] bArr, int i9) {
        return ((bArr[i9 + 3] & UByte.MAX_VALUE) << 24) | (bArr[i9] & UByte.MAX_VALUE) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(ka kaVar, byte[] bArr, int i9, int i10, int i11, l7 l7Var) throws IOException {
        ca caVar = (ca) kaVar;
        Object l10 = caVar.l();
        int D = caVar.D(l10, bArr, i9, i10, i11, l7Var);
        caVar.c(l10);
        l7Var.f8182c = l10;
        return D;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(ka kaVar, byte[] bArr, int i9, int i10, l7 l7Var) throws IOException {
        int i11 = i9 + 1;
        int i12 = bArr[i9];
        if (i12 < 0) {
            i11 = k(i12, bArr, i11, l7Var);
            i12 = l7Var.f8180a;
        }
        int i13 = i11;
        if (i12 >= 0 && i12 <= i10 - i13) {
            Object l10 = kaVar.l();
            int i14 = i12 + i13;
            kaVar.h(l10, bArr, i13, i14, l7Var);
            kaVar.c(l10);
            l7Var.f8182c = l10;
            return i14;
        }
        throw zzko.zzf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(ka kaVar, int i9, byte[] bArr, int i10, int i11, d9 d9Var, l7 l7Var) throws IOException {
        int d10 = d(kaVar, bArr, i10, i11, l7Var);
        d9Var.add(l7Var.f8182c);
        while (d10 < i11) {
            int j10 = j(bArr, d10, l7Var);
            if (i9 != l7Var.f8180a) {
                break;
            }
            d10 = d(kaVar, bArr, j10, i11, l7Var);
            d9Var.add(l7Var.f8182c);
        }
        return d10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(byte[] bArr, int i9, d9 d9Var, l7 l7Var) throws IOException {
        y8 y8Var = (y8) d9Var;
        int j10 = j(bArr, i9, l7Var);
        int i10 = l7Var.f8180a + j10;
        while (j10 < i10) {
            j10 = j(bArr, j10, l7Var);
            y8Var.e(l7Var.f8180a);
        }
        if (j10 == i10) {
            return j10;
        }
        throw zzko.zzf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(byte[] bArr, int i9, l7 l7Var) throws zzko {
        int j10 = j(bArr, i9, l7Var);
        int i10 = l7Var.f8180a;
        if (i10 >= 0) {
            if (i10 == 0) {
                l7Var.f8182c = "";
                return j10;
            }
            l7Var.f8182c = new String(bArr, j10, i10, e9.f8050b);
            return j10 + i10;
        }
        throw zzko.zzd();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(byte[] bArr, int i9, l7 l7Var) throws zzko {
        int j10 = j(bArr, i9, l7Var);
        int i10 = l7Var.f8180a;
        if (i10 >= 0) {
            if (i10 == 0) {
                l7Var.f8182c = "";
                return j10;
            }
            l7Var.f8182c = rb.d(bArr, j10, i10);
            return j10 + i10;
        }
        throw zzko.zzd();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(int i9, byte[] bArr, int i10, int i11, cb cbVar, l7 l7Var) throws zzko {
        if ((i9 >>> 3) != 0) {
            int i12 = i9 & 7;
            if (i12 == 0) {
                int m10 = m(bArr, i10, l7Var);
                cbVar.h(i9, Long.valueOf(l7Var.f8181b));
                return m10;
            } else if (i12 == 1) {
                cbVar.h(i9, Long.valueOf(n(bArr, i10)));
                return i10 + 8;
            } else if (i12 == 2) {
                int j10 = j(bArr, i10, l7Var);
                int i13 = l7Var.f8180a;
                if (i13 >= 0) {
                    if (i13 <= bArr.length - j10) {
                        if (i13 == 0) {
                            cbVar.h(i9, zzjd.zzb);
                        } else {
                            cbVar.h(i9, zzjd.zzl(bArr, j10, i13));
                        }
                        return j10 + i13;
                    }
                    throw zzko.zzf();
                }
                throw zzko.zzd();
            } else if (i12 != 3) {
                if (i12 == 5) {
                    cbVar.h(i9, Integer.valueOf(b(bArr, i10)));
                    return i10 + 4;
                }
                throw zzko.zzb();
            } else {
                int i14 = (i9 & (-8)) | 4;
                cb e10 = cb.e();
                int i15 = 0;
                while (true) {
                    if (i10 >= i11) {
                        break;
                    }
                    int j11 = j(bArr, i10, l7Var);
                    int i16 = l7Var.f8180a;
                    if (i16 == i14) {
                        i15 = i16;
                        i10 = j11;
                        break;
                    }
                    i15 = i16;
                    i10 = i(i16, bArr, j11, i11, e10, l7Var);
                }
                if (i10 <= i11 && i15 == i14) {
                    cbVar.h(i9, e10);
                    return i10;
                }
                throw zzko.zze();
            }
        }
        throw zzko.zzb();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(byte[] bArr, int i9, l7 l7Var) {
        int i10 = i9 + 1;
        byte b10 = bArr[i9];
        if (b10 >= 0) {
            l7Var.f8180a = b10;
            return i10;
        }
        return k(b10, bArr, i10, l7Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int k(int i9, byte[] bArr, int i10, l7 l7Var) {
        int i11 = i9 & 127;
        int i12 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 >= 0) {
            l7Var.f8180a = i11 | (b10 << 7);
            return i12;
        }
        int i13 = i11 | ((b10 & ByteCompanionObject.MAX_VALUE) << 7);
        int i14 = i12 + 1;
        byte b11 = bArr[i12];
        if (b11 >= 0) {
            l7Var.f8180a = i13 | (b11 << 14);
            return i14;
        }
        int i15 = i13 | ((b11 & ByteCompanionObject.MAX_VALUE) << 14);
        int i16 = i14 + 1;
        byte b12 = bArr[i14];
        if (b12 >= 0) {
            l7Var.f8180a = i15 | (b12 << 21);
            return i16;
        }
        int i17 = i15 | ((b12 & ByteCompanionObject.MAX_VALUE) << 21);
        int i18 = i16 + 1;
        byte b13 = bArr[i16];
        if (b13 >= 0) {
            l7Var.f8180a = i17 | (b13 << 28);
            return i18;
        }
        int i19 = i17 | ((b13 & ByteCompanionObject.MAX_VALUE) << 28);
        while (true) {
            int i20 = i18 + 1;
            if (bArr[i18] >= 0) {
                l7Var.f8180a = i19;
                return i20;
            }
            i18 = i20;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int l(int i9, byte[] bArr, int i10, int i11, d9 d9Var, l7 l7Var) {
        y8 y8Var = (y8) d9Var;
        int j10 = j(bArr, i10, l7Var);
        y8Var.e(l7Var.f8180a);
        while (j10 < i11) {
            int j11 = j(bArr, j10, l7Var);
            if (i9 != l7Var.f8180a) {
                break;
            }
            j10 = j(bArr, j11, l7Var);
            y8Var.e(l7Var.f8180a);
        }
        return j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int m(byte[] bArr, int i9, l7 l7Var) {
        byte b10;
        int i10 = i9 + 1;
        long j10 = bArr[i9];
        if (j10 >= 0) {
            l7Var.f8181b = j10;
            return i10;
        }
        int i11 = i10 + 1;
        byte b11 = bArr[i10];
        long j11 = (j10 & 127) | ((b11 & ByteCompanionObject.MAX_VALUE) << 7);
        int i12 = 7;
        while (b11 < 0) {
            int i13 = i11 + 1;
            i12 += 7;
            j11 |= (b10 & ByteCompanionObject.MAX_VALUE) << i12;
            b11 = bArr[i11];
            i11 = i13;
        }
        l7Var.f8181b = j11;
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long n(byte[] bArr, int i9) {
        return ((bArr[i9 + 7] & 255) << 56) | (bArr[i9] & 255) | ((bArr[i9 + 1] & 255) << 8) | ((bArr[i9 + 2] & 255) << 16) | ((bArr[i9 + 3] & 255) << 24) | ((bArr[i9 + 4] & 255) << 32) | ((bArr[i9 + 5] & 255) << 40) | ((bArr[i9 + 6] & 255) << 48);
    }
}
