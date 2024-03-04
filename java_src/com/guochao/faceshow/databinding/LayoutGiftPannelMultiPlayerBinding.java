package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutGiftPannelMultiPlayerBinding implements ViewBinding {
    @NonNull
    public final ImageView ivUserInfo;
    @NonNull
    public final LinearLayout llMultiPlayer;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView selectAll;

    private LayoutGiftPannelMultiPlayerBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull RecyclerView recyclerView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.ivUserInfo = imageView;
        this.llMultiPlayer = linearLayout2;
        this.recyclerView = recyclerView;
        this.selectAll = textView;
    }

    @NonNull
    public static LayoutGiftPannelMultiPlayerBinding bind(@NonNull View view) {
        int i9 = R.id.iv_user_info;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_user_info);
        if (imageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i9 = R.id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
            if (recyclerView != null) {
                i9 = R.id.select_all;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.select_all);
                if (textView != null) {
                    return new LayoutGiftPannelMultiPlayerBinding(linearLayout, imageView, linearLayout, recyclerView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutGiftPannelMultiPlayerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutGiftPannelMultiPlayerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_gift_pannel_multi_player, viewGroup, false);
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
