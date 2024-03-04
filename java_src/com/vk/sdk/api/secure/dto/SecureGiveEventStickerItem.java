package com.vk.sdk.api.secure.dto;

import com.facebook.AccessToken;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/vk/sdk/api/secure/dto/SecureGiveEventStickerItem;", "", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "status", "", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;)V", "getStatus", "()Ljava/lang/String;", "getUserId", "()Lcom/vk/dto/common/id/UserId;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class SecureGiveEventStickerItem {
    @SerializedName("status")
    @Nullable
    private final String status;
    @SerializedName(AccessToken.USER_ID_KEY)
    @Nullable
    private final UserId userId;

    public SecureGiveEventStickerItem() {
        this(null, null, 3, null);
    }

    public SecureGiveEventStickerItem(@Nullable UserId userId, @Nullable String str) {
        this.userId = userId;
        this.status = str;
    }

    public static /* synthetic */ SecureGiveEventStickerItem copy$default(SecureGiveEventStickerItem secureGiveEventStickerItem, UserId userId, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = secureGiveEventStickerItem.userId;
        }
        if ((i9 & 2) != 0) {
            str = secureGiveEventStickerItem.status;
        }
        return secureGiveEventStickerItem.copy(userId, str);
    }

    @Nullable
    public final UserId component1() {
        return this.userId;
    }

    @Nullable
    public final String component2() {
        return this.status;
    }

    @NotNull
    public final SecureGiveEventStickerItem copy(@Nullable UserId userId, @Nullable String str) {
        return new SecureGiveEventStickerItem(userId, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SecureGiveEventStickerItem) {
            SecureGiveEventStickerItem secureGiveEventStickerItem = (SecureGiveEventStickerItem) obj;
            return Intrinsics.areEqual(this.userId, secureGiveEventStickerItem.userId) && Intrinsics.areEqual(this.status, secureGiveEventStickerItem.status);
        }
        return false;
    }

    @Nullable
    public final String getStatus() {
        return this.status;
    }

    @Nullable
    public final UserId getUserId() {
        return this.userId;
    }

    public int hashCode() {
        UserId userId = this.userId;
        int hashCode = (userId == null ? 0 : userId.hashCode()) * 31;
        String str = this.status;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        UserId userId = this.userId;
        String str = this.status;
        return "SecureGiveEventStickerItem(userId=" + userId + ", status=" + str + ")";
    }

    public /* synthetic */ SecureGiveEventStickerItem(UserId userId, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : userId, (i9 & 2) != 0 ? null : str);
    }
}
