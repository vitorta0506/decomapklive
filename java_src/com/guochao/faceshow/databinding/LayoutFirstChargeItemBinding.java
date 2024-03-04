package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutFirstChargeItemBinding implements ViewBinding {
    @NonNull
    public final CardView card;
    @NonNull
    public final TextView count;
    @NonNull
    public final ImageView giftBg;
    @NonNull
    public final ImageView icon;
    @NonNull
    public final TextView name;
    @NonNull
    private final LinearLayout rootView;

    private LayoutFirstChargeItemBinding(@NonNull LinearLayout linearLayout, @NonNull CardView cardView, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.card = cardView;
        this.count = textView;
        this.giftBg = imageView;
        this.icon = imageView2;
        this.name = textView2;
    }

    @NonNull
    public static LayoutFirstChargeItemBinding bind(@NonNull View view) {
        int i9 = R.id.card;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, R.id.card);
        if (cardView != null) {
            i9 = R.id.count;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count);
            if (textView != null) {
                i9 = R.id.gift_bg;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.gift_bg);
                if (imageView != null) {
                    i9 = R.id.icon;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
                    if (imageView2 != null) {
                        i9 = R.id.name;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                        if (textView2 != null) {
                            return new LayoutFirstChargeItemBinding((LinearLayout) view, cardView, textView, imageView, imageView2, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutFirstChargeItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutFirstChargeItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_first_charge_item, viewGroup, false);
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
