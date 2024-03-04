package com.google.android.exoplayer2;

import com.google.android.exoplayer2.i3;
/* loaded from: classes.dex */
public abstract class e implements l2 {

    /* renamed from: a  reason: collision with root package name */
    protected final i3.d f5851a = new i3.d();

    private int X() {
        int repeatMode = getRepeatMode();
        if (repeatMode == 1) {
            return 0;
        }
        return repeatMode;
    }

    private void c0(long j10) {
        long currentPosition = getCurrentPosition() + j10;
        long duration = getDuration();
        if (duration != -9223372036854775807L) {
            currentPosition = Math.min(currentPosition, duration);
        }
        Y(Math.max(currentPosition, 0L));
    }

    @Override // com.google.android.exoplayer2.l2
    public final boolean G() {
        return W() != -1;
    }

    @Override // com.google.android.exoplayer2.l2
    public final boolean L() {
        i3 t10 = t();
        return !t10.u() && t10.r(M(), this.f5851a).f6048h;
    }

    @Override // com.google.android.exoplayer2.l2
    public final void Q() {
        c0(I());
    }

    @Override // com.google.android.exoplayer2.l2
    public final void R() {
        c0(-T());
    }

    @Override // com.google.android.exoplayer2.l2
    public final boolean U() {
        i3 t10 = t();
        return !t10.u() && t10.r(M(), this.f5851a).g();
    }

    public final int V() {
        i3 t10 = t();
        if (t10.u()) {
            return -1;
        }
        return t10.i(M(), X(), O());
    }

    public final int W() {
        i3 t10 = t();
        if (t10.u()) {
            return -1;
        }
        return t10.p(M(), X(), O());
    }

    public final void Y(long j10) {
        y(M(), j10);
    }

    public final void Z() {
        a0(M());
    }

    public final void a0(int i9) {
        y(i9, -9223372036854775807L);
    }

    public final void b0() {
        int V = V();
        if (V != -1) {
            a0(V);
        }
    }

    public final long c() {
        i3 t10 = t();
        if (t10.u()) {
            return -9223372036854775807L;
        }
        return t10.r(M(), this.f5851a).f();
    }

    public final void d0() {
        int W = W();
        if (W != -1) {
            a0(W);
        }
    }

    @Override // com.google.android.exoplayer2.l2
    public final boolean isPlaying() {
        return getPlaybackState() == 3 && A() && s() == 0;
    }

    @Override // com.google.android.exoplayer2.l2
    public final void j() {
        if (t().u() || e()) {
            return;
        }
        boolean G = G();
        if (U() && !L()) {
            if (G) {
                d0();
            }
        } else if (G && getCurrentPosition() <= D()) {
            d0();
        } else {
            Y(0L);
        }
    }

    @Override // com.google.android.exoplayer2.l2
    public final boolean n() {
        return V() != -1;
    }

    @Override // com.google.android.exoplayer2.l2
    public final void pause() {
        l(false);
    }

    @Override // com.google.android.exoplayer2.l2
    public final void play() {
        l(true);
    }

    @Override // com.google.android.exoplayer2.l2
    public final boolean q(int i9) {
        return z().c(i9);
    }

    @Override // com.google.android.exoplayer2.l2
    public final boolean r() {
        i3 t10 = t();
        return !t10.u() && t10.r(M(), this.f5851a).f6049i;
    }

    @Override // com.google.android.exoplayer2.l2
    public final void w() {
        if (t().u() || e()) {
            return;
        }
        if (n()) {
            b0();
        } else if (U() && r()) {
            Z();
        }
    }
}
