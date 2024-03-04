package com.google.android.exoplayer2;

import android.os.Looper;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.l2;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.List;
/* loaded from: classes.dex */
public class m1 implements l2 {

    /* renamed from: a  reason: collision with root package name */
    private final l2 f6196a;

    /* loaded from: classes.dex */
    private static final class a implements l2.d {

        /* renamed from: a  reason: collision with root package name */
        private final m1 f6197a;

        /* renamed from: b  reason: collision with root package name */
        private final l2.d f6198b;

        public a(m1 m1Var, l2.d dVar) {
            this.f6197a = m1Var;
            this.f6198b = dVar;
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void A(int i9) {
            this.f6198b.A(i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void B(boolean z10) {
            this.f6198b.X(z10);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void C(l2.b bVar) {
            this.f6198b.C(bVar);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void F(i3 i3Var, int i9) {
            this.f6198b.F(i3Var, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void G(int i9) {
            this.f6198b.G(i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void I(o oVar) {
            this.f6198b.I(oVar);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void K(x1 x1Var) {
            this.f6198b.K(x1Var);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void L(boolean z10) {
            this.f6198b.L(z10);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void N(int i9, boolean z10) {
            this.f6198b.N(i9, z10);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void O() {
            this.f6198b.O();
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void R(int i9, int i10) {
            this.f6198b.R(i9, i10);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void S(@Nullable PlaybackException playbackException) {
            this.f6198b.S(playbackException);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void T(h3.z zVar) {
            this.f6198b.T(zVar);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void U(int i9) {
            this.f6198b.U(i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void W(n3 n3Var) {
            this.f6198b.W(n3Var);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void X(boolean z10) {
            this.f6198b.X(z10);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void Y() {
            this.f6198b.Y();
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void Z(PlaybackException playbackException) {
            this.f6198b.Z(playbackException);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void a(boolean z10) {
            this.f6198b.a(z10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                if (this.f6197a.equals(aVar.f6197a)) {
                    return this.f6198b.equals(aVar.f6198b);
                }
                return false;
            }
            return false;
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void f0(l2 l2Var, l2.c cVar) {
            this.f6198b.f0(this.f6197a, cVar);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void g(Metadata metadata) {
            this.f6198b.g(metadata);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void g0(boolean z10, int i9) {
            this.f6198b.g0(z10, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void h0(@Nullable s1 s1Var, int i9) {
            this.f6198b.h0(s1Var, i9);
        }

        public int hashCode() {
            return (this.f6197a.hashCode() * 31) + this.f6198b.hashCode();
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void j0(boolean z10, int i9) {
            this.f6198b.j0(z10, i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void k(x2.e eVar) {
            this.f6198b.k(eVar);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void l(List<x2.b> list) {
            this.f6198b.l(list);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void m0(boolean z10) {
            this.f6198b.m0(z10);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void n(k3.y yVar) {
            this.f6198b.n(yVar);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void onRepeatModeChanged(int i9) {
            this.f6198b.onRepeatModeChanged(i9);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void q(k2 k2Var) {
            this.f6198b.q(k2Var);
        }

        @Override // com.google.android.exoplayer2.l2.d
        public void z(l2.e eVar, l2.e eVar2, int i9) {
            this.f6198b.z(eVar, eVar2, i9);
        }
    }

    @Override // com.google.android.exoplayer2.l2
    public boolean A() {
        return this.f6196a.A();
    }

    @Override // com.google.android.exoplayer2.l2
    public void B(boolean z10) {
        this.f6196a.B(z10);
    }

    @Override // com.google.android.exoplayer2.l2
    public int E() {
        return this.f6196a.E();
    }

    @Override // com.google.android.exoplayer2.l2
    public void F(@Nullable TextureView textureView) {
        this.f6196a.F(textureView);
    }

    @Override // com.google.android.exoplayer2.l2
    public boolean G() {
        return this.f6196a.G();
    }

    @Override // com.google.android.exoplayer2.l2
    public int H() {
        return this.f6196a.H();
    }

    @Override // com.google.android.exoplayer2.l2
    public long I() {
        return this.f6196a.I();
    }

    @Override // com.google.android.exoplayer2.l2
    public long J() {
        return this.f6196a.J();
    }

    @Override // com.google.android.exoplayer2.l2
    public void K(l2.d dVar) {
        this.f6196a.K(new a(this, dVar));
    }

    @Override // com.google.android.exoplayer2.l2
    public boolean L() {
        return this.f6196a.L();
    }

    @Override // com.google.android.exoplayer2.l2
    public int M() {
        return this.f6196a.M();
    }

    @Override // com.google.android.exoplayer2.l2
    public void N(@Nullable SurfaceView surfaceView) {
        this.f6196a.N(surfaceView);
    }

    @Override // com.google.android.exoplayer2.l2
    public boolean O() {
        return this.f6196a.O();
    }

    @Override // com.google.android.exoplayer2.l2
    public long P() {
        return this.f6196a.P();
    }

    @Override // com.google.android.exoplayer2.l2
    public void Q() {
        this.f6196a.Q();
    }

    @Override // com.google.android.exoplayer2.l2
    public void R() {
        this.f6196a.R();
    }

    @Override // com.google.android.exoplayer2.l2
    public x1 S() {
        return this.f6196a.S();
    }

    @Override // com.google.android.exoplayer2.l2
    public long T() {
        return this.f6196a.T();
    }

    @Override // com.google.android.exoplayer2.l2
    public boolean U() {
        return this.f6196a.U();
    }

    @Override // com.google.android.exoplayer2.l2
    public k2 b() {
        return this.f6196a.b();
    }

    public l2 c() {
        return this.f6196a;
    }

    @Override // com.google.android.exoplayer2.l2
    public void d(k2 k2Var) {
        this.f6196a.d(k2Var);
    }

    @Override // com.google.android.exoplayer2.l2
    public boolean e() {
        return this.f6196a.e();
    }

    @Override // com.google.android.exoplayer2.l2
    public long f() {
        return this.f6196a.f();
    }

    @Override // com.google.android.exoplayer2.l2
    public void g(l2.d dVar) {
        this.f6196a.g(new a(this, dVar));
    }

    @Override // com.google.android.exoplayer2.l2
    public long getCurrentPosition() {
        return this.f6196a.getCurrentPosition();
    }

    @Override // com.google.android.exoplayer2.l2
    public int getPlaybackState() {
        return this.f6196a.getPlaybackState();
    }

    @Override // com.google.android.exoplayer2.l2
    public int getRepeatMode() {
        return this.f6196a.getRepeatMode();
    }

    @Override // com.google.android.exoplayer2.l2
    public k3.y getVideoSize() {
        return this.f6196a.getVideoSize();
    }

    @Override // com.google.android.exoplayer2.l2
    public void h(@Nullable SurfaceView surfaceView) {
        this.f6196a.h(surfaceView);
    }

    @Override // com.google.android.exoplayer2.l2
    public void i(h3.z zVar) {
        this.f6196a.i(zVar);
    }

    @Override // com.google.android.exoplayer2.l2
    public boolean isPlaying() {
        return this.f6196a.isPlaying();
    }

    @Override // com.google.android.exoplayer2.l2
    public void j() {
        this.f6196a.j();
    }

    @Override // com.google.android.exoplayer2.l2
    @Nullable
    public PlaybackException k() {
        return this.f6196a.k();
    }

    @Override // com.google.android.exoplayer2.l2
    public n3 m() {
        return this.f6196a.m();
    }

    @Override // com.google.android.exoplayer2.l2
    public boolean n() {
        return this.f6196a.n();
    }

    @Override // com.google.android.exoplayer2.l2
    public x2.e o() {
        return this.f6196a.o();
    }

    @Override // com.google.android.exoplayer2.l2
    public int p() {
        return this.f6196a.p();
    }

    @Override // com.google.android.exoplayer2.l2
    public void pause() {
        this.f6196a.pause();
    }

    @Override // com.google.android.exoplayer2.l2
    public void play() {
        this.f6196a.play();
    }

    @Override // com.google.android.exoplayer2.l2
    public void prepare() {
        this.f6196a.prepare();
    }

    @Override // com.google.android.exoplayer2.l2
    public boolean q(int i9) {
        return this.f6196a.q(i9);
    }

    @Override // com.google.android.exoplayer2.l2
    public boolean r() {
        return this.f6196a.r();
    }

    @Override // com.google.android.exoplayer2.l2
    public int s() {
        return this.f6196a.s();
    }

    @Override // com.google.android.exoplayer2.l2
    public void setRepeatMode(int i9) {
        this.f6196a.setRepeatMode(i9);
    }

    @Override // com.google.android.exoplayer2.l2
    public i3 t() {
        return this.f6196a.t();
    }

    @Override // com.google.android.exoplayer2.l2
    public Looper u() {
        return this.f6196a.u();
    }

    @Override // com.google.android.exoplayer2.l2
    public h3.z v() {
        return this.f6196a.v();
    }

    @Override // com.google.android.exoplayer2.l2
    public void w() {
        this.f6196a.w();
    }

    @Override // com.google.android.exoplayer2.l2
    public void x(@Nullable TextureView textureView) {
        this.f6196a.x(textureView);
    }

    @Override // com.google.android.exoplayer2.l2
    public void y(int i9, long j10) {
        this.f6196a.y(i9, j10);
    }
}
