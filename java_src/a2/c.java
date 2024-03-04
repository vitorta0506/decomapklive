package a2;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.i3;
import com.google.android.exoplayer2.k2;
import com.google.android.exoplayer2.l2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n3;
import com.google.android.exoplayer2.x1;
import java.io.IOException;
import java.util.List;
import v2.q;
/* loaded from: classes.dex */
public interface c {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f374a;

        /* renamed from: b  reason: collision with root package name */
        public final i3 f375b;

        /* renamed from: c  reason: collision with root package name */
        public final int f376c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final q.b f377d;

        /* renamed from: e  reason: collision with root package name */
        public final long f378e;

        /* renamed from: f  reason: collision with root package name */
        public final i3 f379f;

        /* renamed from: g  reason: collision with root package name */
        public final int f380g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public final q.b f381h;

        /* renamed from: i  reason: collision with root package name */
        public final long f382i;

        /* renamed from: j  reason: collision with root package name */
        public final long f383j;

        public a(long j10, i3 i3Var, int i9, @Nullable q.b bVar, long j11, i3 i3Var2, int i10, @Nullable q.b bVar2, long j12, long j13) {
            this.f374a = j10;
            this.f375b = i3Var;
            this.f376c = i9;
            this.f377d = bVar;
            this.f378e = j11;
            this.f379f = i3Var2;
            this.f380g = i10;
            this.f381h = bVar2;
            this.f382i = j12;
            this.f383j = j13;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f374a == aVar.f374a && this.f376c == aVar.f376c && this.f378e == aVar.f378e && this.f380g == aVar.f380g && this.f382i == aVar.f382i && this.f383j == aVar.f383j && com.google.common.base.l.a(this.f375b, aVar.f375b) && com.google.common.base.l.a(this.f377d, aVar.f377d) && com.google.common.base.l.a(this.f379f, aVar.f379f) && com.google.common.base.l.a(this.f381h, aVar.f381h);
        }

        public int hashCode() {
            return com.google.common.base.l.b(Long.valueOf(this.f374a), this.f375b, Integer.valueOf(this.f376c), this.f377d, Long.valueOf(this.f378e), this.f379f, Integer.valueOf(this.f380g), this.f381h, Long.valueOf(this.f382i), Long.valueOf(this.f383j));
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.l f384a;

        /* renamed from: b  reason: collision with root package name */
        private final SparseArray<a> f385b;

        public b(com.google.android.exoplayer2.util.l lVar, SparseArray<a> sparseArray) {
            this.f384a = lVar;
            SparseArray<a> sparseArray2 = new SparseArray<>(lVar.d());
            for (int i9 = 0; i9 < lVar.d(); i9++) {
                int c10 = lVar.c(i9);
                sparseArray2.append(c10, (a) com.google.android.exoplayer2.util.a.e(sparseArray.get(c10)));
            }
            this.f385b = sparseArray2;
        }

        public boolean a(int i9) {
            return this.f384a.a(i9);
        }

        public int b(int i9) {
            return this.f384a.c(i9);
        }

        public a c(int i9) {
            return (a) com.google.android.exoplayer2.util.a.e(this.f385b.get(i9));
        }

        public int d() {
            return this.f384a.d();
        }
    }

    @Deprecated
    void A(a aVar, com.google.android.exoplayer2.k1 k1Var);

    void B(a aVar, Exception exc);

    void C(a aVar, int i9);

    void D(a aVar, Exception exc);

    void E(a aVar, k2 k2Var);

    void F(a aVar, h3.z zVar);

    void G(a aVar, @Nullable PlaybackException playbackException);

    void H(a aVar, v2.j jVar, v2.m mVar, IOException iOException, boolean z10);

    @Deprecated
    void I(a aVar, int i9);

    void J(a aVar, b2.e eVar);

    void L(a aVar, boolean z10);

    void M(a aVar, v2.j jVar, v2.m mVar);

    void N(a aVar, n3 n3Var);

    void O(a aVar, com.google.android.exoplayer2.k1 k1Var, @Nullable b2.g gVar);

    void P(a aVar, int i9, boolean z10);

    void Q(a aVar, com.google.android.exoplayer2.k1 k1Var, @Nullable b2.g gVar);

    void R(a aVar, b2.e eVar);

    void S(a aVar, String str, long j10, long j11);

    void T(a aVar, boolean z10);

    @Deprecated
    void U(a aVar);

    @Deprecated
    void V(a aVar, List<x2.b> list);

    @Deprecated
    void W(a aVar, int i9, com.google.android.exoplayer2.k1 k1Var);

    void X(a aVar);

    void Y(a aVar, l2.e eVar, l2.e eVar2, int i9);

    void Z(a aVar, boolean z10, int i9);

    @Deprecated
    void a(a aVar, boolean z10);

    void a0(a aVar, v2.m mVar);

    void b(a aVar, int i9);

    void b0(a aVar, @Nullable com.google.android.exoplayer2.s1 s1Var, int i9);

    void c(a aVar, String str);

    void c0(a aVar, String str, long j10, long j11);

    void d(a aVar, l2.b bVar);

    @Deprecated
    void d0(a aVar, int i9, String str, long j10);

    void e(a aVar, long j10, int i9);

    void e0(a aVar, int i9, long j10, long j11);

    void f(a aVar, int i9);

    void f0(a aVar, int i9, long j10);

    void g(a aVar, Exception exc);

    @Deprecated
    void g0(a aVar, com.google.android.exoplayer2.k1 k1Var);

    @Deprecated
    void h(a aVar, int i9, b2.e eVar);

    @Deprecated
    void h0(a aVar);

    void i(a aVar, String str);

    @Deprecated
    void j(a aVar, String str, long j10);

    @Deprecated
    void j0(a aVar);

    void k(a aVar, com.google.android.exoplayer2.o oVar);

    void k0(a aVar, int i9);

    void l(a aVar);

    @Deprecated
    void m(a aVar, String str, long j10);

    void m0(a aVar, v2.j jVar, v2.m mVar);

    void n(a aVar, x1 x1Var);

    void n0(a aVar, Exception exc);

    @Deprecated
    void o(a aVar, boolean z10, int i9);

    void o0(a aVar, int i9, long j10, long j11);

    void p(a aVar, b2.e eVar);

    void p0(a aVar);

    void q(a aVar, long j10);

    void r(a aVar, v2.j jVar, v2.m mVar);

    void r0(a aVar);

    void s(a aVar, int i9);

    @Deprecated
    void s0(a aVar, int i9, b2.e eVar);

    void t(a aVar, int i9, int i10);

    void t0(a aVar, PlaybackException playbackException);

    void u(l2 l2Var, b bVar);

    @Deprecated
    void u0(a aVar, int i9, int i10, int i11, float f10);

    void v(a aVar, x2.e eVar);

    void v0(a aVar, boolean z10);

    void w(a aVar);

    void w0(a aVar, Object obj, long j10);

    void x(a aVar, boolean z10);

    void x0(a aVar, b2.e eVar);

    void y(a aVar, k3.y yVar);

    void z(a aVar, Metadata metadata);
}
