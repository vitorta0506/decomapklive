package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityHostSearchBinding implements ViewBinding {
    @NonNull
    public final AppBarLayout appbarLayout;
    @NonNull
    public final CoordinatorLayout cdlLayout;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView title;
    @NonNull
    public final Toolbar toolbar;
    @NonNull
    public final TextView tvTips;

    private ActivityHostSearchBinding(@NonNull LinearLayout linearLayout, @NonNull AppBarLayout appBarLayout, @NonNull CoordinatorLayout coordinatorLayout, @NonNull TextView textView, @NonNull Toolbar toolbar, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.appbarLayout = appBarLayout;
        this.cdlLayout = coordinatorLayout;
        this.title = textView;
        this.toolbar = toolbar;
        this.tvTips = textView2;
    }

    @NonNull
    public static ActivityHostSearchBinding bind(@NonNull View view) {
        int i9 = R.id.appbar_layout;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.appbar_layout);
        if (appBarLayout != null) {
            i9 = R.id.cdl_layout;
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(view, R.id.cdl_layout);
            if (coordinatorLayout != null) {
                i9 = 16908310;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, 16908310);
                if (textView != null) {
                    i9 = R.id.toolbar;
                    Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                    if (toolbar != null) {
                        i9 = R.id.tv_tips;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_tips);
                        if (textView2 != null) {
                            return new ActivityHostSearchBinding((LinearLayout) view, appBarLayout, coordinatorLayout, textView, toolbar, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityHostSearchBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityHostSearchBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_host_search, viewGroup, false);
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
