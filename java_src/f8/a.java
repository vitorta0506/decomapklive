package f8;

import android.view.View;
import android.view.ViewStub;
/* loaded from: classes3.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    protected ViewStub f39646a;

    /* renamed from: b  reason: collision with root package name */
    protected View f39647b;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f39648c;

    public a(ViewStub viewStub) {
        this.f39646a = viewStub;
    }

    protected abstract void a(View view);

    public boolean b() {
        return this.f39648c;
    }

    public void c() {
        this.f39648c = true;
        ViewStub viewStub = this.f39646a;
        if (viewStub != null && this.f39647b == null) {
            View inflate = viewStub.inflate();
            this.f39647b = inflate;
            inflate.setVisibility(0);
        } else {
            View view = this.f39647b;
            if (view != null) {
                view.setVisibility(0);
            }
        }
        a(this.f39647b);
    }
}
