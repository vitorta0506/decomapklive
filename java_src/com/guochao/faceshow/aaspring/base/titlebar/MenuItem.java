package com.guochao.faceshow.aaspring.base.titlebar;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u000bHÖ\u0001R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\u0004R\u001a\u0010\u0013\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\u0004¨\u0006\u001d"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;", "", "id", "", "(I)V", "iconId", "getIconId", "()I", "setIconId", "getId", "title", "", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "titleColor", "getTitleColor", "setTitleColor", "titleId", "getTitleId", "setTitleId", "component1", "copy", "equals", "", "other", "hashCode", "toString", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MenuItem {

    /* renamed from: id  reason: collision with root package name */
    private final int f16299id;
    @Nullable
    private String title;
    private int titleColor;
    private int titleId = -1;
    private int iconId = -1;

    public MenuItem(int i9) {
        this.f16299id = i9;
    }

    public static /* synthetic */ MenuItem copy$default(MenuItem menuItem, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = menuItem.f16299id;
        }
        return menuItem.copy(i9);
    }

    public final int component1() {
        return this.f16299id;
    }

    @NotNull
    public final MenuItem copy(int i9) {
        return new MenuItem(i9);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MenuItem) && this.f16299id == ((MenuItem) obj).f16299id;
    }

    public final int getIconId() {
        return this.iconId;
    }

    public final int getId() {
        return this.f16299id;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public final int getTitleColor() {
        return this.titleColor;
    }

    public final int getTitleId() {
        return this.titleId;
    }

    public int hashCode() {
        return this.f16299id;
    }

    public final void setIconId(int i9) {
        this.iconId = i9;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    public final void setTitleColor(int i9) {
        this.titleColor = i9;
    }

    public final void setTitleId(int i9) {
        this.titleId = i9;
    }

    @NotNull
    public String toString() {
        return "MenuItem(id=" + this.f16299id + ')';
    }
}
