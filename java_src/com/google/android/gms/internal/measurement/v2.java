package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class v2 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ w2 f8379a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v2(w2 w2Var) {
        this.f8379a = w2Var;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        this.f8379a.o(new n2(this, bundle, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f8379a.o(new u2(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.f8379a.o(new q2(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        this.f8379a.o(new p2(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        a1 a1Var = new a1();
        this.f8379a.o(new t2(this, activity, a1Var));
        Bundle f10 = a1Var.f(50L);
        if (f10 != null) {
            bundle.putAll(f10);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        this.f8379a.o(new o2(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        this.f8379a.o(new s2(this, activity));
    }
}
