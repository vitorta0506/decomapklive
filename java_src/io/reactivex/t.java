package io.reactivex;
/* loaded from: classes7.dex */
public abstract class t<T> implements v<T> {
    @Override // io.reactivex.v
    public final void a(u<? super T> uVar) {
        xh.b.e(uVar, "observer is null");
        u<? super T> z10 = ci.a.z(this, uVar);
        xh.b.e(z10, "The RxJavaPlugins.onSubscribe hook returned a null SingleObserver. Please check the handler provided to RxJavaPlugins.setOnSingleSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
        try {
            e(z10);
        } catch (NullPointerException e10) {
            throw e10;
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th2);
            throw nullPointerException;
        }
    }

    public final T c() {
        io.reactivex.internal.observers.f fVar = new io.reactivex.internal.observers.f();
        a(fVar);
        return (T) fVar.a();
    }

    public final <R> t<R> d(vh.o<? super T, ? extends R> oVar) {
        xh.b.e(oVar, "mapper is null");
        return ci.a.p(new ai.a(this, oVar));
    }

    protected abstract void e(u<? super T> uVar);

    public final k<T> f() {
        if (this instanceof yh.a) {
            return ((yh.a) this).b();
        }
        return ci.a.o(new ai.b(this));
    }
}
