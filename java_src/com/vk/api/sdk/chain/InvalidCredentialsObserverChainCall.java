package com.vk.api.sdk.chain;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.vk.api.sdk.VKApiIllegalCredentialsListener;
import com.vk.api.sdk.VKApiManager;
import com.vk.api.sdk.exceptions.VKApiExecutionException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0017\u0010\t\u001a\u0004\u0018\u00018\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0016¢\u0006\u0002\u0010\fJ\u001f\u0010\r\u001a\u0004\u0018\u00018\u00002\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0002\u0010\u000fR\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/vk/api/sdk/chain/InvalidCredentialsObserverChainCall;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/vk/api/sdk/chain/ChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", "chain", "checkAuthCount", "", "(Lcom/vk/api/sdk/VKApiManager;Lcom/vk/api/sdk/chain/ChainCall;I)V", NotificationCompat.CATEGORY_CALL, "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "callWithAuthCheck", "iteration", "(Lcom/vk/api/sdk/chain/ChainArgs;I)Ljava/lang/Object;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class InvalidCredentialsObserverChainCall<T> extends ChainCall<T> {
    @NotNull
    private final ChainCall<T> chain;
    private final int checkAuthCount;

    public /* synthetic */ InvalidCredentialsObserverChainCall(VKApiManager vKApiManager, ChainCall chainCall, int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(vKApiManager, chainCall, (i10 & 4) != 0 ? 0 : i9);
    }

    private final T callWithAuthCheck(ChainArgs chainArgs, int i9) {
        try {
            return this.chain.call(chainArgs);
        } catch (VKApiExecutionException e10) {
            if (e10.isInvalidCredentialsError()) {
                int i10 = this.checkAuthCount;
                if (i10 > 0 && i9 < i10) {
                    String accessToken = e10.getAccessToken();
                    String accessToken2 = getManager().getExecutor().getAccessToken();
                    String ignoredAccessToken = getManager().getExecutor().getIgnoredAccessToken();
                    boolean z10 = !Intrinsics.areEqual(accessToken, accessToken2);
                    boolean z11 = ignoredAccessToken != null && Intrinsics.areEqual(accessToken, ignoredAccessToken);
                    if (accessToken != null && (z10 || z11)) {
                        return callWithAuthCheck(chainArgs, i9 + 1);
                    }
                }
                if (e10.getCode() == 3610) {
                    VKApiIllegalCredentialsListener illegalCredentialsListener = getManager().getIllegalCredentialsListener();
                    if (illegalCredentialsListener != null) {
                        illegalCredentialsListener.onUserDeactivated(e10.getApiMethod());
                    }
                } else {
                    VKApiIllegalCredentialsListener illegalCredentialsListener2 = getManager().getIllegalCredentialsListener();
                    if (illegalCredentialsListener2 != null) {
                        illegalCredentialsListener2.onInvalidCredentials(e10.getApiMethod(), e10.getUserBanInfo());
                    }
                }
            }
            throw e10;
        }
    }

    @Override // com.vk.api.sdk.chain.ChainCall
    @Nullable
    public T call(@NotNull ChainArgs args) throws Exception {
        Intrinsics.checkNotNullParameter(args, "args");
        return callWithAuthCheck(args, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public InvalidCredentialsObserverChainCall(@NotNull VKApiManager manager, @NotNull ChainCall<? extends T> chain, int i9) {
        super(manager);
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(chain, "chain");
        this.chain = chain;
        this.checkAuthCount = i9;
    }
}
