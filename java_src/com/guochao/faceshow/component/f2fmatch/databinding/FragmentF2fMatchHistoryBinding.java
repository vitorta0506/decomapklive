package com.guochao.faceshow.component.f2fmatch.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.component.f2fmatch.R$id;
import com.guochao.faceshow.component.f2fmatch.R$layout;
/* loaded from: classes2.dex */
public final class FragmentF2fMatchHistoryBinding implements ViewBinding {
    @NonNull
    public final FrameLayout content;
    @NonNull
    private final LinearLayout rootView;

    private FragmentF2fMatchHistoryBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout) {
        this.rootView = linearLayout;
        this.content = frameLayout;
    }

    @NonNull
    public static FragmentF2fMatchHistoryBinding bind(@NonNull View view) {
        int i9 = R$id.content;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i9);
        if (frameLayout != null) {
            return new FragmentF2fMatchHistoryBinding((LinearLayout) view, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentF2fMatchHistoryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentF2fMatchHistoryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_f2f_match_history, viewGroup, false);
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
