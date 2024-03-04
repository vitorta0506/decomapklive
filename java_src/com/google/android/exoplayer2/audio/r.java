package com.google.android.exoplayer2.audio;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.r;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.l0;
/* loaded from: classes.dex */
public interface r {

    /* loaded from: classes.dex */
    public static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Handler f5589a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final r f5590b;

        public a(@Nullable Handler handler, @Nullable r rVar) {
            this.f5589a = rVar != null ? (Handler) com.google.android.exoplayer2.util.a.e(handler) : null;
            this.f5590b = rVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void A(int i9, long j10, long j11) {
            ((r) l0.j(this.f5590b)).x(i9, j10, j11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(Exception exc) {
            ((r) l0.j(this.f5590b)).v(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(Exception exc) {
            ((r) l0.j(this.f5590b)).b(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(String str, long j10, long j11) {
            ((r) l0.j(this.f5590b)).f(str, j10, j11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void u(String str) {
            ((r) l0.j(this.f5590b)).e(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void v(b2.e eVar) {
            eVar.c();
            ((r) l0.j(this.f5590b)).w(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void w(b2.e eVar) {
            ((r) l0.j(this.f5590b)).i(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void x(k1 k1Var, b2.g gVar) {
            ((r) l0.j(this.f5590b)).G(k1Var);
            ((r) l0.j(this.f5590b)).h(k1Var, gVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void y(long j10) {
            ((r) l0.j(this.f5590b)).m(j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void z(boolean z10) {
            ((r) l0.j(this.f5590b)).a(z10);
        }

        public void B(final long j10) {
            Handler handler = this.f5589a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        r.a.this.y(j10);
                    }
                });
            }
        }

        public void C(final boolean z10) {
            Handler handler = this.f5589a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        r.a.this.z(z10);
                    }
                });
            }
        }

        public void D(final int i9, final long j10, final long j11) {
            Handler handler = this.f5589a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        r.a.this.A(i9, j10, j11);
                    }
                });
            }
        }

        public void k(final Exception exc) {
            Handler handler = this.f5589a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        r.a.this.r(exc);
                    }
                });
            }
        }

        public void l(final Exception exc) {
            Handler handler = this.f5589a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        r.a.this.s(exc);
                    }
                });
            }
        }

        public void m(final String str, final long j10, final long j11) {
            Handler handler = this.f5589a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        r.a.this.t(str, j10, j11);
                    }
                });
            }
        }

        public void n(final String str) {
            Handler handler = this.f5589a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        r.a.this.u(str);
                    }
                });
            }
        }

        public void o(final b2.e eVar) {
            eVar.c();
            Handler handler = this.f5589a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        r.a.this.v(eVar);
                    }
                });
            }
        }

        public void p(final b2.e eVar) {
            Handler handler = this.f5589a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        r.a.this.w(eVar);
                    }
                });
            }
        }

        public void q(final k1 k1Var, @Nullable final b2.g gVar) {
            Handler handler = this.f5589a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        r.a.this.x(k1Var, gVar);
                    }
                });
            }
        }
    }

    @Deprecated
    void G(k1 k1Var);

    void a(boolean z10);

    void b(Exception exc);

    void e(String str);

    void f(String str, long j10, long j11);

    void h(k1 k1Var, @Nullable b2.g gVar);

    void i(b2.e eVar);

    void m(long j10);

    void v(Exception exc);

    void w(b2.e eVar);

    void x(int i9, long j10, long j11);
}
