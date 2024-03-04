package com.guochao.faceshow.aaspring.base.titlebar;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.annotation.DrawableRes;
import com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u000f\u001a\u00020\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0012\u001a\u00020\b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0010\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\rH\u0016J\u0010\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\rH\u0016J\u0010\u0010\u0018\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0019"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/titlebar/EmptyTitleBar;", "Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "addMenuItem", "", "menuItem", "Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;", "findMenuItem", "id", "", "removeMenuItem", "setNavigationIcon", "drawable", "Landroid/graphics/drawable/Drawable;", "setTitle", "title", "", "strId", "setTitleColor", "color", "updateMenuItem", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class EmptyTitleBar implements GCTitleBar {
    @NotNull
    private final Context context;

    public EmptyTitleBar(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar
    public void addMenuItem(@NotNull MenuItem menuItem) {
        Intrinsics.checkNotNullParameter(menuItem, "menuItem");
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar
    @Nullable
    public MenuItem findMenuItem(int i9) {
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar
    @NotNull
    public Context getContext() {
        return this.context;
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar
    public void removeMenuItem(@NotNull MenuItem menuItem) {
        Intrinsics.checkNotNullParameter(menuItem, "menuItem");
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar
    public void setNavigationIcon(@DrawableRes int i9) {
        GCTitleBar.DefaultImpls.setNavigationIcon(this, i9);
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar
    public void setNavigationIcon(@Nullable Drawable drawable) {
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar
    public void setTitle(int i9) {
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar
    public void setTitle(@Nullable CharSequence charSequence) {
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar
    public void setTitleColor(int i9) {
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar
    public void updateMenuItem(@NotNull MenuItem menuItem) {
        Intrinsics.checkNotNullParameter(menuItem, "menuItem");
    }
}
