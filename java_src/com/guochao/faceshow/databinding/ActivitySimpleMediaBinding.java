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
public final class ActivitySimpleMediaBinding implements ViewBinding {
    @NonNull
    public final FrameLayout fragmentContainer;
    @NonNull
    private final LinearLayout rootView;

    private ActivitySimpleMediaBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout) {
        this.rootView = linearLayout;
        this.fragmentContainer = frameLayout;
    }

    @NonNull
    public static ActivitySimpleMediaBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fragment_container);
        if (frameLayout != null) {
            return new ActivitySimpleMediaBinding((LinearLayout) view, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.fragment_container)));
    }

    @NonNull
    public static ActivitySimpleMediaBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivitySimpleMediaBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_simple_media, viewGroup, false);
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
