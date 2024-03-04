package io.reactivex.internal.operators.observable;
/* loaded from: classes7.dex */
public final class o0<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    private final vh.g<? super th.b> f52086b;

    /* renamed from: c  reason: collision with root package name */
    private final vh.a f52087c;

    public o0(io.reactivex.k<T> kVar, vh.g<? super th.b> gVar, vh.a aVar) {
        super(kVar);
        this.f52086b = gVar;
        this.f52087c = aVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new io.reactivex.internal.observers.g(rVar, this.f52086b, this.f52087c));
    }
}
