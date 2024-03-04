package com.twitter.sdk.android.core.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final C0358a f35155a;

    /* renamed from: com.twitter.sdk.android.core.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    private static class C0358a {

        /* renamed from: a  reason: collision with root package name */
        private final Set<Application.ActivityLifecycleCallbacks> f35156a = new HashSet();

        /* renamed from: b  reason: collision with root package name */
        private final Application f35157b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.twitter.sdk.android.core.internal.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public class C0359a implements Application.ActivityLifecycleCallbacks {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ b f35158a;

            C0359a(b bVar) {
                this.f35158a = bVar;
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                this.f35158a.a(activity, bundle);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
                this.f35158a.b(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                this.f35158a.c(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                this.f35158a.d(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                this.f35158a.e(activity, bundle);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                this.f35158a.f(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                this.f35158a.g(activity);
            }
        }

        C0358a(Application application) {
            this.f35157b = application;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean b(b bVar) {
            if (this.f35157b != null) {
                C0359a c0359a = new C0359a(bVar);
                this.f35157b.registerActivityLifecycleCallbacks(c0359a);
                this.f35156a.add(c0359a);
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes4.dex */
    public static abstract class b {
        public void a(Activity activity, Bundle bundle) {
        }

        public void b(Activity activity) {
        }

        public void c(Activity activity) {
        }

        public void d(Activity activity) {
        }

        public void e(Activity activity, Bundle bundle) {
        }

        public abstract void f(Activity activity);

        public void g(Activity activity) {
        }
    }

    public a(Context context) {
        this.f35155a = new C0358a((Application) context.getApplicationContext());
    }

    public boolean a(b bVar) {
        C0358a c0358a = this.f35155a;
        return c0358a != null && c0358a.b(bVar);
    }
}
