package com.vk.sdk.api.wall.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\bJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J>\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\r¨\u0006\u001b"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallAppPost;", "", "id", "", "name", "", "photo130", "photo604", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getName", "()Ljava/lang/String;", "getPhoto130", "getPhoto604", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/sdk/api/wall/dto/WallAppPost;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WallAppPost {
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f36152id;
    @SerializedName("name")
    @Nullable
    private final String name;
    @SerializedName("photo_130")
    @Nullable
    private final String photo130;
    @SerializedName("photo_604")
    @Nullable
    private final String photo604;

    public WallAppPost() {
        this(null, null, null, null, 15, null);
    }

    public WallAppPost(@Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        this.f36152id = num;
        this.name = str;
        this.photo130 = str2;
        this.photo604 = str3;
    }

    public static /* synthetic */ WallAppPost copy$default(WallAppPost wallAppPost, Integer num, String str, String str2, String str3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = wallAppPost.f36152id;
        }
        if ((i9 & 2) != 0) {
            str = wallAppPost.name;
        }
        if ((i9 & 4) != 0) {
            str2 = wallAppPost.photo130;
        }
        if ((i9 & 8) != 0) {
            str3 = wallAppPost.photo604;
        }
        return wallAppPost.copy(num, str, str2, str3);
    }

    @Nullable
    public final Integer component1() {
        return this.f36152id;
    }

    @Nullable
    public final String component2() {
        return this.name;
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
    public final WallAppPost copy(@Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        return new WallAppPost(num, str, str2, str3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WallAppPost) {
            WallAppPost wallAppPost = (WallAppPost) obj;
            return Intrinsics.areEqual(this.f36152id, wallAppPost.f36152id) && Intrinsics.areEqual(this.name, wallAppPost.name) && Intrinsics.areEqual(this.photo130, wallAppPost.photo130) && Intrinsics.areEqual(this.photo604, wallAppPost.photo604);
        }
        return false;
    }

    @Nullable
    public final Integer getId() {
        return this.f36152id;
    }

    @Nullable
    public final String getName() {
        return this.name;
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
        Integer num = this.f36152id;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.name;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.photo130;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.photo604;
        return hashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.f36152id;
        String str = this.name;
        String str2 = this.photo130;
        String str3 = this.photo604;
        return "WallAppPost(id=" + num + ", name=" + str + ", photo130=" + str2 + ", photo604=" + str3 + ")";
    }

    public /* synthetic */ WallAppPost(Integer num, String str, String str2, String str3, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : str2, (i9 & 8) != 0 ? null : str3);
    }
}
