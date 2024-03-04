package com.vk.api.sdk.chain;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.vk.api.sdk.VKApiManager;
import com.vk.api.sdk.VKApiValidationHandler;
import com.vk.api.sdk.exceptions.VKApiException;
import com.vk.api.sdk.exceptions.VKApiExecutionException;
import java.util.concurrent.CountDownLatch;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\b¢\u0006\u0002\u0010\tJX\u0010\f\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u0001H\r2)\u0010\u0011\u001a%\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H\u0004¢\u0006\u0002\u0010\u0016J\u0017\u0010\u0017\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0018\u001a\u00020\u0019H\u0016¢\u0006\u0002\u0010\u001aJ\u0018\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0018\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0018\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010 \u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u001a\u0010!\u001a\u00020\u00142\b\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010\u001c\u001a\u00020\u001dH\u0004R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006$"}, d2 = {"Lcom/vk/api/sdk/chain/ValidationHandlerChainCall;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/vk/api/sdk/chain/RetryChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", "retryLimit", "", "chain", "Lcom/vk/api/sdk/chain/ChainCall;", "(Lcom/vk/api/sdk/VKApiManager;ILcom/vk/api/sdk/chain/ChainCall;)V", "getChain", "()Lcom/vk/api/sdk/chain/ChainCall;", "awaitValidation", "H", PushConstants.EXTRA, "", "handler", "handlerMethod", "Lkotlin/Function3;", "Lcom/vk/api/sdk/VKApiValidationHandler$Callback;", "", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;", NotificationCompat.CATEGORY_CALL, "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "handleCaptcha", "ex", "Lcom/vk/api/sdk/exceptions/VKApiExecutionException;", "handleException", "handleUserConfirmation", "handleValidation", "persistToken", "credentials", "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ValidationHandlerChainCall<T> extends RetryChainCall<T> {
    @NotNull
    private final ChainCall<T> chain;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ValidationHandlerChainCall(@NotNull VKApiManager manager, int i9, @NotNull ChainCall<? extends T> chain) {
        super(manager, i9);
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(chain, "chain");
        this.chain = chain;
    }

    private final void handleCaptcha(VKApiExecutionException vKApiExecutionException, ChainArgs chainArgs) {
        String str = (String) awaitValidation(vKApiExecutionException.getCaptchaImg(), getManager().getValidationHandler$core_release(), ValidationHandlerChainCall$handleCaptcha$captcha$1.INSTANCE);
        if (str != null) {
            chainArgs.setCaptchaSid(vKApiExecutionException.getCaptchaSid());
            chainArgs.setCaptchaKey(str);
            return;
        }
        throw vKApiExecutionException;
    }

    private final void handleException(VKApiExecutionException vKApiExecutionException, ChainArgs chainArgs) throws Exception {
        Unit unit;
        if (vKApiExecutionException.isCaptchaError()) {
            handleCaptcha(vKApiExecutionException, chainArgs);
        } else if (vKApiExecutionException.isValidationRequired()) {
            handleValidation(vKApiExecutionException);
        } else if (vKApiExecutionException.isUserConfirmRequired()) {
            handleUserConfirmation(vKApiExecutionException, chainArgs);
        } else {
            VKApiValidationHandler validationHandler$core_release = getManager().getValidationHandler$core_release();
            if (validationHandler$core_release == null) {
                unit = null;
            } else {
                validationHandler$core_release.tryToHandleException(vKApiExecutionException, getManager());
                unit = Unit.INSTANCE;
            }
            if (unit == null) {
                throw vKApiExecutionException;
            }
        }
    }

    private final void handleUserConfirmation(VKApiExecutionException vKApiExecutionException, ChainArgs chainArgs) {
        Boolean bool = (Boolean) awaitValidation(vKApiExecutionException.getUserConfirmText(), getManager().getValidationHandler$core_release(), ValidationHandlerChainCall$handleUserConfirmation$confirmation$1.INSTANCE);
        if (bool != null) {
            if (!Intrinsics.areEqual(bool, Boolean.FALSE)) {
                chainArgs.setUserConfirmed(bool.booleanValue());
                return;
            }
            throw vKApiExecutionException;
        }
        throw vKApiExecutionException;
    }

    private final void handleValidation(VKApiExecutionException vKApiExecutionException) {
        persistToken((VKApiValidationHandler.Credentials) awaitValidation(vKApiExecutionException.getValidationUrl(), getManager().getValidationHandler$core_release(), ValidationHandlerChainCall$handleValidation$credentials$1.INSTANCE), vKApiExecutionException);
    }

    @Nullable
    protected final <T, H> T awaitValidation(@NotNull String extra, @Nullable H h10, @NotNull Function3<? super H, ? super String, ? super VKApiValidationHandler.Callback<T>, Unit> handlerMethod) {
        Intrinsics.checkNotNullParameter(extra, "extra");
        Intrinsics.checkNotNullParameter(handlerMethod, "handlerMethod");
        if (h10 == null) {
            return null;
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        VKApiValidationHandler.Callback callback = new VKApiValidationHandler.Callback(countDownLatch);
        handlerMethod.invoke(h10, extra, callback);
        countDownLatch.await();
        return (T) callback.getValue();
    }

    @Override // com.vk.api.sdk.chain.ChainCall
    @Nullable
    public T call(@NotNull ChainArgs args) throws Exception {
        Intrinsics.checkNotNullParameter(args, "args");
        int retryLimit = getRetryLimit();
        if (retryLimit >= 0) {
            int i9 = 0;
            while (true) {
                int i10 = i9 + 1;
                try {
                    return this.chain.call(args);
                } catch (VKApiExecutionException e10) {
                    handleException(e10, args);
                    if (i9 == retryLimit) {
                        break;
                    }
                    i9 = i10;
                }
            }
        }
        throw new VKApiException("Can't confirm validation due to retry limit!");
    }

    @NotNull
    public final ChainCall<T> getChain() {
        return this.chain;
    }

    protected final void persistToken(@Nullable VKApiValidationHandler.Credentials credentials, @NotNull VKApiExecutionException ex) {
        Intrinsics.checkNotNullParameter(ex, "ex");
        if (Intrinsics.areEqual(credentials, VKApiValidationHandler.Credentials.Companion.getEMPTY())) {
            return;
        }
        boolean z10 = false;
        if (credentials != null && credentials.isValid()) {
            z10 = true;
        }
        if (!z10) {
            throw ex;
        }
        VKApiManager manager = getManager();
        String token = credentials.getToken();
        Intrinsics.checkNotNull(token);
        manager.setCredentials(token, credentials.getSecret());
    }
}
