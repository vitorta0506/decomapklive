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
public final class ItemChatLimitNormalBinding implements ViewBinding {
    @NonNull
    public final TextView giftName;
    @NonNull
    public final TextView giftPrice;
    @NonNull
    public final ImageView iconGift;
    @NonNull
    private final LinearLayout rootView;

    private ItemChatLimitNormalBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView) {
        this.rootView = linearLayout;
        this.giftName = textView;
        this.giftPrice = textView2;
        this.iconGift = imageView;
    }

    @NonNull
    public static ItemChatLimitNormalBinding bind(@NonNull View view) {
        int i9 = R.id.gift_name;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.gift_name);
        if (textView != null) {
            i9 = R.id.gift_price;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.gift_price);
            if (textView2 != null) {
                i9 = R.id.icon_gift;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_gift);
                if (imageView != null) {
                    return new ItemChatLimitNormalBinding((LinearLayout) view, textView, textView2, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemChatLimitNormalBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemChatLimitNormalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_chat_limit_normal, viewGroup, false);
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
