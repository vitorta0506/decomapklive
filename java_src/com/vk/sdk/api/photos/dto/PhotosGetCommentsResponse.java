package com.vk.sdk.api.photos.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.sdk.api.wall.dto.WallWallComment;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0002\u0010\bJ\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0011\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J8\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\u000e\u0010\n¨\u0006\u001a"}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosGetCommentsResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "realOffset", "items", "", "Lcom/vk/sdk/api/wall/dto/WallWallComment;", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)V", "getCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getItems", "()Ljava/util/List;", "getRealOffset", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/sdk/api/photos/dto/PhotosGetCommentsResponse;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PhotosGetCommentsResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    @Nullable
    private final Integer count;
    @SerializedName("items")
    @Nullable
    private final List<WallWallComment> items;
    @SerializedName("real_offset")
    @Nullable
    private final Integer realOffset;

    public PhotosGetCommentsResponse() {
        this(null, null, null, 7, null);
    }

    public PhotosGetCommentsResponse(@Nullable Integer num, @Nullable Integer num2, @Nullable List<WallWallComment> list) {
        this.count = num;
        this.realOffset = num2;
        this.items = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PhotosGetCommentsResponse copy$default(PhotosGetCommentsResponse photosGetCommentsResponse, Integer num, Integer num2, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = photosGetCommentsResponse.count;
        }
        if ((i9 & 2) != 0) {
            num2 = photosGetCommentsResponse.realOffset;
        }
        if ((i9 & 4) != 0) {
            list = photosGetCommentsResponse.items;
        }
        return photosGetCommentsResponse.copy(num, num2, list);
    }

    @Nullable
    public final Integer component1() {
        return this.count;
    }

    @Nullable
    public final Integer component2() {
        return this.realOffset;
    }

    @Nullable
    public final List<WallWallComment> component3() {
        return this.items;
    }

    @NotNull
    public final PhotosGetCommentsResponse copy(@Nullable Integer num, @Nullable Integer num2, @Nullable List<WallWallComment> list) {
        return new PhotosGetCommentsResponse(num, num2, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PhotosGetCommentsResponse) {
            PhotosGetCommentsResponse photosGetCommentsResponse = (PhotosGetCommentsResponse) obj;
            return Intrinsics.areEqual(this.count, photosGetCommentsResponse.count) && Intrinsics.areEqual(this.realOffset, photosGetCommentsResponse.realOffset) && Intrinsics.areEqual(this.items, photosGetCommentsResponse.items);
        }
        return false;
    }

    @Nullable
    public final Integer getCount() {
        return this.count;
    }

    @Nullable
    public final List<WallWallComment> getItems() {
        return this.items;
    }

    @Nullable
    public final Integer getRealOffset() {
        return this.realOffset;
    }

    public int hashCode() {
        Integer num = this.count;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.realOffset;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        List<WallWallComment> list = this.items;
        return hashCode2 + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.count;
        Integer num2 = this.realOffset;
        List<WallWallComment> list = this.items;
        return "PhotosGetCommentsResponse(count=" + num + ", realOffset=" + num2 + ", items=" + list + ")";
    }

    public /* synthetic */ PhotosGetCommentsResponse(Integer num, Integer num2, List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : num2, (i9 & 4) != 0 ? null : list);
    }
}
