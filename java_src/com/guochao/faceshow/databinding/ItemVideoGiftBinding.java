package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ItemVideoGiftBinding implements ViewBinding {
    @NonNull
    public final TextView countTv;
    @NonNull
    public final FrameLayout flSelectLayout;
    @NonNull
    public final TextView gName;
    @NonNull
    public final ImageView giftIv;
    @NonNull
    public final TextView giftPrice;
    @NonNull
    public final RelativeLayout item;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final ImageView selectImg;

    private ItemVideoGiftBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull TextView textView3, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView2) {
        this.rootView = relativeLayout;
        this.countTv = textView;
        this.flSelectLayout = frameLayout;
        this.gName = textView2;
        this.giftIv = imageView;
        this.giftPrice = textView3;
        this.item = relativeLayout2;
        this.selectImg = imageView2;
    }

    @NonNull
    public static ItemVideoGiftBinding bind(@NonNull View view) {
        int i9 = R.id.count_tv;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count_tv);
        if (textView != null) {
            i9 = R.id.flSelectLayout;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.flSelectLayout);
            if (frameLayout != null) {
                i9 = R.id.gName;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.gName);
                if (textView2 != null) {
                    i9 = R.id.gift_iv;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.gift_iv);
                    if (imageView != null) {
                        i9 = R.id.gift_price;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.gift_price);
                        if (textView3 != null) {
                            RelativeLayout relativeLayout = (RelativeLayout) view;
                            i9 = R.id.selectImg;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.selectImg);
                            if (imageView2 != null) {
                                return new ItemVideoGiftBinding(relativeLayout, textView, frameLayout, textView2, imageView, textView3, relativeLayout, imageView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemVideoGiftBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemVideoGiftBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_video_gift, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
