package k3;

import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.l0;
import k3.w;
/* loaded from: classes2.dex */
public interface w {

    /* loaded from: classes2.dex */
    public static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Handler f53626a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final w f53627b;

        public a(@Nullable Handler handler, @Nullable w wVar) {
            this.f53626a = wVar != null ? (Handler) com.google.android.exoplayer2.util.a.e(handler) : null;
            this.f53627b = wVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(String str, long j10, long j11) {
            ((w) l0.j(this.f53627b)).d(str, j10, j11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(String str) {
            ((w) l0.j(this.f53627b)).c(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(b2.e eVar) {
            eVar.c();
            ((w) l0.j(this.f53627b)).p(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(int i9, long j10) {
            ((w) l0.j(this.f53627b)).t(i9, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void u(b2.e eVar) {
            ((w) l0.j(this.f53627b)).s(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void v(k1 k1Var, b2.g gVar) {
            ((w) l0.j(this.f53627b)).C(k1Var);
            ((w) l0.j(this.f53627b)).j(k1Var, gVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void w(Object obj, long j10) {
            ((w) l0.j(this.f53627b)).u(obj, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void x(long j10, int i9) {
            ((w) l0.j(this.f53627b)).y(j10, i9);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void y(Exception exc) {
            ((w) l0.j(this.f53627b)).o(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void z(y yVar) {
            ((w) l0.j(this.f53627b)).n(yVar);
        }

        public void A(final Object obj) {
            if (this.f53626a != null) {
                final long elapsedRealtime = SystemClock.elapsedRealtime();
                this.f53626a.post(new Runnable() { // from class: k3.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        w.a.this.w(obj, elapsedRealtime);
                    }
                });
            }
        }

        public void B(final long j10, final int i9) {
            Handler handler = this.f53626a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: k3.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        w.a.this.x(j10, i9);
                    }
                });
            }
        }

        public void C(final Exception exc) {
            Handler handler = this.f53626a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: k3.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        w.a.this.y(exc);
                    }
                });
            }
        }

        public void D(final y yVar) {
            Handler handler = this.f53626a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: k3.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        w.a.this.z(yVar);
                    }
                });
            }
        }

        public void k(final String str, final long j10, final long j11) {
            Handler handler = this.f53626a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: k3.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        w.a.this.q(str, j10, j11);
                    }
                });
            }
        }

        public void l(final String str) {
            Handler handler = this.f53626a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: k3.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        w.a.this.r(str);
                    }
                });
            }
        }

        public void m(final b2.e eVar) {
            eVar.c();
            Handler handler = this.f53626a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: k3.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        w.a.this.s(eVar);
                    }
                });
            }
        }

        public void n(final int i9, final long j10) {
            Handler handler = this.f53626a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: k3.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        w.a.this.t(i9, j10);
                    }
                });
            }
        }

        public void o(final b2.e eVar) {
            Handler handler = this.f53626a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: k3.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        w.a.this.u(eVar);
                    }
                });
            }
        }

        public void p(final k1 k1Var, @Nullable final b2.g gVar) {
            Handler handler = this.f53626a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: k3.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        w.a.this.v(k1Var, gVar);
                    }
                });
            }
        }
    }

    @Deprecated
    void C(k1 k1Var);

    void c(String str);

    void d(String str, long j10, long j11);

    void j(k1 k1Var, @Nullable b2.g gVar);

    void n(y yVar);

    void o(Exception exc);

    void p(b2.e eVar);

    void s(b2.e eVar);

    void t(int i9, long j10);

    void u(Object obj, long j10);

    void y(long j10, int i9);
}
