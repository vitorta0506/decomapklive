package m7;

import androidx.lifecycle.LifecycleOwner;
/* loaded from: classes3.dex */
public class b<T> extends a<T> {

    /* renamed from: a  reason: collision with root package name */
    public com.guochao.faceshow.aaspring.base.http.callback.b<T> f54927a;

    /* renamed from: b  reason: collision with root package name */
    public LifecycleOwner f54928b;

    public b(LifecycleOwner lifecycleOwner, com.guochao.faceshow.aaspring.base.http.callback.b<T> bVar) {
        this.f54928b = lifecycleOwner;
        this.f54927a = bVar;
    }

    @Override // m7.a
    public void a(g7.a aVar) {
        com.guochao.faceshow.aaspring.base.http.callback.b<T> bVar = this.f54927a;
        if (bVar != null) {
            bVar.onError(aVar);
        }
    }

    @Override // m7.a, io.reactivex.r
    public void onComplete() {
        super.onComplete();
        com.guochao.faceshow.aaspring.base.http.callback.b<T> bVar = this.f54927a;
        if (bVar != null) {
            bVar.onCompleted();
        }
    }

    @Override // m7.a, io.reactivex.r
    public void onNext(T t10) {
        super.onNext(t10);
        com.guochao.faceshow.aaspring.base.http.callback.b<T> bVar = this.f54927a;
        if (bVar != null) {
            bVar.onSuccess(t10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // m7.a, io.reactivex.observers.b
    public void onStart() {
        super.onStart();
        com.guochao.faceshow.aaspring.base.http.callback.b<T> bVar = this.f54927a;
        if (bVar != null) {
            bVar.onStart();
        }
    }
}
