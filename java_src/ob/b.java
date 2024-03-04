package ob;

import android.app.Activity;
/* loaded from: classes4.dex */
public class b extends c {

    /* renamed from: l  reason: collision with root package name */
    private final j f55562l;

    public b(Activity activity) {
        this.f55562l = new j(activity, (c) this);
    }

    @Override // pb.b
    public void cancel() {
        this.f55562l.g();
    }

    @Override // pb.b
    public void show() {
        this.f55562l.k();
    }
}
