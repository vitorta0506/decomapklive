package io.reactivex;
/* loaded from: classes7.dex */
public abstract class a implements c {
    private static NullPointerException d(Throwable th2) {
        NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
        nullPointerException.initCause(th2);
        return nullPointerException;
    }

    @Override // io.reactivex.c
    public final void a(b bVar) {
        xh.b.e(bVar, "observer is null");
        try {
            b w6 = ci.a.w(this, bVar);
            xh.b.e(w6, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            c(w6);
        } catch (NullPointerException e10) {
            throw e10;
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            ci.a.s(th2);
            throw d(th2);
        }
    }

    protected abstract void c(b bVar);
}
