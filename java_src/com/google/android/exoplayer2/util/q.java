package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes2.dex */
public final class q<T> {

    /* renamed from: a  reason: collision with root package name */
    private final d f7016a;

    /* renamed from: b  reason: collision with root package name */
    private final n f7017b;

    /* renamed from: c  reason: collision with root package name */
    private final b<T> f7018c;

    /* renamed from: d  reason: collision with root package name */
    private final CopyOnWriteArraySet<c<T>> f7019d;

    /* renamed from: e  reason: collision with root package name */
    private final ArrayDeque<Runnable> f7020e;

    /* renamed from: f  reason: collision with root package name */
    private final ArrayDeque<Runnable> f7021f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f7022g;

    /* loaded from: classes2.dex */
    public interface a<T> {
        void invoke(T t10);
    }

    /* loaded from: classes2.dex */
    public interface b<T> {
        void a(T t10, l lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c<T> {

        /* renamed from: a  reason: collision with root package name */
        public final T f7023a;

        /* renamed from: b  reason: collision with root package name */
        private l.b f7024b = new l.b();

        /* renamed from: c  reason: collision with root package name */
        private boolean f7025c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f7026d;

        public c(T t10) {
            this.f7023a = t10;
        }

        public void a(int i9, a<T> aVar) {
            if (this.f7026d) {
                return;
            }
            if (i9 != -1) {
                this.f7024b.a(i9);
            }
            this.f7025c = true;
            aVar.invoke(this.f7023a);
        }

        public void b(b<T> bVar) {
            if (this.f7026d || !this.f7025c) {
                return;
            }
            l e10 = this.f7024b.e();
            this.f7024b = new l.b();
            this.f7025c = false;
            bVar.a(this.f7023a, e10);
        }

        public void c(b<T> bVar) {
            this.f7026d = true;
            if (this.f7025c) {
                bVar.a(this.f7023a, this.f7024b.e());
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            return this.f7023a.equals(((c) obj).f7023a);
        }

        public int hashCode() {
            return this.f7023a.hashCode();
        }
    }

    public q(Looper looper, d dVar, b<T> bVar) {
        this(new CopyOnWriteArraySet(), looper, dVar, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g(Message message) {
        Iterator<c<T>> it = this.f7019d.iterator();
        while (it.hasNext()) {
            it.next().b(this.f7018c);
            if (this.f7017b.c(0)) {
                return true;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(CopyOnWriteArraySet copyOnWriteArraySet, int i9, a aVar) {
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((c) it.next()).a(i9, aVar);
        }
    }

    public void c(T t10) {
        if (this.f7022g) {
            return;
        }
        com.google.android.exoplayer2.util.a.e(t10);
        this.f7019d.add(new c<>(t10));
    }

    @CheckResult
    public q<T> d(Looper looper, d dVar, b<T> bVar) {
        return new q<>(this.f7019d, looper, dVar, bVar);
    }

    @CheckResult
    public q<T> e(Looper looper, b<T> bVar) {
        return d(looper, this.f7016a, bVar);
    }

    public void f() {
        if (this.f7021f.isEmpty()) {
            return;
        }
        if (!this.f7017b.c(0)) {
            n nVar = this.f7017b;
            nVar.b(nVar.a(0));
        }
        boolean z10 = !this.f7020e.isEmpty();
        this.f7020e.addAll(this.f7021f);
        this.f7021f.clear();
        if (z10) {
            return;
        }
        while (!this.f7020e.isEmpty()) {
            this.f7020e.peekFirst().run();
            this.f7020e.removeFirst();
        }
    }

    public void i(final int i9, final a<T> aVar) {
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.f7019d);
        this.f7021f.add(new Runnable() { // from class: com.google.android.exoplayer2.util.p
            @Override // java.lang.Runnable
            public final void run() {
                q.h(copyOnWriteArraySet, i9, aVar);
            }
        });
    }

    public void j() {
        Iterator<c<T>> it = this.f7019d.iterator();
        while (it.hasNext()) {
            it.next().c(this.f7018c);
        }
        this.f7019d.clear();
        this.f7022g = true;
    }

    public void k(T t10) {
        Iterator<c<T>> it = this.f7019d.iterator();
        while (it.hasNext()) {
            c<T> next = it.next();
            if (next.f7023a.equals(t10)) {
                next.c(this.f7018c);
                this.f7019d.remove(next);
            }
        }
    }

    public void l(int i9, a<T> aVar) {
        i(i9, aVar);
        f();
    }

    private q(CopyOnWriteArraySet<c<T>> copyOnWriteArraySet, Looper looper, d dVar, b<T> bVar) {
        this.f7016a = dVar;
        this.f7019d = copyOnWriteArraySet;
        this.f7018c = bVar;
        this.f7020e = new ArrayDeque<>();
        this.f7021f = new ArrayDeque<>();
        this.f7017b = dVar.d(looper, new Handler.Callback() { // from class: com.google.android.exoplayer2.util.o
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean g10;
                g10 = q.this.g(message);
                return g10;
            }
        });
    }
}
