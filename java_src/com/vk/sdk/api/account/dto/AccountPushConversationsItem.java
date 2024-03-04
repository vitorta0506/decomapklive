package com.vk.sdk.api.account.dto;

import com.google.gson.annotations.SerializedName;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0006HÆ\u0003J?\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006\u001d"}, d2 = {"Lcom/vk/sdk/api/account/dto/AccountPushConversationsItem;", "", "disabledUntil", "", "peerId", RemoteMessageConst.Notification.SOUND, "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "disabledMentions", "disabledMassMentions", "(IILcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)V", "getDisabledMassMentions", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getDisabledMentions", "getDisabledUntil", "()I", "getPeerId", "getSound", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AccountPushConversationsItem {
    @SerializedName("disabled_mass_mentions")
    @Nullable
    private final BaseBoolInt disabledMassMentions;
    @SerializedName("disabled_mentions")
    @Nullable
    private final BaseBoolInt disabledMentions;
    @SerializedName("disabled_until")
    private final int disabledUntil;
    @SerializedName("peer_id")
    private final int peerId;
    @SerializedName(RemoteMessageConst.Notification.SOUND)
    @NotNull
    private final BaseBoolInt sound;

    public AccountPushConversationsItem(int i9, int i10, @NotNull BaseBoolInt sound, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2) {
        Intrinsics.checkNotNullParameter(sound, "sound");
        this.disabledUntil = i9;
        this.peerId = i10;
        this.sound = sound;
        this.disabledMentions = baseBoolInt;
        this.disabledMassMentions = baseBoolInt2;
    }

    public static /* synthetic */ AccountPushConversationsItem copy$default(AccountPushConversationsItem accountPushConversationsItem, int i9, int i10, BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, BaseBoolInt baseBoolInt3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = accountPushConversationsItem.disabledUntil;
        }
        if ((i11 & 2) != 0) {
            i10 = accountPushConversationsItem.peerId;
        }
        int i12 = i10;
        if ((i11 & 4) != 0) {
            baseBoolInt = accountPushConversationsItem.sound;
        }
        BaseBoolInt baseBoolInt4 = baseBoolInt;
        if ((i11 & 8) != 0) {
            baseBoolInt2 = accountPushConversationsItem.disabledMentions;
        }
        BaseBoolInt baseBoolInt5 = baseBoolInt2;
        if ((i11 & 16) != 0) {
            baseBoolInt3 = accountPushConversationsItem.disabledMassMentions;
        }
        return accountPushConversationsItem.copy(i9, i12, baseBoolInt4, baseBoolInt5, baseBoolInt3);
    }

    public final int component1() {
        return this.disabledUntil;
    }

    public final int component2() {
        return this.peerId;
    }

    @NotNull
    public final BaseBoolInt component3() {
        return this.sound;
    }

    @Nullable
    public final BaseBoolInt component4() {
        return this.disabledMentions;
    }

    @Nullable
    public final BaseBoolInt component5() {
        return this.disabledMassMentions;
    }

    @NotNull
    public final AccountPushConversationsItem copy(int i9, int i10, @NotNull BaseBoolInt sound, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2) {
        Intrinsics.checkNotNullParameter(sound, "sound");
        return new AccountPushConversationsItem(i9, i10, sound, baseBoolInt, baseBoolInt2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountPushConversationsItem) {
            AccountPushConversationsItem accountPushConversationsItem = (AccountPushConversationsItem) obj;
            return this.disabledUntil == accountPushConversationsItem.disabledUntil && this.peerId == accountPushConversationsItem.peerId && this.sound == accountPushConversationsItem.sound && this.disabledMentions == accountPushConversationsItem.disabledMentions && this.disabledMassMentions == accountPushConversationsItem.disabledMassMentions;
        }
        return false;
    }

    @Nullable
    public final BaseBoolInt getDisabledMassMentions() {
        return this.disabledMassMentions;
    }

    @Nullable
    public final BaseBoolInt getDisabledMentions() {
        return this.disabledMentions;
    }

    public final int getDisabledUntil() {
        return this.disabledUntil;
    }

    public final int getPeerId() {
        return this.peerId;
    }

    @NotNull
    public final BaseBoolInt getSound() {
        return this.sound;
    }

    public int hashCode() {
        int hashCode = ((((this.disabledUntil * 31) + this.peerId) * 31) + this.sound.hashCode()) * 31;
        BaseBoolInt baseBoolInt = this.disabledMentions;
        int hashCode2 = (hashCode + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        BaseBoolInt baseBoolInt2 = this.disabledMassMentions;
        return hashCode2 + (baseBoolInt2 != null ? baseBoolInt2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.disabledUntil;
        int i10 = this.peerId;
        BaseBoolInt baseBoolInt = this.sound;
        BaseBoolInt baseBoolInt2 = this.disabledMentions;
        BaseBoolInt baseBoolInt3 = this.disabledMassMentions;
        return "AccountPushConversationsItem(disabledUntil=" + i9 + ", peerId=" + i10 + ", sound=" + baseBoolInt + ", disabledMentions=" + baseBoolInt2 + ", disabledMassMentions=" + baseBoolInt3 + ")";
    }

    public /* synthetic */ AccountPushConversationsItem(int i9, int i10, BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, BaseBoolInt baseBoolInt3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, baseBoolInt, (i11 & 8) != 0 ? null : baseBoolInt2, (i11 & 16) != 0 ? null : baseBoolInt3);
    }
}
