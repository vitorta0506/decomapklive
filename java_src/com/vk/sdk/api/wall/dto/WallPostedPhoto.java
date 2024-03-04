package com.vk.sdk.api.wall.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\tJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0003J>\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0007HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010¨\u0006\u001d"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallPostedPhoto;", "", "id", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", "photo130", "", "photo604", "(Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPhoto130", "()Ljava/lang/String;", "getPhoto604", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/sdk/api/wall/dto/WallPostedPhoto;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WallPostedPhoto {
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f36156id;
    @SerializedName("owner_id")
    @Nullable
    private final UserId ownerId;
    @SerializedName("photo_130")
    @Nullable
    private final String photo130;
    @SerializedName("photo_604")
    @Nullable
    private final String photo604;

    public WallPostedPhoto() {
        this(null, null, null, null, 15, null);
    }

    public WallPostedPhoto(@Nullable Integer num, @Nullable UserId userId, @Nullable String str, @Nullable String str2) {
        this.f36156id = num;
        this.ownerId = userId;
        this.photo130 = str;
        this.photo604 = str2;
    }

    public static /* synthetic */ WallPostedPhoto copy$default(WallPostedPhoto wallPostedPhoto, Integer num, UserId userId, String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = wallPostedPhoto.f36156id;
        }
        if ((i9 & 2) != 0) {
            userId = wallPostedPhoto.ownerId;
        }
        if ((i9 & 4) != 0) {
            str = wallPostedPhoto.photo130;
        }
        if ((i9 & 8) != 0) {
            str2 = wallPostedPhoto.photo604;
        }
        return wallPostedPhoto.copy(num, userId, str, str2);
    }

    @Nullable
    public final Integer component1() {
        return this.f36156id;
    }

    @Nullable
    public final UserId component2() {
        return this.ownerId;
    }

    @Nullable
    public final String component3() {
        return this.photo130;
    }

    @Nullable
    public final String component4() {
        return this.photo604;
    }

    @NotNull
    public final WallPostedPhoto copy(@Nullable Integer num, @Nullable UserId userId, @Nullable String str, @Nullable String str2) {
        return new WallPostedPhoto(num, userId, str, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WallPostedPhoto) {
            WallPostedPhoto wallPostedPhoto = (WallPostedPhoto) obj;
            return Intrinsics.areEqual(this.f36156id, wallPostedPhoto.f36156id) && Intrinsics.areEqual(this.ownerId, wallPostedPhoto.ownerId) && Intrinsics.areEqual(this.photo130, wallPostedPhoto.photo130) && Intrinsics.areEqual(this.photo604, wallPostedPhoto.photo604);
        }
        return false;
    }

    @Nullable
    public final Integer getId() {
        return this.f36156id;
    }

    @Nullable
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final String getPhoto130() {
        return this.photo130;
    }

    @Nullable
    public final String getPhoto604() {
        return this.photo604;
    }

    public int hashCode() {
        Integer num = this.f36156id;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        UserId userId = this.ownerId;
        int hashCode2 = (hashCode + (userId == null ? 0 : userId.hashCode())) * 31;
        String str = this.photo130;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.photo604;
        return hashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.f36156id;
        UserId userId = this.ownerId;
        String str = this.photo130;
        String str2 = this.photo604;
        return "WallPostedPhoto(id=" + num + ", ownerId=" + userId + ", photo130=" + str + ", photo604=" + str2 + ")";
    }

    public /* synthetic */ WallPostedPhoto(Integer num, UserId userId, String str, String str2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : userId, (i9 & 4) != 0 ? null : str, (i9 & 8) != 0 ? null : str2);
    }
}
