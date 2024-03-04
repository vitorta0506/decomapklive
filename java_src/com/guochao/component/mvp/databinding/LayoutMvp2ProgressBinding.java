package com.guochao.component.mvp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.mvp.R$id;
import com.guochao.component.mvp.R$layout;
/* loaded from: classes3.dex */
public final class LayoutMvp2ProgressBinding implements ViewBinding {
    @NonNull
    public final View bigWhitePointLay;
    @NonNull
    public final TextView mvpTV1;
    @NonNull
    public final TextView mvpTV2;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final View selectProgress;

    private LayoutMvp2ProgressBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull TextView textView, @NonNull TextView textView2, @NonNull View view2) {
        this.rootView = frameLayout;
        this.bigWhitePointLay = view;
        this.mvpTV1 = textView;
        this.mvpTV2 = textView2;
        this.selectProgress = view2;
    }

    @NonNull
    public static LayoutMvp2ProgressBinding bind(@NonNull View view) {
        View findChildViewById;
        int i9 = R$id.big_white_point_lay;
        View findChildViewById2 = ViewBindings.findChildViewById(view, i9);
        if (findChildViewById2 != null) {
            i9 = R$id.mvpTV1;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
            if (textView != null) {
                i9 = R$id.mvpTV2;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                if (textView2 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i9 = R$id.select_progress))) != null) {
                    return new LayoutMvp2ProgressBinding((FrameLayout) view, findChildViewById2, textView, textView2, findChildViewById);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutMvp2ProgressBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutMvp2ProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.layout_mvp2_progress, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
