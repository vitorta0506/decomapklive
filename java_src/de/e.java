package de;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class e implements Application.ActivityLifecycleCallbacks {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<Activity> f38063a;

    /* renamed from: b  reason: collision with root package name */
    private final ScheduledExecutorService f38064b;

    /* renamed from: c  reason: collision with root package name */
    private final List<d> f38065c = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(ScheduledExecutorService scheduledExecutorService) {
        this.f38064b = scheduledExecutorService;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(d dVar) {
        this.f38065c.add(dVar);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        WeakReference<Activity> weakReference = this.f38063a;
        if (weakReference == null || activity != weakReference.get()) {
            return;
        }
        this.f38063a = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        this.f38063a = new WeakReference<>(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        WeakReference<Activity> weakReference = this.f38063a;
        if (weakReference == null || activity != weakReference.get()) {
            return;
        }
        for (d dVar : this.f38065c) {
            this.f38064b.execute(dVar.f());
        }
    }
}
