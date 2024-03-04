package ob;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.view.WindowManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class n implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private Activity f55605a;

    /* renamed from: b  reason: collision with root package name */
    private Application f55606b;

    /* renamed from: c  reason: collision with root package name */
    private j f55607c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Activity activity) {
        this.f55605a = activity;
    }

    public WindowManager a() {
        Activity activity = this.f55605a;
        if (activity != null) {
            if (activity.isDestroyed()) {
                return null;
            }
            return this.f55605a.getWindowManager();
        }
        Application application = this.f55606b;
        if (application != null) {
            return (WindowManager) application.getSystemService("window");
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(j jVar) {
        this.f55607c = jVar;
        Activity activity = this.f55605a;
        if (activity == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            activity.registerActivityLifecycleCallbacks(this);
        } else {
            activity.getApplication().registerActivityLifecycleCallbacks(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.f55607c = null;
        Activity activity = this.f55605a;
        if (activity == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            activity.unregisterActivityLifecycleCallbacks(this);
        } else {
            activity.getApplication().unregisterActivityLifecycleCallbacks(this);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (this.f55605a != activity) {
            return;
        }
        j jVar = this.f55607c;
        if (jVar != null) {
            jVar.g();
        }
        c();
        this.f55605a = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        j jVar;
        if (this.f55605a == activity && (jVar = this.f55607c) != null) {
            jVar.g();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Application application) {
        this.f55606b = application;
    }
}
