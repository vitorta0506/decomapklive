package com.facebook.internal;

import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.facebook.FacebookSdk;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u000eB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\b\u0010\r\u001a\u00020\tH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0007¨\u0006\u000f"}, d2 = {"Lcom/facebook/internal/InstallReferrerUtil;", "", "()V", "IS_REFERRER_UPDATED", "", "isUpdated", "", "()Z", "tryConnectReferrerInfo", "", "callback", "Lcom/facebook/internal/InstallReferrerUtil$Callback;", "tryUpdateReferrerInfo", "updateReferrer", "Callback", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class InstallReferrerUtil {
    @NotNull
    public static final InstallReferrerUtil INSTANCE = new InstallReferrerUtil();
    @NotNull
    private static final String IS_REFERRER_UPDATED = "is_referrer_updated";

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/facebook/internal/InstallReferrerUtil$Callback;", "", "onReceiveReferrerUrl", "", NotifyType.SOUND, "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public interface Callback {
        void onReceiveReferrerUrl(@Nullable String str);
    }

    private InstallReferrerUtil() {
    }

    private final boolean isUpdated() {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        return FacebookSdk.getApplicationContext().getSharedPreferences(FacebookSdk.APP_EVENT_PREFERENCES, 0).getBoolean(IS_REFERRER_UPDATED, false);
    }

    private final void tryConnectReferrerInfo(final Callback callback) {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        final InstallReferrerClient build = InstallReferrerClient.newBuilder(FacebookSdk.getApplicationContext()).build();
        try {
            build.startConnection(new InstallReferrerStateListener() { // from class: com.facebook.internal.InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1
                @Override // com.android.installreferrer.api.InstallReferrerStateListener
                public void onInstallReferrerServiceDisconnected() {
                }

                /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
                    if (r0 != false) goto L20;
                 */
                @Override // com.android.installreferrer.api.InstallReferrerStateListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onInstallReferrerSetupFinished(int r5) {
                    /*
                        r4 = this;
                        boolean r0 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.isObjectCrashing(r4)
                        if (r0 == 0) goto L7
                        return
                    L7:
                        r0 = 2
                        if (r5 == 0) goto L13
                        if (r5 == r0) goto Ld
                        goto L41
                    Ld:
                        com.facebook.internal.InstallReferrerUtil r5 = com.facebook.internal.InstallReferrerUtil.INSTANCE     // Catch: java.lang.Throwable -> L42
                        com.facebook.internal.InstallReferrerUtil.access$updateReferrer(r5)     // Catch: java.lang.Throwable -> L42
                        goto L41
                    L13:
                        com.android.installreferrer.api.InstallReferrerClient r5 = com.android.installreferrer.api.InstallReferrerClient.this     // Catch: java.lang.Throwable -> L42 android.os.RemoteException -> L46
                        com.android.installreferrer.api.ReferrerDetails r5 = r5.getInstallReferrer()     // Catch: java.lang.Throwable -> L42 android.os.RemoteException -> L46
                        java.lang.String r1 = "{\n                      referrerClient.installReferrer\n                    }"
                        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r1)     // Catch: java.lang.Throwable -> L42 android.os.RemoteException -> L46
                        java.lang.String r5 = r5.getInstallReferrer()     // Catch: java.lang.Throwable -> L42
                        if (r5 == 0) goto L3c
                        java.lang.String r1 = "fb"
                        r2 = 0
                        r3 = 0
                        boolean r1 = kotlin.text.StringsKt.contains$default(r5, r1, r3, r0, r2)     // Catch: java.lang.Throwable -> L42
                        if (r1 != 0) goto L37
                        java.lang.String r1 = "facebook"
                        boolean r0 = kotlin.text.StringsKt.contains$default(r5, r1, r3, r0, r2)     // Catch: java.lang.Throwable -> L42
                        if (r0 == 0) goto L3c
                    L37:
                        com.facebook.internal.InstallReferrerUtil$Callback r0 = r2     // Catch: java.lang.Throwable -> L42
                        r0.onReceiveReferrerUrl(r5)     // Catch: java.lang.Throwable -> L42
                    L3c:
                        com.facebook.internal.InstallReferrerUtil r5 = com.facebook.internal.InstallReferrerUtil.INSTANCE     // Catch: java.lang.Throwable -> L42
                        com.facebook.internal.InstallReferrerUtil.access$updateReferrer(r5)     // Catch: java.lang.Throwable -> L42
                    L41:
                        return
                    L42:
                        r5 = move-exception
                        com.facebook.internal.instrument.crashshield.CrashShieldHandler.handleThrowable(r5, r4)
                    L46:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1.onInstallReferrerSetupFinished(int):void");
                }
            });
        } catch (Exception unused) {
        }
    }

    @JvmStatic
    public static final void tryUpdateReferrerInfo(@NotNull Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        InstallReferrerUtil installReferrerUtil = INSTANCE;
        if (installReferrerUtil.isUpdated()) {
            return;
        }
        installReferrerUtil.tryConnectReferrerInfo(callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateReferrer() {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        FacebookSdk.getApplicationContext().getSharedPreferences(FacebookSdk.APP_EVENT_PREFERENCES, 0).edit().putBoolean(IS_REFERRER_UPDATED, true).apply();
    }
}
