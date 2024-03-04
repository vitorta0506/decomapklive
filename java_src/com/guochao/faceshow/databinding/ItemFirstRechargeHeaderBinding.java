package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ItemFirstRechargeHeaderBinding implements ViewBinding {
    @NonNull
    public final ImageView imageView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView textView;

    private ItemFirstRechargeHeaderBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.imageView = imageView;
        this.textView = textView;
    }

    @NonNull
    public static ItemFirstRechargeHeaderBinding bind(@NonNull View view) {
        int i9 = R.id.image_view;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image_view);
        if (imageView != null) {
            i9 = R.id.text_view;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.text_view);
            if (textView != null) {
                return new ItemFirstRechargeHeaderBinding((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemFirstRechargeHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemFirstRechargeHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_first_recharge_header, viewGroup, false);
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
