package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.R;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ActivityDynamicDetailBinding implements ViewBinding {
    @NonNull
    public final LinearLayout content;
    @NonNull
    private final LinearLayout rootView;

    private ActivityDynamicDetailBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.content = linearLayout2;
    }

    @NonNull
    public static ActivityDynamicDetailBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        LinearLayout linearLayout = (LinearLayout) view;
        return new ActivityDynamicDetailBinding(linearLayout, linearLayout);
    }

    @NonNull
    public static ActivityDynamicDetailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityDynamicDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_dynamic_detail, viewGroup, false);
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
