package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0018\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJF\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u00032\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\u000f\u0010\rR\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000b¨\u0006 "}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesPushSettings;", "", "disabledForever", "", "noSound", "disabledUntil", "", "disabledMentions", "disabledMassMentions", "(ZZLjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "getDisabledForever", "()Z", "getDisabledMassMentions", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getDisabledMentions", "getDisabledUntil", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getNoSound", "component1", "component2", "component3", "component4", "component5", "copy", "(ZZLjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/sdk/api/messages/dto/MessagesPushSettings;", "equals", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesPushSettings {
    @SerializedName("disabled_forever")
    private final boolean disabledForever;
    @SerializedName("disabled_mass_mentions")
    @Nullable
    private final Boolean disabledMassMentions;
    @SerializedName("disabled_mentions")
    @Nullable
    private final Boolean disabledMentions;
    @SerializedName("disabled_until")
    @Nullable
    private final Integer disabledUntil;
    @SerializedName("no_sound")
    private final boolean noSound;

    public MessagesPushSettings(boolean z10, boolean z11, @Nullable Integer num, @Nullable Boolean bool, @Nullable Boolean bool2) {
        this.disabledForever = z10;
        this.noSound = z11;
        this.disabledUntil = num;
        this.disabledMentions = bool;
        this.disabledMassMentions = bool2;
    }

    public static /* synthetic */ MessagesPushSettings copy$default(MessagesPushSettings messagesPushSettings, boolean z10, boolean z11, Integer num, Boolean bool, Boolean bool2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z10 = messagesPushSettings.disabledForever;
        }
        if ((i9 & 2) != 0) {
            z11 = messagesPushSettings.noSound;
        }
        boolean z12 = z11;
        if ((i9 & 4) != 0) {
            num = messagesPushSettings.disabledUntil;
        }
        Integer num2 = num;
        if ((i9 & 8) != 0) {
            bool = messagesPushSettings.disabledMentions;
        }
        Boolean bool3 = bool;
        if ((i9 & 16) != 0) {
            bool2 = messagesPushSettings.disabledMassMentions;
        }
        return messagesPushSettings.copy(z10, z12, num2, bool3, bool2);
    }

    public final boolean component1() {
        return this.disabledForever;
    }

    public final boolean component2() {
        return this.noSound;
    }

    @Nullable
    public final Integer component3() {
        return this.disabledUntil;
    }

    @Nullable
    public final Boolean component4() {
        return this.disabledMentions;
    }

    @Nullable
    public final Boolean component5() {
        return this.disabledMassMentions;
    }

    @NotNull
    public final MessagesPushSettings copy(boolean z10, boolean z11, @Nullable Integer num, @Nullable Boolean bool, @Nullable Boolean bool2) {
        return new MessagesPushSettings(z10, z11, num, bool, bool2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesPushSettings) {
            MessagesPushSettings messagesPushSettings = (MessagesPushSettings) obj;
            return this.disabledForever == messagesPushSettings.disabledForever && this.noSound == messagesPushSettings.noSound && Intrinsics.areEqual(this.disabledUntil, messagesPushSettings.disabledUntil) && Intrinsics.areEqual(this.disabledMentions, messagesPushSettings.disabledMentions) && Intrinsics.areEqual(this.disabledMassMentions, messagesPushSettings.disabledMassMentions);
        }
        return false;
    }

    public final boolean getDisabledForever() {
        return this.disabledForever;
    }

    @Nullable
    public final Boolean getDisabledMassMentions() {
        return this.disabledMassMentions;
    }

    @Nullable
    public final Boolean getDisabledMentions() {
        return this.disabledMentions;
    }

    @Nullable
    public final Integer getDisabledUntil() {
        return this.disabledUntil;
    }

    public final boolean getNoSound() {
        return this.noSound;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    public int hashCode() {
        boolean z10 = this.disabledForever;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int i9 = r02 * 31;
        boolean z11 = this.noSound;
        int i10 = (i9 + (z11 ? 1 : z11 ? 1 : 0)) * 31;
        Integer num = this.disabledUntil;
        int hashCode = (i10 + (num == null ? 0 : num.hashCode())) * 31;
        Boolean bool = this.disabledMentions;
        int hashCode2 = (hashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.disabledMassMentions;
        return hashCode2 + (bool2 != null ? bool2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        boolean z10 = this.disabledForever;
        boolean z11 = this.noSound;
        Integer num = this.disabledUntil;
        Boolean bool = this.disabledMentions;
        Boolean bool2 = this.disabledMassMentions;
        return "MessagesPushSettings(disabledForever=" + z10 + ", noSound=" + z11 + ", disabledUntil=" + num + ", disabledMentions=" + bool + ", disabledMassMentions=" + bool2 + ")";
    }

    public /* synthetic */ MessagesPushSettings(boolean z10, boolean z11, Integer num, Boolean bool, Boolean bool2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, z11, (i9 & 4) != 0 ? null : num, (i9 & 8) != 0 ? null : bool, (i9 & 16) != 0 ? null : bool2);
    }
}
