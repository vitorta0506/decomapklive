package com.guochao.lib_core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.MaterialToolbar;
import com.guochao.faceshow.aaspring.views.StatusBarPlaceHolderView;
import com.guochao.lib_core.R$id;
import com.guochao.lib_core.R$layout;
/* loaded from: classes4.dex */
public final class GcBaseTitleBarBinding implements ViewBinding {
    @NonNull
    public final LinearLayout gcTitleBar;
    @NonNull
    public final MaterialToolbar gcToolBar;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final StatusBarPlaceHolderView statusBarHolder;

    private GcBaseTitleBarBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull MaterialToolbar materialToolbar, @NonNull StatusBarPlaceHolderView statusBarPlaceHolderView) {
        this.rootView = linearLayout;
        this.gcTitleBar = linearLayout2;
        this.gcToolBar = materialToolbar;
        this.statusBarHolder = statusBarPlaceHolderView;
    }

    @NonNull
    public static GcBaseTitleBarBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i9 = R$id.gc_tool_bar;
        MaterialToolbar materialToolbar = (MaterialToolbar) ViewBindings.findChildViewById(view, i9);
        if (materialToolbar != null) {
            i9 = R$id.status_bar_holder;
            StatusBarPlaceHolderView statusBarPlaceHolderView = (StatusBarPlaceHolderView) ViewBindings.findChildViewById(view, i9);
            if (statusBarPlaceHolderView != null) {
                return new GcBaseTitleBarBinding(linearLayout, linearLayout, materialToolbar, statusBarPlaceHolderView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static GcBaseTitleBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static GcBaseTitleBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.gc_base_title_bar, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
