package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ItemBackpackGiftBinding implements ViewBinding {
    @NonNull
    public final ImageView giftImg;
    @NonNull
    public final TextView giftName;
    @NonNull
    public final TextView giftNum;
    @NonNull
    public final TextView introduction;
    @NonNull
    public final LinearLayoutCompat layGiftname;
    @NonNull
    private final ConstraintLayout rootView;

    private ItemBackpackGiftBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayoutCompat linearLayoutCompat) {
        this.rootView = constraintLayout;
        this.giftImg = imageView;
        this.giftName = textView;
        this.giftNum = textView2;
        this.introduction = textView3;
        this.layGiftname = linearLayoutCompat;
    }

    @NonNull
    public static ItemBackpackGiftBinding bind(@NonNull View view) {
        int i9 = R.id.gift_img;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.gift_img);
        if (imageView != null) {
            i9 = R.id.gift_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.gift_name);
            if (textView != null) {
                i9 = R.id.gift_num;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.gift_num);
                if (textView2 != null) {
                    i9 = R.id.introduction;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.introduction);
                    if (textView3 != null) {
                        i9 = R.id.lay_giftname;
                        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) ViewBindings.findChildViewById(view, R.id.lay_giftname);
                        if (linearLayoutCompat != null) {
                            return new ItemBackpackGiftBinding((ConstraintLayout) view, imageView, textView, textView2, textView3, linearLayoutCompat);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemBackpackGiftBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemBackpackGiftBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_backpack_gift, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
