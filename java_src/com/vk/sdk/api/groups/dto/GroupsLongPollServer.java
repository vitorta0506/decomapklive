package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import com.meizu.cloud.pushsdk.notification.model.TimeDisplaySetting;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsLongPollServer;", "", "key", "", "server", TimeDisplaySetting.TIME_DISPLAY_SETTING, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getKey", "()Ljava/lang/String;", "getServer", "getTs", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsLongPollServer {
    @SerializedName("key")
    @NotNull
    private final String key;
    @SerializedName("server")
    @NotNull
    private final String server;
    @SerializedName(TimeDisplaySetting.TIME_DISPLAY_SETTING)
    @NotNull
    private final String ts;

    public GroupsLongPollServer(@NotNull String key, @NotNull String server, @NotNull String ts) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(server, "server");
        Intrinsics.checkNotNullParameter(ts, "ts");
        this.key = key;
        this.server = server;
        this.ts = ts;
    }

    public static /* synthetic */ GroupsLongPollServer copy$default(GroupsLongPollServer groupsLongPollServer, String str, String str2, String str3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = groupsLongPollServer.key;
        }
        if ((i9 & 2) != 0) {
            str2 = groupsLongPollServer.server;
        }
        if ((i9 & 4) != 0) {
            str3 = groupsLongPollServer.ts;
        }
        return groupsLongPollServer.copy(str, str2, str3);
    }

    @NotNull
    public final String component1() {
        return this.key;
    }

    @NotNull
    public final String component2() {
        return this.server;
    }

    @NotNull
    public final String component3() {
        return this.ts;
    }

    @NotNull
    public final GroupsLongPollServer copy(@NotNull String key, @NotNull String server, @NotNull String ts) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(server, "server");
        Intrinsics.checkNotNullParameter(ts, "ts");
        return new GroupsLongPollServer(key, server, ts);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsLongPollServer) {
            GroupsLongPollServer groupsLongPollServer = (GroupsLongPollServer) obj;
            return Intrinsics.areEqual(this.key, groupsLongPollServer.key) && Intrinsics.areEqual(this.server, groupsLongPollServer.server) && Intrinsics.areEqual(this.ts, groupsLongPollServer.ts);
        }
        return false;
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    @NotNull
    public final String getServer() {
        return this.server;
    }

    @NotNull
    public final String getTs() {
        return this.ts;
    }

    public int hashCode() {
        return (((this.key.hashCode() * 31) + this.server.hashCode()) * 31) + this.ts.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.key;
        String str2 = this.server;
        String str3 = this.ts;
        return "GroupsLongPollServer(key=" + str + ", server=" + str2 + ", ts=" + str3 + ")";
    }
}
