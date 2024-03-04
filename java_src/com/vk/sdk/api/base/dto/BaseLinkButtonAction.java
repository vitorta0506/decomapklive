package com.vk.sdk.api.base.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J+\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0017"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseLinkButtonAction;", "", "type", "Lcom/vk/sdk/api/base/dto/BaseLinkButtonActionType;", "url", "", "consumeReason", "(Lcom/vk/sdk/api/base/dto/BaseLinkButtonActionType;Ljava/lang/String;Ljava/lang/String;)V", "getConsumeReason", "()Ljava/lang/String;", "getType", "()Lcom/vk/sdk/api/base/dto/BaseLinkButtonActionType;", "getUrl", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BaseLinkButtonAction {
    @SerializedName("consume_reason")
    @Nullable
    private final String consumeReason;
    @SerializedName("type")
    @NotNull
    private final BaseLinkButtonActionType type;
    @SerializedName("url")
    @Nullable
    private final String url;

    public BaseLinkButtonAction(@NotNull BaseLinkButtonActionType type, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.url = str;
        this.consumeReason = str2;
    }

    public static /* synthetic */ BaseLinkButtonAction copy$default(BaseLinkButtonAction baseLinkButtonAction, BaseLinkButtonActionType baseLinkButtonActionType, String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            baseLinkButtonActionType = baseLinkButtonAction.type;
        }
        if ((i9 & 2) != 0) {
            str = baseLinkButtonAction.url;
        }
        if ((i9 & 4) != 0) {
            str2 = baseLinkButtonAction.consumeReason;
        }
        return baseLinkButtonAction.copy(baseLinkButtonActionType, str, str2);
    }

    @NotNull
    public final BaseLinkButtonActionType component1() {
        return this.type;
    }

    @Nullable
    public final String component2() {
        return this.url;
    }

    @Nullable
    public final String component3() {
        return this.consumeReason;
    }

    @NotNull
    public final BaseLinkButtonAction copy(@NotNull BaseLinkButtonActionType type, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new BaseLinkButtonAction(type, str, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BaseLinkButtonAction) {
            BaseLinkButtonAction baseLinkButtonAction = (BaseLinkButtonAction) obj;
            return this.type == baseLinkButtonAction.type && Intrinsics.areEqual(this.url, baseLinkButtonAction.url) && Intrinsics.areEqual(this.consumeReason, baseLinkButtonAction.consumeReason);
        }
        return false;
    }

    @Nullable
    public final String getConsumeReason() {
        return this.consumeReason;
    }

    @NotNull
    public final BaseLinkButtonActionType getType() {
        return this.type;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int hashCode = this.type.hashCode() * 31;
        String str = this.url;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.consumeReason;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        BaseLinkButtonActionType baseLinkButtonActionType = this.type;
        String str = this.url;
        String str2 = this.consumeReason;
        return "BaseLinkButtonAction(type=" + baseLinkButtonActionType + ", url=" + str + ", consumeReason=" + str2 + ")";
    }

    public /* synthetic */ BaseLinkButtonAction(BaseLinkButtonActionType baseLinkButtonActionType, String str, String str2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(baseLinkButtonActionType, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : str2);
    }
}
