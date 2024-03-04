package com.vk.sdk.api.apps.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.sdk.api.users.dto.UsersUserMin;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u0011\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005HÆ\u0003J5\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/vk/sdk/api/apps/dto/AppsCatalogList;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/apps/dto/AppsApp;", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUserMin;", "(ILjava/util/List;Ljava/util/List;)V", "getCount", "()I", "getItems", "()Ljava/util/List;", "getProfiles", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AppsCatalogList {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("items")
    @NotNull
    private final List<AppsApp> items;
    @SerializedName("profiles")
    @Nullable
    private final List<UsersUserMin> profiles;

    public AppsCatalogList(int i9, @NotNull List<AppsApp> items, @Nullable List<UsersUserMin> list) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.count = i9;
        this.items = items;
        this.profiles = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AppsCatalogList copy$default(AppsCatalogList appsCatalogList, int i9, List list, List list2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = appsCatalogList.count;
        }
        if ((i10 & 2) != 0) {
            list = appsCatalogList.items;
        }
        if ((i10 & 4) != 0) {
            list2 = appsCatalogList.profiles;
        }
        return appsCatalogList.copy(i9, list, list2);
    }

    public final int component1() {
        return this.count;
    }

    @NotNull
    public final List<AppsApp> component2() {
        return this.items;
    }

    @Nullable
    public final List<UsersUserMin> component3() {
        return this.profiles;
    }

    @NotNull
    public final AppsCatalogList copy(int i9, @NotNull List<AppsApp> items, @Nullable List<UsersUserMin> list) {
        Intrinsics.checkNotNullParameter(items, "items");
        return new AppsCatalogList(i9, items, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AppsCatalogList) {
            AppsCatalogList appsCatalogList = (AppsCatalogList) obj;
            return this.count == appsCatalogList.count && Intrinsics.areEqual(this.items, appsCatalogList.items) && Intrinsics.areEqual(this.profiles, appsCatalogList.profiles);
        }
        return false;
    }

    public final int getCount() {
        return this.count;
    }

    @NotNull
    public final List<AppsApp> getItems() {
        return this.items;
    }

    @Nullable
    public final List<UsersUserMin> getProfiles() {
        return this.profiles;
    }

    public int hashCode() {
        int hashCode = ((this.count * 31) + this.items.hashCode()) * 31;
        List<UsersUserMin> list = this.profiles;
        return hashCode + (list == null ? 0 : list.hashCode());
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        List<AppsApp> list = this.items;
        List<UsersUserMin> list2 = this.profiles;
        return "AppsCatalogList(count=" + i9 + ", items=" + list + ", profiles=" + list2 + ")";
    }

    public /* synthetic */ AppsCatalogList(int i9, List list, List list2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, list, (i10 & 4) != 0 ? null : list2);
    }
}
