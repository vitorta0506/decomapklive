package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0014B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsSettingsTwitter;", "", "status", "Lcom/vk/sdk/api/groups/dto/GroupsSettingsTwitter$Status;", "name", "", "(Lcom/vk/sdk/api/groups/dto/GroupsSettingsTwitter$Status;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getStatus", "()Lcom/vk/sdk/api/groups/dto/GroupsSettingsTwitter$Status;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "Status", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsSettingsTwitter {
    @SerializedName("name")
    @Nullable
    private final String name;
    @SerializedName("status")
    @NotNull
    private final Status status;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsSettingsTwitter$Status;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "LOADING", "SYNC", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Status {
        LOADING("loading"),
        SYNC("sync");
        
        @NotNull
        private final String value;

        Status(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public GroupsSettingsTwitter(@NotNull Status status, @Nullable String str) {
        Intrinsics.checkNotNullParameter(status, "status");
        this.status = status;
        this.name = str;
    }

    public static /* synthetic */ GroupsSettingsTwitter copy$default(GroupsSettingsTwitter groupsSettingsTwitter, Status status, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            status = groupsSettingsTwitter.status;
        }
        if ((i9 & 2) != 0) {
            str = groupsSettingsTwitter.name;
        }
        return groupsSettingsTwitter.copy(status, str);
    }

    @NotNull
    public final Status component1() {
        return this.status;
    }

    @Nullable
    public final String component2() {
        return this.name;
    }

    @NotNull
    public final GroupsSettingsTwitter copy(@NotNull Status status, @Nullable String str) {
        Intrinsics.checkNotNullParameter(status, "status");
        return new GroupsSettingsTwitter(status, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsSettingsTwitter) {
            GroupsSettingsTwitter groupsSettingsTwitter = (GroupsSettingsTwitter) obj;
            return this.status == groupsSettingsTwitter.status && Intrinsics.areEqual(this.name, groupsSettingsTwitter.name);
        }
        return false;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final Status getStatus() {
        return this.status;
    }

    public int hashCode() {
        int hashCode = this.status.hashCode() * 31;
        String str = this.name;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        Status status = this.status;
        String str = this.name;
        return "GroupsSettingsTwitter(status=" + status + ", name=" + str + ")";
    }

    public /* synthetic */ GroupsSettingsTwitter(Status status, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(status, (i9 & 2) != 0 ? null : str);
    }
}
