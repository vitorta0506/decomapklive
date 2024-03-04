package com.vk.api.sdk.auth;

import cn.jpush.android.api.JThirdPlatFormInterface;
import com.facebook.internal.AnalyticsEvents;
import com.vk.api.sdk.exceptions.VKAuthException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/vk/api/sdk/auth/VKAuthenticationResult;", "", "()V", AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_FAILED, "Success", "Lcom/vk/api/sdk/auth/VKAuthenticationResult$Failed;", "Lcom/vk/api/sdk/auth/VKAuthenticationResult$Success;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public abstract class VKAuthenticationResult {

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vk/api/sdk/auth/VKAuthenticationResult$Failed;", "Lcom/vk/api/sdk/auth/VKAuthenticationResult;", "exception", "Lcom/vk/api/sdk/exceptions/VKAuthException;", "(Lcom/vk/api/sdk/exceptions/VKAuthException;)V", "getException", "()Lcom/vk/api/sdk/exceptions/VKAuthException;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Failed extends VKAuthenticationResult {
        @NotNull
        private final VKAuthException exception;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Failed(@NotNull VKAuthException exception) {
            super(null);
            Intrinsics.checkNotNullParameter(exception, "exception");
            this.exception = exception;
        }

        @NotNull
        public final VKAuthException getException() {
            return this.exception;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vk/api/sdk/auth/VKAuthenticationResult$Success;", "Lcom/vk/api/sdk/auth/VKAuthenticationResult;", JThirdPlatFormInterface.KEY_TOKEN, "Lcom/vk/api/sdk/auth/VKAccessToken;", "(Lcom/vk/api/sdk/auth/VKAccessToken;)V", "getToken", "()Lcom/vk/api/sdk/auth/VKAccessToken;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Success extends VKAuthenticationResult {
        @NotNull
        private final VKAccessToken token;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(@NotNull VKAccessToken token) {
            super(null);
            Intrinsics.checkNotNullParameter(token, "token");
            this.token = token;
        }

        @NotNull
        public final VKAccessToken getToken() {
            return this.token;
        }
    }

    private VKAuthenticationResult() {
    }

    public /* synthetic */ VKAuthenticationResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
