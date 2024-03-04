package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
/* loaded from: classes7.dex */
public final class h1<T, S> extends io.reactivex.k<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<S> f51725a;

    /* renamed from: b  reason: collision with root package name */
    final vh.c<S, io.reactivex.d<T>, S> f51726b;

    /* renamed from: c  reason: collision with root package name */
    final vh.g<? super S> f51727c;

    /* loaded from: classes7.dex */
    static final class a<T, S> implements io.reactivex.d<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51728a;

        /* renamed from: b  reason: collision with root package name */
        final vh.c<S, ? super io.reactivex.d<T>, S> f51729b;

        /* renamed from: c  reason: collision with root package name */
        final vh.g<? super S> f51730c;

        /* renamed from: d  reason: collision with root package name */
        S f51731d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f51732e;

        /* renamed from: f  reason: collision with root package name */
        boolean f51733f;

        /* renamed from: g  reason: collision with root package name */
        boolean f51734g;

        a(io.reactivex.r<? super T> rVar, vh.c<S, ? super io.reactivex.d<T>, S> cVar, vh.g<? super S> gVar, S s10) {
            this.f51728a = rVar;
            this.f51729b = cVar;
            this.f51730c = gVar;
            this.f51731d = s10;
        }

        private void a(S s10) {
            try {
                this.f51730c.accept(s10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                ci.a.s(th2);
            }
        }

        public void b(Throwable th2) {
            if (this.f51733f) {
                ci.a.s(th2);
                return;
            }
            if (th2 == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.f51733f = true;
            this.f51728a.onError(th2);
        }

        public void c() {
            S s10 = this.f51731d;
            if (this.f51732e) {
                this.f51731d = null;
                a(s10);
                return;
            }
            vh.c<S, ? super io.reactivex.d<T>, S> cVar = this.f51729b;
            while (!this.f51732e) {
                this.f51734g = false;
                try {
                    s10 = cVar.apply(s10, this);
                    if (this.f51733f) {
                        this.f51732e = true;
                        this.f51731d = null;
                        a(s10);
                        return;
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f51731d = null;
                    this.f51732e = true;
                    b(th2);
                    a(s10);
                    return;
                }
            }
            this.f51731d = null;
            a(s10);
        }

        @Override // th.b
        public void dispose() {
            this.f51732e = true;
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51732e;
        }
    }

    public h1(Callable<S> callable, vh.c<S, io.reactivex.d<T>, S> cVar, vh.g<? super S> gVar) {
        this.f51725a = callable;
        this.f51726b = cVar;
        this.f51727c = gVar;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        try {
            a aVar = new a(rVar, this.f51726b, this.f51727c, this.f51725a.call());
            rVar.onSubscribe(aVar);
            aVar.c();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            EmptyDisposable.error(th2, rVar);
        }
    }
}
