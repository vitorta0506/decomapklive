package com.guochao.component.mvp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.mvp.R$id;
import com.guochao.component.mvp.R$layout;
/* loaded from: classes3.dex */
public final class ItemGiftBinding implements ViewBinding {
    @NonNull
    public final TextView desTV;
    @NonNull
    public final TextView getTV;
    @NonNull
    public final FrameLayout giftBgFL;
    @NonNull
    public final ImageView giftIV;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ImageView smallIV;
    @NonNull
    public final TextView titleTV;

    private ItemGiftBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.desTV = textView;
        this.getTV = textView2;
        this.giftBgFL = frameLayout;
        this.giftIV = imageView;
        this.smallIV = imageView2;
        this.titleTV = textView3;
    }

    @NonNull
    public static ItemGiftBinding bind(@NonNull View view) {
        int i9 = R$id.desTV;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
        if (textView != null) {
            i9 = R$id.getTV;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
            if (textView2 != null) {
                i9 = R$id.giftBgFL;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i9);
                if (frameLayout != null) {
                    i9 = R$id.giftIV;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
                    if (imageView != null) {
                        i9 = R$id.smallIV;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i9);
                        if (imageView2 != null) {
                            i9 = R$id.titleTV;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                            if (textView3 != null) {
                                return new ItemGiftBinding((LinearLayout) view, textView, textView2, frameLayout, imageView, imageView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemGiftBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemGiftBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.item_gift, viewGroup, false);
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
