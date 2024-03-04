package com.vk.sdk.api.docs.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J1\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u0019"}, d2 = {"Lcom/vk/sdk/api/docs/dto/DocsDocPreviewVideo;", "", "src", "", "width", "", "height", "fileSize", "(Ljava/lang/String;III)V", "getFileSize", "()I", "getHeight", "getSrc", "()Ljava/lang/String;", "getWidth", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DocsDocPreviewVideo {
    @SerializedName("file_size")
    private final int fileSize;
    @SerializedName("height")
    private final int height;
    @SerializedName("src")
    @NotNull
    private final String src;
    @SerializedName("width")
    private final int width;

    public DocsDocPreviewVideo(@NotNull String src, int i9, int i10, int i11) {
        Intrinsics.checkNotNullParameter(src, "src");
        this.src = src;
        this.width = i9;
        this.height = i10;
        this.fileSize = i11;
    }

    public static /* synthetic */ DocsDocPreviewVideo copy$default(DocsDocPreviewVideo docsDocPreviewVideo, String str, int i9, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = docsDocPreviewVideo.src;
        }
        if ((i12 & 2) != 0) {
            i9 = docsDocPreviewVideo.width;
        }
        if ((i12 & 4) != 0) {
            i10 = docsDocPreviewVideo.height;
        }
        if ((i12 & 8) != 0) {
            i11 = docsDocPreviewVideo.fileSize;
        }
        return docsDocPreviewVideo.copy(str, i9, i10, i11);
    }

    @NotNull
    public final String component1() {
        return this.src;
    }

    public final int component2() {
        return this.width;
    }

    public final int component3() {
        return this.height;
    }

    public final int component4() {
        return this.fileSize;
    }

    @NotNull
    public final DocsDocPreviewVideo copy(@NotNull String src, int i9, int i10, int i11) {
        Intrinsics.checkNotNullParameter(src, "src");
        return new DocsDocPreviewVideo(src, i9, i10, i11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DocsDocPreviewVideo) {
            DocsDocPreviewVideo docsDocPreviewVideo = (DocsDocPreviewVideo) obj;
            return Intrinsics.areEqual(this.src, docsDocPreviewVideo.src) && this.width == docsDocPreviewVideo.width && this.height == docsDocPreviewVideo.height && this.fileSize == docsDocPreviewVideo.fileSize;
        }
        return false;
    }

    public final int getFileSize() {
        return this.fileSize;
    }

    public final int getHeight() {
        return this.height;
    }

    @NotNull
    public final String getSrc() {
        return this.src;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return (((((this.src.hashCode() * 31) + this.width) * 31) + this.height) * 31) + this.fileSize;
    }

    @NotNull
    public String toString() {
        String str = this.src;
        int i9 = this.width;
        int i10 = this.height;
        int i11 = this.fileSize;
        return "DocsDocPreviewVideo(src=" + str + ", width=" + i9 + ", height=" + i10 + ", fileSize=" + i11 + ")";
    }
}
