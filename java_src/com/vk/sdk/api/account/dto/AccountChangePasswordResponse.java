package com.vk.sdk.api.account.dto;

import cn.jpush.android.api.JThirdPlatFormInterface;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u001f\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/vk/sdk/api/account/dto/AccountChangePasswordResponse;", "", JThirdPlatFormInterface.KEY_TOKEN, "", "secret", "(Ljava/lang/String;Ljava/lang/String;)V", "getSecret", "()Ljava/lang/String;", "getToken", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AccountChangePasswordResponse {
    @SerializedName("secret")
    @Nullable
    private final String secret;
    @SerializedName(JThirdPlatFormInterface.KEY_TOKEN)
    @NotNull
    private final String token;

    public AccountChangePasswordResponse(@NotNull String token, @Nullable String str) {
        Intrinsics.checkNotNullParameter(token, "token");
        this.token = token;
        this.secret = str;
    }

    public static /* synthetic */ AccountChangePasswordResponse copy$default(AccountChangePasswordResponse accountChangePasswordResponse, String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = accountChangePasswordResponse.token;
        }
        if ((i9 & 2) != 0) {
            str2 = accountChangePasswordResponse.secret;
        }
        return accountChangePasswordResponse.copy(str, str2);
    }

    @NotNull
    public final String component1() {
        return this.token;
    }

    @Nullable
    public final String component2() {
        return this.secret;
    }

    @NotNull
    public final AccountChangePasswordResponse copy(@NotNull String token, @Nullable String str) {
        Intrinsics.checkNotNullParameter(token, "token");
        return new AccountChangePasswordResponse(token, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountChangePasswordResponse) {
            AccountChangePasswordResponse accountChangePasswordResponse = (AccountChangePasswordResponse) obj;
            return Intrinsics.areEqual(this.token, accountChangePasswordResponse.token) && Intrinsics.areEqual(this.secret, accountChangePasswordResponse.secret);
        }
        return false;
    }

    @Nullable
    public final String getSecret() {
        return this.secret;
    }

    @NotNull
    public final String getToken() {
        return this.token;
    }

    public int hashCode() {
        int hashCode = this.token.hashCode() * 31;
        String str = this.secret;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        String str = this.token;
        String str2 = this.secret;
        return "AccountChangePasswordResponse(token=" + str + ", secret=" + str2 + ")";
    }

    public /* synthetic */ AccountChangePasswordResponse(String str, String str2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i9 & 2) != 0 ? null : str2);
    }
}
