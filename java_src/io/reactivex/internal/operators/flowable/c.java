package io.reactivex.internal.operators.flowable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class c<K, T> extends uh.a<K, T> {

    /* renamed from: c  reason: collision with root package name */
    final d<T, K> f51342c;

    protected c(K k10, d<T, K> dVar) {
        super(k10);
        this.f51342c = dVar;
    }

    public static <T, K> c<K, T> i(K k10, int i9, FlowableGroupBy$GroupBySubscriber<?, K, T> flowableGroupBy$GroupBySubscriber, boolean z10) {
        return new c<>(k10, new d(i9, flowableGroupBy$GroupBySubscriber, k10, z10));
    }

    @Override // io.reactivex.e
    protected void h(il.b<? super T> bVar) {
        this.f51342c.a(bVar);
    }

    public void j() {
        this.f51342c.onComplete();
    }

    public void k(Throwable th2) {
        this.f51342c.onError(th2);
    }

    public void l(T t10) {
        this.f51342c.onNext(t10);
    }
}
