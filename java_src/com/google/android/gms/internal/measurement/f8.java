package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
public abstract class f8 extends o7 {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f8074b = Logger.getLogger(f8.class.getName());

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f8075c = lb.C();

    /* renamed from: a  reason: collision with root package name */
    g8 f8076a;

    private f8() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ f8(e8 e8Var) {
    }

    public static int A(f9 f9Var) {
        int a10 = f9Var.a();
        return a(a10) + a10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int B(z9 z9Var, ka kaVar) {
        i7 i7Var = (i7) z9Var;
        int c10 = i7Var.c();
        if (c10 == -1) {
            c10 = kaVar.a(i7Var);
            i7Var.i(c10);
        }
        return a(c10) + c10;
    }

    public static int C(String str) {
        int length;
        try {
            length = rb.c(str);
        } catch (qb unused) {
            length = str.getBytes(e9.f8050b).length;
        }
        return a(length) + length;
    }

    public static int D(int i9) {
        return a(i9 << 3);
    }

    public static int a(int i9) {
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

    public static int b(long j10) {
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

    public static f8 c(byte[] bArr) {
        return new d8(bArr, 0, bArr.length);
    }

    public static int x(zzjd zzjdVar) {
        int zzd = zzjdVar.zzd();
        return a(zzd) + zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public static int y(int i9, z9 z9Var, ka kaVar) {
        int a10 = a(i9 << 3);
        int i10 = a10 + a10;
        i7 i7Var = (i7) z9Var;
        int c10 = i7Var.c();
        if (c10 == -1) {
            c10 = kaVar.a(i7Var);
            i7Var.i(c10);
        }
        return i10 + c10;
    }

    public static int z(int i9) {
        if (i9 >= 0) {
            return a(i9);
        }
        return 10;
    }

    public final void d() {
        if (g() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e(String str, qb qbVar) throws IOException {
        f8074b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) qbVar);
        byte[] bytes = str.getBytes(e9.f8050b);
        try {
            int length = bytes.length;
            u(length);
            q(bytes, 0, length);
        } catch (IndexOutOfBoundsException e10) {
            throw new zzjj(e10);
        }
    }

    public abstract int g();

    public abstract void h(byte b10) throws IOException;

    public abstract void i(int i9, boolean z10) throws IOException;

    public abstract void j(int i9, zzjd zzjdVar) throws IOException;

    public abstract void k(int i9, int i10) throws IOException;

    public abstract void l(int i9) throws IOException;

    public abstract void m(int i9, long j10) throws IOException;

    public abstract void n(long j10) throws IOException;

    public abstract void o(int i9, int i10) throws IOException;

    public abstract void p(int i9) throws IOException;

    public abstract void q(byte[] bArr, int i9, int i10) throws IOException;

    public abstract void r(int i9, String str) throws IOException;

    public abstract void s(int i9, int i10) throws IOException;

    public abstract void t(int i9, int i10) throws IOException;

    public abstract void u(int i9) throws IOException;

    public abstract void v(int i9, long j10) throws IOException;

    public abstract void w(long j10) throws IOException;
}
