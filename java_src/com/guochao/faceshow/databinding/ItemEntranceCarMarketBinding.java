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
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes2.dex */
public final class ItemEntranceCarMarketBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final ImageView dressSvga;
    @NonNull
    public final ImageView ivDressTag;
    @NonNull
    public final ImageView previewIcon;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvBuy;
    @NonNull
    public final TextView tvDressName;
    @NonNull
    public final TextView tvDressPrice;
    @NonNull
    public final TextView tvSend;

    private ItemEntranceCarMarketBinding(@NonNull LinearLayout linearLayout, @NonNull HeadPortraitView headPortraitView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.avatarView = headPortraitView;
        this.dressSvga = imageView;
        this.ivDressTag = imageView2;
        this.previewIcon = imageView3;
        this.tvBuy = textView;
        this.tvDressName = textView2;
        this.tvDressPrice = textView3;
        this.tvSend = textView4;
    }

    @NonNull
    public static ItemEntranceCarMarketBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.dress_svga;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.dress_svga);
            if (imageView != null) {
                i9 = R.id.iv_dress_tag;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_dress_tag);
                if (imageView2 != null) {
                    i9 = R.id.preview_icon;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.preview_icon);
                    if (imageView3 != null) {
                        i9 = R.id.tv_buy;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_buy);
                        if (textView != null) {
                            i9 = R.id.tv_dress_name;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_dress_name);
                            if (textView2 != null) {
                                i9 = R.id.tv_dress_price;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_dress_price);
                                if (textView3 != null) {
                                    i9 = R.id.tv_send;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_send);
                                    if (textView4 != null) {
                                        return new ItemEntranceCarMarketBinding((LinearLayout) view, headPortraitView, imageView, imageView2, imageView3, textView, textView2, textView3, textView4);
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
    public static ItemEntranceCarMarketBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemEntranceCarMarketBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_entrance_car_market, viewGroup, false);
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
