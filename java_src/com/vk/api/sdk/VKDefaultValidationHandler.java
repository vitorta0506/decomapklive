package com.vk.api.sdk;

import android.content.Context;
import com.vk.api.sdk.VKApiValidationHandler;
import com.vk.api.sdk.exceptions.VKApiExecutionException;
import com.vk.api.sdk.ui.VKCaptchaActivity;
import com.vk.api.sdk.ui.VKConfirmationActivity;
import com.vk.api.sdk.ui.VKWebViewAuthActivity;
import com.vk.api.sdk.utils.VKValidationLocker;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u001e\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016J\u001e\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00100\nH\u0016J\u001e\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u000b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00130\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0014"}, d2 = {"Lcom/vk/api/sdk/VKDefaultValidationHandler;", "Lcom/vk/api/sdk/VKApiValidationHandler;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "checkCaptchaActivity", "", "cb", "Lcom/vk/api/sdk/VKApiValidationHandler$Callback;", "", "handleCaptcha", "img", "handleConfirm", "confirmationText", "", "handleValidation", "validationUrl", "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public class VKDefaultValidationHandler implements VKApiValidationHandler {
    @NotNull
    private final Context context;

    public VKDefaultValidationHandler(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    private final void checkCaptchaActivity(VKApiValidationHandler.Callback<String> callback) {
        VKCaptchaActivity.Companion companion = VKCaptchaActivity.Companion;
        if (companion.getLastKey() != null) {
            String lastKey = companion.getLastKey();
            Intrinsics.checkNotNull(lastKey);
            callback.submit(lastKey);
            return;
        }
        callback.cancel();
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Override // com.vk.api.sdk.VKApiValidationHandler
    public void handleCaptcha(@NotNull String img, @NotNull VKApiValidationHandler.Callback<String> cb2) {
        Intrinsics.checkNotNullParameter(img, "img");
        Intrinsics.checkNotNullParameter(cb2, "cb");
        VKCaptchaActivity.Companion.start(this.context, img);
        VKValidationLocker.INSTANCE.await();
        checkCaptchaActivity(cb2);
    }

    @Override // com.vk.api.sdk.VKApiValidationHandler
    public void handleConfirm(@NotNull String confirmationText, @NotNull VKApiValidationHandler.Callback<Boolean> cb2) {
        Intrinsics.checkNotNullParameter(confirmationText, "confirmationText");
        Intrinsics.checkNotNullParameter(cb2, "cb");
        VKConfirmationActivity.Companion companion = VKConfirmationActivity.Companion;
        companion.setResult(false);
        companion.start(this.context, confirmationText);
        VKValidationLocker.INSTANCE.await();
        cb2.submit(Boolean.valueOf(companion.getResult()));
        companion.setResult(false);
    }

    @Override // com.vk.api.sdk.VKApiValidationHandler
    public void handleValidation(@NotNull String validationUrl, @NotNull VKApiValidationHandler.Callback<VKApiValidationHandler.Credentials> cb2) {
        Unit unit;
        Intrinsics.checkNotNullParameter(validationUrl, "validationUrl");
        Intrinsics.checkNotNullParameter(cb2, "cb");
        VKWebViewAuthActivity.Companion companion = VKWebViewAuthActivity.Companion;
        companion.setValidationResult(null);
        companion.startForValidation(this.context, validationUrl);
        VKValidationLocker.INSTANCE.await();
        VKApiValidationHandler.Credentials validationResult = companion.getValidationResult();
        if (validationResult == null) {
            unit = null;
        } else {
            cb2.submit(validationResult);
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            cb2.cancel();
        }
        companion.setValidationResult(null);
    }

    @Override // com.vk.api.sdk.VKApiValidationHandler
    public void tryToHandleException(@NotNull VKApiExecutionException vKApiExecutionException, @NotNull VKApiManager vKApiManager) throws VKApiExecutionException {
        VKApiValidationHandler.DefaultImpls.tryToHandleException(this, vKApiExecutionException, vKApiManager);
    }
}
