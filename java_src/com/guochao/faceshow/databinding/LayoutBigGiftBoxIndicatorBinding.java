package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutBigGiftBoxIndicatorBinding implements ViewBinding {
    @NonNull
    public final FrameLayout bigGiftBox;
    @NonNull
    public final TextView bigGiftBoxCount;
    @NonNull
    public final TextView giftBoxCountDownTv;
    @NonNull
    public final ImageView iconBigBox;
    @NonNull
    private final FrameLayout rootView;

    private LayoutBigGiftBoxIndicatorBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView) {
        this.rootView = frameLayout;
        this.bigGiftBox = frameLayout2;
        this.bigGiftBoxCount = textView;
        this.giftBoxCountDownTv = textView2;
        this.iconBigBox = imageView;
    }

    @NonNull
    public static LayoutBigGiftBoxIndicatorBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i9 = R.id.big_gift_box_count;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.big_gift_box_count);
        if (textView != null) {
            i9 = R.id.gift_box_count_down_tv;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.gift_box_count_down_tv);
            if (textView2 != null) {
                i9 = R.id.icon_big_box;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_big_box);
                if (imageView != null) {
                    return new LayoutBigGiftBoxIndicatorBinding(frameLayout, frameLayout, textView, textView2, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutBigGiftBoxIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutBigGiftBoxIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_big_gift_box_indicator, viewGroup, false);
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
