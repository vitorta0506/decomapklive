package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public final class a implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: e  reason: collision with root package name */
    private static final a f7504e = new a();

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f7505a = new AtomicBoolean();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f7506b = new AtomicBoolean();

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList f7507c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private boolean f7508d = false;

    /* renamed from: com.google.android.gms.common.api.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0086a {
        void a(boolean z10);
    }

    private a() {
    }

    @NonNull
    public static a b() {
        return f7504e;
    }

    public static void c(@NonNull Application application) {
        a aVar = f7504e;
        synchronized (aVar) {
            if (!aVar.f7508d) {
                application.registerActivityLifecycleCallbacks(aVar);
                application.registerComponentCallbacks(aVar);
                aVar.f7508d = true;
            }
        }
    }

    private final void f(boolean z10) {
        synchronized (f7504e) {
            Iterator it = this.f7507c.iterator();
            while (it.hasNext()) {
                ((InterfaceC0086a) it.next()).a(z10);
            }
        }
    }

    public void a(@NonNull InterfaceC0086a interfaceC0086a) {
        synchronized (f7504e) {
            this.f7507c.add(interfaceC0086a);
        }
    }

    public boolean d() {
        return this.f7505a.get();
    }

    public boolean e(boolean z10) {
        if (!this.f7506b.get()) {
            if (!e4.m.b()) {
                return z10;
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!this.f7506b.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.f7505a.set(true);
            }
        }
        return d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
        boolean compareAndSet = this.f7505a.compareAndSet(true, false);
        this.f7506b.set(true);
        if (compareAndSet) {
            f(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(@NonNull Activity activity) {
        boolean compareAndSet = this.f7505a.compareAndSet(true, false);
        this.f7506b.set(true);
        if (compareAndSet) {
            f(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(@NonNull Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(@NonNull Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i9) {
        if (i9 == 20 && this.f7505a.compareAndSet(false, true)) {
            this.f7506b.set(true);
            f(true);
        }
    }
}
