package com.guochao.lib_base.databinding;

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
import com.guochao.lib_base.R$id;
import com.guochao.lib_base.R$layout;
/* loaded from: classes4.dex */
public final class LayoutCenterToastBinding implements ViewBinding {
    @NonNull
    public final ImageView icon;
    @NonNull
    public final TextView message;
    @NonNull
    private final LinearLayout rootView;

    private LayoutCenterToastBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.icon = imageView;
        this.message = textView;
    }

    @NonNull
    public static LayoutCenterToastBinding bind(@NonNull View view) {
        int i9 = R$id.icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
        if (imageView != null) {
            i9 = 16908299;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, 16908299);
            if (textView != null) {
                return new LayoutCenterToastBinding((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutCenterToastBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutCenterToastBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.layout_center_toast, viewGroup, false);
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
