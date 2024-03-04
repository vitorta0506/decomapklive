package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class gf extends ef {

    /* renamed from: h  reason: collision with root package name */
    private final OutputStream f8714h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gf(OutputStream outputStream, int i9) {
        super(i9);
        Objects.requireNonNull(outputStream, "out");
        this.f8714h = outputStream;
    }

    private final void U() throws IOException {
        this.f8714h.write(this.f8647d, 0, this.f8649f);
        this.f8649f = 0;
    }

    private final void V(int i9) throws IOException {
        if (this.f8648e - this.f8649f < i9) {
            U();
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void A(int i9) throws IOException {
        V(4);
        Q(i9);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void B(int i9, long j10) throws IOException {
        V(18);
        S((i9 << 3) | 1);
        R(j10);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void C(long j10) throws IOException {
        V(8);
        R(j10);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void D(int i9, int i10) throws IOException {
        V(20);
        S(i9 << 3);
        if (i10 >= 0) {
            S(i10);
        } else {
            T(i10);
        }
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
        int c10;
        try {
            int length = str.length() * 3;
            int l10 = hf.l(length);
            int i9 = l10 + length;
            int i10 = this.f8648e;
            if (i9 > i10) {
                byte[] bArr = new byte[length];
                int b10 = aj.b(str, bArr, 0, length);
                L(b10);
                W(bArr, 0, b10);
                return;
            }
            if (i9 > i10 - this.f8649f) {
                U();
            }
            int l11 = hf.l(str.length());
            int i11 = this.f8649f;
            try {
                if (l11 == l10) {
                    int i12 = i11 + l11;
                    this.f8649f = i12;
                    int b11 = aj.b(str, this.f8647d, i12, this.f8648e - i12);
                    this.f8649f = i11;
                    c10 = (b11 - i11) - l11;
                    S(c10);
                    this.f8649f = b11;
                } else {
                    c10 = aj.c(str);
                    S(c10);
                    this.f8649f = aj.b(str, this.f8647d, this.f8649f, c10);
                }
                this.f8650g += c10;
            } catch (zi e10) {
                this.f8650g -= this.f8649f - i11;
                this.f8649f = i11;
                throw e10;
            } catch (ArrayIndexOutOfBoundsException e11) {
                throw new zzqh(e11);
            }
        } catch (zi e12) {
            q(str, e12);
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void J(int i9, int i10) throws IOException {
        L((i9 << 3) | i10);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void K(int i9, int i10) throws IOException {
        V(20);
        S(i9 << 3);
        S(i10);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void L(int i9) throws IOException {
        V(5);
        S(i9);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void M(int i9, long j10) throws IOException {
        V(20);
        S(i9 << 3);
        T(j10);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void N(long j10) throws IOException {
        V(10);
        T(j10);
    }

    public final void W(byte[] bArr, int i9, int i10) throws IOException {
        int i11 = this.f8648e;
        int i12 = this.f8649f;
        int i13 = i11 - i12;
        if (i13 >= i10) {
            System.arraycopy(bArr, 0, this.f8647d, i12, i10);
            this.f8649f += i10;
            this.f8650g += i10;
            return;
        }
        System.arraycopy(bArr, 0, this.f8647d, i12, i13);
        int i14 = i10 - i13;
        this.f8649f = this.f8648e;
        this.f8650g += i13;
        U();
        if (i14 <= this.f8648e) {
            System.arraycopy(bArr, i13, this.f8647d, 0, i14);
            this.f8649f = i14;
        } else {
            this.f8714h.write(bArr, i13, i14);
        }
        this.f8650g += i14;
    }

    @Override // com.google.android.gms.internal.recaptcha.hf, com.google.android.gms.internal.recaptcha.me
    public final void a(byte[] bArr, int i9, int i10) throws IOException {
        W(bArr, 0, i10);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void s() throws IOException {
        if (this.f8649f > 0) {
            U();
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void t(byte b10) throws IOException {
        if (this.f8649f == this.f8648e) {
            U();
        }
        P(b10);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void u(int i9, boolean z10) throws IOException {
        V(11);
        S(i9 << 3);
        P(z10 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final void v(byte[] bArr, int i9, int i10) throws IOException {
        L(i10);
        W(bArr, 0, i10);
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
        V(14);
        S((i9 << 3) | 5);
        Q(i10);
    }
}
