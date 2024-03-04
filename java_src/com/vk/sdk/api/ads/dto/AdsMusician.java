package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J)\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsMusician;", "", "id", "", "name", "", "avatar", "(ILjava/lang/String;Ljava/lang/String;)V", "getAvatar", "()Ljava/lang/String;", "getId", "()I", "getName", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsMusician {
    @SerializedName("avatar")
    @Nullable
    private final String avatar;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35674id;
    @SerializedName("name")
    @NotNull
    private final String name;

    public AdsMusician(int i9, @NotNull String name, @Nullable String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f35674id = i9;
        this.name = name;
        this.avatar = str;
    }

    public static /* synthetic */ AdsMusician copy$default(AdsMusician adsMusician, int i9, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = adsMusician.f35674id;
        }
        if ((i10 & 2) != 0) {
            str = adsMusician.name;
        }
        if ((i10 & 4) != 0) {
            str2 = adsMusician.avatar;
        }
        return adsMusician.copy(i9, str, str2);
    }

    public final int component1() {
        return this.f35674id;
    }

    @NotNull
    public final String component2() {
        return this.name;
    }

    @Nullable
    public final String component3() {
        return this.avatar;
    }

    @NotNull
    public final AdsMusician copy(int i9, @NotNull String name, @Nullable String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new AdsMusician(i9, name, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsMusician) {
            AdsMusician adsMusician = (AdsMusician) obj;
            return this.f35674id == adsMusician.f35674id && Intrinsics.areEqual(this.name, adsMusician.name) && Intrinsics.areEqual(this.avatar, adsMusician.avatar);
        }
        return false;
    }

    @Nullable
    public final String getAvatar() {
        return this.avatar;
    }

    public final int getId() {
        return this.f35674id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        int hashCode = ((this.f35674id * 31) + this.name.hashCode()) * 31;
        String str = this.avatar;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        int i9 = this.f35674id;
        String str = this.name;
        String str2 = this.avatar;
        return "AdsMusician(id=" + i9 + ", name=" + str + ", avatar=" + str2 + ")";
    }

    public /* synthetic */ AdsMusician(int i9, String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, str, (i10 & 4) != 0 ? null : str2);
    }
}
