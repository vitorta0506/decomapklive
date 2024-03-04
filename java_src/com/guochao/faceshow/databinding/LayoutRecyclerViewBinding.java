package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.R;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class LayoutRecyclerViewBinding implements ViewBinding {
    @NonNull
    private final RecyclerView rootView;

    private LayoutRecyclerViewBinding(@NonNull RecyclerView recyclerView) {
        this.rootView = recyclerView;
    }

    @NonNull
    public static LayoutRecyclerViewBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new LayoutRecyclerViewBinding((RecyclerView) view);
    }

    @NonNull
    public static LayoutRecyclerViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutRecyclerViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_recycler_view, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RecyclerView getRoot() {
        return this.rootView;
    }
}
