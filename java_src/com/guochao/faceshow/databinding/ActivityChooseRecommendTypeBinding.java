package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityChooseRecommendTypeBinding implements ViewBinding {
    @NonNull
    public final FragmentContainerView content;
    @NonNull
    private final LinearLayout rootView;

    private ActivityChooseRecommendTypeBinding(@NonNull LinearLayout linearLayout, @NonNull FragmentContainerView fragmentContainerView) {
        this.rootView = linearLayout;
        this.content = fragmentContainerView;
    }

    @NonNull
    public static ActivityChooseRecommendTypeBinding bind(@NonNull View view) {
        FragmentContainerView fragmentContainerView = (FragmentContainerView) ViewBindings.findChildViewById(view, R.id.content);
        if (fragmentContainerView != null) {
            return new ActivityChooseRecommendTypeBinding((LinearLayout) view, fragmentContainerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.content)));
    }

    @NonNull
    public static ActivityChooseRecommendTypeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityChooseRecommendTypeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_choose_recommend_type, viewGroup, false);
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
