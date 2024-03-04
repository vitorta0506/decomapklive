package com.vk.sdk.api.widgets.dto;

import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\tHÆ\u0003J>\u0010\u0018\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001e\u001a\u00020\u0007HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lcom/vk/sdk/api/widgets/dto/WidgetsCommentMedia;", "", "itemId", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", "thumbSrc", "", "type", "Lcom/vk/sdk/api/widgets/dto/WidgetsCommentMediaType;", "(Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/widgets/dto/WidgetsCommentMediaType;)V", "getItemId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getThumbSrc", "()Ljava/lang/String;", "getType", "()Lcom/vk/sdk/api/widgets/dto/WidgetsCommentMediaType;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/widgets/dto/WidgetsCommentMediaType;)Lcom/vk/sdk/api/widgets/dto/WidgetsCommentMedia;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WidgetsCommentMedia {
    @SerializedName(EventTrackingUtils.ITEM_ID)
    @Nullable
    private final Integer itemId;
    @SerializedName("owner_id")
    @Nullable
    private final UserId ownerId;
    @SerializedName("thumb_src")
    @Nullable
    private final String thumbSrc;
    @SerializedName("type")
    @Nullable
    private final WidgetsCommentMediaType type;

    public WidgetsCommentMedia() {
        this(null, null, null, null, 15, null);
    }

    public WidgetsCommentMedia(@Nullable Integer num, @Nullable UserId userId, @Nullable String str, @Nullable WidgetsCommentMediaType widgetsCommentMediaType) {
        this.itemId = num;
        this.ownerId = userId;
        this.thumbSrc = str;
        this.type = widgetsCommentMediaType;
    }

    public static /* synthetic */ WidgetsCommentMedia copy$default(WidgetsCommentMedia widgetsCommentMedia, Integer num, UserId userId, String str, WidgetsCommentMediaType widgetsCommentMediaType, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = widgetsCommentMedia.itemId;
        }
        if ((i9 & 2) != 0) {
            userId = widgetsCommentMedia.ownerId;
        }
        if ((i9 & 4) != 0) {
            str = widgetsCommentMedia.thumbSrc;
        }
        if ((i9 & 8) != 0) {
            widgetsCommentMediaType = widgetsCommentMedia.type;
        }
        return widgetsCommentMedia.copy(num, userId, str, widgetsCommentMediaType);
    }

    @Nullable
    public final Integer component1() {
        return this.itemId;
    }

    @Nullable
    public final UserId component2() {
        return this.ownerId;
    }

    @Nullable
    public final String component3() {
        return this.thumbSrc;
    }

    @Nullable
    public final WidgetsCommentMediaType component4() {
        return this.type;
    }

    @NotNull
    public final WidgetsCommentMedia copy(@Nullable Integer num, @Nullable UserId userId, @Nullable String str, @Nullable WidgetsCommentMediaType widgetsCommentMediaType) {
        return new WidgetsCommentMedia(num, userId, str, widgetsCommentMediaType);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WidgetsCommentMedia) {
            WidgetsCommentMedia widgetsCommentMedia = (WidgetsCommentMedia) obj;
            return Intrinsics.areEqual(this.itemId, widgetsCommentMedia.itemId) && Intrinsics.areEqual(this.ownerId, widgetsCommentMedia.ownerId) && Intrinsics.areEqual(this.thumbSrc, widgetsCommentMedia.thumbSrc) && this.type == widgetsCommentMedia.type;
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
    public final String getThumbSrc() {
        return this.thumbSrc;
    }

    @Nullable
    public final WidgetsCommentMediaType getType() {
        return this.type;
    }

    public int hashCode() {
        Integer num = this.itemId;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        UserId userId = this.ownerId;
        int hashCode2 = (hashCode + (userId == null ? 0 : userId.hashCode())) * 31;
        String str = this.thumbSrc;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        WidgetsCommentMediaType widgetsCommentMediaType = this.type;
        return hashCode3 + (widgetsCommentMediaType != null ? widgetsCommentMediaType.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.itemId;
        UserId userId = this.ownerId;
        String str = this.thumbSrc;
        WidgetsCommentMediaType widgetsCommentMediaType = this.type;
        return "WidgetsCommentMedia(itemId=" + num + ", ownerId=" + userId + ", thumbSrc=" + str + ", type=" + widgetsCommentMediaType + ")";
    }

    public /* synthetic */ WidgetsCommentMedia(Integer num, UserId userId, String str, WidgetsCommentMediaType widgetsCommentMediaType, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : userId, (i9 & 4) != 0 ? null : str, (i9 & 8) != 0 ? null : widgetsCommentMediaType);
    }
}
