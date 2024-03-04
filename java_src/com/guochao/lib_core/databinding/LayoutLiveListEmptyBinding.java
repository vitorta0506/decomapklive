package com.guochao.lib_core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.guochao.lib_core.R$layout;
import java.util.Objects;
/* loaded from: classes4.dex */
public final class LayoutLiveListEmptyBinding implements ViewBinding {
    @NonNull
    public final LinearLayout emptyView;
    @NonNull
    private final LinearLayout rootView;

    private LayoutLiveListEmptyBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.emptyView = linearLayout2;
    }

    @NonNull
    public static LayoutLiveListEmptyBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        LinearLayout linearLayout = (LinearLayout) view;
        return new LayoutLiveListEmptyBinding(linearLayout, linearLayout);
    }

    @NonNull
    public static LayoutLiveListEmptyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutLiveListEmptyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.layout_live_list_empty, viewGroup, false);
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
