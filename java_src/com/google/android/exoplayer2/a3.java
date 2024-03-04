package com.google.android.exoplayer2;

import android.content.Context;
import android.os.Looper;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.l2;
import com.google.android.exoplayer2.q;
@Deprecated
/* loaded from: classes.dex */
public class a3 extends e implements q {

    /* renamed from: b  reason: collision with root package name */
    private final v0 f5365b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.g f5366c;

    @Deprecated
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final q.b f5367a;

        @Deprecated
        public a(Context context) {
            this.f5367a = new q.b(context);
        }

        @Deprecated
        public a3 a() {
            return this.f5367a.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a3(q.b bVar) {
        com.google.android.exoplayer2.util.g gVar = new com.google.android.exoplayer2.util.g();
        this.f5366c = gVar;
        try {
            this.f5365b = new v0(bVar, this);
            gVar.e();
        } catch (Throwable th2) {
            this.f5366c.e();
            throw th2;
        }
    }

    private void e0() {
        this.f5366c.b();
    }

    @Override // com.google.android.exoplayer2.l2
    public boolean A() {
        e0();
        return this.f5365b.A();
    }

    @Override // com.google.android.exoplayer2.l2
    public void B(boolean z10) {
        e0();
        this.f5365b.B(z10);
    }

    @Override // com.google.android.exoplayer2.l2
    @Deprecated
    public void C(boolean z10) {
        e0();
        this.f5365b.C(z10);
    }

    @Override // com.google.android.exoplayer2.l2
    public long D() {
        e0();
        return this.f5365b.D();
    }

    @Override // com.google.android.exoplayer2.l2
    public int E() {
        e0();
        return this.f5365b.E();
    }

    @Override // com.google.android.exoplayer2.l2
    public void F(@Nullable TextureView textureView) {
        e0();
        this.f5365b.F(textureView);
    }

    @Override // com.google.android.exoplayer2.l2
    public int H() {
        e0();
        return this.f5365b.H();
    }

    @Override // com.google.android.exoplayer2.l2
    public long I() {
        e0();
        return this.f5365b.I();
    }

    @Override // com.google.android.exoplayer2.l2
    public long J() {
        e0();
        return this.f5365b.J();
    }

    @Override // com.google.android.exoplayer2.l2
    public void K(l2.d dVar) {
        e0();
        this.f5365b.K(dVar);
    }

    @Override // com.google.android.exoplayer2.l2
    public int M() {
        e0();
        return this.f5365b.M();
    }

    @Override // com.google.android.exoplayer2.l2
    public void N(@Nullable SurfaceView surfaceView) {
        e0();
        this.f5365b.N(surfaceView);
    }

    @Override // com.google.android.exoplayer2.l2
    public boolean O() {
        e0();
        return this.f5365b.O();
    }

    @Override // com.google.android.exoplayer2.l2
    public long P() {
        e0();
        return this.f5365b.P();
    }

    @Override // com.google.android.exoplayer2.l2
    public x1 S() {
        e0();
        return this.f5365b.S();
    }

    @Override // com.google.android.exoplayer2.l2
    public long T() {
        e0();
        return this.f5365b.T();
    }

    @Override // com.google.android.exoplayer2.q
    @Deprecated
    public void a(v2.q qVar) {
        e0();
        this.f5365b.a(qVar);
    }

    @Override // com.google.android.exoplayer2.l2
    public k2 b() {
        e0();
        return this.f5365b.b();
    }

    @Override // com.google.android.exoplayer2.l2
    public void d(k2 k2Var) {
        e0();
        this.f5365b.d(k2Var);
    }

    @Override // com.google.android.exoplayer2.l2
    public boolean e() {
        e0();
        return this.f5365b.e();
    }

    @Override // com.google.android.exoplayer2.l2
    public long f() {
        e0();
        return this.f5365b.f();
    }

    @Override // com.google.android.exoplayer2.l2
    @Nullable
    /* renamed from: f0 */
    public ExoPlaybackException k() {
        e0();
        return this.f5365b.k();
    }

    @Override // com.google.android.exoplayer2.l2
    public void g(l2.d dVar) {
        e0();
        this.f5365b.g(dVar);
    }

    @Override // com.google.android.exoplayer2.l2
    public long getCurrentPosition() {
        e0();
        return this.f5365b.getCurrentPosition();
    }

    @Override // com.google.android.exoplayer2.l2
    public long getDuration() {
        e0();
        return this.f5365b.getDuration();
    }

    @Override // com.google.android.exoplayer2.l2
    public int getPlaybackState() {
        e0();
        return this.f5365b.getPlaybackState();
    }

    @Override // com.google.android.exoplayer2.l2
    public int getRepeatMode() {
        e0();
        return this.f5365b.getRepeatMode();
    }

    @Override // com.google.android.exoplayer2.l2
    public k3.y getVideoSize() {
        e0();
        return this.f5365b.getVideoSize();
    }

    @Override // com.google.android.exoplayer2.l2
    public void h(@Nullable SurfaceView surfaceView) {
        e0();
        this.f5365b.h(surfaceView);
    }

    @Override // com.google.android.exoplayer2.l2
    public void i(h3.z zVar) {
        e0();
        this.f5365b.i(zVar);
    }

    @Override // com.google.android.exoplayer2.l2
    public void l(boolean z10) {
        e0();
        this.f5365b.l(z10);
    }

    @Override // com.google.android.exoplayer2.l2
    public n3 m() {
        e0();
        return this.f5365b.m();
    }

    @Override // com.google.android.exoplayer2.l2
    public x2.e o() {
        e0();
        return this.f5365b.o();
    }

    @Override // com.google.android.exoplayer2.l2
    public int p() {
        e0();
        return this.f5365b.p();
    }

    @Override // com.google.android.exoplayer2.l2
    public void prepare() {
        e0();
        this.f5365b.prepare();
    }

    @Override // com.google.android.exoplayer2.l2
    public void release() {
        e0();
        this.f5365b.release();
    }

    @Override // com.google.android.exoplayer2.l2
    public int s() {
        e0();
        return this.f5365b.s();
    }

    @Override // com.google.android.exoplayer2.l2
    public void setRepeatMode(int i9) {
        e0();
        this.f5365b.setRepeatMode(i9);
    }

    @Override // com.google.android.exoplayer2.l2
    public void stop() {
        e0();
        this.f5365b.stop();
    }

    @Override // com.google.android.exoplayer2.l2
    public i3 t() {
        e0();
        return this.f5365b.t();
    }

    @Override // com.google.android.exoplayer2.l2
    public Looper u() {
        e0();
        return this.f5365b.u();
    }

    @Override // com.google.android.exoplayer2.l2
    public h3.z v() {
        e0();
        return this.f5365b.v();
    }

    @Override // com.google.android.exoplayer2.l2
    public void x(@Nullable TextureView textureView) {
        e0();
        this.f5365b.x(textureView);
    }

    @Override // com.google.android.exoplayer2.l2
    public void y(int i9, long j10) {
        e0();
        this.f5365b.y(i9, j10);
    }

    @Override // com.google.android.exoplayer2.l2
    public l2.b z() {
        e0();
        return this.f5365b.z();
    }
}
