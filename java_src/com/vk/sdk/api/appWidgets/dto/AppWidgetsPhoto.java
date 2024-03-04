package com.vk.sdk.api.appWidgets.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseImage;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/appWidgets/dto/AppWidgetsPhoto;", "", "id", "", "images", "", "Lcom/vk/sdk/api/base/dto/BaseImage;", "(Ljava/lang/String;Ljava/util/List;)V", "getId", "()Ljava/lang/String;", "getImages", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AppWidgetsPhoto {
    @SerializedName("id")
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final String f35724id;
    @SerializedName("images")
    @NotNull
    private final List<BaseImage> images;

    public AppWidgetsPhoto(@NotNull String id2, @NotNull List<BaseImage> images) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(images, "images");
        this.f35724id = id2;
        this.images = images;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AppWidgetsPhoto copy$default(AppWidgetsPhoto appWidgetsPhoto, String str, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = appWidgetsPhoto.f35724id;
        }
        if ((i9 & 2) != 0) {
            list = appWidgetsPhoto.images;
        }
        return appWidgetsPhoto.copy(str, list);
    }

    @NotNull
    public final String component1() {
        return this.f35724id;
    }

    @NotNull
    public final List<BaseImage> component2() {
        return this.images;
    }

    @NotNull
    public final AppWidgetsPhoto copy(@NotNull String id2, @NotNull List<BaseImage> images) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(images, "images");
        return new AppWidgetsPhoto(id2, images);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AppWidgetsPhoto) {
            AppWidgetsPhoto appWidgetsPhoto = (AppWidgetsPhoto) obj;
            return Intrinsics.areEqual(this.f35724id, appWidgetsPhoto.f35724id) && Intrinsics.areEqual(this.images, appWidgetsPhoto.images);
        }
        return false;
    }

    @NotNull
    public final String getId() {
        return this.f35724id;
    }

    @NotNull
    public final List<BaseImage> getImages() {
        return this.images;
    }

    public int hashCode() {
        return (this.f35724id.hashCode() * 31) + this.images.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.f35724id;
        List<BaseImage> list = this.images;
        return "AppWidgetsPhoto(id=" + str + ", images=" + list + ")";
    }
}
