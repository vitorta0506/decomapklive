package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
public abstract class hf extends me {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f8742b = Logger.getLogger(hf.class.getName());

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f8743c = vi.C();

    /* renamed from: a  reason: collision with root package name */
    Cif f8744a;

    private hf() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ hf(df dfVar) {
    }

    public static int O(byte[] bArr) {
        int length = bArr.length;
        return l(length) + length;
    }

    public static int b(zzpy zzpyVar) {
        int zzd = zzpyVar.zzd();
        return l(zzd) + zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public static int c(int i9, gh ghVar, uh uhVar) {
        int l10 = l(i9 << 3);
        int i10 = l10 + l10;
        ge geVar = (ge) ghVar;
        int c10 = geVar.c();
        if (c10 == -1) {
            c10 = uhVar.a(geVar);
            geVar.i(c10);
        }
        return i10 + c10;
    }

    @Deprecated
    public static int d(gh ghVar) {
        return ghVar.K();
    }

    public static int e(int i9) {
        if (i9 >= 0) {
            return l(i9);
        }
        return 10;
    }

    public static int f(og ogVar) {
        int a10 = ogVar.a();
        return l(a10) + a10;
    }

    public static int g(gh ghVar) {
        int K = ghVar.K();
        return l(K) + K;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(gh ghVar, uh uhVar) {
        ge geVar = (ge) ghVar;
        int c10 = geVar.c();
        if (c10 == -1) {
            c10 = uhVar.a(geVar);
            geVar.i(c10);
        }
        return l(c10) + c10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(int i9) {
        if (i9 > 4096) {
            return 4096;
        }
        return i9;
    }

    public static int j(String str) {
        int length;
        try {
            length = aj.c(str);
        } catch (zi unused) {
            length = str.getBytes(mg.f8878a).length;
        }
        return l(length) + length;
    }

    public static int k(int i9) {
        return l(i9 << 3);
    }

    public static int l(int i9) {
        if ((i9 & (-128)) == 0) {
            return 1;
        }
        if ((i9 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i9) == 0) {
            return 3;
        }
        return (i9 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int m(long j10) {
        int i9;
        if (((-128) & j10) == 0) {
            return 1;
        }
        if (j10 < 0) {
            return 10;
        }
        if (((-34359738368L) & j10) != 0) {
            j10 >>>= 28;
            i9 = 6;
        } else {
            i9 = 2;
        }
        if (((-2097152) & j10) != 0) {
            i9 += 2;
            j10 >>>= 14;
        }
        return (j10 & (-16384)) != 0 ? i9 + 1 : i9;
    }

    public static hf n(byte[] bArr) {
        return new ff(bArr, 0, bArr.length);
    }

    public static hf o(OutputStream outputStream, int i9) {
        return new gf(outputStream, i9);
    }

    public abstract void A(int i9) throws IOException;

    public abstract void B(int i9, long j10) throws IOException;

    public abstract void C(long j10) throws IOException;

    public abstract void D(int i9, int i10) throws IOException;

    public abstract void E(int i9) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void F(int i9, gh ghVar, uh uhVar) throws IOException;

    public abstract void G(gh ghVar) throws IOException;

    public abstract void H(int i9, String str) throws IOException;

    public abstract void I(String str) throws IOException;

    public abstract void J(int i9, int i10) throws IOException;

    public abstract void K(int i9, int i10) throws IOException;

    public abstract void L(int i9) throws IOException;

    public abstract void M(int i9, long j10) throws IOException;

    public abstract void N(long j10) throws IOException;

    @Override // com.google.android.gms.internal.recaptcha.me
    public abstract void a(byte[] bArr, int i9, int i10) throws IOException;

    public final void p() {
        if (w() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void q(String str, zi ziVar) throws IOException {
        f8742b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) ziVar);
        byte[] bytes = str.getBytes(mg.f8878a);
        try {
            int length = bytes.length;
            L(length);
            a(bytes, 0, length);
        } catch (zzqh e10) {
            throw e10;
        } catch (IndexOutOfBoundsException e11) {
            throw new zzqh(e11);
        }
    }

    public abstract void s() throws IOException;

    public abstract void t(byte b10) throws IOException;

    public abstract void u(int i9, boolean z10) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void v(byte[] bArr, int i9, int i10) throws IOException;

    public abstract int w();

    public abstract void x(int i9, zzpy zzpyVar) throws IOException;

    public abstract void y(zzpy zzpyVar) throws IOException;

    public abstract void z(int i9, int i10) throws IOException;
}
