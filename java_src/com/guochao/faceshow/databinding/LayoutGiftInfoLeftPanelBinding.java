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
public final class LayoutGiftInfoLeftPanelBinding implements ViewBinding {
    @NonNull
    public final TextView count;
    @NonNull
    public final ImageView giftIcon;
    @NonNull
    private final LinearLayout rootView;

    private LayoutGiftInfoLeftPanelBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView) {
        this.rootView = linearLayout;
        this.count = textView;
        this.giftIcon = imageView;
    }

    @NonNull
    public static LayoutGiftInfoLeftPanelBinding bind(@NonNull View view) {
        int i9 = R.id.count;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count);
        if (textView != null) {
            i9 = R.id.gift_icon;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.gift_icon);
            if (imageView != null) {
                return new LayoutGiftInfoLeftPanelBinding((LinearLayout) view, textView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutGiftInfoLeftPanelBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutGiftInfoLeftPanelBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_gift_info_left_panel, viewGroup, false);
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
