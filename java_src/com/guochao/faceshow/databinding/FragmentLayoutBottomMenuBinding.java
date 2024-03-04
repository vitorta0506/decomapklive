package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentLayoutBottomMenuBinding implements ViewBinding {
    @NonNull
    public final LinearLayout cancel;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvMenuItem;

    private FragmentLayoutBottomMenuBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull RecyclerView recyclerView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.cancel = linearLayout2;
        this.recyclerView = recyclerView;
        this.tvMenuItem = textView;
    }

    @NonNull
    public static FragmentLayoutBottomMenuBinding bind(@NonNull View view) {
        int i9 = R.id.cancel;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.cancel);
        if (linearLayout != null) {
            i9 = R.id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
            if (recyclerView != null) {
                i9 = R.id.tv_menu_item;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_menu_item);
                if (textView != null) {
                    return new FragmentLayoutBottomMenuBinding((LinearLayout) view, linearLayout, recyclerView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentLayoutBottomMenuBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLayoutBottomMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_layout_bottom_menu, viewGroup, false);
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
