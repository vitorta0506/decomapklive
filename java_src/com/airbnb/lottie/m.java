package com.airbnb.lottie;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
/* loaded from: classes.dex */
public class m<T> {

    /* renamed from: e  reason: collision with root package name */
    public static Executor f3733e = Executors.newCachedThreadPool();

    /* renamed from: a  reason: collision with root package name */
    private final Set<h<T>> f3734a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<h<Throwable>> f3735b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f3736c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private volatile l<T> f3737d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (m.this.f3737d == null) {
                return;
            }
            l lVar = m.this.f3737d;
            if (lVar.b() != null) {
                m.this.i(lVar.b());
            } else {
                m.this.g(lVar.a());
            }
        }
    }

    /* loaded from: classes.dex */
    private class b extends FutureTask<l<T>> {
        b(Callable<l<T>> callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        protected void done() {
            if (isCancelled()) {
                return;
            }
            try {
                m.this.l(get());
            } catch (InterruptedException | ExecutionException e10) {
                m.this.l(new l(e10));
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public m(Callable<l<T>> callable) {
        this(callable, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void g(Throwable th2) {
        ArrayList<h> arrayList = new ArrayList(this.f3735b);
        if (arrayList.isEmpty()) {
            m.d.d("Lottie encountered an error but no failure listener was added:", th2);
            return;
        }
        for (h hVar : arrayList) {
            hVar.onResult(th2);
        }
    }

    private void h() {
        this.f3736c.post(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void i(T t10) {
        for (h hVar : new ArrayList(this.f3734a)) {
            hVar.onResult(t10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(@Nullable l<T> lVar) {
        if (this.f3737d == null) {
            this.f3737d = lVar;
            h();
            return;
        }
        throw new IllegalStateException("A task may only be set once.");
    }

    public synchronized m<T> e(h<Throwable> hVar) {
        if (this.f3737d != null && this.f3737d.a() != null) {
            hVar.onResult(this.f3737d.a());
        }
        this.f3735b.add(hVar);
        return this;
    }

    public synchronized m<T> f(h<T> hVar) {
        if (this.f3737d != null && this.f3737d.b() != null) {
            hVar.onResult(this.f3737d.b());
        }
        this.f3734a.add(hVar);
        return this;
    }

    public synchronized m<T> j(h<Throwable> hVar) {
        this.f3735b.remove(hVar);
        return this;
    }

    public synchronized m<T> k(h<T> hVar) {
        this.f3734a.remove(hVar);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public m(Callable<l<T>> callable, boolean z10) {
        this.f3734a = new LinkedHashSet(1);
        this.f3735b = new LinkedHashSet(1);
        this.f3736c = new Handler(Looper.getMainLooper());
        this.f3737d = null;
        if (z10) {
            try {
                l(callable.call());
                return;
            } catch (Throwable th2) {
                l(new l<>(th2));
                return;
            }
        }
        f3733e.execute(new b(callable));
    }
}
