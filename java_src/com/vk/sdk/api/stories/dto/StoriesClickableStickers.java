package com.vk.sdk.api.stories.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\u000f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J-\u0010\u0011\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;", "", "clickableStickers", "", "Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker;", "originalHeight", "", "originalWidth", "(Ljava/util/List;II)V", "getClickableStickers", "()Ljava/util/List;", "getOriginalHeight", "()I", "getOriginalWidth", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StoriesClickableStickers {
    @SerializedName("clickable_stickers")
    @NotNull
    private final List<StoriesClickableSticker> clickableStickers;
    @SerializedName("original_height")
    private final int originalHeight;
    @SerializedName("original_width")
    private final int originalWidth;

    public StoriesClickableStickers(@NotNull List<StoriesClickableSticker> clickableStickers, int i9, int i10) {
        Intrinsics.checkNotNullParameter(clickableStickers, "clickableStickers");
        this.clickableStickers = clickableStickers;
        this.originalHeight = i9;
        this.originalWidth = i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ StoriesClickableStickers copy$default(StoriesClickableStickers storiesClickableStickers, List list, int i9, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = storiesClickableStickers.clickableStickers;
        }
        if ((i11 & 2) != 0) {
            i9 = storiesClickableStickers.originalHeight;
        }
        if ((i11 & 4) != 0) {
            i10 = storiesClickableStickers.originalWidth;
        }
        return storiesClickableStickers.copy(list, i9, i10);
    }

    @NotNull
    public final List<StoriesClickableSticker> component1() {
        return this.clickableStickers;
    }

    public final int component2() {
        return this.originalHeight;
    }

    public final int component3() {
        return this.originalWidth;
    }

    @NotNull
    public final StoriesClickableStickers copy(@NotNull List<StoriesClickableSticker> clickableStickers, int i9, int i10) {
        Intrinsics.checkNotNullParameter(clickableStickers, "clickableStickers");
        return new StoriesClickableStickers(clickableStickers, i9, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StoriesClickableStickers) {
            StoriesClickableStickers storiesClickableStickers = (StoriesClickableStickers) obj;
            return Intrinsics.areEqual(this.clickableStickers, storiesClickableStickers.clickableStickers) && this.originalHeight == storiesClickableStickers.originalHeight && this.originalWidth == storiesClickableStickers.originalWidth;
        }
        return false;
    }

    @NotNull
    public final List<StoriesClickableSticker> getClickableStickers() {
        return this.clickableStickers;
    }

    public final int getOriginalHeight() {
        return this.originalHeight;
    }

    public final int getOriginalWidth() {
        return this.originalWidth;
    }

    public int hashCode() {
        return (((this.clickableStickers.hashCode() * 31) + this.originalHeight) * 31) + this.originalWidth;
    }

    @NotNull
    public String toString() {
        List<StoriesClickableSticker> list = this.clickableStickers;
        int i9 = this.originalHeight;
        int i10 = this.originalWidth;
        return "StoriesClickableStickers(clickableStickers=" + list + ", originalHeight=" + i9 + ", originalWidth=" + i10 + ")";
    }
}
