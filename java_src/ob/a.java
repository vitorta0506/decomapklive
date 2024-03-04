package ob;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* loaded from: classes4.dex */
final class a implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private Activity f55561a;

    a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a b(Application application) {
        a aVar = new a();
        application.registerActivityLifecycleCallbacks(aVar);
        return aVar;
    }

    public Activity a() {
        return this.f55561a;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        if (this.f55561a != activity) {
            return;
        }
        this.f55561a = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.f55561a = activity;
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
}
