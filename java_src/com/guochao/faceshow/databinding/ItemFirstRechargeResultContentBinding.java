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
public final class ItemFirstRechargeResultContentBinding implements ViewBinding {
    @NonNull
    public final ImageView imageView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView textView;
    @NonNull
    public final TextView tvCount;

    private ItemFirstRechargeResultContentBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.imageView = imageView;
        this.textView = textView;
        this.tvCount = textView2;
    }

    @NonNull
    public static ItemFirstRechargeResultContentBinding bind(@NonNull View view) {
        int i9 = R.id.image_view;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image_view);
        if (imageView != null) {
            i9 = R.id.text_view;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.text_view);
            if (textView != null) {
                i9 = R.id.tv_count;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_count);
                if (textView2 != null) {
                    return new ItemFirstRechargeResultContentBinding((LinearLayout) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemFirstRechargeResultContentBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemFirstRechargeResultContentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_first_recharge_result_content, viewGroup, false);
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
