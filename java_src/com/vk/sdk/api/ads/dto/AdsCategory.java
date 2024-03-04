package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u0011\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0007HÆ\u0003J/\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsCategory;", "", "id", "", "name", "", "subcategories", "", "(ILjava/lang/String;Ljava/util/List;)V", "getId", "()I", "getName", "()Ljava/lang/String;", "getSubcategories", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsCategory {
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35665id;
    @SerializedName("name")
    @NotNull
    private final String name;
    @SerializedName("subcategories")
    @Nullable
    private final List<AdsCategory> subcategories;

    public AdsCategory(int i9, @NotNull String name, @Nullable List<AdsCategory> list) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f35665id = i9;
        this.name = name;
        this.subcategories = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AdsCategory copy$default(AdsCategory adsCategory, int i9, String str, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = adsCategory.f35665id;
        }
        if ((i10 & 2) != 0) {
            str = adsCategory.name;
        }
        if ((i10 & 4) != 0) {
            list = adsCategory.subcategories;
        }
        return adsCategory.copy(i9, str, list);
    }

    public final int component1() {
        return this.f35665id;
    }

    @NotNull
    public final String component2() {
        return this.name;
    }

    @Nullable
    public final List<AdsCategory> component3() {
        return this.subcategories;
    }

    @NotNull
    public final AdsCategory copy(int i9, @NotNull String name, @Nullable List<AdsCategory> list) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new AdsCategory(i9, name, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsCategory) {
            AdsCategory adsCategory = (AdsCategory) obj;
            return this.f35665id == adsCategory.f35665id && Intrinsics.areEqual(this.name, adsCategory.name) && Intrinsics.areEqual(this.subcategories, adsCategory.subcategories);
        }
        return false;
    }

    public final int getId() {
        return this.f35665id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final List<AdsCategory> getSubcategories() {
        return this.subcategories;
    }

    public int hashCode() {
        int hashCode = ((this.f35665id * 31) + this.name.hashCode()) * 31;
        List<AdsCategory> list = this.subcategories;
        return hashCode + (list == null ? 0 : list.hashCode());
    }

    @NotNull
    public String toString() {
        int i9 = this.f35665id;
        String str = this.name;
        List<AdsCategory> list = this.subcategories;
        return "AdsCategory(id=" + i9 + ", name=" + str + ", subcategories=" + list + ")";
    }

    public /* synthetic */ AdsCategory(int i9, String str, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, str, (i10 & 4) != 0 ? null : list);
    }
}
