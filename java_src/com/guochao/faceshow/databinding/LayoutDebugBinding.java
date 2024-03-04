package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class LayoutDebugBinding implements ViewBinding {
    @NonNull
    public final Button clear;
    @NonNull
    public final Button mini;
    @NonNull
    public final NormalCircleImageView miniIcon;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;

    private LayoutDebugBinding(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull NormalCircleImageView normalCircleImageView, @NonNull RecyclerView recyclerView) {
        this.rootView = linearLayout;
        this.clear = button;
        this.mini = button2;
        this.miniIcon = normalCircleImageView;
        this.recyclerView = recyclerView;
    }

    @NonNull
    public static LayoutDebugBinding bind(@NonNull View view) {
        int i9 = R.id.clear;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.clear);
        if (button != null) {
            i9 = R.id.mini;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.mini);
            if (button2 != null) {
                i9 = R.id.mini_icon;
                NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.mini_icon);
                if (normalCircleImageView != null) {
                    i9 = R.id.recycler_view;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                    if (recyclerView != null) {
                        return new LayoutDebugBinding((LinearLayout) view, button, button2, normalCircleImageView, recyclerView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutDebugBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutDebugBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_debug, viewGroup, false);
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
