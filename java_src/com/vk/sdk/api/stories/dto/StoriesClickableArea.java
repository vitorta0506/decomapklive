package com.vk.sdk.api.stories.dto;

import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/vk/sdk/api/stories/dto/StoriesClickableArea;", "", x.f19108w, "", "y", "(II)V", "getX", "()I", "getY", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StoriesClickableArea {
    @SerializedName(x.f19108w)

    /* renamed from: x  reason: collision with root package name */
    private final int f36091x;
    @SerializedName("y")

    /* renamed from: y  reason: collision with root package name */
    private final int f36092y;

    public StoriesClickableArea(int i9, int i10) {
        this.f36091x = i9;
        this.f36092y = i10;
    }

    public static /* synthetic */ StoriesClickableArea copy$default(StoriesClickableArea storiesClickableArea, int i9, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = storiesClickableArea.f36091x;
        }
        if ((i11 & 2) != 0) {
            i10 = storiesClickableArea.f36092y;
        }
        return storiesClickableArea.copy(i9, i10);
    }

    public final int component1() {
        return this.f36091x;
    }

    public final int component2() {
        return this.f36092y;
    }

    @NotNull
    public final StoriesClickableArea copy(int i9, int i10) {
        return new StoriesClickableArea(i9, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StoriesClickableArea) {
            StoriesClickableArea storiesClickableArea = (StoriesClickableArea) obj;
            return this.f36091x == storiesClickableArea.f36091x && this.f36092y == storiesClickableArea.f36092y;
        }
        return false;
    }

    public final int getX() {
        return this.f36091x;
    }

    public final int getY() {
        return this.f36092y;
    }

    public int hashCode() {
        return (this.f36091x * 31) + this.f36092y;
    }

    @NotNull
    public String toString() {
        int i9 = this.f36091x;
        int i10 = this.f36092y;
        return "StoriesClickableArea(x=" + i9 + ", y=" + i10 + ")";
    }
}
