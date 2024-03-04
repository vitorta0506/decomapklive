package com.guochao.faceshow.aaspring.base.titlebar;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageButton;
import androidx.annotation.DrawableRes;
import androidx.appcompat.widget.Toolbar;
import com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar;
import com.guochao.faceshow.aaspring.base.titlebar.ToolbarTitleBar;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.lib_core.R$drawable;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002B3\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\rJ\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0012H\u0016J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0010\u0010 \u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0012H\u0016J\u0012\u0010!\u001a\u00020\u00142\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0012\u0010$\u001a\u00020\u00142\b\u0010%\u001a\u0004\u0018\u00010&H\u0016J\u0010\u0010$\u001a\u00020\u00142\u0006\u0010'\u001a\u00020\u0018H\u0016J\u0010\u0010(\u001a\u00020\u00142\u0006\u0010)\u001a\u00020\u0018H\u0016J\u0010\u0010*\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0012H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/titlebar/ToolbarTitleBar;", "Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;", "Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;", "context", "Landroid/content/Context;", "titleBar", "Landroid/view/View;", "titleBarCallback", "Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$TitleBarCallback;", "toolbar", "Landroidx/appcompat/widget/Toolbar;", "menuCallback", "Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$MenuCallback;", "(Landroid/content/Context;Landroid/view/View;Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$TitleBarCallback;Landroidx/appcompat/widget/Toolbar;Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$MenuCallback;)V", "getContext", "()Landroid/content/Context;", "menuList", "", "Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;", "addMenuItem", "", "menuItem", "findMenuItem", "id", "", "getLeftBackView", "Landroid/widget/ImageButton;", "toolBar", "onMenuItemClick", "", BaseConfig.ITEM, "Landroid/view/MenuItem;", "removeMenuItem", "setNavigationIcon", "drawable", "Landroid/graphics/drawable/Drawable;", "setTitle", "title", "", "strId", "setTitleColor", "color", "updateMenuItem", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ToolbarTitleBar implements GCTitleBar, Toolbar.OnMenuItemClickListener {
    @NotNull
    private final Context context;
    @Nullable
    private final GCTitleBar.MenuCallback menuCallback;
    @NotNull
    private final List<MenuItem> menuList;
    @NotNull
    private final View titleBar;
    @NotNull
    private final GCTitleBar.TitleBarCallback titleBarCallback;
    @NotNull
    private final Toolbar toolbar;

    public ToolbarTitleBar(@NotNull Context context, @NotNull View titleBar, @NotNull GCTitleBar.TitleBarCallback titleBarCallback, @NotNull Toolbar toolbar, @Nullable GCTitleBar.MenuCallback menuCallback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(titleBar, "titleBar");
        Intrinsics.checkNotNullParameter(titleBarCallback, "titleBarCallback");
        Intrinsics.checkNotNullParameter(toolbar, "toolbar");
        this.context = context;
        this.titleBar = titleBar;
        this.titleBarCallback = titleBarCallback;
        this.toolbar = toolbar;
        this.menuCallback = menuCallback;
        this.menuList = new ArrayList();
        toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: t7.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToolbarTitleBar.m338_init_$lambda0(ToolbarTitleBar.this, view);
            }
        });
        toolbar.setOnMenuItemClickListener(new Toolbar.OnMenuItemClickListener() { // from class: t7.b
            @Override // androidx.appcompat.widget.Toolbar.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                boolean m339_init_$lambda1;
                m339_init_$lambda1 = ToolbarTitleBar.m339_init_$lambda1(ToolbarTitleBar.this, menuItem);
                return m339_init_$lambda1;
            }
        });
        ImageButton leftBackView = getLeftBackView(toolbar);
        if (leftBackView != null) {
            leftBackView.setImageResource(R$drawable.icon_left_back);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-0  reason: not valid java name */
    public static final void m338_init_$lambda0(ToolbarTitleBar this$0, View it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        GCTitleBar.TitleBarCallback titleBarCallback = this$0.titleBarCallback;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        titleBarCallback.onNavigationButtonClicked(this$0, it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-1  reason: not valid java name */
    public static final boolean m339_init_$lambda1(ToolbarTitleBar this$0, android.view.MenuItem menuItem) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        GCTitleBar.MenuCallback menuCallback = this$0.menuCallback;
        if (menuCallback != null) {
            menuCallback.onMenuClicked(menuItem, this$0.toolbar);
            return false;
        }
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar
    public void addMenuItem(@NotNull MenuItem menuItem) {
        Intrinsics.checkNotNullParameter(menuItem, "menuItem");
        this.menuList.add(menuItem);
        Menu menu = this.toolbar.getMenu();
        int id2 = menuItem.getId();
        int id3 = menuItem.getId();
        String title = menuItem.getTitle();
        if (title == null) {
            if (menuItem.getTitleId() == -1) {
                title = "";
            } else {
                title = getContext().getResources().getString(menuItem.getTitleId());
                Intrinsics.checkNotNullExpressionValue(title, "context.resources.getStr…tem.titleId\n            )");
            }
        }
        android.view.MenuItem add = menu.add(1, id2, id3, title);
        add.setShowAsAction(2);
        if (menuItem.getIconId() != -1) {
            add.setIcon(menuItem.getIconId());
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar
    @Nullable
    public MenuItem findMenuItem(int i9) {
        Object obj;
        boolean z10;
        Iterator<T> it = this.menuList.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((MenuItem) obj).getId() == i9) {
                z10 = true;
                continue;
            } else {
                z10 = false;
                continue;
            }
            if (z10) {
                break;
            }
        }
        return (MenuItem) obj;
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar
    @NotNull
    public Context getContext() {
        return this.context;
    }

    @Nullable
    public final ImageButton getLeftBackView(@Nullable Toolbar toolbar) {
        try {
            Field declaredField = Toolbar.class.getDeclaredField("mNavButtonView");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(toolbar);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type android.widget.ImageButton");
            return (ImageButton) obj;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (NoSuchFieldException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    @Override // androidx.appcompat.widget.Toolbar.OnMenuItemClickListener
    public boolean onMenuItemClick(@Nullable android.view.MenuItem menuItem) {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar
    public void removeMenuItem(@NotNull MenuItem menuItem) {
        Intrinsics.checkNotNullParameter(menuItem, "menuItem");
        this.menuList.remove(menuItem);
        this.toolbar.getMenu().removeItem(menuItem.getId());
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar
    public void setNavigationIcon(@DrawableRes int i9) {
        GCTitleBar.DefaultImpls.setNavigationIcon(this, i9);
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar
    public void setTitle(@Nullable CharSequence charSequence) {
        this.toolbar.setTitle(charSequence);
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar
    public void setTitleColor(int i9) {
        this.toolbar.setTitleTextColor(i9);
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar
    public void updateMenuItem(@NotNull MenuItem menuItem) {
        Intrinsics.checkNotNullParameter(menuItem, "menuItem");
        this.menuList.set(this.menuList.indexOf(menuItem), menuItem);
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar
    public void setNavigationIcon(@Nullable Drawable drawable) {
        this.toolbar.setNavigationIcon(drawable);
    }

    @Override // com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar
    public void setTitle(int i9) {
        this.toolbar.setTitle(i9);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ ToolbarTitleBar(android.content.Context r7, android.view.View r8, com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar.TitleBarCallback r9, androidx.appcompat.widget.Toolbar r10, com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar.MenuCallback r11, int r12, kotlin.jvm.internal.DefaultConstructorMarker r13) {
        /*
            r6 = this;
            r13 = r12 & 8
            if (r13 == 0) goto L11
            int r10 = com.guochao.lib_core.R$id.gc_tool_bar
            android.view.View r10 = r8.findViewById(r10)
            java.lang.String r13 = "titleBar.findViewById(\n …   R.id.gc_tool_bar\n    )"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r13)
            androidx.appcompat.widget.Toolbar r10 = (androidx.appcompat.widget.Toolbar) r10
        L11:
            r4 = r10
            r10 = r12 & 16
            if (r10 == 0) goto L17
            r11 = 0
        L17:
            r5 = r11
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.base.titlebar.ToolbarTitleBar.<init>(android.content.Context, android.view.View, com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar$TitleBarCallback, androidx.appcompat.widget.Toolbar, com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar$MenuCallback, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
