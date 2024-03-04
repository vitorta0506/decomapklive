package n2;

import android.util.Pair;
import c2.m;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.r;
import java.io.IOException;
/* loaded from: classes.dex */
final class d {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f55330a;

        /* renamed from: b  reason: collision with root package name */
        public final long f55331b;

        private a(int i9, long j10) {
            this.f55330a = i9;
            this.f55331b = j10;
        }

        public static a a(m mVar, b0 b0Var) throws IOException {
            mVar.m(b0Var.d(), 0, 8);
            b0Var.P(0);
            return new a(b0Var.n(), b0Var.t());
        }
    }

    public static boolean a(m mVar) throws IOException {
        b0 b0Var = new b0(8);
        int i9 = a.a(mVar, b0Var).f55330a;
        if (i9 == 1380533830 || i9 == 1380333108) {
            mVar.m(b0Var.d(), 0, 4);
            b0Var.P(0);
            int n9 = b0Var.n();
            if (n9 != 1463899717) {
                r.c("WavHeaderReader", "Unsupported form type: " + n9);
                return false;
            }
            return true;
        }
        return false;
    }

    public static c b(m mVar) throws IOException {
        byte[] bArr;
        b0 b0Var = new b0(16);
        a d10 = d(1718449184, mVar, b0Var);
        com.google.android.exoplayer2.util.a.f(d10.f55331b >= 16);
        mVar.m(b0Var.d(), 0, 16);
        b0Var.P(0);
        int v10 = b0Var.v();
        int v11 = b0Var.v();
        int u10 = b0Var.u();
        int u11 = b0Var.u();
        int v12 = b0Var.v();
        int v13 = b0Var.v();
        int i9 = ((int) d10.f55331b) - 16;
        if (i9 > 0) {
            byte[] bArr2 = new byte[i9];
            mVar.m(bArr2, 0, i9);
            bArr = bArr2;
        } else {
            bArr = l0.f6990f;
        }
        mVar.k((int) (mVar.h() - mVar.getPosition()));
        return new c(v10, v11, u10, u11, v12, v13, bArr);
    }

    public static long c(m mVar) throws IOException {
        b0 b0Var = new b0(8);
        a a10 = a.a(mVar, b0Var);
        if (a10.f55330a != 1685272116) {
            mVar.f();
            return -1L;
        }
        mVar.i(8);
        b0Var.P(0);
        mVar.m(b0Var.d(), 0, 8);
        long r10 = b0Var.r();
        mVar.k(((int) a10.f55331b) + 8);
        return r10;
    }

    private static a d(int i9, m mVar, b0 b0Var) throws IOException {
        a a10 = a.a(mVar, b0Var);
        while (a10.f55330a != i9) {
            r.i("WavHeaderReader", "Ignoring unknown WAV chunk: " + a10.f55330a);
            long j10 = a10.f55331b + 8;
            if (j10 <= 2147483647L) {
                mVar.k((int) j10);
                a10 = a.a(mVar, b0Var);
            } else {
                throw ParserException.createForUnsupportedContainerFeature("Chunk is too large (~2GB+) to skip; id: " + a10.f55330a);
            }
        }
        return a10;
    }

    public static Pair<Long, Long> e(m mVar) throws IOException {
        mVar.f();
        a d10 = d(1684108385, mVar, new b0(8));
        mVar.k(8);
        return Pair.create(Long.valueOf(mVar.getPosition()), Long.valueOf(d10.f55331b));
    }
}
