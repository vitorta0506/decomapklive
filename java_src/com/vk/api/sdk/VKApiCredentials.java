package com.vk.api.sdk;

import com.vk.api.sdk.auth.VKAccessToken;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u001f\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/vk/api/sdk/VKApiCredentials;", "", "accessToken", "", "secret", "(Ljava/lang/String;Ljava/lang/String;)V", "getAccessToken", "()Ljava/lang/String;", "getSecret", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class VKApiCredentials {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final String accessToken;
    @Nullable
    private final String secret;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007J\u001e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\n¨\u0006\f"}, d2 = {"Lcom/vk/api/sdk/VKApiCredentials$Companion;", "", "()V", "lazyFrom", "Lkotlin/Lazy;", "Lcom/vk/api/sdk/VKApiCredentials;", "tokenProvider", "Lkotlin/Function0;", "Lcom/vk/api/sdk/auth/VKAccessToken;", "accessToken", "", "secret", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Lazy<VKApiCredentials> lazyFrom(@NotNull final String accessToken, @Nullable final String str) {
            Lazy<VKApiCredentials> lazy;
            Intrinsics.checkNotNullParameter(accessToken, "accessToken");
            lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<VKApiCredentials>() { // from class: com.vk.api.sdk.VKApiCredentials$Companion$lazyFrom$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final VKApiCredentials invoke() {
                    return new VKApiCredentials(accessToken, str);
                }
            });
            return lazy;
        }

        @NotNull
        public final Lazy<VKApiCredentials> lazyFrom(@NotNull final Function0<VKAccessToken> tokenProvider) {
            Lazy<VKApiCredentials> lazy;
            Intrinsics.checkNotNullParameter(tokenProvider, "tokenProvider");
            lazy = LazyKt__LazyJVMKt.lazy(new Function0<VKApiCredentials>() { // from class: com.vk.api.sdk.VKApiCredentials$Companion$lazyFrom$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final VKApiCredentials invoke() {
                    String accessToken;
                    VKAccessToken invoke = tokenProvider.invoke();
                    String str = "";
                    if (invoke != null && (accessToken = invoke.getAccessToken()) != null) {
                        str = accessToken;
                    }
                    return new VKApiCredentials(str, invoke == null ? null : invoke.getSecret());
                }
            });
            return lazy;
        }
    }

    public VKApiCredentials(@NotNull String accessToken, @Nullable String str) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        this.accessToken = accessToken;
        this.secret = str;
    }

    public static /* synthetic */ VKApiCredentials copy$default(VKApiCredentials vKApiCredentials, String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = vKApiCredentials.accessToken;
        }
        if ((i9 & 2) != 0) {
            str2 = vKApiCredentials.secret;
        }
        return vKApiCredentials.copy(str, str2);
    }

    @NotNull
    public final String component1() {
        return this.accessToken;
    }

    @Nullable
    public final String component2() {
        return this.secret;
    }

    @NotNull
    public final VKApiCredentials copy(@NotNull String accessToken, @Nullable String str) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        return new VKApiCredentials(accessToken, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VKApiCredentials) {
            VKApiCredentials vKApiCredentials = (VKApiCredentials) obj;
            return Intrinsics.areEqual(this.accessToken, vKApiCredentials.accessToken) && Intrinsics.areEqual(this.secret, vKApiCredentials.secret);
        }
        return false;
    }

    @NotNull
    public final String getAccessToken() {
        return this.accessToken;
    }

    @Nullable
    public final String getSecret() {
        return this.secret;
    }

    public int hashCode() {
        int hashCode = this.accessToken.hashCode() * 31;
        String str = this.secret;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        return "VKApiCredentials(accessToken=" + this.accessToken + ", secret=" + ((Object) this.secret) + ')';
    }
}
