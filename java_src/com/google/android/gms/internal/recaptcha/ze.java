package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
import java.util.Arrays;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class ze extends bf {

    /* renamed from: f  reason: collision with root package name */
    private final byte[] f9233f;

    /* renamed from: g  reason: collision with root package name */
    private int f9234g;

    /* renamed from: h  reason: collision with root package name */
    private int f9235h;

    /* renamed from: i  reason: collision with root package name */
    private int f9236i;

    /* renamed from: j  reason: collision with root package name */
    private int f9237j;

    /* renamed from: k  reason: collision with root package name */
    private int f9238k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ze(byte[] bArr, int i9, int i10, boolean z10, xe xeVar) {
        super(null);
        this.f9238k = Integer.MAX_VALUE;
        this.f9233f = bArr;
        this.f9234g = 0;
        this.f9236i = 0;
    }

    private final void C() {
        int i9 = this.f9234g + this.f9235h;
        this.f9234g = i9;
        int i10 = this.f9238k;
        if (i9 <= i10) {
            this.f9235h = 0;
            return;
        }
        int i11 = i9 - i10;
        this.f9235h = i11;
        this.f9234g = i9 - i11;
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final void A(int i9) throws zzrr {
        if (this.f9237j != i9) {
            throw zzrr.zzb();
        }
    }

    public final void B(int i9) throws IOException {
        if (i9 >= 0) {
            int i10 = this.f9234g;
            int i11 = this.f9236i;
            if (i9 <= i10 - i11) {
                this.f9236i = i11 + i9;
                return;
            }
        }
        if (i9 < 0) {
            throw zzrr.zzf();
        }
        throw zzrr.zzj();
    }

    public final byte D() throws IOException {
        int i9 = this.f9236i;
        if (i9 != this.f9234g) {
            byte[] bArr = this.f9233f;
            this.f9236i = i9 + 1;
            return bArr[i9];
        }
        throw zzrr.zzj();
    }

    public final int E() throws IOException {
        int i9 = this.f9236i;
        if (this.f9234g - i9 >= 4) {
            byte[] bArr = this.f9233f;
            this.f9236i = i9 + 4;
            return ((bArr[i9 + 3] & UByte.MAX_VALUE) << 24) | (bArr[i9] & UByte.MAX_VALUE) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 16);
        }
        throw zzrr.zzj();
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0067, code lost:
        if (r2[r3] >= 0) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int F() throws java.io.IOException {
        /*
            r5 = this;
            int r0 = r5.f9236i
            int r1 = r5.f9234g
            if (r1 != r0) goto L7
            goto L6c
        L7:
            byte[] r2 = r5.f9233f
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L12
            r5.f9236i = r3
            return r0
        L12:
            int r1 = r1 - r3
            r4 = 9
            if (r1 < r4) goto L6c
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 7
            r0 = r0 ^ r3
            if (r0 >= 0) goto L23
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            goto L69
        L23:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L30
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
        L2e:
            r1 = r3
            goto L69
        L30:
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 21
            r0 = r0 ^ r3
            if (r0 >= 0) goto L3e
            r2 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r2
            goto L69
        L3e:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r4 = r1 << 28
            r0 = r0 ^ r4
            r4 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r4
            if (r1 >= 0) goto L2e
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L69
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L2e
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L69
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L2e
            int r1 = r3 + 1
            r2 = r2[r3]
            if (r2 < 0) goto L6c
        L69:
            r5.f9236i = r1
            return r0
        L6c:
            long r0 = r5.I()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.recaptcha.ze.F():int");
    }

    public final long G() throws IOException {
        int i9 = this.f9236i;
        if (this.f9234g - i9 >= 8) {
            byte[] bArr = this.f9233f;
            this.f9236i = i9 + 8;
            return ((bArr[i9 + 7] & 255) << 56) | (bArr[i9] & 255) | ((bArr[i9 + 1] & 255) << 8) | ((bArr[i9 + 2] & 255) << 16) | ((bArr[i9 + 3] & 255) << 24) | ((bArr[i9 + 4] & 255) << 32) | ((bArr[i9 + 5] & 255) << 40) | ((bArr[i9 + 6] & 255) << 48);
        }
        throw zzrr.zzj();
    }

    public final long H() throws IOException {
        long j10;
        long j11;
        long j12;
        long j13;
        int i9;
        int i10 = this.f9236i;
        int i11 = this.f9234g;
        if (i11 != i10) {
            byte[] bArr = this.f9233f;
            int i12 = i10 + 1;
            byte b10 = bArr[i10];
            if (b10 >= 0) {
                this.f9236i = i12;
                return b10;
            } else if (i11 - i12 >= 9) {
                int i13 = i12 + 1;
                int i14 = b10 ^ (bArr[i12] << 7);
                if (i14 >= 0) {
                    int i15 = i13 + 1;
                    int i16 = i14 ^ (bArr[i13] << 14);
                    if (i16 >= 0) {
                        j10 = i16 ^ 16256;
                    } else {
                        i13 = i15 + 1;
                        int i17 = i16 ^ (bArr[i15] << 21);
                        if (i17 < 0) {
                            i9 = i17 ^ (-2080896);
                        } else {
                            i15 = i13 + 1;
                            long j14 = (bArr[i13] << 28) ^ i17;
                            if (j14 < 0) {
                                int i18 = i15 + 1;
                                long j15 = j14 ^ (bArr[i15] << 35);
                                if (j15 < 0) {
                                    j12 = -34093383808L;
                                } else {
                                    i15 = i18 + 1;
                                    j14 = j15 ^ (bArr[i18] << 42);
                                    if (j14 >= 0) {
                                        j13 = 4363953127296L;
                                    } else {
                                        i18 = i15 + 1;
                                        j15 = j14 ^ (bArr[i15] << 49);
                                        if (j15 < 0) {
                                            j12 = -558586000294016L;
                                        } else {
                                            i15 = i18 + 1;
                                            j10 = (j15 ^ (bArr[i18] << 56)) ^ 71499008037633920L;
                                            if (j10 < 0) {
                                                i18 = i15 + 1;
                                                if (bArr[i15] >= 0) {
                                                    j11 = j10;
                                                    i13 = i18;
                                                    this.f9236i = i13;
                                                    return j11;
                                                }
                                            }
                                        }
                                    }
                                }
                                j11 = j12 ^ j15;
                                i13 = i18;
                                this.f9236i = i13;
                                return j11;
                            }
                            j13 = 266354560;
                            j10 = j14 ^ j13;
                        }
                    }
                    i13 = i15;
                    j11 = j10;
                    this.f9236i = i13;
                    return j11;
                }
                i9 = i14 ^ (-128);
                j11 = i9;
                this.f9236i = i13;
                return j11;
            }
        }
        return I();
    }

    final long I() throws IOException {
        long j10 = 0;
        for (int i9 = 0; i9 < 64; i9 += 7) {
            byte D = D();
            j10 |= (D & ByteCompanionObject.MAX_VALUE) << i9;
            if ((D & ByteCompanionObject.MIN_VALUE) == 0) {
                return j10;
            }
        }
        throw zzrr.zze();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final void a(int i9) {
        this.f9238k = i9;
        C();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final boolean b() throws IOException {
        return this.f9236i == this.f9234g;
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final boolean c() throws IOException {
        return H() != 0;
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final boolean d(int i9) throws IOException {
        int q10;
        int i10 = i9 & 7;
        int i11 = 0;
        if (i10 == 0) {
            if (this.f9234g - this.f9236i >= 10) {
                while (i11 < 10) {
                    byte[] bArr = this.f9233f;
                    int i12 = this.f9236i;
                    this.f9236i = i12 + 1;
                    if (bArr[i12] < 0) {
                        i11++;
                    }
                }
                throw zzrr.zze();
            }
            while (i11 < 10) {
                if (D() < 0) {
                    i11++;
                }
            }
            throw zzrr.zze();
            return true;
        } else if (i10 == 1) {
            B(8);
            return true;
        } else if (i10 == 2) {
            B(F());
            return true;
        } else if (i10 != 3) {
            if (i10 != 4) {
                if (i10 == 5) {
                    B(4);
                    return true;
                }
                throw zzrr.zza();
            }
            return false;
        } else {
            do {
                q10 = q();
                if (q10 == 0) {
                    break;
                }
            } while (d(q10));
            A(((i9 >>> 3) << 3) | 4);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final double h() throws IOException {
        return Double.longBitsToDouble(G());
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final float i() throws IOException {
        return Float.intBitsToFloat(E());
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final int j() {
        return this.f9236i;
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final int k(int i9) throws zzrr {
        if (i9 >= 0) {
            int i10 = i9 + this.f9236i;
            if (i10 >= 0) {
                int i11 = this.f9238k;
                if (i10 <= i11) {
                    this.f9238k = i10;
                    C();
                    return i11;
                }
                throw zzrr.zzj();
            }
            throw zzrr.zzg();
        }
        throw zzrr.zzf();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final int l() throws IOException {
        return F();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final int m() throws IOException {
        return E();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final int n() throws IOException {
        return F();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final int o() throws IOException {
        return E();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final int p() throws IOException {
        return bf.e(F());
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final int q() throws IOException {
        if (b()) {
            this.f9237j = 0;
            return 0;
        }
        int F = F();
        this.f9237j = F;
        if ((F >>> 3) != 0) {
            return F;
        }
        throw zzrr.zzc();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final int r() throws IOException {
        return F();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final long s() throws IOException {
        return G();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final long t() throws IOException {
        return H();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final long u() throws IOException {
        return G();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final long v() throws IOException {
        return bf.f(H());
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final long w() throws IOException {
        return H();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final zzpy x() throws IOException {
        int F = F();
        if (F > 0) {
            int i9 = this.f9234g;
            int i10 = this.f9236i;
            if (F <= i9 - i10) {
                zzpy zzo = zzpy.zzo(this.f9233f, i10, F);
                this.f9236i += F;
                return zzo;
            }
        }
        if (F != 0) {
            if (F > 0) {
                int i11 = this.f9234g;
                int i12 = this.f9236i;
                if (F <= i11 - i12) {
                    int i13 = F + i12;
                    this.f9236i = i13;
                    return zzpy.zzq(Arrays.copyOfRange(this.f9233f, i12, i13));
                }
            }
            if (F <= 0) {
                throw zzrr.zzf();
            }
            throw zzrr.zzj();
        }
        return zzpy.zzb;
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final String y() throws IOException {
        int F = F();
        if (F > 0) {
            int i9 = this.f9234g;
            int i10 = this.f9236i;
            if (F <= i9 - i10) {
                String str = new String(this.f9233f, i10, F, mg.f8878a);
                this.f9236i += F;
                return str;
            }
        }
        if (F == 0) {
            return "";
        }
        if (F < 0) {
            throw zzrr.zzf();
        }
        throw zzrr.zzj();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final String z() throws IOException {
        int F = F();
        if (F > 0) {
            int i9 = this.f9234g;
            int i10 = this.f9236i;
            if (F <= i9 - i10) {
                String d10 = aj.d(this.f9233f, i10, F);
                this.f9236i += F;
                return d10;
            }
        }
        if (F == 0) {
            return "";
        }
        if (F <= 0) {
            throw zzrr.zzf();
        }
        throw zzrr.zzj();
    }
}
