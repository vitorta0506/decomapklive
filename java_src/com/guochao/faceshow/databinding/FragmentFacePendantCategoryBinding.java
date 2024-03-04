package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentFacePendantCategoryBinding implements ViewBinding {
    @NonNull
    public final RecyclerView content;
    @NonNull
    private final FrameLayout rootView;

    private FragmentFacePendantCategoryBinding(@NonNull FrameLayout frameLayout, @NonNull RecyclerView recyclerView) {
        this.rootView = frameLayout;
        this.content = recyclerView;
    }

    @NonNull
    public static FragmentFacePendantCategoryBinding bind(@NonNull View view) {
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.content);
        if (recyclerView != null) {
            return new FragmentFacePendantCategoryBinding((FrameLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.content)));
    }

    @NonNull
    public static FragmentFacePendantCategoryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentFacePendantCategoryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_face_pendant_category, viewGroup, false);
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
