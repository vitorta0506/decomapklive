package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class ff extends hf {

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f8681d;

    /* renamed from: e  reason: collision with root package name */
    private final int f8682e;

    /* renamed from: f  reason: collision with root package name */
    private int f8683f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ff(byte[] bArr, int i9, int i10) {
        super(null);
        Objects.requireNonNull(bArr, "buffer");
        int length = bArr.length;
        if (((length - i10) | i10) >= 0) {
            this.f8681d = bArr;
            this.f8683f = 0;
            this.f8682e = i10;
            return;
        }
        throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i10)));
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void A(int i9) throws IOException {
        try {
            byte[] bArr = this.f8681d;
            int i10 = this.f8683f;
            int i11 = i10 + 1;
            this.f8683f = i11;
            bArr[i10] = (byte) (i9 & 255);
            int i12 = i11 + 1;
            this.f8683f = i12;
            bArr[i11] = (byte) ((i9 >> 8) & 255);
            int i13 = i12 + 1;
            this.f8683f = i13;
            bArr[i12] = (byte) ((i9 >> 16) & 255);
            this.f8683f = i13 + 1;
            bArr[i13] = (byte) ((i9 >> 24) & 255);
        } catch (IndexOutOfBoundsException e10) {
            throw new zzqh(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8683f), Integer.valueOf(this.f8682e), 1), e10);
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void B(int i9, long j10) throws IOException {
        L((i9 << 3) | 1);
        C(j10);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void C(long j10) throws IOException {
        try {
            byte[] bArr = this.f8681d;
            int i9 = this.f8683f;
            int i10 = i9 + 1;
            this.f8683f = i10;
            bArr[i9] = (byte) (((int) j10) & 255);
            int i11 = i10 + 1;
            this.f8683f = i11;
            bArr[i10] = (byte) (((int) (j10 >> 8)) & 255);
            int i12 = i11 + 1;
            this.f8683f = i12;
            bArr[i11] = (byte) (((int) (j10 >> 16)) & 255);
            int i13 = i12 + 1;
            this.f8683f = i13;
            bArr[i12] = (byte) (((int) (j10 >> 24)) & 255);
            int i14 = i13 + 1;
            this.f8683f = i14;
            bArr[i13] = (byte) (((int) (j10 >> 32)) & 255);
            int i15 = i14 + 1;
            this.f8683f = i15;
            bArr[i14] = (byte) (((int) (j10 >> 40)) & 255);
            int i16 = i15 + 1;
            this.f8683f = i16;
            bArr[i15] = (byte) (((int) (j10 >> 48)) & 255);
            this.f8683f = i16 + 1;
            bArr[i16] = (byte) (((int) (j10 >> 56)) & 255);
        } catch (IndexOutOfBoundsException e10) {
            throw new zzqh(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8683f), Integer.valueOf(this.f8682e), 1), e10);
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void D(int i9, int i10) throws IOException {
        L(i9 << 3);
        E(i10);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void E(int i9) throws IOException {
        if (i9 >= 0) {
            L(i9);
        } else {
            N(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void F(int i9, gh ghVar, uh uhVar) throws IOException {
        L((i9 << 3) | 2);
        ge geVar = (ge) ghVar;
        int c10 = geVar.c();
        if (c10 == -1) {
            c10 = uhVar.a(geVar);
            geVar.i(c10);
        }
        L(c10);
        uhVar.g(ghVar, this.f8744a);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void G(gh ghVar) throws IOException {
        L(ghVar.K());
        ghVar.a(this);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void H(int i9, String str) throws IOException {
        L((i9 << 3) | 2);
        I(str);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void I(String str) throws IOException {
        int i9 = this.f8683f;
        try {
            int l10 = hf.l(str.length() * 3);
            int l11 = hf.l(str.length());
            if (l11 == l10) {
                int i10 = i9 + l11;
                this.f8683f = i10;
                int b10 = aj.b(str, this.f8681d, i10, this.f8682e - i10);
                this.f8683f = i9;
                L((b10 - i9) - l11);
                this.f8683f = b10;
                return;
            }
            L(aj.c(str));
            byte[] bArr = this.f8681d;
            int i11 = this.f8683f;
            this.f8683f = aj.b(str, bArr, i11, this.f8682e - i11);
        } catch (zi e10) {
            this.f8683f = i9;
            q(str, e10);
        } catch (IndexOutOfBoundsException e11) {
            throw new zzqh(e11);
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void J(int i9, int i10) throws IOException {
        L((i9 << 3) | i10);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void K(int i9, int i10) throws IOException {
        L(i9 << 3);
        L(i10);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void L(int i9) throws IOException {
        boolean z10;
        z10 = hf.f8743c;
        if (z10) {
            int i10 = ke.f8820a;
        }
        while ((i9 & (-128)) != 0) {
            try {
                byte[] bArr = this.f8681d;
                int i11 = this.f8683f;
                this.f8683f = i11 + 1;
                bArr[i11] = (byte) ((i9 & 127) | 128);
                i9 >>>= 7;
            } catch (IndexOutOfBoundsException e10) {
                throw new zzqh(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8683f), Integer.valueOf(this.f8682e), 1), e10);
            }
        }
        byte[] bArr2 = this.f8681d;
        int i12 = this.f8683f;
        this.f8683f = i12 + 1;
        bArr2[i12] = (byte) i9;
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void M(int i9, long j10) throws IOException {
        L(i9 << 3);
        N(j10);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void N(long j10) throws IOException {
        boolean z10;
        z10 = hf.f8743c;
        if (z10 && this.f8682e - this.f8683f >= 10) {
            while ((j10 & (-128)) != 0) {
                byte[] bArr = this.f8681d;
                int i9 = this.f8683f;
                this.f8683f = i9 + 1;
                vi.s(bArr, i9, (byte) ((((int) j10) & 127) | 128));
                j10 >>>= 7;
            }
            byte[] bArr2 = this.f8681d;
            int i10 = this.f8683f;
            this.f8683f = i10 + 1;
            vi.s(bArr2, i10, (byte) j10);
            return;
        }
        while ((j10 & (-128)) != 0) {
            try {
                byte[] bArr3 = this.f8681d;
                int i11 = this.f8683f;
                this.f8683f = i11 + 1;
                bArr3[i11] = (byte) ((((int) j10) & 127) | 128);
                j10 >>>= 7;
            } catch (IndexOutOfBoundsException e10) {
                throw new zzqh(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8683f), Integer.valueOf(this.f8682e), 1), e10);
            }
        }
        byte[] bArr4 = this.f8681d;
        int i12 = this.f8683f;
        this.f8683f = i12 + 1;
        bArr4[i12] = (byte) j10;
    }

    public final void P(byte[] bArr, int i9, int i10) throws IOException {
        try {
            System.arraycopy(bArr, 0, this.f8681d, this.f8683f, i10);
            this.f8683f += i10;
        } catch (IndexOutOfBoundsException e10) {
            throw new zzqh(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8683f), Integer.valueOf(this.f8682e), Integer.valueOf(i10)), e10);
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.hf, com.google.android.gms.internal.recaptcha.me
    public final void a(byte[] bArr, int i9, int i10) throws IOException {
        P(bArr, 0, i10);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void s() {
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void t(byte b10) throws IOException {
        try {
            byte[] bArr = this.f8681d;
            int i9 = this.f8683f;
            this.f8683f = i9 + 1;
            bArr[i9] = b10;
        } catch (IndexOutOfBoundsException e10) {
            throw new zzqh(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8683f), Integer.valueOf(this.f8682e), 1), e10);
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void u(int i9, boolean z10) throws IOException {
        L(i9 << 3);
        t(z10 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void v(byte[] bArr, int i9, int i10) throws IOException {
        L(i10);
        P(bArr, 0, i10);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final int w() {
        return this.f8682e - this.f8683f;
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void x(int i9, zzpy zzpyVar) throws IOException {
        L((i9 << 3) | 2);
        y(zzpyVar);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void y(zzpy zzpyVar) throws IOException {
        L(zzpyVar.zzd());
        zzpyVar.zzi(this);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void z(int i9, int i10) throws IOException {
        L((i9 << 3) | 5);
        A(i10);
    }
}
