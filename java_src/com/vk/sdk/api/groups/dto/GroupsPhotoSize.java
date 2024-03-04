package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsPhotoSize;", "", "height", "", "width", "(II)V", "getHeight", "()I", "getWidth", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsPhotoSize {
    @SerializedName("height")
    private final int height;
    @SerializedName("width")
    private final int width;

    public GroupsPhotoSize(int i9, int i10) {
        this.height = i9;
        this.width = i10;
    }

    public static /* synthetic */ GroupsPhotoSize copy$default(GroupsPhotoSize groupsPhotoSize, int i9, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = groupsPhotoSize.height;
        }
        if ((i11 & 2) != 0) {
            i10 = groupsPhotoSize.width;
        }
        return groupsPhotoSize.copy(i9, i10);
    }

    public final int component1() {
        return this.height;
    }

    public final int component2() {
        return this.width;
    }

    @NotNull
    public final GroupsPhotoSize copy(int i9, int i10) {
        return new GroupsPhotoSize(i9, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsPhotoSize) {
            GroupsPhotoSize groupsPhotoSize = (GroupsPhotoSize) obj;
            return this.height == groupsPhotoSize.height && this.width == groupsPhotoSize.width;
        }
        return false;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return (this.height * 31) + this.width;
    }

    @NotNull
    public String toString() {
        int i9 = this.height;
        int i10 = this.width;
        return "GroupsPhotoSize(height=" + i9 + ", width=" + i10 + ")";
    }
}
