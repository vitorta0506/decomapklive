package com.vk.sdk.api.photos.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\bHÆ\u0003J8\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/photos/dto/PhotosPhotoFullXtrRealOffset;", "more", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "(Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)V", "getCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getItems", "()Ljava/util/List;", "getMore", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PhotosGetAllExtendedResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    @Nullable
    private final Integer count;
    @SerializedName("items")
    @Nullable
    private final List<PhotosPhotoFullXtrRealOffset> items;
    @SerializedName("more")
    @Nullable
    private final BaseBoolInt more;

    public PhotosGetAllExtendedResponse() {
        this(null, null, null, 7, null);
    }

    public PhotosGetAllExtendedResponse(@Nullable Integer num, @Nullable List<PhotosPhotoFullXtrRealOffset> list, @Nullable BaseBoolInt baseBoolInt) {
        this.count = num;
        this.items = list;
        this.more = baseBoolInt;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PhotosGetAllExtendedResponse copy$default(PhotosGetAllExtendedResponse photosGetAllExtendedResponse, Integer num, List list, BaseBoolInt baseBoolInt, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = photosGetAllExtendedResponse.count;
        }
        if ((i9 & 2) != 0) {
            list = photosGetAllExtendedResponse.items;
        }
        if ((i9 & 4) != 0) {
            baseBoolInt = photosGetAllExtendedResponse.more;
        }
        return photosGetAllExtendedResponse.copy(num, list, baseBoolInt);
    }

    @Nullable
    public final Integer component1() {
        return this.count;
    }

    @Nullable
    public final List<PhotosPhotoFullXtrRealOffset> component2() {
        return this.items;
    }

    @Nullable
    public final BaseBoolInt component3() {
        return this.more;
    }

    @NotNull
    public final PhotosGetAllExtendedResponse copy(@Nullable Integer num, @Nullable List<PhotosPhotoFullXtrRealOffset> list, @Nullable BaseBoolInt baseBoolInt) {
        return new PhotosGetAllExtendedResponse(num, list, baseBoolInt);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PhotosGetAllExtendedResponse) {
            PhotosGetAllExtendedResponse photosGetAllExtendedResponse = (PhotosGetAllExtendedResponse) obj;
            return Intrinsics.areEqual(this.count, photosGetAllExtendedResponse.count) && Intrinsics.areEqual(this.items, photosGetAllExtendedResponse.items) && this.more == photosGetAllExtendedResponse.more;
        }
        return false;
    }

    @Nullable
    public final Integer getCount() {
        return this.count;
    }

    @Nullable
    public final List<PhotosPhotoFullXtrRealOffset> getItems() {
        return this.items;
    }

    @Nullable
    public final BaseBoolInt getMore() {
        return this.more;
    }

    public int hashCode() {
        Integer num = this.count;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        List<PhotosPhotoFullXtrRealOffset> list = this.items;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.more;
        return hashCode2 + (baseBoolInt != null ? baseBoolInt.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.count;
        List<PhotosPhotoFullXtrRealOffset> list = this.items;
        BaseBoolInt baseBoolInt = this.more;
        return "PhotosGetAllExtendedResponse(count=" + num + ", items=" + list + ", more=" + baseBoolInt + ")";
    }

    public /* synthetic */ PhotosGetAllExtendedResponse(Integer num, List list, BaseBoolInt baseBoolInt, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : list, (i9 & 4) != 0 ? null : baseBoolInt);
    }
}
