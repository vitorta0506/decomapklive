package n7;

import io.reactivex.k;
/* loaded from: classes3.dex */
public class a implements com.guochao.faceshow.aaspring.base.utils.a {

    /* renamed from: a  reason: collision with root package name */
    th.b f55354a;

    public a(k kVar) {
        if (kVar instanceof th.b) {
            this.f55354a = (th.b) kVar;
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.utils.a
    public void cancel() {
        th.b bVar = this.f55354a;
        if (bVar == null || bVar.isDisposed()) {
            return;
        }
        this.f55354a.dispose();
    }
}
