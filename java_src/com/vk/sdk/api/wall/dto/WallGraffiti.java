package com.vk.sdk.api.wall.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Be\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\rJ\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010!\u001a\u0004\u0018\u00010\u0007HÆ\u0003Jn\u0010\"\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020\u0003HÖ\u0001J\t\u0010(\u001a\u00020\u0007HÖ\u0001R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0013\u0010\u0011R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000fR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000fR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u000fR\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0019\u0010\u0011¨\u0006)"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallGraffiti;", "", "id", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", "photo200", "", "photo586", "height", "url", "width", "accessKey", "(Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V", "getAccessKey", "()Ljava/lang/String;", "getHeight", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getId", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPhoto200", "getPhoto586", "getUrl", "getWidth", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/sdk/api/wall/dto/WallGraffiti;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WallGraffiti {
    @SerializedName("access_key")
    @Nullable
    private final String accessKey;
    @SerializedName("height")
    @Nullable
    private final Integer height;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f36154id;
    @SerializedName("owner_id")
    @Nullable
    private final UserId ownerId;
    @SerializedName("photo_200")
    @Nullable
    private final String photo200;
    @SerializedName("photo_586")
    @Nullable
    private final String photo586;
    @SerializedName("url")
    @Nullable
    private final String url;
    @SerializedName("width")
    @Nullable
    private final Integer width;

    public WallGraffiti() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    public WallGraffiti(@Nullable Integer num, @Nullable UserId userId, @Nullable String str, @Nullable String str2, @Nullable Integer num2, @Nullable String str3, @Nullable Integer num3, @Nullable String str4) {
        this.f36154id = num;
        this.ownerId = userId;
        this.photo200 = str;
        this.photo586 = str2;
        this.height = num2;
        this.url = str3;
        this.width = num3;
        this.accessKey = str4;
    }

    @Nullable
    public final Integer component1() {
        return this.f36154id;
    }

    @Nullable
    public final UserId component2() {
        return this.ownerId;
    }

    @Nullable
    public final String component3() {
        return this.photo200;
    }

    @Nullable
    public final String component4() {
        return this.photo586;
    }

    @Nullable
    public final Integer component5() {
        return this.height;
    }

    @Nullable
    public final String component6() {
        return this.url;
    }

    @Nullable
    public final Integer component7() {
        return this.width;
    }

    @Nullable
    public final String component8() {
        return this.accessKey;
    }

    @NotNull
    public final WallGraffiti copy(@Nullable Integer num, @Nullable UserId userId, @Nullable String str, @Nullable String str2, @Nullable Integer num2, @Nullable String str3, @Nullable Integer num3, @Nullable String str4) {
        return new WallGraffiti(num, userId, str, str2, num2, str3, num3, str4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WallGraffiti) {
            WallGraffiti wallGraffiti = (WallGraffiti) obj;
            return Intrinsics.areEqual(this.f36154id, wallGraffiti.f36154id) && Intrinsics.areEqual(this.ownerId, wallGraffiti.ownerId) && Intrinsics.areEqual(this.photo200, wallGraffiti.photo200) && Intrinsics.areEqual(this.photo586, wallGraffiti.photo586) && Intrinsics.areEqual(this.height, wallGraffiti.height) && Intrinsics.areEqual(this.url, wallGraffiti.url) && Intrinsics.areEqual(this.width, wallGraffiti.width) && Intrinsics.areEqual(this.accessKey, wallGraffiti.accessKey);
        }
        return false;
    }

    @Nullable
    public final String getAccessKey() {
        return this.accessKey;
    }

    @Nullable
    public final Integer getHeight() {
        return this.height;
    }

    @Nullable
    public final Integer getId() {
        return this.f36154id;
    }

    @Nullable
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final String getPhoto200() {
        return this.photo200;
    }

    @Nullable
    public final String getPhoto586() {
        return this.photo586;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    @Nullable
    public final Integer getWidth() {
        return this.width;
    }

    public int hashCode() {
        Integer num = this.f36154id;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        UserId userId = this.ownerId;
        int hashCode2 = (hashCode + (userId == null ? 0 : userId.hashCode())) * 31;
        String str = this.photo200;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.photo586;
        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num2 = this.height;
        int hashCode5 = (hashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str3 = this.url;
        int hashCode6 = (hashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num3 = this.width;
        int hashCode7 = (hashCode6 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str4 = this.accessKey;
        return hashCode7 + (str4 != null ? str4.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.f36154id;
        UserId userId = this.ownerId;
        String str = this.photo200;
        String str2 = this.photo586;
        Integer num2 = this.height;
        String str3 = this.url;
        Integer num3 = this.width;
        String str4 = this.accessKey;
        return "WallGraffiti(id=" + num + ", ownerId=" + userId + ", photo200=" + str + ", photo586=" + str2 + ", height=" + num2 + ", url=" + str3 + ", width=" + num3 + ", accessKey=" + str4 + ")";
    }

    public /* synthetic */ WallGraffiti(Integer num, UserId userId, String str, String str2, Integer num2, String str3, Integer num3, String str4, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : userId, (i9 & 4) != 0 ? null : str, (i9 & 8) != 0 ? null : str2, (i9 & 16) != 0 ? null : num2, (i9 & 32) != 0 ? null : str3, (i9 & 64) != 0 ? null : num3, (i9 & 128) == 0 ? str4 : null);
    }
}
