package dagger.android;

import android.app.Application;
/* loaded from: classes5.dex */
public abstract class DaggerApplication extends Application implements c {
    private void c() {
        synchronized (this) {
            b().inject(this);
            throw new IllegalStateException("The AndroidInjector returned from applicationInjector() did not inject the DaggerApplication");
        }
    }

    @Override // dagger.android.c
    public b<Object> a() {
        c();
        return null;
    }

    protected abstract b<? extends DaggerApplication> b();

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        c();
    }
}
