package com.vk.api.sdk.ui;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.huawei.hms.support.api.entity.core.CommonCode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH$J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000bH$J\u0012\u0010\u000e\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\tH$J\u0012\u0010\u0010\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014J\u0012\u0010\u0013\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\tH\u0014J\b\u0010\u0014\u001a\u00020\u0007H\u0014J\b\u0010\u0015\u001a\u00020\u0007H\u0014J\u0010\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0012H\u0014J\u001a\u0010\u0018\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0019\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/vk/api/sdk/ui/VKBaseAuthActivity;", "Landroid/app/Activity;", "()V", "authWasStarted", "", "isWaitingForAuthResult", "finish", "", "handleRedirectUri", "Landroid/content/Intent;", "redirectUri", "Landroid/net/Uri;", "handleStartAuth", "oauthUri", "isIntentWithAuthRequest", CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onNewIntent", "onPause", "onResume", "onSaveInstanceState", "outState", "processIntent", "allowRedirectHandle", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public abstract class VKBaseAuthActivity extends Activity {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String KEY_WAITING_FOR_AUTH_RESULT = "VK_waitingForAuthResult";
    private boolean authWasStarted;
    private boolean isWaitingForAuthResult;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/vk/api/sdk/ui/VKBaseAuthActivity$Companion;", "", "()V", "KEY_WAITING_FOR_AUTH_RESULT", "", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final void processIntent(Intent intent, boolean z10) {
        Uri data = intent == null ? null : intent.getData();
        if (this.isWaitingForAuthResult || !isIntentWithAuthRequest(intent) || data == null) {
            if (z10) {
                setResult(-1, handleRedirectUri(data));
                finish();
                this.isWaitingForAuthResult = false;
            }
        } else if (handleStartAuth(data)) {
            this.isWaitingForAuthResult = true;
            this.authWasStarted = true;
        } else {
            finish();
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    @NotNull
    protected abstract Intent handleRedirectUri(@Nullable Uri uri);

    protected abstract boolean handleStartAuth(@NotNull Uri uri);

    protected abstract boolean isIntentWithAuthRequest(@Nullable Intent intent);

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        overridePendingTransition(0, 0);
        super.onCreate(bundle);
        this.isWaitingForAuthResult = bundle == null ? false : bundle.getBoolean(KEY_WAITING_FOR_AUTH_RESULT, false);
        processIntent(getIntent(), false);
    }

    @Override // android.app.Activity
    protected void onNewIntent(@Nullable Intent intent) {
        super.onNewIntent(intent);
        processIntent(intent, true);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.authWasStarted = false;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!this.isWaitingForAuthResult || this.authWasStarted) {
            return;
        }
        setResult(0);
        finish();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(@NotNull Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putBoolean(KEY_WAITING_FOR_AUTH_RESULT, this.isWaitingForAuthResult);
    }
}
