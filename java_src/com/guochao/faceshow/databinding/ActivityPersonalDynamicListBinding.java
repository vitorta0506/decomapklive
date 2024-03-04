package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityPersonalDynamicListBinding implements ViewBinding {
    @NonNull
    public final FrameLayout content;
    @NonNull
    private final LinearLayout rootView;

    private ActivityPersonalDynamicListBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout) {
        this.rootView = linearLayout;
        this.content = frameLayout;
    }

    @NonNull
    public static ActivityPersonalDynamicListBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.content);
        if (frameLayout != null) {
            return new ActivityPersonalDynamicListBinding((LinearLayout) view, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.content)));
    }

    @NonNull
    public static ActivityPersonalDynamicListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityPersonalDynamicListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_personal_dynamic_list, viewGroup, false);
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
