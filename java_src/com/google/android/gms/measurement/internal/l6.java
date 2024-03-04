package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.MainThread;
import kotlinx.coroutines.DebugKt;
/* JADX INFO: Access modifiers changed from: package-private */
@MainThread
/* loaded from: classes2.dex */
public final class l6 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ m6 f9611a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ l6(m6 m6Var, p4.u uVar) {
        this.f9611a = m6Var;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        n4 n4Var;
        try {
            try {
                this.f9611a.f9432a.b().v().a("onActivityCreated");
                Intent intent = activity.getIntent();
                if (intent == null) {
                    n4Var = this.f9611a.f9432a;
                } else {
                    Uri data = intent.getData();
                    if (data != null && data.isHierarchical()) {
                        this.f9611a.f9432a.N();
                        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
                        boolean z10 = true;
                        String str = true != ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra)) ? DebugKt.DEBUG_PROPERTY_VALUE_AUTO : "gs";
                        String queryParameter = data.getQueryParameter("referrer");
                        if (bundle != null) {
                            z10 = false;
                        }
                        this.f9611a.f9432a.a().z(new k6(this, z10, data, str, queryParameter));
                        n4Var = this.f9611a.f9432a;
                    }
                    n4Var = this.f9611a.f9432a;
                }
            } catch (RuntimeException e10) {
                this.f9611a.f9432a.b().r().b("Throwable caught in onActivityCreated", e10);
                n4Var = this.f9611a.f9432a;
            }
            n4Var.K().y(activity, bundle);
        } catch (Throwable th2) {
            this.f9611a.f9432a.K().y(activity, bundle);
            throw th2;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f9611a.f9432a.K().z(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @MainThread
    public final void onActivityPaused(Activity activity) {
        this.f9611a.f9432a.K().A(activity);
        o8 M = this.f9611a.f9432a.M();
        M.f9432a.a().z(new h8(M, M.f9432a.c().b()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @MainThread
    public final void onActivityResumed(Activity activity) {
        o8 M = this.f9611a.f9432a.M();
        M.f9432a.a().z(new g8(M, M.f9432a.c().b()));
        this.f9611a.f9432a.K().B(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.f9611a.f9432a.K().C(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
