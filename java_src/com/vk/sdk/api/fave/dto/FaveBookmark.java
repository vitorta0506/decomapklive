package com.vk.sdk.api.fave.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseLink;
import com.vk.sdk.api.market.dto.MarketMarketItem;
import com.vk.sdk.api.video.dto.VideoVideo;
import com.vk.sdk.api.wall.dto.WallWallpostFull;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\u0002\u0010\u0013J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0005HÆ\u0003J\u000f\u0010&\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\t\u0010'\u001a\u00020\nHÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0012HÆ\u0003Jg\u0010,\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÆ\u0001J\u0013\u0010-\u001a\u00020\u00052\b\u0010.\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010/\u001a\u00020\u0003HÖ\u0001J\t\u00100\u001a\u000201HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#¨\u00062"}, d2 = {"Lcom/vk/sdk/api/fave/dto/FaveBookmark;", "", "addedDate", "", "seen", "", "tags", "", "Lcom/vk/sdk/api/fave/dto/FaveTag;", "type", "Lcom/vk/sdk/api/fave/dto/FaveBookmarkType;", "link", "Lcom/vk/sdk/api/base/dto/BaseLink;", "post", "Lcom/vk/sdk/api/wall/dto/WallWallpostFull;", "product", "Lcom/vk/sdk/api/market/dto/MarketMarketItem;", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "Lcom/vk/sdk/api/video/dto/VideoVideo;", "(IZLjava/util/List;Lcom/vk/sdk/api/fave/dto/FaveBookmarkType;Lcom/vk/sdk/api/base/dto/BaseLink;Lcom/vk/sdk/api/wall/dto/WallWallpostFull;Lcom/vk/sdk/api/market/dto/MarketMarketItem;Lcom/vk/sdk/api/video/dto/VideoVideo;)V", "getAddedDate", "()I", "getLink", "()Lcom/vk/sdk/api/base/dto/BaseLink;", "getPost", "()Lcom/vk/sdk/api/wall/dto/WallWallpostFull;", "getProduct", "()Lcom/vk/sdk/api/market/dto/MarketMarketItem;", "getSeen", "()Z", "getTags", "()Ljava/util/List;", "getType", "()Lcom/vk/sdk/api/fave/dto/FaveBookmarkType;", "getVideo", "()Lcom/vk/sdk/api/video/dto/VideoVideo;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FaveBookmark {
    @SerializedName("added_date")
    private final int addedDate;
    @SerializedName("link")
    @Nullable
    private final BaseLink link;
    @SerializedName("post")
    @Nullable
    private final WallWallpostFull post;
    @SerializedName("product")
    @Nullable
    private final MarketMarketItem product;
    @SerializedName("seen")
    private final boolean seen;
    @SerializedName("tags")
    @NotNull
    private final List<FaveTag> tags;
    @SerializedName("type")
    @NotNull
    private final FaveBookmarkType type;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)
    @Nullable
    private final VideoVideo video;

    public FaveBookmark(int i9, boolean z10, @NotNull List<FaveTag> tags, @NotNull FaveBookmarkType type, @Nullable BaseLink baseLink, @Nullable WallWallpostFull wallWallpostFull, @Nullable MarketMarketItem marketMarketItem, @Nullable VideoVideo videoVideo) {
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(type, "type");
        this.addedDate = i9;
        this.seen = z10;
        this.tags = tags;
        this.type = type;
        this.link = baseLink;
        this.post = wallWallpostFull;
        this.product = marketMarketItem;
        this.video = videoVideo;
    }

    public final int component1() {
        return this.addedDate;
    }

    public final boolean component2() {
        return this.seen;
    }

    @NotNull
    public final List<FaveTag> component3() {
        return this.tags;
    }

    @NotNull
    public final FaveBookmarkType component4() {
        return this.type;
    }

    @Nullable
    public final BaseLink component5() {
        return this.link;
    }

    @Nullable
    public final WallWallpostFull component6() {
        return this.post;
    }

    @Nullable
    public final MarketMarketItem component7() {
        return this.product;
    }

    @Nullable
    public final VideoVideo component8() {
        return this.video;
    }

    @NotNull
    public final FaveBookmark copy(int i9, boolean z10, @NotNull List<FaveTag> tags, @NotNull FaveBookmarkType type, @Nullable BaseLink baseLink, @Nullable WallWallpostFull wallWallpostFull, @Nullable MarketMarketItem marketMarketItem, @Nullable VideoVideo videoVideo) {
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(type, "type");
        return new FaveBookmark(i9, z10, tags, type, baseLink, wallWallpostFull, marketMarketItem, videoVideo);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FaveBookmark) {
            FaveBookmark faveBookmark = (FaveBookmark) obj;
            return this.addedDate == faveBookmark.addedDate && this.seen == faveBookmark.seen && Intrinsics.areEqual(this.tags, faveBookmark.tags) && this.type == faveBookmark.type && Intrinsics.areEqual(this.link, faveBookmark.link) && Intrinsics.areEqual(this.post, faveBookmark.post) && Intrinsics.areEqual(this.product, faveBookmark.product) && Intrinsics.areEqual(this.video, faveBookmark.video);
        }
        return false;
    }

    public final int getAddedDate() {
        return this.addedDate;
    }

    @Nullable
    public final BaseLink getLink() {
        return this.link;
    }

    @Nullable
    public final WallWallpostFull getPost() {
        return this.post;
    }

    @Nullable
    public final MarketMarketItem getProduct() {
        return this.product;
    }

    public final boolean getSeen() {
        return this.seen;
    }

    @NotNull
    public final List<FaveTag> getTags() {
        return this.tags;
    }

    @NotNull
    public final FaveBookmarkType getType() {
        return this.type;
    }

    @Nullable
    public final VideoVideo getVideo() {
        return this.video;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int i9 = this.addedDate * 31;
        boolean z10 = this.seen;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        int hashCode = (((((i9 + i10) * 31) + this.tags.hashCode()) * 31) + this.type.hashCode()) * 31;
        BaseLink baseLink = this.link;
        int hashCode2 = (hashCode + (baseLink == null ? 0 : baseLink.hashCode())) * 31;
        WallWallpostFull wallWallpostFull = this.post;
        int hashCode3 = (hashCode2 + (wallWallpostFull == null ? 0 : wallWallpostFull.hashCode())) * 31;
        MarketMarketItem marketMarketItem = this.product;
        int hashCode4 = (hashCode3 + (marketMarketItem == null ? 0 : marketMarketItem.hashCode())) * 31;
        VideoVideo videoVideo = this.video;
        return hashCode4 + (videoVideo != null ? videoVideo.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.addedDate;
        boolean z10 = this.seen;
        List<FaveTag> list = this.tags;
        FaveBookmarkType faveBookmarkType = this.type;
        BaseLink baseLink = this.link;
        WallWallpostFull wallWallpostFull = this.post;
        MarketMarketItem marketMarketItem = this.product;
        VideoVideo videoVideo = this.video;
        return "FaveBookmark(addedDate=" + i9 + ", seen=" + z10 + ", tags=" + list + ", type=" + faveBookmarkType + ", link=" + baseLink + ", post=" + wallWallpostFull + ", product=" + marketMarketItem + ", video=" + videoVideo + ")";
    }

    public /* synthetic */ FaveBookmark(int i9, boolean z10, List list, FaveBookmarkType faveBookmarkType, BaseLink baseLink, WallWallpostFull wallWallpostFull, MarketMarketItem marketMarketItem, VideoVideo videoVideo, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, z10, list, faveBookmarkType, (i10 & 16) != 0 ? null : baseLink, (i10 & 32) != 0 ? null : wallWallpostFull, (i10 & 64) != 0 ? null : marketMarketItem, (i10 & 128) != 0 ? null : videoVideo);
    }
}
