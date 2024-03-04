package com.facebook.appevents.ondeviceprocessing;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.RestrictTo;
import com.facebook.FacebookSdk;
import com.facebook.appevents.AppEvent;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0002J\b\u0010\n\u001a\u00020\u0007H\u0007J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH\u0007J\u001c\u0010\u000e\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u0007R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;", "", "()V", "ALLOWED_IMPLICIT_EVENTS", "", "", "isEventEligibleForOnDeviceProcessing", "", "event", "Lcom/facebook/appevents/AppEvent;", "isOnDeviceProcessingEnabled", "sendCustomEventAsync", "", "applicationId", "sendInstallEventAsync", "preferencesName", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class OnDeviceProcessingManager {
    @NotNull
    private static final Set<String> ALLOWED_IMPLICIT_EVENTS;
    @NotNull
    public static final OnDeviceProcessingManager INSTANCE = new OnDeviceProcessingManager();

    static {
        Set<String> of2;
        of2 = SetsKt__SetsKt.setOf((Object[]) new String[]{AppEventsConstants.EVENT_NAME_PURCHASED, AppEventsConstants.EVENT_NAME_START_TRIAL, AppEventsConstants.EVENT_NAME_SUBSCRIBE});
        ALLOWED_IMPLICIT_EVENTS = of2;
    }

    private OnDeviceProcessingManager() {
    }

    private final boolean isEventEligibleForOnDeviceProcessing(AppEvent appEvent) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            return (appEvent.isImplicit() ^ true) || (appEvent.isImplicit() && ALLOWED_IMPLICIT_EVENTS.contains(appEvent.getName()));
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0024 A[Catch: all -> 0x002e, TRY_LEAVE, TryCatch #0 {all -> 0x002e, blocks: (B:5:0x000a, B:7:0x0017, B:12:0x0024), top: B:19:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    @kotlin.jvm.JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean isOnDeviceProcessingEnabled() {
        /*
            java.lang.Class<com.facebook.appevents.ondeviceprocessing.OnDeviceProcessingManager> r0 = com.facebook.appevents.ondeviceprocessing.OnDeviceProcessingManager.class
            boolean r1 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.isObjectCrashing(r0)
            r2 = 0
            if (r1 == 0) goto La
            return r2
        La:
            com.facebook.FacebookSdk r1 = com.facebook.FacebookSdk.INSTANCE     // Catch: java.lang.Throwable -> L2e
            android.content.Context r1 = com.facebook.FacebookSdk.getApplicationContext()     // Catch: java.lang.Throwable -> L2e
            boolean r1 = com.facebook.FacebookSdk.getLimitEventAndDataUsage(r1)     // Catch: java.lang.Throwable -> L2e
            r3 = 1
            if (r1 != 0) goto L21
            com.facebook.internal.Utility r1 = com.facebook.internal.Utility.INSTANCE     // Catch: java.lang.Throwable -> L2e
            boolean r1 = com.facebook.internal.Utility.isDataProcessingRestricted()     // Catch: java.lang.Throwable -> L2e
            if (r1 != 0) goto L21
            r1 = 1
            goto L22
        L21:
            r1 = 0
        L22:
            if (r1 == 0) goto L2d
            com.facebook.appevents.ondeviceprocessing.RemoteServiceWrapper r1 = com.facebook.appevents.ondeviceprocessing.RemoteServiceWrapper.INSTANCE     // Catch: java.lang.Throwable -> L2e
            boolean r0 = com.facebook.appevents.ondeviceprocessing.RemoteServiceWrapper.isServiceAvailable()     // Catch: java.lang.Throwable -> L2e
            if (r0 == 0) goto L2d
            r2 = 1
        L2d:
            return r2
        L2e:
            r1 = move-exception
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.handleThrowable(r1, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.ondeviceprocessing.OnDeviceProcessingManager.isOnDeviceProcessingEnabled():boolean");
    }

    @JvmStatic
    public static final void sendCustomEventAsync(@NotNull final String applicationId, @NotNull final AppEvent event) {
        if (CrashShieldHandler.isObjectCrashing(OnDeviceProcessingManager.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Intrinsics.checkNotNullParameter(event, "event");
            if (INSTANCE.isEventEligibleForOnDeviceProcessing(event)) {
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.appevents.ondeviceprocessing.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        OnDeviceProcessingManager.m108sendCustomEventAsync$lambda1(applicationId, event);
                    }
                });
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, OnDeviceProcessingManager.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendCustomEventAsync$lambda-1  reason: not valid java name */
    public static final void m108sendCustomEventAsync$lambda1(String applicationId, AppEvent event) {
        List listOf;
        if (CrashShieldHandler.isObjectCrashing(OnDeviceProcessingManager.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(applicationId, "$applicationId");
            Intrinsics.checkNotNullParameter(event, "$event");
            RemoteServiceWrapper remoteServiceWrapper = RemoteServiceWrapper.INSTANCE;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(event);
            RemoteServiceWrapper.sendCustomEvents(applicationId, listOf);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, OnDeviceProcessingManager.class);
        }
    }

    @JvmStatic
    public static final void sendInstallEventAsync(@Nullable final String str, @Nullable final String str2) {
        if (CrashShieldHandler.isObjectCrashing(OnDeviceProcessingManager.class)) {
            return;
        }
        try {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            final Context applicationContext = FacebookSdk.getApplicationContext();
            if (applicationContext == null || str == null || str2 == null) {
                return;
            }
            FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.appevents.ondeviceprocessing.a
                @Override // java.lang.Runnable
                public final void run() {
                    OnDeviceProcessingManager.m109sendInstallEventAsync$lambda0(applicationContext, str2, str);
                }
            });
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, OnDeviceProcessingManager.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendInstallEventAsync$lambda-0  reason: not valid java name */
    public static final void m109sendInstallEventAsync$lambda0(Context context, String str, String str2) {
        if (CrashShieldHandler.isObjectCrashing(OnDeviceProcessingManager.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(context, "$context");
            SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
            String stringPlus = Intrinsics.stringPlus(str2, "pingForOnDevice");
            if (sharedPreferences.getLong(stringPlus, 0L) == 0) {
                RemoteServiceWrapper remoteServiceWrapper = RemoteServiceWrapper.INSTANCE;
                RemoteServiceWrapper.sendInstallEvent(str2);
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putLong(stringPlus, System.currentTimeMillis());
                edit.apply();
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, OnDeviceProcessingManager.class);
        }
    }
}
