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
public final class LayoutPopupSelectBinding implements ViewBinding {
    @NonNull
    public final RecyclerView contentRecyclerview;
    @NonNull
    private final FrameLayout rootView;

    private LayoutPopupSelectBinding(@NonNull FrameLayout frameLayout, @NonNull RecyclerView recyclerView) {
        this.rootView = frameLayout;
        this.contentRecyclerview = recyclerView;
    }

    @NonNull
    public static LayoutPopupSelectBinding bind(@NonNull View view) {
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.content_recyclerview);
        if (recyclerView != null) {
            return new LayoutPopupSelectBinding((FrameLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.content_recyclerview)));
    }

    @NonNull
    public static LayoutPopupSelectBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutPopupSelectBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_popup_select, viewGroup, false);
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
