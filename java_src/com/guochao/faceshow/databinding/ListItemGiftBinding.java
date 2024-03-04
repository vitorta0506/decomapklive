package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.GiftItemFrameLayout;
/* loaded from: classes2.dex */
public final class ListItemGiftBinding implements ViewBinding {
    @NonNull
    public final TextView count;
    @NonNull
    public final ImageView faceIV;
    @NonNull
    public final TextView giftName;
    @NonNull
    public final TextView giftPrice;
    @NonNull
    public final ImageView icon;
    @NonNull
    public final ImageView lock;
    @NonNull
    public final TextView lockTips;
    @NonNull
    public final ImageView lucky;
    @NonNull
    private final GiftItemFrameLayout rootView;

    private ListItemGiftBinding(@NonNull GiftItemFrameLayout giftItemFrameLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView4, @NonNull ImageView imageView4) {
        this.rootView = giftItemFrameLayout;
        this.count = textView;
        this.faceIV = imageView;
        this.giftName = textView2;
        this.giftPrice = textView3;
        this.icon = imageView2;
        this.lock = imageView3;
        this.lockTips = textView4;
        this.lucky = imageView4;
    }

    @NonNull
    public static ListItemGiftBinding bind(@NonNull View view) {
        int i9 = R.id.count;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count);
        if (textView != null) {
            i9 = R.id.faceIV;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.faceIV);
            if (imageView != null) {
                i9 = R.id.gift_name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.gift_name);
                if (textView2 != null) {
                    i9 = R.id.gift_price;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.gift_price);
                    if (textView3 != null) {
                        i9 = R.id.icon;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
                        if (imageView2 != null) {
                            i9 = R.id.lock;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.lock);
                            if (imageView3 != null) {
                                i9 = R.id.lock_tips;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.lock_tips);
                                if (textView4 != null) {
                                    i9 = R.id.lucky;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.lucky);
                                    if (imageView4 != null) {
                                        return new ListItemGiftBinding((GiftItemFrameLayout) view, textView, imageView, textView2, textView3, imageView2, imageView3, textView4, imageView4);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemGiftBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemGiftBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_gift, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public GiftItemFrameLayout getRoot() {
        return this.rootView;
    }
}
