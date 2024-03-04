package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentContanctsCircleExploreBinding implements ViewBinding {
    @NonNull
    public final TextView btnCancel;
    @NonNull
    public final TextView btnOk;
    @NonNull
    private final FrameLayout rootView;

    private FragmentContanctsCircleExploreBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.btnCancel = textView;
        this.btnOk = textView2;
    }

    @NonNull
    public static FragmentContanctsCircleExploreBinding bind(@NonNull View view) {
        int i9 = R.id.btn_cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_cancel);
        if (textView != null) {
            i9 = R.id.btn_ok;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_ok);
            if (textView2 != null) {
                return new FragmentContanctsCircleExploreBinding((FrameLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentContanctsCircleExploreBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentContanctsCircleExploreBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_contancts_circle_explore, viewGroup, false);
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
