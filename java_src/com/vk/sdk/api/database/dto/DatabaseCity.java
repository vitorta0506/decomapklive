package com.vk.sdk.api.database.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\tHÆ\u0003JA\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001d\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f¨\u0006\u001e"}, d2 = {"Lcom/vk/sdk/api/database/dto/DatabaseCity;", "", "id", "", "title", "", "area", "region", "important", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)V", "getArea", "()Ljava/lang/String;", "getId", "()I", "getImportant", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getRegion", "getTitle", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DatabaseCity {
    @SerializedName("area")
    @Nullable
    private final String area;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35762id;
    @SerializedName("important")
    @Nullable
    private final BaseBoolInt important;
    @SerializedName("region")
    @Nullable
    private final String region;
    @SerializedName("title")
    @NotNull
    private final String title;

    public DatabaseCity(int i9, @NotNull String title, @Nullable String str, @Nullable String str2, @Nullable BaseBoolInt baseBoolInt) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.f35762id = i9;
        this.title = title;
        this.area = str;
        this.region = str2;
        this.important = baseBoolInt;
    }

    public static /* synthetic */ DatabaseCity copy$default(DatabaseCity databaseCity, int i9, String str, String str2, String str3, BaseBoolInt baseBoolInt, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = databaseCity.f35762id;
        }
        if ((i10 & 2) != 0) {
            str = databaseCity.title;
        }
        String str4 = str;
        if ((i10 & 4) != 0) {
            str2 = databaseCity.area;
        }
        String str5 = str2;
        if ((i10 & 8) != 0) {
            str3 = databaseCity.region;
        }
        String str6 = str3;
        if ((i10 & 16) != 0) {
            baseBoolInt = databaseCity.important;
        }
        return databaseCity.copy(i9, str4, str5, str6, baseBoolInt);
    }

    public final int component1() {
        return this.f35762id;
    }

    @NotNull
    public final String component2() {
        return this.title;
    }

    @Nullable
    public final String component3() {
        return this.area;
    }

    @Nullable
    public final String component4() {
        return this.region;
    }

    @Nullable
    public final BaseBoolInt component5() {
        return this.important;
    }

    @NotNull
    public final DatabaseCity copy(int i9, @NotNull String title, @Nullable String str, @Nullable String str2, @Nullable BaseBoolInt baseBoolInt) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new DatabaseCity(i9, title, str, str2, baseBoolInt);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DatabaseCity) {
            DatabaseCity databaseCity = (DatabaseCity) obj;
            return this.f35762id == databaseCity.f35762id && Intrinsics.areEqual(this.title, databaseCity.title) && Intrinsics.areEqual(this.area, databaseCity.area) && Intrinsics.areEqual(this.region, databaseCity.region) && this.important == databaseCity.important;
        }
        return false;
    }

    @Nullable
    public final String getArea() {
        return this.area;
    }

    public final int getId() {
        return this.f35762id;
    }

    @Nullable
    public final BaseBoolInt getImportant() {
        return this.important;
    }

    @Nullable
    public final String getRegion() {
        return this.region;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int hashCode = ((this.f35762id * 31) + this.title.hashCode()) * 31;
        String str = this.area;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.region;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.important;
        return hashCode3 + (baseBoolInt != null ? baseBoolInt.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.f35762id;
        String str = this.title;
        String str2 = this.area;
        String str3 = this.region;
        BaseBoolInt baseBoolInt = this.important;
        return "DatabaseCity(id=" + i9 + ", title=" + str + ", area=" + str2 + ", region=" + str3 + ", important=" + baseBoolInt + ")";
    }

    public /* synthetic */ DatabaseCity(int i9, String str, String str2, String str3, BaseBoolInt baseBoolInt, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, str, (i10 & 4) != 0 ? null : str2, (i10 & 8) != 0 ? null : str3, (i10 & 16) != 0 ? null : baseBoolInt);
    }
}
