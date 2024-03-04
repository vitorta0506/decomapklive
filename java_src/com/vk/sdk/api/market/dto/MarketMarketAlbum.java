package com.vk.sdk.api.market.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.photos.dto.PhotosPhoto;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001c\b\u0086\b\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u000fJ\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010\"\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u0010#\u001a\u0004\u0018\u00010\u000eHÆ\u0003Jd\u0010$\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eHÆ\u0001¢\u0006\u0002\u0010%J\u0013\u0010&\u001a\u00020\u000b2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010(\u001a\u00020\u0003HÖ\u0001J\t\u0010)\u001a\u00020\u0007HÖ\u0001R\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u001a\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\f\u0010\u0013R\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\n\u0010\u0013R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0011¨\u0006*"}, d2 = {"Lcom/vk/sdk/api/market/dto/MarketMarketAlbum;", "", "id", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", "title", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "updatedTime", "isMain", "", "isHidden", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/String;IILjava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/photos/dto/PhotosPhoto;)V", "getCount", "()I", "getId", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPhoto", "()Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "getTitle", "()Ljava/lang/String;", "getUpdatedTime", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/String;IILjava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/photos/dto/PhotosPhoto;)Lcom/vk/sdk/api/market/dto/MarketMarketAlbum;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MarketMarketAlbum {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35891id;
    @SerializedName("is_hidden")
    @Nullable
    private final Boolean isHidden;
    @SerializedName("is_main")
    @Nullable
    private final Boolean isMain;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final PhotosPhoto photo;
    @SerializedName("title")
    @NotNull
    private final String title;
    @SerializedName("updated_time")
    private final int updatedTime;

    public MarketMarketAlbum(int i9, @NotNull UserId ownerId, @NotNull String title, int i10, int i11, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable PhotosPhoto photosPhoto) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(title, "title");
        this.f35891id = i9;
        this.ownerId = ownerId;
        this.title = title;
        this.count = i10;
        this.updatedTime = i11;
        this.isMain = bool;
        this.isHidden = bool2;
        this.photo = photosPhoto;
    }

    public final int component1() {
        return this.f35891id;
    }

    @NotNull
    public final UserId component2() {
        return this.ownerId;
    }

    @NotNull
    public final String component3() {
        return this.title;
    }

    public final int component4() {
        return this.count;
    }

    public final int component5() {
        return this.updatedTime;
    }

    @Nullable
    public final Boolean component6() {
        return this.isMain;
    }

    @Nullable
    public final Boolean component7() {
        return this.isHidden;
    }

    @Nullable
    public final PhotosPhoto component8() {
        return this.photo;
    }

    @NotNull
    public final MarketMarketAlbum copy(int i9, @NotNull UserId ownerId, @NotNull String title, int i10, int i11, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable PhotosPhoto photosPhoto) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(title, "title");
        return new MarketMarketAlbum(i9, ownerId, title, i10, i11, bool, bool2, photosPhoto);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MarketMarketAlbum) {
            MarketMarketAlbum marketMarketAlbum = (MarketMarketAlbum) obj;
            return this.f35891id == marketMarketAlbum.f35891id && Intrinsics.areEqual(this.ownerId, marketMarketAlbum.ownerId) && Intrinsics.areEqual(this.title, marketMarketAlbum.title) && this.count == marketMarketAlbum.count && this.updatedTime == marketMarketAlbum.updatedTime && Intrinsics.areEqual(this.isMain, marketMarketAlbum.isMain) && Intrinsics.areEqual(this.isHidden, marketMarketAlbum.isHidden) && Intrinsics.areEqual(this.photo, marketMarketAlbum.photo);
        }
        return false;
    }

    public final int getCount() {
        return this.count;
    }

    public final int getId() {
        return this.f35891id;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final PhotosPhoto getPhoto() {
        return this.photo;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final int getUpdatedTime() {
        return this.updatedTime;
    }

    public int hashCode() {
        int hashCode = ((((((((this.f35891id * 31) + this.ownerId.hashCode()) * 31) + this.title.hashCode()) * 31) + this.count) * 31) + this.updatedTime) * 31;
        Boolean bool = this.isMain;
        int hashCode2 = (hashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.isHidden;
        int hashCode3 = (hashCode2 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        PhotosPhoto photosPhoto = this.photo;
        return hashCode3 + (photosPhoto != null ? photosPhoto.hashCode() : 0);
    }

    @Nullable
    public final Boolean isHidden() {
        return this.isHidden;
    }

    @Nullable
    public final Boolean isMain() {
        return this.isMain;
    }

    @NotNull
    public String toString() {
        int i9 = this.f35891id;
        UserId userId = this.ownerId;
        String str = this.title;
        int i10 = this.count;
        int i11 = this.updatedTime;
        Boolean bool = this.isMain;
        Boolean bool2 = this.isHidden;
        PhotosPhoto photosPhoto = this.photo;
        return "MarketMarketAlbum(id=" + i9 + ", ownerId=" + userId + ", title=" + str + ", count=" + i10 + ", updatedTime=" + i11 + ", isMain=" + bool + ", isHidden=" + bool2 + ", photo=" + photosPhoto + ")";
    }

    public /* synthetic */ MarketMarketAlbum(int i9, UserId userId, String str, int i10, int i11, Boolean bool, Boolean bool2, PhotosPhoto photosPhoto, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, userId, str, i10, i11, (i12 & 32) != 0 ? null : bool, (i12 & 64) != 0 ? null : bool2, (i12 & 128) != 0 ? null : photosPhoto);
    }
}
