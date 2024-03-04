package com.vk.sdk.api.video.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BasePropertyExists;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u0010J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0007HÆ\u0003J\t\u0010!\u001a\u00020\tHÆ\u0003J\u0011\u0010\"\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bHÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u000eHÆ\u0003Je\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÆ\u0001J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020\u0003HÖ\u0001J\t\u0010*\u001a\u00020\tHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u001e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0017R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0012¨\u0006+"}, d2 = {"Lcom/vk/sdk/api/video/dto/VideoVideoAlbumFull;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "updatedTime", "id", "ownerId", "Lcom/vk/dto/common/id/UserId;", "title", "", "image", "", "Lcom/vk/sdk/api/video/dto/VideoVideoImage;", "imageBlur", "Lcom/vk/sdk/api/base/dto/BasePropertyExists;", "isSystem", "(IIILcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Lcom/vk/sdk/api/base/dto/BasePropertyExists;)V", "getCount", "()I", "getId", "getImage", "()Ljava/util/List;", "getImageBlur", "()Lcom/vk/sdk/api/base/dto/BasePropertyExists;", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getTitle", "()Ljava/lang/String;", "getUpdatedTime", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class VideoVideoAlbumFull {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f36120id;
    @SerializedName("image")
    @Nullable
    private final List<VideoVideoImage> image;
    @SerializedName("image_blur")
    @Nullable
    private final BasePropertyExists imageBlur;
    @SerializedName("is_system")
    @Nullable
    private final BasePropertyExists isSystem;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName("title")
    @NotNull
    private final String title;
    @SerializedName("updated_time")
    private final int updatedTime;

    public VideoVideoAlbumFull(int i9, int i10, int i11, @NotNull UserId ownerId, @NotNull String title, @Nullable List<VideoVideoImage> list, @Nullable BasePropertyExists basePropertyExists, @Nullable BasePropertyExists basePropertyExists2) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(title, "title");
        this.count = i9;
        this.updatedTime = i10;
        this.f36120id = i11;
        this.ownerId = ownerId;
        this.title = title;
        this.image = list;
        this.imageBlur = basePropertyExists;
        this.isSystem = basePropertyExists2;
    }

    public final int component1() {
        return this.count;
    }

    public final int component2() {
        return this.updatedTime;
    }

    public final int component3() {
        return this.f36120id;
    }

    @NotNull
    public final UserId component4() {
        return this.ownerId;
    }

    @NotNull
    public final String component5() {
        return this.title;
    }

    @Nullable
    public final List<VideoVideoImage> component6() {
        return this.image;
    }

    @Nullable
    public final BasePropertyExists component7() {
        return this.imageBlur;
    }

    @Nullable
    public final BasePropertyExists component8() {
        return this.isSystem;
    }

    @NotNull
    public final VideoVideoAlbumFull copy(int i9, int i10, int i11, @NotNull UserId ownerId, @NotNull String title, @Nullable List<VideoVideoImage> list, @Nullable BasePropertyExists basePropertyExists, @Nullable BasePropertyExists basePropertyExists2) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(title, "title");
        return new VideoVideoAlbumFull(i9, i10, i11, ownerId, title, list, basePropertyExists, basePropertyExists2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VideoVideoAlbumFull) {
            VideoVideoAlbumFull videoVideoAlbumFull = (VideoVideoAlbumFull) obj;
            return this.count == videoVideoAlbumFull.count && this.updatedTime == videoVideoAlbumFull.updatedTime && this.f36120id == videoVideoAlbumFull.f36120id && Intrinsics.areEqual(this.ownerId, videoVideoAlbumFull.ownerId) && Intrinsics.areEqual(this.title, videoVideoAlbumFull.title) && Intrinsics.areEqual(this.image, videoVideoAlbumFull.image) && this.imageBlur == videoVideoAlbumFull.imageBlur && this.isSystem == videoVideoAlbumFull.isSystem;
        }
        return false;
    }

    public final int getCount() {
        return this.count;
    }

    public final int getId() {
        return this.f36120id;
    }

    @Nullable
    public final List<VideoVideoImage> getImage() {
        return this.image;
    }

    @Nullable
    public final BasePropertyExists getImageBlur() {
        return this.imageBlur;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final int getUpdatedTime() {
        return this.updatedTime;
    }

    public int hashCode() {
        int hashCode = ((((((((this.count * 31) + this.updatedTime) * 31) + this.f36120id) * 31) + this.ownerId.hashCode()) * 31) + this.title.hashCode()) * 31;
        List<VideoVideoImage> list = this.image;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        BasePropertyExists basePropertyExists = this.imageBlur;
        int hashCode3 = (hashCode2 + (basePropertyExists == null ? 0 : basePropertyExists.hashCode())) * 31;
        BasePropertyExists basePropertyExists2 = this.isSystem;
        return hashCode3 + (basePropertyExists2 != null ? basePropertyExists2.hashCode() : 0);
    }

    @Nullable
    public final BasePropertyExists isSystem() {
        return this.isSystem;
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        int i10 = this.updatedTime;
        int i11 = this.f36120id;
        UserId userId = this.ownerId;
        String str = this.title;
        List<VideoVideoImage> list = this.image;
        BasePropertyExists basePropertyExists = this.imageBlur;
        BasePropertyExists basePropertyExists2 = this.isSystem;
        return "VideoVideoAlbumFull(count=" + i9 + ", updatedTime=" + i10 + ", id=" + i11 + ", ownerId=" + userId + ", title=" + str + ", image=" + list + ", imageBlur=" + basePropertyExists + ", isSystem=" + basePropertyExists2 + ")";
    }

    public /* synthetic */ VideoVideoAlbumFull(int i9, int i10, int i11, UserId userId, String str, List list, BasePropertyExists basePropertyExists, BasePropertyExists basePropertyExists2, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, i11, userId, str, (i12 & 32) != 0 ? null : list, (i12 & 64) != 0 ? null : basePropertyExists, (i12 & 128) != 0 ? null : basePropertyExists2);
    }
}
