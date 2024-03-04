package com.vk.sdk.api.groups.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0013\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\tHÆ\u0003J;\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\t2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\rR\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsGroupAttach;", "", "id", "", ViewHierarchyConstants.TEXT_KEY, "", "status", "size", "isFavorite", "", "(ILjava/lang/String;Ljava/lang/String;IZ)V", "getId", "()I", "()Z", "getSize", "getStatus", "()Ljava/lang/String;", "getText", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsGroupAttach {
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35829id;
    @SerializedName("is_favorite")
    private final boolean isFavorite;
    @SerializedName("size")
    private final int size;
    @SerializedName("status")
    @NotNull
    private final String status;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @NotNull
    private final String text;

    public GroupsGroupAttach(int i9, @NotNull String text, @NotNull String status, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(status, "status");
        this.f35829id = i9;
        this.text = text;
        this.status = status;
        this.size = i10;
        this.isFavorite = z10;
    }

    public static /* synthetic */ GroupsGroupAttach copy$default(GroupsGroupAttach groupsGroupAttach, int i9, String str, String str2, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = groupsGroupAttach.f35829id;
        }
        if ((i11 & 2) != 0) {
            str = groupsGroupAttach.text;
        }
        String str3 = str;
        if ((i11 & 4) != 0) {
            str2 = groupsGroupAttach.status;
        }
        String str4 = str2;
        if ((i11 & 8) != 0) {
            i10 = groupsGroupAttach.size;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            z10 = groupsGroupAttach.isFavorite;
        }
        return groupsGroupAttach.copy(i9, str3, str4, i12, z10);
    }

    public final int component1() {
        return this.f35829id;
    }

    @NotNull
    public final String component2() {
        return this.text;
    }

    @NotNull
    public final String component3() {
        return this.status;
    }

    public final int component4() {
        return this.size;
    }

    public final boolean component5() {
        return this.isFavorite;
    }

    @NotNull
    public final GroupsGroupAttach copy(int i9, @NotNull String text, @NotNull String status, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(status, "status");
        return new GroupsGroupAttach(i9, text, status, i10, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsGroupAttach) {
            GroupsGroupAttach groupsGroupAttach = (GroupsGroupAttach) obj;
            return this.f35829id == groupsGroupAttach.f35829id && Intrinsics.areEqual(this.text, groupsGroupAttach.text) && Intrinsics.areEqual(this.status, groupsGroupAttach.status) && this.size == groupsGroupAttach.size && this.isFavorite == groupsGroupAttach.isFavorite;
        }
        return false;
    }

    public final int getId() {
        return this.f35829id;
    }

    public final int getSize() {
        return this.size;
    }

    @NotNull
    public final String getStatus() {
        return this.status;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((this.f35829id * 31) + this.text.hashCode()) * 31) + this.status.hashCode()) * 31) + this.size) * 31;
        boolean z10 = this.isFavorite;
        int i9 = z10;
        if (z10 != 0) {
            i9 = 1;
        }
        return hashCode + i9;
    }

    public final boolean isFavorite() {
        return this.isFavorite;
    }

    @NotNull
    public String toString() {
        int i9 = this.f35829id;
        String str = this.text;
        String str2 = this.status;
        int i10 = this.size;
        boolean z10 = this.isFavorite;
        return "GroupsGroupAttach(id=" + i9 + ", text=" + str + ", status=" + str2 + ", size=" + i10 + ", isFavorite=" + z10 + ")";
    }
}
