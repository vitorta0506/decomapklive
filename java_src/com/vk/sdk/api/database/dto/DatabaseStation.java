package com.vk.sdk.api.database.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\bJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J:\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\r¨\u0006\u001c"}, d2 = {"Lcom/vk/sdk/api/database/dto/DatabaseStation;", "", "id", "", "name", "", "cityId", "color", "(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V", "getCityId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getColor", "()Ljava/lang/String;", "getId", "()I", "getName", "component1", "component2", "component3", "component4", "copy", "(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/sdk/api/database/dto/DatabaseStation;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DatabaseStation {
    @SerializedName("city_id")
    @Nullable
    private final Integer cityId;
    @SerializedName("color")
    @Nullable
    private final String color;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35767id;
    @SerializedName("name")
    @NotNull
    private final String name;

    public DatabaseStation(int i9, @NotNull String name, @Nullable Integer num, @Nullable String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f35767id = i9;
        this.name = name;
        this.cityId = num;
        this.color = str;
    }

    public static /* synthetic */ DatabaseStation copy$default(DatabaseStation databaseStation, int i9, String str, Integer num, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = databaseStation.f35767id;
        }
        if ((i10 & 2) != 0) {
            str = databaseStation.name;
        }
        if ((i10 & 4) != 0) {
            num = databaseStation.cityId;
        }
        if ((i10 & 8) != 0) {
            str2 = databaseStation.color;
        }
        return databaseStation.copy(i9, str, num, str2);
    }

    public final int component1() {
        return this.f35767id;
    }

    @NotNull
    public final String component2() {
        return this.name;
    }

    @Nullable
    public final Integer component3() {
        return this.cityId;
    }

    @Nullable
    public final String component4() {
        return this.color;
    }

    @NotNull
    public final DatabaseStation copy(int i9, @NotNull String name, @Nullable Integer num, @Nullable String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new DatabaseStation(i9, name, num, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DatabaseStation) {
            DatabaseStation databaseStation = (DatabaseStation) obj;
            return this.f35767id == databaseStation.f35767id && Intrinsics.areEqual(this.name, databaseStation.name) && Intrinsics.areEqual(this.cityId, databaseStation.cityId) && Intrinsics.areEqual(this.color, databaseStation.color);
        }
        return false;
    }

    @Nullable
    public final Integer getCityId() {
        return this.cityId;
    }

    @Nullable
    public final String getColor() {
        return this.color;
    }

    public final int getId() {
        return this.f35767id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        int hashCode = ((this.f35767id * 31) + this.name.hashCode()) * 31;
        Integer num = this.cityId;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.color;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.f35767id;
        String str = this.name;
        Integer num = this.cityId;
        String str2 = this.color;
        return "DatabaseStation(id=" + i9 + ", name=" + str + ", cityId=" + num + ", color=" + str2 + ")";
    }

    public /* synthetic */ DatabaseStation(int i9, String str, Integer num, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, str, (i10 & 4) != 0 ? null : num, (i10 & 8) != 0 ? null : str2);
    }
}
