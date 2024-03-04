package v2;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import v2.q;
import v2.w;
/* loaded from: classes.dex */
public interface w {

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f58944a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final q.b f58945b;

        /* renamed from: c  reason: collision with root package name */
        private final CopyOnWriteArrayList<C0662a> f58946c;

        /* renamed from: d  reason: collision with root package name */
        private final long f58947d;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: v2.w$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0662a {

            /* renamed from: a  reason: collision with root package name */
            public Handler f58948a;

            /* renamed from: b  reason: collision with root package name */
            public w f58949b;

            public C0662a(Handler handler, w wVar) {
                this.f58948a = handler;
                this.f58949b = wVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        private long g(long j10) {
            long P0 = com.google.android.exoplayer2.util.l0.P0(j10);
            if (P0 == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.f58947d + P0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(w wVar, m mVar) {
            wVar.c0(this.f58944a, this.f58945b, mVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(w wVar, j jVar, m mVar) {
            wVar.r(this.f58944a, this.f58945b, jVar, mVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void l(w wVar, j jVar, m mVar) {
            wVar.D(this.f58944a, this.f58945b, jVar, mVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void m(w wVar, j jVar, m mVar, IOException iOException, boolean z10) {
            wVar.d0(this.f58944a, this.f58945b, jVar, mVar, iOException, z10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(w wVar, j jVar, m mVar) {
            wVar.i0(this.f58944a, this.f58945b, jVar, mVar);
        }

        public void f(Handler handler, w wVar) {
            com.google.android.exoplayer2.util.a.e(handler);
            com.google.android.exoplayer2.util.a.e(wVar);
            this.f58946c.add(new C0662a(handler, wVar));
        }

        public void h(int i9, @Nullable k1 k1Var, int i10, @Nullable Object obj, long j10) {
            i(new m(1, i9, k1Var, i10, obj, g(j10), -9223372036854775807L));
        }

        public void i(final m mVar) {
            Iterator<C0662a> it = this.f58946c.iterator();
            while (it.hasNext()) {
                C0662a next = it.next();
                final w wVar = next.f58949b;
                com.google.android.exoplayer2.util.l0.C0(next.f58948a, new Runnable() { // from class: v2.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        w.a.this.j(wVar, mVar);
                    }
                });
            }
        }

        public void o(j jVar, int i9, int i10, @Nullable k1 k1Var, int i11, @Nullable Object obj, long j10, long j11) {
            p(jVar, new m(i9, i10, k1Var, i11, obj, g(j10), g(j11)));
        }

        public void p(final j jVar, final m mVar) {
            Iterator<C0662a> it = this.f58946c.iterator();
            while (it.hasNext()) {
                C0662a next = it.next();
                final w wVar = next.f58949b;
                com.google.android.exoplayer2.util.l0.C0(next.f58948a, new Runnable() { // from class: v2.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        w.a.this.k(wVar, jVar, mVar);
                    }
                });
            }
        }

        public void q(j jVar, int i9, int i10, @Nullable k1 k1Var, int i11, @Nullable Object obj, long j10, long j11) {
            r(jVar, new m(i9, i10, k1Var, i11, obj, g(j10), g(j11)));
        }

        public void r(final j jVar, final m mVar) {
            Iterator<C0662a> it = this.f58946c.iterator();
            while (it.hasNext()) {
                C0662a next = it.next();
                final w wVar = next.f58949b;
                com.google.android.exoplayer2.util.l0.C0(next.f58948a, new Runnable() { // from class: v2.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        w.a.this.l(wVar, jVar, mVar);
                    }
                });
            }
        }

        public void s(j jVar, int i9, int i10, @Nullable k1 k1Var, int i11, @Nullable Object obj, long j10, long j11, IOException iOException, boolean z10) {
            t(jVar, new m(i9, i10, k1Var, i11, obj, g(j10), g(j11)), iOException, z10);
        }

        public void t(final j jVar, final m mVar, final IOException iOException, final boolean z10) {
            Iterator<C0662a> it = this.f58946c.iterator();
            while (it.hasNext()) {
                C0662a next = it.next();
                final w wVar = next.f58949b;
                com.google.android.exoplayer2.util.l0.C0(next.f58948a, new Runnable() { // from class: v2.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        w.a.this.m(wVar, jVar, mVar, iOException, z10);
                    }
                });
            }
        }

        public void u(j jVar, int i9, int i10, @Nullable k1 k1Var, int i11, @Nullable Object obj, long j10, long j11) {
            v(jVar, new m(i9, i10, k1Var, i11, obj, g(j10), g(j11)));
        }

        public void v(final j jVar, final m mVar) {
            Iterator<C0662a> it = this.f58946c.iterator();
            while (it.hasNext()) {
                C0662a next = it.next();
                final w wVar = next.f58949b;
                com.google.android.exoplayer2.util.l0.C0(next.f58948a, new Runnable() { // from class: v2.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        w.a.this.n(wVar, jVar, mVar);
                    }
                });
            }
        }

        public void w(w wVar) {
            Iterator<C0662a> it = this.f58946c.iterator();
            while (it.hasNext()) {
                C0662a next = it.next();
                if (next.f58949b == wVar) {
                    this.f58946c.remove(next);
                }
            }
        }

        @CheckResult
        public a x(int i9, @Nullable q.b bVar, long j10) {
            return new a(this.f58946c, i9, bVar, j10);
        }

        private a(CopyOnWriteArrayList<C0662a> copyOnWriteArrayList, int i9, @Nullable q.b bVar, long j10) {
            this.f58946c = copyOnWriteArrayList;
            this.f58944a = i9;
            this.f58945b = bVar;
            this.f58947d = j10;
        }
    }

    void D(int i9, @Nullable q.b bVar, j jVar, m mVar);

    void c0(int i9, @Nullable q.b bVar, m mVar);

    void d0(int i9, @Nullable q.b bVar, j jVar, m mVar, IOException iOException, boolean z10);

    void i0(int i9, @Nullable q.b bVar, j jVar, m mVar);

    void r(int i9, @Nullable q.b bVar, j jVar, m mVar);
}
