package com.vk.sdk.api.wall.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007HÆ\u0003J3\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f¨\u0006\u001a"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallPostCopyright;", "", "link", "", "name", "type", "id", "Lcom/vk/dto/common/id/UserId;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;)V", "getId", "()Lcom/vk/dto/common/id/UserId;", "getLink", "()Ljava/lang/String;", "getName", "getType", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WallPostCopyright {
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final UserId f36155id;
    @SerializedName("link")
    @NotNull
    private final String link;
    @SerializedName("name")
    @NotNull
    private final String name;
    @SerializedName("type")
    @NotNull
    private final String type;

    public WallPostCopyright(@NotNull String link, @NotNull String name, @NotNull String type, @Nullable UserId userId) {
        Intrinsics.checkNotNullParameter(link, "link");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(type, "type");
        this.link = link;
        this.name = name;
        this.type = type;
        this.f36155id = userId;
    }

    public static /* synthetic */ WallPostCopyright copy$default(WallPostCopyright wallPostCopyright, String str, String str2, String str3, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = wallPostCopyright.link;
        }
        if ((i9 & 2) != 0) {
            str2 = wallPostCopyright.name;
        }
        if ((i9 & 4) != 0) {
            str3 = wallPostCopyright.type;
        }
        if ((i9 & 8) != 0) {
            userId = wallPostCopyright.f36155id;
        }
        return wallPostCopyright.copy(str, str2, str3, userId);
    }

    @NotNull
    public final String component1() {
        return this.link;
    }

    @NotNull
    public final String component2() {
        return this.name;
    }

    @NotNull
    public final String component3() {
        return this.type;
    }

    @Nullable
    public final UserId component4() {
        return this.f36155id;
    }

    @NotNull
    public final WallPostCopyright copy(@NotNull String link, @NotNull String name, @NotNull String type, @Nullable UserId userId) {
        Intrinsics.checkNotNullParameter(link, "link");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(type, "type");
        return new WallPostCopyright(link, name, type, userId);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WallPostCopyright) {
            WallPostCopyright wallPostCopyright = (WallPostCopyright) obj;
            return Intrinsics.areEqual(this.link, wallPostCopyright.link) && Intrinsics.areEqual(this.name, wallPostCopyright.name) && Intrinsics.areEqual(this.type, wallPostCopyright.type) && Intrinsics.areEqual(this.f36155id, wallPostCopyright.f36155id);
        }
        return false;
    }

    @Nullable
    public final UserId getId() {
        return this.f36155id;
    }

    @NotNull
    public final String getLink() {
        return this.link;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = ((((this.link.hashCode() * 31) + this.name.hashCode()) * 31) + this.type.hashCode()) * 31;
        UserId userId = this.f36155id;
        return hashCode + (userId == null ? 0 : userId.hashCode());
    }

    @NotNull
    public String toString() {
        String str = this.link;
        String str2 = this.name;
        String str3 = this.type;
        UserId userId = this.f36155id;
        return "WallPostCopyright(link=" + str + ", name=" + str2 + ", type=" + str3 + ", id=" + userId + ")";
    }

    public /* synthetic */ WallPostCopyright(String str, String str2, String str3, UserId userId, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i9 & 8) != 0 ? null : userId);
    }
}
