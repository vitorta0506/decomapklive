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
public final class LayoutMvp1ProgressBinding implements ViewBinding {
    @NonNull
    public final TextView mvpTV;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final View selectProgress;

    private LayoutMvp1ProgressBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull View view) {
        this.rootView = frameLayout;
        this.mvpTV = textView;
        this.selectProgress = view;
    }

    @NonNull
    public static LayoutMvp1ProgressBinding bind(@NonNull View view) {
        View findChildViewById;
        int i9 = R$id.mvpTV;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
        if (textView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i9 = R$id.select_progress))) != null) {
            return new LayoutMvp1ProgressBinding((FrameLayout) view, textView, findChildViewById);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutMvp1ProgressBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutMvp1ProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.layout_mvp1_progress, viewGroup, false);
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
