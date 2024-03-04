package com.guochao.pusher.beauty;

import com.huawei.hms.push.constant.RemoteMessageConst;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\nJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\bHÆ\u0003J\t\u0010\u001a\u001a\u00020\bHÆ\u0003JE\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\bHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\t\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011¨\u0006\""}, d2 = {"Lcom/guochao/pusher/beauty/FilterItem;", "", "id", "", "name", RemoteMessageConst.Notification.ICON, "url", "defaultValue", "", "currentValue", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V", "getCurrentValue", "()F", "setCurrentValue", "(F)V", "getDefaultValue", "getIcon", "()Ljava/lang/String;", "getId", "getName", "getUrl", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FilterItem {
    private float currentValue;
    private final float defaultValue;
    @NotNull
    private final String icon;
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final String f27159id;
    @NotNull
    private final String name;
    @NotNull
    private final String url;

    public FilterItem(@NotNull String id2, @NotNull String name, @NotNull String icon, @NotNull String url, float f10, float f11) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(url, "url");
        this.f27159id = id2;
        this.name = name;
        this.icon = icon;
        this.url = url;
        this.defaultValue = f10;
        this.currentValue = f11;
    }

    public static /* synthetic */ FilterItem copy$default(FilterItem filterItem, String str, String str2, String str3, String str4, float f10, float f11, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = filterItem.f27159id;
        }
        if ((i9 & 2) != 0) {
            str2 = filterItem.name;
        }
        String str5 = str2;
        if ((i9 & 4) != 0) {
            str3 = filterItem.icon;
        }
        String str6 = str3;
        if ((i9 & 8) != 0) {
            str4 = filterItem.url;
        }
        String str7 = str4;
        if ((i9 & 16) != 0) {
            f10 = filterItem.defaultValue;
        }
        float f12 = f10;
        if ((i9 & 32) != 0) {
            f11 = filterItem.currentValue;
        }
        return filterItem.copy(str, str5, str6, str7, f12, f11);
    }

    @NotNull
    public final String component1() {
        return this.f27159id;
    }

    @NotNull
    public final String component2() {
        return this.name;
    }

    @NotNull
    public final String component3() {
        return this.icon;
    }

    @NotNull
    public final String component4() {
        return this.url;
    }

    public final float component5() {
        return this.defaultValue;
    }

    public final float component6() {
        return this.currentValue;
    }

    @NotNull
    public final FilterItem copy(@NotNull String id2, @NotNull String name, @NotNull String icon, @NotNull String url, float f10, float f11) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(url, "url");
        return new FilterItem(id2, name, icon, url, f10, f11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FilterItem) {
            FilterItem filterItem = (FilterItem) obj;
            return Intrinsics.areEqual(this.f27159id, filterItem.f27159id) && Intrinsics.areEqual(this.name, filterItem.name) && Intrinsics.areEqual(this.icon, filterItem.icon) && Intrinsics.areEqual(this.url, filterItem.url) && Intrinsics.areEqual((Object) Float.valueOf(this.defaultValue), (Object) Float.valueOf(filterItem.defaultValue)) && Intrinsics.areEqual((Object) Float.valueOf(this.currentValue), (Object) Float.valueOf(filterItem.currentValue));
        }
        return false;
    }

    public final float getCurrentValue() {
        return this.currentValue;
    }

    public final float getDefaultValue() {
        return this.defaultValue;
    }

    @NotNull
    public final String getIcon() {
        return this.icon;
    }

    @NotNull
    public final String getId() {
        return this.f27159id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return (((((((((this.f27159id.hashCode() * 31) + this.name.hashCode()) * 31) + this.icon.hashCode()) * 31) + this.url.hashCode()) * 31) + Float.floatToIntBits(this.defaultValue)) * 31) + Float.floatToIntBits(this.currentValue);
    }

    public final void setCurrentValue(float f10) {
        this.currentValue = f10;
    }

    @NotNull
    public String toString() {
        return "FilterItem(id=" + this.f27159id + ", name=" + this.name + ", icon=" + this.icon + ", url=" + this.url + ", defaultValue=" + this.defaultValue + ", currentValue=" + this.currentValue + ')';
    }

    public /* synthetic */ FilterItem(String str, String str2, String str3, String str4, float f10, float f11, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, f10, (i9 & 32) != 0 ? f10 : f11);
    }
}
