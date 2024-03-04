package com.vk.sdk.api.account.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\tHÆ\u0003J>\u0010\u0018\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006 "}, d2 = {"Lcom/vk/sdk/api/account/dto/AccountPushSettings;", "", "disabled", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "disabledUntil", "", "settings", "Lcom/vk/sdk/api/account/dto/AccountPushParams;", "conversations", "Lcom/vk/sdk/api/account/dto/AccountPushConversations;", "(Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Lcom/vk/sdk/api/account/dto/AccountPushParams;Lcom/vk/sdk/api/account/dto/AccountPushConversations;)V", "getConversations", "()Lcom/vk/sdk/api/account/dto/AccountPushConversations;", "getDisabled", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getDisabledUntil", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getSettings", "()Lcom/vk/sdk/api/account/dto/AccountPushParams;", "component1", "component2", "component3", "component4", "copy", "(Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Lcom/vk/sdk/api/account/dto/AccountPushParams;Lcom/vk/sdk/api/account/dto/AccountPushConversations;)Lcom/vk/sdk/api/account/dto/AccountPushSettings;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AccountPushSettings {
    @SerializedName("conversations")
    @Nullable
    private final AccountPushConversations conversations;
    @SerializedName("disabled")
    @Nullable
    private final BaseBoolInt disabled;
    @SerializedName("disabled_until")
    @Nullable
    private final Integer disabledUntil;
    @SerializedName("settings")
    @Nullable
    private final AccountPushParams settings;

    public AccountPushSettings() {
        this(null, null, null, null, 15, null);
    }

    public AccountPushSettings(@Nullable BaseBoolInt baseBoolInt, @Nullable Integer num, @Nullable AccountPushParams accountPushParams, @Nullable AccountPushConversations accountPushConversations) {
        this.disabled = baseBoolInt;
        this.disabledUntil = num;
        this.settings = accountPushParams;
        this.conversations = accountPushConversations;
    }

    public static /* synthetic */ AccountPushSettings copy$default(AccountPushSettings accountPushSettings, BaseBoolInt baseBoolInt, Integer num, AccountPushParams accountPushParams, AccountPushConversations accountPushConversations, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            baseBoolInt = accountPushSettings.disabled;
        }
        if ((i9 & 2) != 0) {
            num = accountPushSettings.disabledUntil;
        }
        if ((i9 & 4) != 0) {
            accountPushParams = accountPushSettings.settings;
        }
        if ((i9 & 8) != 0) {
            accountPushConversations = accountPushSettings.conversations;
        }
        return accountPushSettings.copy(baseBoolInt, num, accountPushParams, accountPushConversations);
    }

    @Nullable
    public final BaseBoolInt component1() {
        return this.disabled;
    }

    @Nullable
    public final Integer component2() {
        return this.disabledUntil;
    }

    @Nullable
    public final AccountPushParams component3() {
        return this.settings;
    }

    @Nullable
    public final AccountPushConversations component4() {
        return this.conversations;
    }

    @NotNull
    public final AccountPushSettings copy(@Nullable BaseBoolInt baseBoolInt, @Nullable Integer num, @Nullable AccountPushParams accountPushParams, @Nullable AccountPushConversations accountPushConversations) {
        return new AccountPushSettings(baseBoolInt, num, accountPushParams, accountPushConversations);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountPushSettings) {
            AccountPushSettings accountPushSettings = (AccountPushSettings) obj;
            return this.disabled == accountPushSettings.disabled && Intrinsics.areEqual(this.disabledUntil, accountPushSettings.disabledUntil) && Intrinsics.areEqual(this.settings, accountPushSettings.settings) && Intrinsics.areEqual(this.conversations, accountPushSettings.conversations);
        }
        return false;
    }

    @Nullable
    public final AccountPushConversations getConversations() {
        return this.conversations;
    }

    @Nullable
    public final BaseBoolInt getDisabled() {
        return this.disabled;
    }

    @Nullable
    public final Integer getDisabledUntil() {
        return this.disabledUntil;
    }

    @Nullable
    public final AccountPushParams getSettings() {
        return this.settings;
    }

    public int hashCode() {
        BaseBoolInt baseBoolInt = this.disabled;
        int hashCode = (baseBoolInt == null ? 0 : baseBoolInt.hashCode()) * 31;
        Integer num = this.disabledUntil;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        AccountPushParams accountPushParams = this.settings;
        int hashCode3 = (hashCode2 + (accountPushParams == null ? 0 : accountPushParams.hashCode())) * 31;
        AccountPushConversations accountPushConversations = this.conversations;
        return hashCode3 + (accountPushConversations != null ? accountPushConversations.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        BaseBoolInt baseBoolInt = this.disabled;
        Integer num = this.disabledUntil;
        AccountPushParams accountPushParams = this.settings;
        AccountPushConversations accountPushConversations = this.conversations;
        return "AccountPushSettings(disabled=" + baseBoolInt + ", disabledUntil=" + num + ", settings=" + accountPushParams + ", conversations=" + accountPushConversations + ")";
    }

    public /* synthetic */ AccountPushSettings(BaseBoolInt baseBoolInt, Integer num, AccountPushParams accountPushParams, AccountPushConversations accountPushConversations, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : baseBoolInt, (i9 & 2) != 0 ? null : num, (i9 & 4) != 0 ? null : accountPushParams, (i9 & 8) != 0 ? null : accountPushConversations);
    }
}
