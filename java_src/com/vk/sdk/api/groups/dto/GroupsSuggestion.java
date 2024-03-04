package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001cB)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\bHÆ\u0003J3\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006\u001d"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsSuggestion;", "", "group", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "trackCode", "", "description", "reason", "Lcom/vk/sdk/api/groups/dto/GroupsSuggestion$Reason;", "(Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsSuggestion$Reason;)V", "getDescription", "()Ljava/lang/String;", "getGroup", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "getReason", "()Lcom/vk/sdk/api/groups/dto/GroupsSuggestion$Reason;", "getTrackCode", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "Reason", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsSuggestion {
    @SerializedName("description")
    @NotNull
    private final String description;
    @SerializedName("group")
    @NotNull
    private final GroupsGroupFull group;
    @SerializedName("reason")
    @Nullable
    private final Reason reason;
    @SerializedName("track_code")
    @NotNull
    private final String trackCode;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsSuggestion$Reason;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "SIMILAR", "ADS", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Reason {
        SIMILAR("similar"),
        ADS("ads");
        
        @NotNull
        private final String value;

        Reason(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public GroupsSuggestion(@NotNull GroupsGroupFull group, @NotNull String trackCode, @NotNull String description, @Nullable Reason reason) {
        Intrinsics.checkNotNullParameter(group, "group");
        Intrinsics.checkNotNullParameter(trackCode, "trackCode");
        Intrinsics.checkNotNullParameter(description, "description");
        this.group = group;
        this.trackCode = trackCode;
        this.description = description;
        this.reason = reason;
    }

    public static /* synthetic */ GroupsSuggestion copy$default(GroupsSuggestion groupsSuggestion, GroupsGroupFull groupsGroupFull, String str, String str2, Reason reason, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            groupsGroupFull = groupsSuggestion.group;
        }
        if ((i9 & 2) != 0) {
            str = groupsSuggestion.trackCode;
        }
        if ((i9 & 4) != 0) {
            str2 = groupsSuggestion.description;
        }
        if ((i9 & 8) != 0) {
            reason = groupsSuggestion.reason;
        }
        return groupsSuggestion.copy(groupsGroupFull, str, str2, reason);
    }

    @NotNull
    public final GroupsGroupFull component1() {
        return this.group;
    }

    @NotNull
    public final String component2() {
        return this.trackCode;
    }

    @NotNull
    public final String component3() {
        return this.description;
    }

    @Nullable
    public final Reason component4() {
        return this.reason;
    }

    @NotNull
    public final GroupsSuggestion copy(@NotNull GroupsGroupFull group, @NotNull String trackCode, @NotNull String description, @Nullable Reason reason) {
        Intrinsics.checkNotNullParameter(group, "group");
        Intrinsics.checkNotNullParameter(trackCode, "trackCode");
        Intrinsics.checkNotNullParameter(description, "description");
        return new GroupsSuggestion(group, trackCode, description, reason);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsSuggestion) {
            GroupsSuggestion groupsSuggestion = (GroupsSuggestion) obj;
            return Intrinsics.areEqual(this.group, groupsSuggestion.group) && Intrinsics.areEqual(this.trackCode, groupsSuggestion.trackCode) && Intrinsics.areEqual(this.description, groupsSuggestion.description) && this.reason == groupsSuggestion.reason;
        }
        return false;
    }

    @NotNull
    public final String getDescription() {
        return this.description;
    }

    @NotNull
    public final GroupsGroupFull getGroup() {
        return this.group;
    }

    @Nullable
    public final Reason getReason() {
        return this.reason;
    }

    @NotNull
    public final String getTrackCode() {
        return this.trackCode;
    }

    public int hashCode() {
        int hashCode = ((((this.group.hashCode() * 31) + this.trackCode.hashCode()) * 31) + this.description.hashCode()) * 31;
        Reason reason = this.reason;
        return hashCode + (reason == null ? 0 : reason.hashCode());
    }

    @NotNull
    public String toString() {
        GroupsGroupFull groupsGroupFull = this.group;
        String str = this.trackCode;
        String str2 = this.description;
        Reason reason = this.reason;
        return "GroupsSuggestion(group=" + groupsGroupFull + ", trackCode=" + str + ", description=" + str2 + ", reason=" + reason + ")";
    }

    public /* synthetic */ GroupsSuggestion(GroupsGroupFull groupsGroupFull, String str, String str2, Reason reason, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(groupsGroupFull, str, str2, (i9 & 8) != 0 ? null : reason);
    }
}
