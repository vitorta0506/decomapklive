package com.guochao.component.mvp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.mvp.R$id;
import com.guochao.component.mvp.R$layout;
/* loaded from: classes3.dex */
public final class LayoutMvp3ProgressBinding implements ViewBinding {
    @NonNull
    public final LinearLayout bigWhitePointLay;
    @NonNull
    public final TextView mvpTV1;
    @NonNull
    public final TextView mvpTV2;
    @NonNull
    public final TextView mvpTV3;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final View selectProgress;

    private LayoutMvp3ProgressBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull View view) {
        this.rootView = frameLayout;
        this.bigWhitePointLay = linearLayout;
        this.mvpTV1 = textView;
        this.mvpTV2 = textView2;
        this.mvpTV3 = textView3;
        this.selectProgress = view;
    }

    @NonNull
    public static LayoutMvp3ProgressBinding bind(@NonNull View view) {
        View findChildViewById;
        int i9 = R$id.big_white_point_lay;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i9);
        if (linearLayout != null) {
            i9 = R$id.mvpTV1;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
            if (textView != null) {
                i9 = R$id.mvpTV2;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                if (textView2 != null) {
                    i9 = R$id.mvpTV3;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView3 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i9 = R$id.select_progress))) != null) {
                        return new LayoutMvp3ProgressBinding((FrameLayout) view, linearLayout, textView, textView2, textView3, findChildViewById);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutMvp3ProgressBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutMvp3ProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.layout_mvp3_progress, viewGroup, false);
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
