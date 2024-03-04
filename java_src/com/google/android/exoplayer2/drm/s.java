package com.google.android.exoplayer2.drm;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.s;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import v2.q;
/* loaded from: classes.dex */
public interface s {

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f5842a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final q.b f5843b;

        /* renamed from: c  reason: collision with root package name */
        private final CopyOnWriteArrayList<C0079a> f5844c;

        /* renamed from: com.google.android.exoplayer2.drm.s$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static final class C0079a {

            /* renamed from: a  reason: collision with root package name */
            public Handler f5845a;

            /* renamed from: b  reason: collision with root package name */
            public s f5846b;

            public C0079a(Handler handler, s sVar) {
                this.f5845a = handler;
                this.f5846b = sVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(s sVar) {
            sVar.e0(this.f5842a, this.f5843b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void o(s sVar) {
            sVar.l0(this.f5842a, this.f5843b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void p(s sVar) {
            sVar.E(this.f5842a, this.f5843b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(s sVar, int i9) {
            sVar.k0(this.f5842a, this.f5843b);
            sVar.P(this.f5842a, this.f5843b, i9);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(s sVar, Exception exc) {
            sVar.Q(this.f5842a, this.f5843b, exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(s sVar) {
            sVar.a0(this.f5842a, this.f5843b);
        }

        public void g(Handler handler, s sVar) {
            com.google.android.exoplayer2.util.a.e(handler);
            com.google.android.exoplayer2.util.a.e(sVar);
            this.f5844c.add(new C0079a(handler, sVar));
        }

        public void h() {
            Iterator<C0079a> it = this.f5844c.iterator();
            while (it.hasNext()) {
                C0079a next = it.next();
                final s sVar = next.f5846b;
                com.google.android.exoplayer2.util.l0.C0(next.f5845a, new Runnable() { // from class: com.google.android.exoplayer2.drm.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.a.this.n(sVar);
                    }
                });
            }
        }

        public void i() {
            Iterator<C0079a> it = this.f5844c.iterator();
            while (it.hasNext()) {
                C0079a next = it.next();
                final s sVar = next.f5846b;
                com.google.android.exoplayer2.util.l0.C0(next.f5845a, new Runnable() { // from class: com.google.android.exoplayer2.drm.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.a.this.o(sVar);
                    }
                });
            }
        }

        public void j() {
            Iterator<C0079a> it = this.f5844c.iterator();
            while (it.hasNext()) {
                C0079a next = it.next();
                final s sVar = next.f5846b;
                com.google.android.exoplayer2.util.l0.C0(next.f5845a, new Runnable() { // from class: com.google.android.exoplayer2.drm.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.a.this.p(sVar);
                    }
                });
            }
        }

        public void k(final int i9) {
            Iterator<C0079a> it = this.f5844c.iterator();
            while (it.hasNext()) {
                C0079a next = it.next();
                final s sVar = next.f5846b;
                com.google.android.exoplayer2.util.l0.C0(next.f5845a, new Runnable() { // from class: com.google.android.exoplayer2.drm.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.a.this.q(sVar, i9);
                    }
                });
            }
        }

        public void l(final Exception exc) {
            Iterator<C0079a> it = this.f5844c.iterator();
            while (it.hasNext()) {
                C0079a next = it.next();
                final s sVar = next.f5846b;
                com.google.android.exoplayer2.util.l0.C0(next.f5845a, new Runnable() { // from class: com.google.android.exoplayer2.drm.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.a.this.r(sVar, exc);
                    }
                });
            }
        }

        public void m() {
            Iterator<C0079a> it = this.f5844c.iterator();
            while (it.hasNext()) {
                C0079a next = it.next();
                final s sVar = next.f5846b;
                com.google.android.exoplayer2.util.l0.C0(next.f5845a, new Runnable() { // from class: com.google.android.exoplayer2.drm.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.a.this.s(sVar);
                    }
                });
            }
        }

        public void t(s sVar) {
            Iterator<C0079a> it = this.f5844c.iterator();
            while (it.hasNext()) {
                C0079a next = it.next();
                if (next.f5846b == sVar) {
                    this.f5844c.remove(next);
                }
            }
        }

        @CheckResult
        public a u(int i9, @Nullable q.b bVar) {
            return new a(this.f5844c, i9, bVar);
        }

        private a(CopyOnWriteArrayList<C0079a> copyOnWriteArrayList, int i9, @Nullable q.b bVar) {
            this.f5844c = copyOnWriteArrayList;
            this.f5842a = i9;
            this.f5843b = bVar;
        }
    }

    void E(int i9, @Nullable q.b bVar);

    void P(int i9, @Nullable q.b bVar, int i10);

    void Q(int i9, @Nullable q.b bVar, Exception exc);

    void a0(int i9, @Nullable q.b bVar);

    void e0(int i9, @Nullable q.b bVar);

    @Deprecated
    void k0(int i9, @Nullable q.b bVar);

    void l0(int i9, @Nullable q.b bVar);
}
