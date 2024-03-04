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
public final class LayoutSingleRecyclerviewBinding implements ViewBinding {
    @NonNull
    public final LayoutEmptyViewBinding empty;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final FrameLayout rootView;

    private LayoutSingleRecyclerviewBinding(@NonNull FrameLayout frameLayout, @NonNull LayoutEmptyViewBinding layoutEmptyViewBinding, @NonNull RecyclerView recyclerView) {
        this.rootView = frameLayout;
        this.empty = layoutEmptyViewBinding;
        this.recyclerView = recyclerView;
    }

    @NonNull
    public static LayoutSingleRecyclerviewBinding bind(@NonNull View view) {
        int i9 = R.id.empty;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.empty);
        if (findChildViewById != null) {
            LayoutEmptyViewBinding bind = LayoutEmptyViewBinding.bind(findChildViewById);
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
            if (recyclerView != null) {
                return new LayoutSingleRecyclerviewBinding((FrameLayout) view, bind, recyclerView);
            }
            i9 = R.id.recycler_view;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutSingleRecyclerviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutSingleRecyclerviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_single_recyclerview, viewGroup, false);
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
