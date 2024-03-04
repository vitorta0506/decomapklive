package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J&\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesChatPushSettings;", "", "disabledUntil", "", RemoteMessageConst.Notification.SOUND, "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "(Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)V", "getDisabledUntil", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getSound", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "component1", "component2", "copy", "(Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)Lcom/vk/sdk/api/messages/dto/MessagesChatPushSettings;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesChatPushSettings {
    @SerializedName("disabled_until")
    @Nullable
    private final Integer disabledUntil;
    @SerializedName(RemoteMessageConst.Notification.SOUND)
    @Nullable
    private final BaseBoolInt sound;

    public MessagesChatPushSettings() {
        this(null, null, 3, null);
    }

    public MessagesChatPushSettings(@Nullable Integer num, @Nullable BaseBoolInt baseBoolInt) {
        this.disabledUntil = num;
        this.sound = baseBoolInt;
    }

    public static /* synthetic */ MessagesChatPushSettings copy$default(MessagesChatPushSettings messagesChatPushSettings, Integer num, BaseBoolInt baseBoolInt, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = messagesChatPushSettings.disabledUntil;
        }
        if ((i9 & 2) != 0) {
            baseBoolInt = messagesChatPushSettings.sound;
        }
        return messagesChatPushSettings.copy(num, baseBoolInt);
    }

    @Nullable
    public final Integer component1() {
        return this.disabledUntil;
    }

    @Nullable
    public final BaseBoolInt component2() {
        return this.sound;
    }

    @NotNull
    public final MessagesChatPushSettings copy(@Nullable Integer num, @Nullable BaseBoolInt baseBoolInt) {
        return new MessagesChatPushSettings(num, baseBoolInt);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesChatPushSettings) {
            MessagesChatPushSettings messagesChatPushSettings = (MessagesChatPushSettings) obj;
            return Intrinsics.areEqual(this.disabledUntil, messagesChatPushSettings.disabledUntil) && this.sound == messagesChatPushSettings.sound;
        }
        return false;
    }

    @Nullable
    public final Integer getDisabledUntil() {
        return this.disabledUntil;
    }

    @Nullable
    public final BaseBoolInt getSound() {
        return this.sound;
    }

    public int hashCode() {
        Integer num = this.disabledUntil;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        BaseBoolInt baseBoolInt = this.sound;
        return hashCode + (baseBoolInt != null ? baseBoolInt.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.disabledUntil;
        BaseBoolInt baseBoolInt = this.sound;
        return "MessagesChatPushSettings(disabledUntil=" + num + ", sound=" + baseBoolInt + ")";
    }

    public /* synthetic */ MessagesChatPushSettings(Integer num, BaseBoolInt baseBoolInt, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : baseBoolInt);
    }
}