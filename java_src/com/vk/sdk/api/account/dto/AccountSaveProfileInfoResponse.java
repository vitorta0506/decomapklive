package com.vk.sdk.api.account.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/account/dto/AccountSaveProfileInfoResponse;", "", "changed", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "nameRequest", "Lcom/vk/sdk/api/account/dto/AccountNameRequest;", "(Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/account/dto/AccountNameRequest;)V", "getChanged", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getNameRequest", "()Lcom/vk/sdk/api/account/dto/AccountNameRequest;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AccountSaveProfileInfoResponse {
    @SerializedName("changed")
    @NotNull
    private final BaseBoolInt changed;
    @SerializedName("name_request")
    @Nullable
    private final AccountNameRequest nameRequest;

    public AccountSaveProfileInfoResponse(@NotNull BaseBoolInt changed, @Nullable AccountNameRequest accountNameRequest) {
        Intrinsics.checkNotNullParameter(changed, "changed");
        this.changed = changed;
        this.nameRequest = accountNameRequest;
    }

    public static /* synthetic */ AccountSaveProfileInfoResponse copy$default(AccountSaveProfileInfoResponse accountSaveProfileInfoResponse, BaseBoolInt baseBoolInt, AccountNameRequest accountNameRequest, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            baseBoolInt = accountSaveProfileInfoResponse.changed;
        }
        if ((i9 & 2) != 0) {
            accountNameRequest = accountSaveProfileInfoResponse.nameRequest;
        }
        return accountSaveProfileInfoResponse.copy(baseBoolInt, accountNameRequest);
    }

    @NotNull
    public final BaseBoolInt component1() {
        return this.changed;
    }

    @Nullable
    public final AccountNameRequest component2() {
        return this.nameRequest;
    }

    @NotNull
    public final AccountSaveProfileInfoResponse copy(@NotNull BaseBoolInt changed, @Nullable AccountNameRequest accountNameRequest) {
        Intrinsics.checkNotNullParameter(changed, "changed");
        return new AccountSaveProfileInfoResponse(changed, accountNameRequest);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountSaveProfileInfoResponse) {
            AccountSaveProfileInfoResponse accountSaveProfileInfoResponse = (AccountSaveProfileInfoResponse) obj;
            return this.changed == accountSaveProfileInfoResponse.changed && Intrinsics.areEqual(this.nameRequest, accountSaveProfileInfoResponse.nameRequest);
        }
        return false;
    }

    @NotNull
    public final BaseBoolInt getChanged() {
        return this.changed;
    }

    @Nullable
    public final AccountNameRequest getNameRequest() {
        return this.nameRequest;
    }

    public int hashCode() {
        int hashCode = this.changed.hashCode() * 31;
        AccountNameRequest accountNameRequest = this.nameRequest;
        return hashCode + (accountNameRequest == null ? 0 : accountNameRequest.hashCode());
    }

    @NotNull
    public String toString() {
        BaseBoolInt baseBoolInt = this.changed;
        AccountNameRequest accountNameRequest = this.nameRequest;
        return "AccountSaveProfileInfoResponse(changed=" + baseBoolInt + ", nameRequest=" + accountNameRequest + ")";
    }

    public /* synthetic */ AccountSaveProfileInfoResponse(BaseBoolInt baseBoolInt, AccountNameRequest accountNameRequest, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(baseBoolInt, (i9 & 2) != 0 ? null : accountNameRequest);
    }
}
