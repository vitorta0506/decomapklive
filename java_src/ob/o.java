package ob;

import android.app.Application;
/* loaded from: classes4.dex */
public class o extends c {

    /* renamed from: l  reason: collision with root package name */
    private final j f55608l;

    public o(Application application) {
        this.f55608l = new j(application, (c) this);
    }

    @Override // pb.b
    public void cancel() {
        this.f55608l.g();
    }

    @Override // pb.b
    public void show() {
        this.f55608l.k();
    }
}
