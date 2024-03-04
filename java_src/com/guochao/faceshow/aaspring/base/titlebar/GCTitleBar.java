package com.guochao.faceshow.aaspring.base.titlebar;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.StringRes;
import androidx.core.content.res.ResourcesCompat;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.huawei.hms.push.constant.RemoteMessageConst;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001:\u0002\u0019\u001aJ\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\u0012\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\fH&J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\u0012\u0010\u000e\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H&J\u0012\u0010\u000e\u001a\u00020\u00072\b\b\u0001\u0010\u0011\u001a\u00020\fH\u0016J\u0012\u0010\u0012\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H&J\u0012\u0010\u0012\u001a\u00020\u00072\b\b\u0001\u0010\u0015\u001a\u00020\fH&J\u0012\u0010\u0016\u001a\u00020\u00072\b\b\u0001\u0010\u0017\u001a\u00020\fH&J\u0010\u0010\u0018\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u001b"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;", "", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "addMenuItem", "", "menuItem", "Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;", "findMenuItem", "id", "", "removeMenuItem", "setNavigationIcon", "drawable", "Landroid/graphics/drawable/Drawable;", RemoteMessageConst.Notification.ICON, "setTitle", "title", "", "strId", "setTitleColor", "color", "updateMenuItem", "MenuCallback", "TitleBarCallback", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface GCTitleBar {

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static void setNavigationIcon(@NotNull GCTitleBar gCTitleBar, @DrawableRes int i9) {
            if (i9 == 0) {
                gCTitleBar.setNavigationIcon((Drawable) null);
            } else {
                gCTitleBar.setNavigationIcon(ResourcesCompat.getDrawable(gCTitleBar.getContext().getResources(), i9, null));
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$MenuCallback;", "", "onMenuClicked", "", "menuItem", "Landroid/view/MenuItem;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface MenuCallback {
        void onMenuClicked(@Nullable android.view.MenuItem menuItem, @NotNull View view);
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$TitleBarCallback;", "", "onNavigationButtonClicked", "", "titleBar", "Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface TitleBarCallback {
        void onNavigationButtonClicked(@NotNull GCTitleBar gCTitleBar, @NotNull View view);
    }

    void addMenuItem(@NotNull MenuItem menuItem);

    @Nullable
    MenuItem findMenuItem(int i9);

    @NotNull
    Context getContext();

    void removeMenuItem(@NotNull MenuItem menuItem);

    void setNavigationIcon(@DrawableRes int i9);

    void setNavigationIcon(@Nullable Drawable drawable);

    void setTitle(@StringRes int i9);

    void setTitle(@Nullable CharSequence charSequence);

    void setTitleColor(@ColorInt int i9);

    void updateMenuItem(@NotNull MenuItem menuItem);
}
