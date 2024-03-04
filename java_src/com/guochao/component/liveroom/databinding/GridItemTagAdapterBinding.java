package com.guochao.component.liveroom.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
/* loaded from: classes3.dex */
public final class GridItemTagAdapterBinding implements ViewBinding {
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView text;

    private GridItemTagAdapterBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.text = textView;
    }

    @NonNull
    public static GridItemTagAdapterBinding bind(@NonNull View view) {
        int i9 = R$id.text;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
        if (textView != null) {
            return new GridItemTagAdapterBinding((FrameLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static GridItemTagAdapterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static GridItemTagAdapterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.grid_item_tag_adapter, viewGroup, false);
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
