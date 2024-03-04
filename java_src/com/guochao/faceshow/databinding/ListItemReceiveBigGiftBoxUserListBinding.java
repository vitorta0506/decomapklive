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
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes2.dex */
public final class ListItemReceiveBigGiftBoxUserListBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final TextView count;
    @NonNull
    public final TextView countWeight;
    @NonNull
    public final ImageView iconSmallCoin;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvBestLuck;
    @NonNull
    public final TextView userName;
    @NonNull
    public final VipIndicatorView vipIndicator;

    private ListItemReceiveBigGiftBoxUserListBinding(@NonNull LinearLayout linearLayout, @NonNull HeadPortraitView headPortraitView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = linearLayout;
        this.avatarView = headPortraitView;
        this.count = textView;
        this.countWeight = textView2;
        this.iconSmallCoin = imageView;
        this.tvBestLuck = textView3;
        this.userName = textView4;
        this.vipIndicator = vipIndicatorView;
    }

    @NonNull
    public static ListItemReceiveBigGiftBoxUserListBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.count;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count);
            if (textView != null) {
                i9 = R.id.count_weight;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.count_weight);
                if (textView2 != null) {
                    i9 = R.id.icon_small_coin;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_small_coin);
                    if (imageView != null) {
                        i9 = R.id.tv_best_luck;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_best_luck);
                        if (textView3 != null) {
                            i9 = R.id.user_name;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                            if (textView4 != null) {
                                i9 = R.id.vip_indicator;
                                VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator);
                                if (vipIndicatorView != null) {
                                    return new ListItemReceiveBigGiftBoxUserListBinding((LinearLayout) view, headPortraitView, textView, textView2, imageView, textView3, textView4, vipIndicatorView);
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
    public static ListItemReceiveBigGiftBoxUserListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemReceiveBigGiftBoxUserListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_receive_big_gift_box_user_list, viewGroup, false);
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
