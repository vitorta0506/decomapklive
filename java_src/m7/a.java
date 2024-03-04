package m7;
/* loaded from: classes3.dex */
public abstract class a<T> extends io.reactivex.observers.b<T> {
    public abstract void a(g7.a aVar);

    @Override // io.reactivex.r
    public void onComplete() {
    }

    @Override // io.reactivex.r
    public final void onError(Throwable th2) {
        a(g7.a.e(th2));
        onComplete();
    }

    @Override // io.reactivex.r
    public void onNext(T t10) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.reactivex.observers.b
    public void onStart() {
    }
}
