package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
/* loaded from: classes.dex */
final class l implements com.google.android.exoplayer2.util.t {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.e0 f6158a;

    /* renamed from: b  reason: collision with root package name */
    private final a f6159b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private u2 f6160c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private com.google.android.exoplayer2.util.t f6161d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f6162e = true;

    /* renamed from: f  reason: collision with root package name */
    private boolean f6163f;

    /* loaded from: classes.dex */
    public interface a {
        void q(k2 k2Var);
    }

    public l(a aVar, com.google.android.exoplayer2.util.d dVar) {
        this.f6159b = aVar;
        this.f6158a = new com.google.android.exoplayer2.util.e0(dVar);
    }

    private boolean f(boolean z10) {
        u2 u2Var = this.f6160c;
        return u2Var == null || u2Var.c() || (!this.f6160c.isReady() && (z10 || this.f6160c.g()));
    }

    private void j(boolean z10) {
        if (f(z10)) {
            this.f6162e = true;
            if (this.f6163f) {
                this.f6158a.c();
                return;
            }
            return;
        }
        com.google.android.exoplayer2.util.t tVar = (com.google.android.exoplayer2.util.t) com.google.android.exoplayer2.util.a.e(this.f6161d);
        long p10 = tVar.p();
        if (this.f6162e) {
            if (p10 < this.f6158a.p()) {
                this.f6158a.e();
                return;
            }
            this.f6162e = false;
            if (this.f6163f) {
                this.f6158a.c();
            }
        }
        this.f6158a.a(p10);
        k2 b10 = tVar.b();
        if (b10.equals(this.f6158a.b())) {
            return;
        }
        this.f6158a.d(b10);
        this.f6159b.q(b10);
    }

    public void a(u2 u2Var) {
        if (u2Var == this.f6160c) {
            this.f6161d = null;
            this.f6160c = null;
            this.f6162e = true;
        }
    }

    @Override // com.google.android.exoplayer2.util.t
    public k2 b() {
        com.google.android.exoplayer2.util.t tVar = this.f6161d;
        if (tVar != null) {
            return tVar.b();
        }
        return this.f6158a.b();
    }

    public void c(u2 u2Var) throws ExoPlaybackException {
        com.google.android.exoplayer2.util.t tVar;
        com.google.android.exoplayer2.util.t w6 = u2Var.w();
        if (w6 == null || w6 == (tVar = this.f6161d)) {
            return;
        }
        if (tVar == null) {
            this.f6161d = w6;
            this.f6160c = u2Var;
            w6.d(this.f6158a.b());
            return;
        }
        throw ExoPlaybackException.createForUnexpected(new IllegalStateException("Multiple renderer media clocks enabled."));
    }

    @Override // com.google.android.exoplayer2.util.t
    public void d(k2 k2Var) {
        com.google.android.exoplayer2.util.t tVar = this.f6161d;
        if (tVar != null) {
            tVar.d(k2Var);
            k2Var = this.f6161d.b();
        }
        this.f6158a.d(k2Var);
    }

    public void e(long j10) {
        this.f6158a.a(j10);
    }

    public void g() {
        this.f6163f = true;
        this.f6158a.c();
    }

    public void h() {
        this.f6163f = false;
        this.f6158a.e();
    }

    public long i(boolean z10) {
        j(z10);
        return p();
    }

    @Override // com.google.android.exoplayer2.util.t
    public long p() {
        if (this.f6162e) {
            return this.f6158a.p();
        }
        return ((com.google.android.exoplayer2.util.t) com.google.android.exoplayer2.util.a.e(this.f6161d)).p();
    }
}
