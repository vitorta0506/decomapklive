package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes2.dex */
final class af extends bf {

    /* renamed from: f  reason: collision with root package name */
    private final InputStream f8498f;

    /* renamed from: g  reason: collision with root package name */
    private final byte[] f8499g;

    /* renamed from: h  reason: collision with root package name */
    private int f8500h;

    /* renamed from: i  reason: collision with root package name */
    private int f8501i;

    /* renamed from: j  reason: collision with root package name */
    private int f8502j;

    /* renamed from: k  reason: collision with root package name */
    private int f8503k;

    /* renamed from: l  reason: collision with root package name */
    private int f8504l;

    /* renamed from: m  reason: collision with root package name */
    private int f8505m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ af(InputStream inputStream, int i9, xe xeVar) {
        super(null);
        this.f8505m = Integer.MAX_VALUE;
        mg.f(inputStream, "input");
        this.f8498f = inputStream;
        this.f8499g = new byte[4096];
        this.f8500h = 0;
        this.f8502j = 0;
        this.f8504l = 0;
    }

    private final List<byte[]> C(int i9) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i9 > 0) {
            int min = Math.min(i9, 4096);
            byte[] bArr = new byte[min];
            int i10 = 0;
            while (i10 < min) {
                int read = this.f8498f.read(bArr, i10, min - i10);
                if (read == -1) {
                    throw zzrr.zzj();
                }
                this.f8504l += read;
                i10 += read;
            }
            i9 -= min;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    private final void D() {
        int i9 = this.f8500h + this.f8501i;
        this.f8500h = i9;
        int i10 = this.f8504l + i9;
        int i11 = this.f8505m;
        if (i10 <= i11) {
            this.f8501i = 0;
            return;
        }
        int i12 = i10 - i11;
        this.f8501i = i12;
        this.f8500h = i9 - i12;
    }

    private final void E(int i9) throws IOException {
        if (F(i9)) {
            return;
        }
        if (i9 > (Integer.MAX_VALUE - this.f8504l) - this.f8502j) {
            throw zzrr.zzi();
        }
        throw zzrr.zzj();
    }

    private final boolean F(int i9) throws IOException {
        int i10 = this.f8502j;
        int i11 = this.f8500h;
        if (i10 + i9 > i11) {
            int i12 = this.f8504l;
            if (i9 <= (Integer.MAX_VALUE - i12) - i10 && i12 + i10 + i9 <= this.f8505m) {
                if (i10 > 0) {
                    if (i11 > i10) {
                        byte[] bArr = this.f8499g;
                        System.arraycopy(bArr, i10, bArr, 0, i11 - i10);
                    }
                    i12 = this.f8504l + i10;
                    this.f8504l = i12;
                    i11 = this.f8500h - i10;
                    this.f8500h = i11;
                    this.f8502j = 0;
                }
                try {
                    int read = this.f8498f.read(this.f8499g, i11, Math.min(4096 - i11, (Integer.MAX_VALUE - i12) - i11));
                    if (read == 0 || read < -1 || read > 4096) {
                        String valueOf = String.valueOf(this.f8498f.getClass());
                        StringBuilder sb2 = new StringBuilder(valueOf.length() + 91);
                        sb2.append(valueOf);
                        sb2.append("#read(byte[]) returned invalid result: ");
                        sb2.append(read);
                        sb2.append("\nThe InputStream implementation is buggy.");
                        throw new IllegalStateException(sb2.toString());
                    } else if (read > 0) {
                        this.f8500h += read;
                        D();
                        if (this.f8500h >= i9) {
                            return true;
                        }
                        return F(i9);
                    } else {
                        return false;
                    }
                } catch (zzrr e10) {
                    e10.zzk();
                    throw e10;
                }
            }
            return false;
        }
        StringBuilder sb3 = new StringBuilder(77);
        sb3.append("refillBuffer() called when ");
        sb3.append(i9);
        sb3.append(" bytes were already available in buffer");
        throw new IllegalStateException(sb3.toString());
    }

    private final byte[] G(int i9, boolean z10) throws IOException {
        byte[] H = H(i9);
        if (H != null) {
            return H;
        }
        int i10 = this.f8502j;
        int i11 = this.f8500h;
        int i12 = i11 - i10;
        this.f8504l += i11;
        this.f8502j = 0;
        this.f8500h = 0;
        List<byte[]> C = C(i9 - i12);
        byte[] bArr = new byte[i9];
        System.arraycopy(this.f8499g, i10, bArr, 0, i12);
        for (byte[] bArr2 : C) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i12, length);
            i12 += length;
        }
        return bArr;
    }

    private final byte[] H(int i9) throws IOException {
        if (i9 == 0) {
            return mg.f8880c;
        }
        if (i9 >= 0) {
            int i10 = this.f8504l;
            int i11 = this.f8502j;
            int i12 = i10 + i11 + i9;
            if ((-2147483647) + i12 <= 0) {
                int i13 = this.f8505m;
                if (i12 <= i13) {
                    int i14 = this.f8500h - i11;
                    int i15 = i9 - i14;
                    if (i15 >= 4096) {
                        try {
                            if (i15 > this.f8498f.available()) {
                                return null;
                            }
                        } catch (zzrr e10) {
                            e10.zzk();
                            throw e10;
                        }
                    }
                    byte[] bArr = new byte[i9];
                    System.arraycopy(this.f8499g, this.f8502j, bArr, 0, i14);
                    this.f8504l += this.f8500h;
                    this.f8502j = 0;
                    this.f8500h = 0;
                    while (i14 < i9) {
                        try {
                            int read = this.f8498f.read(bArr, i14, i9 - i14);
                            if (read == -1) {
                                throw zzrr.zzj();
                            }
                            this.f8504l += read;
                            i14 += read;
                        } catch (zzrr e11) {
                            e11.zzk();
                            throw e11;
                        }
                    }
                    return bArr;
                }
                B((i13 - i10) - i11);
                throw zzrr.zzj();
            }
            throw zzrr.zzi();
        }
        throw zzrr.zzf();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final void A(int i9) throws zzrr {
        if (this.f8503k != i9) {
            throw zzrr.zzb();
        }
    }

    public final void B(int i9) throws IOException {
        int i10 = this.f8500h;
        int i11 = this.f8502j;
        int i12 = i10 - i11;
        if (i9 <= i12 && i9 >= 0) {
            this.f8502j = i11 + i9;
        } else if (i9 >= 0) {
            int i13 = this.f8504l;
            int i14 = i13 + i11;
            int i15 = this.f8505m;
            if (i14 + i9 <= i15) {
                this.f8504l = i14;
                this.f8500h = 0;
                this.f8502j = 0;
                while (i12 < i9) {
                    try {
                        long j10 = i9 - i12;
                        try {
                            long skip = this.f8498f.skip(j10);
                            int i16 = (skip > 0L ? 1 : (skip == 0L ? 0 : -1));
                            if (i16 < 0 || skip > j10) {
                                String valueOf = String.valueOf(this.f8498f.getClass());
                                StringBuilder sb2 = new StringBuilder(valueOf.length() + 92);
                                sb2.append(valueOf);
                                sb2.append("#skip returned invalid result: ");
                                sb2.append(skip);
                                sb2.append("\nThe InputStream implementation is buggy.");
                                throw new IllegalStateException(sb2.toString());
                            } else if (i16 == 0) {
                                break;
                            } else {
                                i12 += (int) skip;
                            }
                        } catch (zzrr e10) {
                            e10.zzk();
                            throw e10;
                        }
                    } finally {
                        this.f8504l += i12;
                        D();
                    }
                }
                if (i12 >= i9) {
                    return;
                }
                int i17 = this.f8500h;
                int i18 = i17 - this.f8502j;
                this.f8502j = i17;
                E(1);
                while (true) {
                    int i19 = i9 - i18;
                    int i20 = this.f8500h;
                    if (i19 <= i20) {
                        this.f8502j = i19;
                        return;
                    }
                    i18 += i20;
                    this.f8502j = i20;
                    E(1);
                }
            } else {
                B((i15 - i13) - i11);
                throw zzrr.zzj();
            }
        } else {
            throw zzrr.zzf();
        }
    }

    public final byte I() throws IOException {
        if (this.f8502j == this.f8500h) {
            E(1);
        }
        byte[] bArr = this.f8499g;
        int i9 = this.f8502j;
        this.f8502j = i9 + 1;
        return bArr[i9];
    }

    public final int J() throws IOException {
        int i9 = this.f8502j;
        if (this.f8500h - i9 < 4) {
            E(4);
            i9 = this.f8502j;
        }
        byte[] bArr = this.f8499g;
        this.f8502j = i9 + 4;
        return ((bArr[i9 + 3] & UByte.MAX_VALUE) << 24) | (bArr[i9] & UByte.MAX_VALUE) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 16);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0067, code lost:
        if (r2[r3] >= 0) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int K() throws java.io.IOException {
        /*
            r5 = this;
            int r0 = r5.f8502j
            int r1 = r5.f8500h
            if (r1 != r0) goto L7
            goto L6c
        L7:
            byte[] r2 = r5.f8499g
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L12
            r5.f8502j = r3
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
            r5.f8502j = r1
            return r0
        L6c:
            long r0 = r5.N()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.recaptcha.af.K():int");
    }

    public final long L() throws IOException {
        int i9 = this.f8502j;
        if (this.f8500h - i9 < 8) {
            E(8);
            i9 = this.f8502j;
        }
        byte[] bArr = this.f8499g;
        this.f8502j = i9 + 8;
        return ((bArr[i9 + 7] & 255) << 56) | (bArr[i9] & 255) | ((bArr[i9 + 1] & 255) << 8) | ((bArr[i9 + 2] & 255) << 16) | ((bArr[i9 + 3] & 255) << 24) | ((bArr[i9 + 4] & 255) << 32) | ((bArr[i9 + 5] & 255) << 40) | ((bArr[i9 + 6] & 255) << 48);
    }

    public final long M() throws IOException {
        long j10;
        long j11;
        long j12;
        long j13;
        int i9;
        int i10 = this.f8502j;
        int i11 = this.f8500h;
        if (i11 != i10) {
            byte[] bArr = this.f8499g;
            int i12 = i10 + 1;
            byte b10 = bArr[i10];
            if (b10 >= 0) {
                this.f8502j = i12;
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
                                                    this.f8502j = i13;
                                                    return j11;
                                                }
                                            }
                                        }
                                    }
                                }
                                j11 = j12 ^ j15;
                                i13 = i18;
                                this.f8502j = i13;
                                return j11;
                            }
                            j13 = 266354560;
                            j10 = j14 ^ j13;
                        }
                    }
                    i13 = i15;
                    j11 = j10;
                    this.f8502j = i13;
                    return j11;
                }
                i9 = i14 ^ (-128);
                j11 = i9;
                this.f8502j = i13;
                return j11;
            }
        }
        return N();
    }

    final long N() throws IOException {
        long j10 = 0;
        for (int i9 = 0; i9 < 64; i9 += 7) {
            byte I = I();
            j10 |= (I & ByteCompanionObject.MAX_VALUE) << i9;
            if ((I & ByteCompanionObject.MIN_VALUE) == 0) {
                return j10;
            }
        }
        throw zzrr.zze();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final void a(int i9) {
        this.f8505m = i9;
        D();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final boolean b() throws IOException {
        return this.f8502j == this.f8500h && !F(1);
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final boolean c() throws IOException {
        return M() != 0;
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final boolean d(int i9) throws IOException {
        int q10;
        int i10 = i9 & 7;
        int i11 = 0;
        if (i10 == 0) {
            if (this.f8500h - this.f8502j >= 10) {
                while (i11 < 10) {
                    byte[] bArr = this.f8499g;
                    int i12 = this.f8502j;
                    this.f8502j = i12 + 1;
                    if (bArr[i12] < 0) {
                        i11++;
                    }
                }
                throw zzrr.zze();
            }
            while (i11 < 10) {
                if (I() < 0) {
                    i11++;
                }
            }
            throw zzrr.zze();
            return true;
        } else if (i10 == 1) {
            B(8);
            return true;
        } else if (i10 == 2) {
            B(K());
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
        return Double.longBitsToDouble(L());
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final float i() throws IOException {
        return Float.intBitsToFloat(J());
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final int j() {
        return this.f8504l + this.f8502j;
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final int k(int i9) throws zzrr {
        if (i9 >= 0) {
            int i10 = i9 + this.f8504l + this.f8502j;
            int i11 = this.f8505m;
            if (i10 <= i11) {
                this.f8505m = i10;
                D();
                return i11;
            }
            throw zzrr.zzj();
        }
        throw zzrr.zzf();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final int l() throws IOException {
        return K();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final int m() throws IOException {
        return J();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final int n() throws IOException {
        return K();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final int o() throws IOException {
        return J();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final int p() throws IOException {
        return bf.e(K());
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final int q() throws IOException {
        if (b()) {
            this.f8503k = 0;
            return 0;
        }
        int K = K();
        this.f8503k = K;
        if ((K >>> 3) != 0) {
            return K;
        }
        throw zzrr.zzc();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final int r() throws IOException {
        return K();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final long s() throws IOException {
        return L();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final long t() throws IOException {
        return M();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final long u() throws IOException {
        return L();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final long v() throws IOException {
        return bf.f(M());
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final long w() throws IOException {
        return M();
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final zzpy x() throws IOException {
        int K = K();
        int i9 = this.f8500h;
        int i10 = this.f8502j;
        if (K <= i9 - i10 && K > 0) {
            zzpy zzo = zzpy.zzo(this.f8499g, i10, K);
            this.f8502j += K;
            return zzo;
        } else if (K != 0) {
            byte[] H = H(K);
            if (H != null) {
                return zzpy.zzn(H);
            }
            int i11 = this.f8502j;
            int i12 = this.f8500h;
            int i13 = i12 - i11;
            this.f8504l += i12;
            this.f8502j = 0;
            this.f8500h = 0;
            List<byte[]> C = C(K - i13);
            byte[] bArr = new byte[K];
            System.arraycopy(this.f8499g, i11, bArr, 0, i13);
            for (byte[] bArr2 : C) {
                int length = bArr2.length;
                System.arraycopy(bArr2, 0, bArr, i13, length);
                i13 += length;
            }
            return zzpy.zzq(bArr);
        } else {
            return zzpy.zzb;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final String y() throws IOException {
        int K = K();
        if (K > 0) {
            int i9 = this.f8500h;
            int i10 = this.f8502j;
            if (K <= i9 - i10) {
                String str = new String(this.f8499g, i10, K, mg.f8878a);
                this.f8502j += K;
                return str;
            }
        }
        if (K == 0) {
            return "";
        }
        if (K <= this.f8500h) {
            E(K);
            String str2 = new String(this.f8499g, this.f8502j, K, mg.f8878a);
            this.f8502j += K;
            return str2;
        }
        return new String(G(K, false), mg.f8878a);
    }

    @Override // com.google.android.gms.internal.recaptcha.bf
    public final String z() throws IOException {
        byte[] G;
        int K = K();
        int i9 = this.f8502j;
        int i10 = this.f8500h;
        if (K <= i10 - i9 && K > 0) {
            G = this.f8499g;
            this.f8502j = i9 + K;
        } else if (K == 0) {
            return "";
        } else {
            if (K <= i10) {
                E(K);
                G = this.f8499g;
                this.f8502j = K;
            } else {
                G = G(K, false);
            }
            i9 = 0;
        }
        return aj.d(G, i9, K);
    }
}
