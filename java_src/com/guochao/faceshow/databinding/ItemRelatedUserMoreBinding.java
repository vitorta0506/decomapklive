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
public final class ItemRelatedUserMoreBinding implements ViewBinding {
    @NonNull
    public final ImageView ivFocus;
    @NonNull
    public final LinearLayout llPeopleNearby;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvNickName;
    @NonNull
    public final TextView tvSignature;
    @NonNull
    public final HeadPortraitView userAvatar;
    @NonNull
    public final View viewBg;
    @NonNull
    public final VipIndicatorView vipIndicator;

    private ItemRelatedUserMoreBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull HeadPortraitView headPortraitView, @NonNull View view, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = linearLayout;
        this.ivFocus = imageView;
        this.llPeopleNearby = linearLayout2;
        this.tvNickName = textView;
        this.tvSignature = textView2;
        this.userAvatar = headPortraitView;
        this.viewBg = view;
        this.vipIndicator = vipIndicatorView;
    }

    @NonNull
    public static ItemRelatedUserMoreBinding bind(@NonNull View view) {
        int i9 = R.id.iv_focus;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_focus);
        if (imageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i9 = R.id.tv_nick_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_nick_name);
            if (textView != null) {
                i9 = R.id.tv_signature;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_signature);
                if (textView2 != null) {
                    i9 = R.id.user_avatar;
                    HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.user_avatar);
                    if (headPortraitView != null) {
                        i9 = R.id.view_bg;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.view_bg);
                        if (findChildViewById != null) {
                            i9 = R.id.vip_indicator;
                            VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator);
                            if (vipIndicatorView != null) {
                                return new ItemRelatedUserMoreBinding(linearLayout, imageView, linearLayout, textView, textView2, headPortraitView, findChildViewById, vipIndicatorView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemRelatedUserMoreBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemRelatedUserMoreBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_related_user_more, viewGroup, false);
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
