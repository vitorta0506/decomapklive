package com.vk.sdk.api.link.dto;

import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\nJ2\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0007HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/vk/sdk/api/link/dto/LinkTargetObject;", "", "type", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", "itemId", "", "(Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)V", "getItemId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getType", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)Lcom/vk/sdk/api/link/dto/LinkTargetObject;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class LinkTargetObject {
    @SerializedName(EventTrackingUtils.ITEM_ID)
    @Nullable
    private final Integer itemId;
    @SerializedName("owner_id")
    @Nullable
    private final UserId ownerId;
    @SerializedName("type")
    @Nullable
    private final String type;

    public LinkTargetObject() {
        this(null, null, null, 7, null);
    }

    public LinkTargetObject(@Nullable String str, @Nullable UserId userId, @Nullable Integer num) {
        this.type = str;
        this.ownerId = userId;
        this.itemId = num;
    }

    public static /* synthetic */ LinkTargetObject copy$default(LinkTargetObject linkTargetObject, String str, UserId userId, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = linkTargetObject.type;
        }
        if ((i9 & 2) != 0) {
            userId = linkTargetObject.ownerId;
        }
        if ((i9 & 4) != 0) {
            num = linkTargetObject.itemId;
        }
        return linkTargetObject.copy(str, userId, num);
    }

    @Nullable
    public final String component1() {
        return this.type;
    }

    @Nullable
    public final UserId component2() {
        return this.ownerId;
    }

    @Nullable
    public final Integer component3() {
        return this.itemId;
    }

    @NotNull
    public final LinkTargetObject copy(@Nullable String str, @Nullable UserId userId, @Nullable Integer num) {
        return new LinkTargetObject(str, userId, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LinkTargetObject) {
            LinkTargetObject linkTargetObject = (LinkTargetObject) obj;
            return Intrinsics.areEqual(this.type, linkTargetObject.type) && Intrinsics.areEqual(this.ownerId, linkTargetObject.ownerId) && Intrinsics.areEqual(this.itemId, linkTargetObject.itemId);
        }
        return false;
    }

    @Nullable
    public final Integer getItemId() {
        return this.itemId;
    }

    @Nullable
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.type;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        UserId userId = this.ownerId;
        int hashCode2 = (hashCode + (userId == null ? 0 : userId.hashCode())) * 31;
        Integer num = this.itemId;
        return hashCode2 + (num != null ? num.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.type;
        UserId userId = this.ownerId;
        Integer num = this.itemId;
        return "LinkTargetObject(type=" + str + ", ownerId=" + userId + ", itemId=" + num + ")";
    }

    public /* synthetic */ LinkTargetObject(String str, UserId userId, Integer num, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : userId, (i9 & 4) != 0 ? null : num);
    }
}
