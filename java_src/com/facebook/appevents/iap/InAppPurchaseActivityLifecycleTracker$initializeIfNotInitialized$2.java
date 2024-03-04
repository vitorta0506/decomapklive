package com.facebook.appevents.iap;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.facebook.FacebookSdk;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u000f"}, d2 = {"com/facebook/appevents/iap/InAppPurchaseActivityLifecycleTracker$initializeIfNotInitialized$2", "Landroid/app/Application$ActivityLifecycleCallbacks;", "onActivityCreated", "", PushConstants.INTENT_ACTIVITY_NAME, "Landroid/app/Activity;", "savedInstanceState", "Landroid/os/Bundle;", "onActivityDestroyed", "onActivityPaused", "onActivityResumed", "onActivitySaveInstanceState", "outState", "onActivityStarted", "onActivityStopped", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class InAppPurchaseActivityLifecycleTracker$initializeIfNotInitialized$2 implements Application.ActivityLifecycleCallbacks {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onActivityResumed$lambda-0  reason: not valid java name */
    public static final void m93onActivityResumed$lambda0() {
        Object obj;
        Object obj2;
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        Context applicationContext = FacebookSdk.getApplicationContext();
        InAppPurchaseEventManager inAppPurchaseEventManager = InAppPurchaseEventManager.INSTANCE;
        obj = InAppPurchaseActivityLifecycleTracker.inAppBillingObj;
        ArrayList<String> purchasesInapp = InAppPurchaseEventManager.getPurchasesInapp(applicationContext, obj);
        InAppPurchaseActivityLifecycleTracker inAppPurchaseActivityLifecycleTracker = InAppPurchaseActivityLifecycleTracker.INSTANCE;
        inAppPurchaseActivityLifecycleTracker.logPurchase(applicationContext, purchasesInapp, false);
        obj2 = InAppPurchaseActivityLifecycleTracker.inAppBillingObj;
        inAppPurchaseActivityLifecycleTracker.logPurchase(applicationContext, InAppPurchaseEventManager.getPurchasesSubs(applicationContext, obj2), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onActivityStopped$lambda-1  reason: not valid java name */
    public static final void m94onActivityStopped$lambda1() {
        Object obj;
        Object obj2;
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        Context applicationContext = FacebookSdk.getApplicationContext();
        InAppPurchaseEventManager inAppPurchaseEventManager = InAppPurchaseEventManager.INSTANCE;
        obj = InAppPurchaseActivityLifecycleTracker.inAppBillingObj;
        ArrayList<String> purchasesInapp = InAppPurchaseEventManager.getPurchasesInapp(applicationContext, obj);
        if (purchasesInapp.isEmpty()) {
            obj2 = InAppPurchaseActivityLifecycleTracker.inAppBillingObj;
            purchasesInapp = InAppPurchaseEventManager.getPurchaseHistoryInapp(applicationContext, obj2);
        }
        InAppPurchaseActivityLifecycleTracker.INSTANCE.logPurchase(applicationContext, purchasesInapp, false);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@NotNull Activity activity, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        try {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.appevents.iap.a
                @Override // java.lang.Runnable
                public final void run() {
                    InAppPurchaseActivityLifecycleTracker$initializeIfNotInitialized$2.m93onActivityResumed$lambda0();
                }
            });
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@NotNull Activity activity, @NotNull Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@NotNull Activity activity) {
        Boolean bool;
        Intrinsics.checkNotNullParameter(activity, "activity");
        try {
            bool = InAppPurchaseActivityLifecycleTracker.hasBillingActivity;
            if (Intrinsics.areEqual(bool, Boolean.TRUE) && Intrinsics.areEqual(activity.getLocalClassName(), "com.android.billingclient.api.ProxyBillingActivity")) {
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.appevents.iap.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        InAppPurchaseActivityLifecycleTracker$initializeIfNotInitialized$2.m94onActivityStopped$lambda1();
                    }
                });
            }
        } catch (Exception unused) {
        }
    }
}
