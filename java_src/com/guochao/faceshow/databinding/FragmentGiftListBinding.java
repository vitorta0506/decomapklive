package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentGiftListBinding implements ViewBinding {
    @NonNull
    public final ImageView ivEmpty;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final FrameLayout rootView;

    private FragmentGiftListBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull RecyclerView recyclerView) {
        this.rootView = frameLayout;
        this.ivEmpty = imageView;
        this.recyclerView = recyclerView;
    }

    @NonNull
    public static FragmentGiftListBinding bind(@NonNull View view) {
        int i9 = R.id.iv_empty;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_empty);
        if (imageView != null) {
            i9 = R.id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
            if (recyclerView != null) {
                return new FragmentGiftListBinding((FrameLayout) view, imageView, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentGiftListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentGiftListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_gift_list, viewGroup, false);
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
