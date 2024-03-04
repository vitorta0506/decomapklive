package com.vk.sdk.api.docs.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u0011\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u001b\u0010\t\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/vk/sdk/api/docs/dto/DocsDocPreviewPhoto;", "", "sizes", "", "Lcom/vk/sdk/api/docs/dto/DocsDocPreviewPhotoSizes;", "(Ljava/util/List;)V", "getSizes", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DocsDocPreviewPhoto {
    @SerializedName("sizes")
    @Nullable
    private final List<DocsDocPreviewPhotoSizes> sizes;

    public DocsDocPreviewPhoto() {
        this(null, 1, null);
    }

    public DocsDocPreviewPhoto(@Nullable List<DocsDocPreviewPhotoSizes> list) {
        this.sizes = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DocsDocPreviewPhoto copy$default(DocsDocPreviewPhoto docsDocPreviewPhoto, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = docsDocPreviewPhoto.sizes;
        }
        return docsDocPreviewPhoto.copy(list);
    }

    @Nullable
    public final List<DocsDocPreviewPhotoSizes> component1() {
        return this.sizes;
    }

    @NotNull
    public final DocsDocPreviewPhoto copy(@Nullable List<DocsDocPreviewPhotoSizes> list) {
        return new DocsDocPreviewPhoto(list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DocsDocPreviewPhoto) && Intrinsics.areEqual(this.sizes, ((DocsDocPreviewPhoto) obj).sizes);
    }

    @Nullable
    public final List<DocsDocPreviewPhotoSizes> getSizes() {
        return this.sizes;
    }

    public int hashCode() {
        List<DocsDocPreviewPhotoSizes> list = this.sizes;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    @NotNull
    public String toString() {
        List<DocsDocPreviewPhotoSizes> list = this.sizes;
        return "DocsDocPreviewPhoto(sizes=" + list + ")";
    }

    public /* synthetic */ DocsDocPreviewPhoto(List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list);
    }
}
