package l2;

import androidx.annotation.Nullable;
import c2.b0;
import c2.m;
import c2.s;
import c2.t;
import c2.u;
import c2.v;
import com.google.android.exoplayer2.util.l0;
import java.util.Arrays;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import l2.i;
/* loaded from: classes.dex */
final class b extends i {
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private v f54127n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private a f54128o;

    /* loaded from: classes.dex */
    private static final class a implements g {

        /* renamed from: a  reason: collision with root package name */
        private v f54129a;

        /* renamed from: b  reason: collision with root package name */
        private v.a f54130b;

        /* renamed from: c  reason: collision with root package name */
        private long f54131c = -1;

        /* renamed from: d  reason: collision with root package name */
        private long f54132d = -1;

        public a(v vVar, v.a aVar) {
            this.f54129a = vVar;
            this.f54130b = aVar;
        }

        @Override // l2.g
        public long a(m mVar) {
            long j10 = this.f54132d;
            if (j10 >= 0) {
                long j11 = -(j10 + 2);
                this.f54132d = -1L;
                return j11;
            }
            return -1L;
        }

        @Override // l2.g
        public b0 b() {
            com.google.android.exoplayer2.util.a.f(this.f54131c != -1);
            return new u(this.f54129a, this.f54131c);
        }

        @Override // l2.g
        public void c(long j10) {
            long[] jArr = this.f54130b.f1567a;
            this.f54132d = jArr[l0.i(jArr, j10, true, true)];
        }

        public void d(long j10) {
            this.f54131c = j10;
        }
    }

    private int n(com.google.android.exoplayer2.util.b0 b0Var) {
        int i9 = (b0Var.d()[2] & UByte.MAX_VALUE) >> 4;
        if (i9 == 6 || i9 == 7) {
            b0Var.Q(4);
            b0Var.K();
        }
        int j10 = s.j(b0Var, i9);
        b0Var.P(0);
        return j10;
    }

    private static boolean o(byte[] bArr) {
        return bArr[0] == -1;
    }

    public static boolean p(com.google.android.exoplayer2.util.b0 b0Var) {
        return b0Var.a() >= 5 && b0Var.D() == 127 && b0Var.F() == 1179402563;
    }

    @Override // l2.i
    protected long f(com.google.android.exoplayer2.util.b0 b0Var) {
        if (o(b0Var.d())) {
            return n(b0Var);
        }
        return -1L;
    }

    @Override // l2.i
    protected boolean i(com.google.android.exoplayer2.util.b0 b0Var, long j10, i.b bVar) {
        byte[] d10 = b0Var.d();
        v vVar = this.f54127n;
        if (vVar == null) {
            v vVar2 = new v(d10, 17);
            this.f54127n = vVar2;
            bVar.f54170a = vVar2.g(Arrays.copyOfRange(d10, 9, b0Var.f()), null);
            return true;
        } else if ((d10[0] & ByteCompanionObject.MAX_VALUE) == 3) {
            v.a g10 = t.g(b0Var);
            v b10 = vVar.b(g10);
            this.f54127n = b10;
            this.f54128o = new a(b10, g10);
            return true;
        } else if (o(d10)) {
            a aVar = this.f54128o;
            if (aVar != null) {
                aVar.d(j10);
                bVar.f54171b = this.f54128o;
            }
            com.google.android.exoplayer2.util.a.e(bVar.f54170a);
            return false;
        } else {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // l2.i
    public void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f54127n = null;
            this.f54128o = null;
        }
    }
}
