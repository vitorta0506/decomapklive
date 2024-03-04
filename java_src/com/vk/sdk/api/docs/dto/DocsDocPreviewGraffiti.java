package com.vk.sdk.api.docs.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/vk/sdk/api/docs/dto/DocsDocPreviewGraffiti;", "", "src", "", "width", "", "height", "(Ljava/lang/String;II)V", "getHeight", "()I", "getSrc", "()Ljava/lang/String;", "getWidth", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DocsDocPreviewGraffiti {
    @SerializedName("height")
    private final int height;
    @SerializedName("src")
    @NotNull
    private final String src;
    @SerializedName("width")
    private final int width;

    public DocsDocPreviewGraffiti(@NotNull String src, int i9, int i10) {
        Intrinsics.checkNotNullParameter(src, "src");
        this.src = src;
        this.width = i9;
        this.height = i10;
    }

    public static /* synthetic */ DocsDocPreviewGraffiti copy$default(DocsDocPreviewGraffiti docsDocPreviewGraffiti, String str, int i9, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = docsDocPreviewGraffiti.src;
        }
        if ((i11 & 2) != 0) {
            i9 = docsDocPreviewGraffiti.width;
        }
        if ((i11 & 4) != 0) {
            i10 = docsDocPreviewGraffiti.height;
        }
        return docsDocPreviewGraffiti.copy(str, i9, i10);
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

    @NotNull
    public final DocsDocPreviewGraffiti copy(@NotNull String src, int i9, int i10) {
        Intrinsics.checkNotNullParameter(src, "src");
        return new DocsDocPreviewGraffiti(src, i9, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DocsDocPreviewGraffiti) {
            DocsDocPreviewGraffiti docsDocPreviewGraffiti = (DocsDocPreviewGraffiti) obj;
            return Intrinsics.areEqual(this.src, docsDocPreviewGraffiti.src) && this.width == docsDocPreviewGraffiti.width && this.height == docsDocPreviewGraffiti.height;
        }
        return false;
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
        return (((this.src.hashCode() * 31) + this.width) * 31) + this.height;
    }

    @NotNull
    public String toString() {
        String str = this.src;
        int i9 = this.width;
        int i10 = this.height;
        return "DocsDocPreviewGraffiti(src=" + str + ", width=" + i9 + ", height=" + i10 + ")";
    }
}
