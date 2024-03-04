package io.reactivex.internal.operators.observable;
/* loaded from: classes7.dex */
public final class t1<R, T> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.o<? extends R, ? super T> f52342b;

    public t1(io.reactivex.p<T> pVar, io.reactivex.o<? extends R, ? super T> oVar) {
        super(pVar);
        this.f52342b = oVar;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super R> rVar) {
        try {
            io.reactivex.r<? super Object> a10 = this.f52342b.a(rVar);
            this.f51403a.subscribe((io.reactivex.r) xh.b.e(a10, "Operator " + this.f52342b + " returned a null Observer"));
        } catch (NullPointerException e10) {
            throw e10;
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            ci.a.s(th2);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th2);
            throw nullPointerException;
        }
    }
}
