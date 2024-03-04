package io.reactivex;
/* loaded from: classes7.dex */
public abstract class g<T> implements i<T> {
    @Override // io.reactivex.i
    public final void a(h<? super T> hVar) {
        xh.b.e(hVar, "observer is null");
        h<? super T> x10 = ci.a.x(this, hVar);
        xh.b.e(x10, "The RxJavaPlugins.onSubscribe hook returned a null MaybeObserver. Please check the handler provided to RxJavaPlugins.setOnMaybeSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
        try {
            d(x10);
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

    protected abstract void d(h<? super T> hVar);
}
