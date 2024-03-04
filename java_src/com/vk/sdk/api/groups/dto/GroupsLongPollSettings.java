package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0007HÆ\u0003J)\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0007HÖ\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsLongPollSettings;", "", "events", "Lcom/vk/sdk/api/groups/dto/GroupsLongPollEvents;", "isEnabled", "", "apiVersion", "", "(Lcom/vk/sdk/api/groups/dto/GroupsLongPollEvents;ZLjava/lang/String;)V", "getApiVersion", "()Ljava/lang/String;", "getEvents", "()Lcom/vk/sdk/api/groups/dto/GroupsLongPollEvents;", "()Z", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsLongPollSettings {
    @SerializedName("api_version")
    @Nullable
    private final String apiVersion;
    @SerializedName("events")
    @NotNull
    private final GroupsLongPollEvents events;
    @SerializedName("is_enabled")
    private final boolean isEnabled;

    public GroupsLongPollSettings(@NotNull GroupsLongPollEvents events, boolean z10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(events, "events");
        this.events = events;
        this.isEnabled = z10;
        this.apiVersion = str;
    }

    public static /* synthetic */ GroupsLongPollSettings copy$default(GroupsLongPollSettings groupsLongPollSettings, GroupsLongPollEvents groupsLongPollEvents, boolean z10, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            groupsLongPollEvents = groupsLongPollSettings.events;
        }
        if ((i9 & 2) != 0) {
            z10 = groupsLongPollSettings.isEnabled;
        }
        if ((i9 & 4) != 0) {
            str = groupsLongPollSettings.apiVersion;
        }
        return groupsLongPollSettings.copy(groupsLongPollEvents, z10, str);
    }

    @NotNull
    public final GroupsLongPollEvents component1() {
        return this.events;
    }

    public final boolean component2() {
        return this.isEnabled;
    }

    @Nullable
    public final String component3() {
        return this.apiVersion;
    }

    @NotNull
    public final GroupsLongPollSettings copy(@NotNull GroupsLongPollEvents events, boolean z10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(events, "events");
        return new GroupsLongPollSettings(events, z10, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsLongPollSettings) {
            GroupsLongPollSettings groupsLongPollSettings = (GroupsLongPollSettings) obj;
            return Intrinsics.areEqual(this.events, groupsLongPollSettings.events) && this.isEnabled == groupsLongPollSettings.isEnabled && Intrinsics.areEqual(this.apiVersion, groupsLongPollSettings.apiVersion);
        }
        return false;
    }

    @Nullable
    public final String getApiVersion() {
        return this.apiVersion;
    }

    @NotNull
    public final GroupsLongPollEvents getEvents() {
        return this.events;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.events.hashCode() * 31;
        boolean z10 = this.isEnabled;
        int i9 = z10;
        if (z10 != 0) {
            i9 = 1;
        }
        int i10 = (hashCode + i9) * 31;
        String str = this.apiVersion;
        return i10 + (str == null ? 0 : str.hashCode());
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    @NotNull
    public String toString() {
        GroupsLongPollEvents groupsLongPollEvents = this.events;
        boolean z10 = this.isEnabled;
        String str = this.apiVersion;
        return "GroupsLongPollSettings(events=" + groupsLongPollEvents + ", isEnabled=" + z10 + ", apiVersion=" + str + ")";
    }

    public /* synthetic */ GroupsLongPollSettings(GroupsLongPollEvents groupsLongPollEvents, boolean z10, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(groupsLongPollEvents, z10, (i9 & 4) != 0 ? null : str);
    }
}
