package com.vk.sdk.api.base.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J3\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u0019"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseImage;", "", "url", "", "width", "", "height", "id", "(Ljava/lang/String;IILjava/lang/String;)V", "getHeight", "()I", "getId", "()Ljava/lang/String;", "getUrl", "getWidth", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BaseImage {
    @SerializedName("height")
    private final int height;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final String f35744id;
    @SerializedName("url")
    @NotNull
    private final String url;
    @SerializedName("width")
    private final int width;

    public BaseImage(@NotNull String url, int i9, int i10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.url = url;
        this.width = i9;
        this.height = i10;
        this.f35744id = str;
    }

    public static /* synthetic */ BaseImage copy$default(BaseImage baseImage, String str, int i9, int i10, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = baseImage.url;
        }
        if ((i11 & 2) != 0) {
            i9 = baseImage.width;
        }
        if ((i11 & 4) != 0) {
            i10 = baseImage.height;
        }
        if ((i11 & 8) != 0) {
            str2 = baseImage.f35744id;
        }
        return baseImage.copy(str, i9, i10, str2);
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
    public final String component4() {
        return this.f35744id;
    }

    @NotNull
    public final BaseImage copy(@NotNull String url, int i9, int i10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(url, "url");
        return new BaseImage(url, i9, i10, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BaseImage) {
            BaseImage baseImage = (BaseImage) obj;
            return Intrinsics.areEqual(this.url, baseImage.url) && this.width == baseImage.width && this.height == baseImage.height && Intrinsics.areEqual(this.f35744id, baseImage.f35744id);
        }
        return false;
    }

    public final int getHeight() {
        return this.height;
    }

    @Nullable
    public final String getId() {
        return this.f35744id;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        int hashCode = ((((this.url.hashCode() * 31) + this.width) * 31) + this.height) * 31;
        String str = this.f35744id;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        String str = this.url;
        int i9 = this.width;
        int i10 = this.height;
        String str2 = this.f35744id;
        return "BaseImage(url=" + str + ", width=" + i9 + ", height=" + i10 + ", id=" + str2 + ")";
    }

    public /* synthetic */ BaseImage(String str, int i9, int i10, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i9, i10, (i11 & 8) != 0 ? null : str2);
    }
}
