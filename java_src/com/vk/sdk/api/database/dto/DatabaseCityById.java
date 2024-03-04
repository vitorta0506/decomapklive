package com.vk.sdk.api.database.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/vk/sdk/api/database/dto/DatabaseCityById;", "", "id", "", "title", "", "(ILjava/lang/String;)V", "getId", "()I", "getTitle", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DatabaseCityById {
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35763id;
    @SerializedName("title")
    @NotNull
    private final String title;

    public DatabaseCityById(int i9, @NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.f35763id = i9;
        this.title = title;
    }

    public static /* synthetic */ DatabaseCityById copy$default(DatabaseCityById databaseCityById, int i9, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = databaseCityById.f35763id;
        }
        if ((i10 & 2) != 0) {
            str = databaseCityById.title;
        }
        return databaseCityById.copy(i9, str);
    }

    public final int component1() {
        return this.f35763id;
    }

    @NotNull
    public final String component2() {
        return this.title;
    }

    @NotNull
    public final DatabaseCityById copy(int i9, @NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new DatabaseCityById(i9, title);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DatabaseCityById) {
            DatabaseCityById databaseCityById = (DatabaseCityById) obj;
            return this.f35763id == databaseCityById.f35763id && Intrinsics.areEqual(this.title, databaseCityById.title);
        }
        return false;
    }

    public final int getId() {
        return this.f35763id;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return (this.f35763id * 31) + this.title.hashCode();
    }

    @NotNull
    public String toString() {
        int i9 = this.f35763id;
        String str = this.title;
        return "DatabaseCityById(id=" + i9 + ", title=" + str + ")";
    }
}
