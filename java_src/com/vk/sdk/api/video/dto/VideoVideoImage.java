package com.vk.sdk.api.video.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BasePropertyExists;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J?\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\fR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/vk/sdk/api/video/dto/VideoVideoImage;", "", "url", "", "width", "", "height", "withPadding", "Lcom/vk/sdk/api/base/dto/BasePropertyExists;", "id", "(Ljava/lang/String;IILcom/vk/sdk/api/base/dto/BasePropertyExists;Ljava/lang/String;)V", "getHeight", "()I", "getId", "()Ljava/lang/String;", "getUrl", "getWidth", "getWithPadding", "()Lcom/vk/sdk/api/base/dto/BasePropertyExists;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class VideoVideoImage {
    @SerializedName("height")
    private final int height;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final String f36122id;
    @SerializedName("url")
    @NotNull
    private final String url;
    @SerializedName("width")
    private final int width;
    @SerializedName("with_padding")
    @Nullable
    private final BasePropertyExists withPadding;

    public VideoVideoImage(@NotNull String url, int i9, int i10, @Nullable BasePropertyExists basePropertyExists, @Nullable String str) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.url = url;
        this.width = i9;
        this.height = i10;
        this.withPadding = basePropertyExists;
        this.f36122id = str;
    }

    public static /* synthetic */ VideoVideoImage copy$default(VideoVideoImage videoVideoImage, String str, int i9, int i10, BasePropertyExists basePropertyExists, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = videoVideoImage.url;
        }
        if ((i11 & 2) != 0) {
            i9 = videoVideoImage.width;
        }
        int i12 = i9;
        if ((i11 & 4) != 0) {
            i10 = videoVideoImage.height;
        }
        int i13 = i10;
        if ((i11 & 8) != 0) {
            basePropertyExists = videoVideoImage.withPadding;
        }
        BasePropertyExists basePropertyExists2 = basePropertyExists;
        if ((i11 & 16) != 0) {
            str2 = videoVideoImage.f36122id;
        }
        return videoVideoImage.copy(str, i12, i13, basePropertyExists2, str2);
    }

    @NotNull
    public final String component1() {
        return this.url;
    }

    public final int component2() {
        return this.width;
    }

    public final int component3() {
        return this.height;
    }

    @Nullable
    public final BasePropertyExists component4() {
        return this.withPadding;
    }

    @Nullable
    public final String component5() {
        return this.f36122id;
    }

    @NotNull
    public final VideoVideoImage copy(@NotNull String url, int i9, int i10, @Nullable BasePropertyExists basePropertyExists, @Nullable String str) {
        Intrinsics.checkNotNullParameter(url, "url");
        return new VideoVideoImage(url, i9, i10, basePropertyExists, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VideoVideoImage) {
            VideoVideoImage videoVideoImage = (VideoVideoImage) obj;
            return Intrinsics.areEqual(this.url, videoVideoImage.url) && this.width == videoVideoImage.width && this.height == videoVideoImage.height && this.withPadding == videoVideoImage.withPadding && Intrinsics.areEqual(this.f36122id, videoVideoImage.f36122id);
        }
        return false;
    }

    public final int getHeight() {
        return this.height;
    }

    @Nullable
    public final String getId() {
        return this.f36122id;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public final int getWidth() {
        return this.width;
    }

    @Nullable
    public final BasePropertyExists getWithPadding() {
        return this.withPadding;
    }

    public int hashCode() {
        int hashCode = ((((this.url.hashCode() * 31) + this.width) * 31) + this.height) * 31;
        BasePropertyExists basePropertyExists = this.withPadding;
        int hashCode2 = (hashCode + (basePropertyExists == null ? 0 : basePropertyExists.hashCode())) * 31;
        String str = this.f36122id;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.url;
        int i9 = this.width;
        int i10 = this.height;
        BasePropertyExists basePropertyExists = this.withPadding;
        String str2 = this.f36122id;
        return "VideoVideoImage(url=" + str + ", width=" + i9 + ", height=" + i10 + ", withPadding=" + basePropertyExists + ", id=" + str2 + ")";
    }

    public /* synthetic */ VideoVideoImage(String str, int i9, int i10, BasePropertyExists basePropertyExists, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i9, i10, (i11 & 8) != 0 ? null : basePropertyExists, (i11 & 16) != 0 ? null : str2);
    }
}
