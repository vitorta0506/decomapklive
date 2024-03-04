package l2;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import c2.h0;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.b0;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import l2.i;
/* loaded from: classes.dex */
final class j extends i {
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private a f54172n;

    /* renamed from: o  reason: collision with root package name */
    private int f54173o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f54174p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private h0.d f54175q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private h0.b f54176r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final h0.d f54177a;

        /* renamed from: b  reason: collision with root package name */
        public final h0.b f54178b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f54179c;

        /* renamed from: d  reason: collision with root package name */
        public final h0.c[] f54180d;

        /* renamed from: e  reason: collision with root package name */
        public final int f54181e;

        public a(h0.d dVar, h0.b bVar, byte[] bArr, h0.c[] cVarArr, int i9) {
            this.f54177a = dVar;
            this.f54178b = bVar;
            this.f54179c = bArr;
            this.f54180d = cVarArr;
            this.f54181e = i9;
        }
    }

    @VisibleForTesting
    static void n(b0 b0Var, long j10) {
        if (b0Var.b() < b0Var.f() + 4) {
            b0Var.M(Arrays.copyOf(b0Var.d(), b0Var.f() + 4));
        } else {
            b0Var.O(b0Var.f() + 4);
        }
        byte[] d10 = b0Var.d();
        d10[b0Var.f() - 4] = (byte) (j10 & 255);
        d10[b0Var.f() - 3] = (byte) ((j10 >>> 8) & 255);
        d10[b0Var.f() - 2] = (byte) ((j10 >>> 16) & 255);
        d10[b0Var.f() - 1] = (byte) ((j10 >>> 24) & 255);
    }

    private static int o(byte b10, a aVar) {
        if (!aVar.f54180d[p(b10, aVar.f54181e, 1)].f1516a) {
            return aVar.f54177a.f1526g;
        }
        return aVar.f54177a.f1527h;
    }

    @VisibleForTesting
    static int p(byte b10, int i9, int i10) {
        return (b10 >> i10) & (255 >>> (8 - i9));
    }

    public static boolean r(b0 b0Var) {
        try {
            return h0.m(1, b0Var, true);
        } catch (ParserException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // l2.i
    public void e(long j10) {
        super.e(j10);
        this.f54174p = j10 != 0;
        h0.d dVar = this.f54175q;
        this.f54173o = dVar != null ? dVar.f1526g : 0;
    }

    @Override // l2.i
    protected long f(b0 b0Var) {
        if ((b0Var.d()[0] & 1) == 1) {
            return -1L;
        }
        int o10 = o(b0Var.d()[0], (a) com.google.android.exoplayer2.util.a.h(this.f54172n));
        long j10 = this.f54174p ? (this.f54173o + o10) / 4 : 0;
        n(b0Var, j10);
        this.f54174p = true;
        this.f54173o = o10;
        return j10;
    }

    @Override // l2.i
    protected boolean i(b0 b0Var, long j10, i.b bVar) throws IOException {
        if (this.f54172n != null) {
            com.google.android.exoplayer2.util.a.e(bVar.f54170a);
            return false;
        }
        a q10 = q(b0Var);
        this.f54172n = q10;
        if (q10 == null) {
            return true;
        }
        h0.d dVar = q10.f54177a;
        ArrayList arrayList = new ArrayList();
        arrayList.add(dVar.f1529j);
        arrayList.add(q10.f54179c);
        bVar.f54170a = new k1.b().e0("audio/vorbis").G(dVar.f1524e).Z(dVar.f1523d).H(dVar.f1521b).f0(dVar.f1522c).T(arrayList).X(h0.c(ImmutableList.copyOf(q10.f54178b.f1514b))).E();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // l2.i
    public void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f54172n = null;
            this.f54175q = null;
            this.f54176r = null;
        }
        this.f54173o = 0;
        this.f54174p = false;
    }

    @Nullable
    @VisibleForTesting
    a q(b0 b0Var) throws IOException {
        h0.d dVar = this.f54175q;
        if (dVar == null) {
            this.f54175q = h0.k(b0Var);
            return null;
        }
        h0.b bVar = this.f54176r;
        if (bVar == null) {
            this.f54176r = h0.i(b0Var);
            return null;
        }
        byte[] bArr = new byte[b0Var.f()];
        System.arraycopy(b0Var.d(), 0, bArr, 0, b0Var.f());
        h0.c[] l10 = h0.l(b0Var, dVar.f1521b);
        return new a(dVar, bVar, bArr, l10, h0.a(l10.length - 1));
    }
}
