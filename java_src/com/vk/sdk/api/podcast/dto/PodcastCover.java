package com.vk.sdk.api.podcast.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.photos.dto.PhotosPhotoSizes;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u0011\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u001b\u0010\t\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/vk/sdk/api/podcast/dto/PodcastCover;", "", "sizes", "", "Lcom/vk/sdk/api/photos/dto/PhotosPhotoSizes;", "(Ljava/util/List;)V", "getSizes", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PodcastCover {
    @SerializedName("sizes")
    @Nullable
    private final List<PhotosPhotoSizes> sizes;

    public PodcastCover() {
        this(null, 1, null);
    }

    public PodcastCover(@Nullable List<PhotosPhotoSizes> list) {
        this.sizes = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PodcastCover copy$default(PodcastCover podcastCover, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = podcastCover.sizes;
        }
        return podcastCover.copy(list);
    }

    @Nullable
    public final List<PhotosPhotoSizes> component1() {
        return this.sizes;
    }

    @NotNull
    public final PodcastCover copy(@Nullable List<PhotosPhotoSizes> list) {
        return new PodcastCover(list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PodcastCover) && Intrinsics.areEqual(this.sizes, ((PodcastCover) obj).sizes);
    }

    @Nullable
    public final List<PhotosPhotoSizes> getSizes() {
        return this.sizes;
    }

    public int hashCode() {
        List<PhotosPhotoSizes> list = this.sizes;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    @NotNull
    public String toString() {
        List<PhotosPhotoSizes> list = this.sizes;
        return "PodcastCover(sizes=" + list + ")";
    }

    public /* synthetic */ PodcastCover(List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list);
    }
}
