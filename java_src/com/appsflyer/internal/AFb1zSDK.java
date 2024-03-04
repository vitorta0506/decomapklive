package com.appsflyer.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.appsflyer.AFLogger;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class AFb1zSDK {
    @VisibleForTesting
    public static long AFInAppEventType = 500;
    public static AFa1zSDK AFKeystoreWrapper;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsflyer.internal.AFb1zSDK$3  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 implements Application.ActivityLifecycleCallbacks {
        boolean AFInAppEventParameterName = true;
        boolean AFInAppEventType;
        private /* synthetic */ Executor valueOf;

        AnonymousClass3(Executor executor) {
            this.valueOf = executor;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(@NonNull final Activity activity, Bundle bundle) {
            this.valueOf.execute(new Runnable() { // from class: com.appsflyer.internal.AFb1zSDK.3.1
                @Override // java.lang.Runnable
                public final void run() {
                    AFa1uSDK.values();
                    Intent intent = activity.getIntent();
                    if (AFa1uSDK.AFInAppEventParameterName(intent) == null || intent == AFa1uSDK.AFKeystoreWrapper) {
                        return;
                    }
                    AFa1uSDK.AFKeystoreWrapper = intent;
                }
            });
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(@NonNull final Activity activity) {
            this.valueOf.execute(new Runnable() { // from class: com.appsflyer.internal.AFb1zSDK.3.4
                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass3.this.AFInAppEventParameterName = true;
                    final Context applicationContext = activity.getApplicationContext();
                    try {
                        new Timer().schedule(new TimerTask() { // from class: com.appsflyer.internal.AFb1zSDK.3.4.4
                            @Override // java.util.TimerTask, java.lang.Runnable
                            public final void run() {
                                AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                if (anonymousClass3.AFInAppEventType && anonymousClass3.AFInAppEventParameterName) {
                                    anonymousClass3.AFInAppEventType = false;
                                    try {
                                        AFb1zSDK.AFKeystoreWrapper.values(applicationContext);
                                    } catch (Exception e10) {
                                        AFLogger.afErrorLog("Listener threw exception! ", e10);
                                    }
                                }
                            }
                        }, AFb1zSDK.AFInAppEventType);
                    } catch (Throwable th2) {
                        AFLogger.afErrorLog("Background task failed with a throwable: ", th2);
                    }
                }
            });
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(final Activity activity) {
            this.valueOf.execute(new Runnable() { // from class: com.appsflyer.internal.AFb1zSDK.3.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (!AnonymousClass3.this.AFInAppEventType) {
                        try {
                            AFb1zSDK.AFKeystoreWrapper.values(activity);
                        } catch (Exception e10) {
                            AFLogger.afErrorLog("Listener thrown an exception: ", e10, true);
                        }
                    }
                    AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                    anonymousClass3.AFInAppEventParameterName = false;
                    anonymousClass3.AFInAppEventType = true;
                }
            });
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
        }
    }

    /* loaded from: classes.dex */
    public interface AFa1zSDK {
        void values(Activity activity);

        void values(Context context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void valueOf(Context context, AFa1zSDK aFa1zSDK, Executor executor) {
        AFKeystoreWrapper = aFa1zSDK;
        AnonymousClass3 anonymousClass3 = new AnonymousClass3(executor);
        if (context instanceof Activity) {
            anonymousClass3.onActivityResumed((Activity) context);
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(anonymousClass3);
    }
}
