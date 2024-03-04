package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001!B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\nHÆ\u0003JE\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J\t\u0010 \u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0016\u0010\b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0016\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010¨\u0006\""}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsCallbackServer;", "", "id", "", "title", "", "creatorId", "url", "secretKey", "status", "Lcom/vk/sdk/api/groups/dto/GroupsCallbackServer$Status;", "(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsCallbackServer$Status;)V", "getCreatorId", "()I", "getId", "getSecretKey", "()Ljava/lang/String;", "getStatus", "()Lcom/vk/sdk/api/groups/dto/GroupsCallbackServer$Status;", "getTitle", "getUrl", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toString", "Status", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsCallbackServer {
    @SerializedName("creator_id")
    private final int creatorId;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35827id;
    @SerializedName("secret_key")
    @NotNull
    private final String secretKey;
    @SerializedName("status")
    @NotNull
    private final Status status;
    @SerializedName("title")
    @NotNull
    private final String title;
    @SerializedName("url")
    @NotNull
    private final String url;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsCallbackServer$Status;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "UNCONFIGURED", "FAILED", "WAIT", "OK", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Status {
        UNCONFIGURED("unconfigured"),
        FAILED("failed"),
        WAIT("wait"),
        OK("ok");
        
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

    public GroupsCallbackServer(int i9, @NotNull String title, int i10, @NotNull String url, @NotNull String secretKey, @NotNull Status status) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(secretKey, "secretKey");
        Intrinsics.checkNotNullParameter(status, "status");
        this.f35827id = i9;
        this.title = title;
        this.creatorId = i10;
        this.url = url;
        this.secretKey = secretKey;
        this.status = status;
    }

    public static /* synthetic */ GroupsCallbackServer copy$default(GroupsCallbackServer groupsCallbackServer, int i9, String str, int i10, String str2, String str3, Status status, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = groupsCallbackServer.f35827id;
        }
        if ((i11 & 2) != 0) {
            str = groupsCallbackServer.title;
        }
        String str4 = str;
        if ((i11 & 4) != 0) {
            i10 = groupsCallbackServer.creatorId;
        }
        int i12 = i10;
        if ((i11 & 8) != 0) {
            str2 = groupsCallbackServer.url;
        }
        String str5 = str2;
        if ((i11 & 16) != 0) {
            str3 = groupsCallbackServer.secretKey;
        }
        String str6 = str3;
        if ((i11 & 32) != 0) {
            status = groupsCallbackServer.status;
        }
        return groupsCallbackServer.copy(i9, str4, i12, str5, str6, status);
    }

    public final int component1() {
        return this.f35827id;
    }

    @NotNull
    public final String component2() {
        return this.title;
    }

    public final int component3() {
        return this.creatorId;
    }

    @NotNull
    public final String component4() {
        return this.url;
    }

    @NotNull
    public final String component5() {
        return this.secretKey;
    }

    @NotNull
    public final Status component6() {
        return this.status;
    }

    @NotNull
    public final GroupsCallbackServer copy(int i9, @NotNull String title, int i10, @NotNull String url, @NotNull String secretKey, @NotNull Status status) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(secretKey, "secretKey");
        Intrinsics.checkNotNullParameter(status, "status");
        return new GroupsCallbackServer(i9, title, i10, url, secretKey, status);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsCallbackServer) {
            GroupsCallbackServer groupsCallbackServer = (GroupsCallbackServer) obj;
            return this.f35827id == groupsCallbackServer.f35827id && Intrinsics.areEqual(this.title, groupsCallbackServer.title) && this.creatorId == groupsCallbackServer.creatorId && Intrinsics.areEqual(this.url, groupsCallbackServer.url) && Intrinsics.areEqual(this.secretKey, groupsCallbackServer.secretKey) && this.status == groupsCallbackServer.status;
        }
        return false;
    }

    public final int getCreatorId() {
        return this.creatorId;
    }

    public final int getId() {
        return this.f35827id;
    }

    @NotNull
    public final String getSecretKey() {
        return this.secretKey;
    }

    @NotNull
    public final Status getStatus() {
        return this.status;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return (((((((((this.f35827id * 31) + this.title.hashCode()) * 31) + this.creatorId) * 31) + this.url.hashCode()) * 31) + this.secretKey.hashCode()) * 31) + this.status.hashCode();
    }

    @NotNull
    public String toString() {
        int i9 = this.f35827id;
        String str = this.title;
        int i10 = this.creatorId;
        String str2 = this.url;
        String str3 = this.secretKey;
        Status status = this.status;
        return "GroupsCallbackServer(id=" + i9 + ", title=" + str + ", creatorId=" + i10 + ", url=" + str2 + ", secretKey=" + str3 + ", status=" + status + ")";
    }
}
