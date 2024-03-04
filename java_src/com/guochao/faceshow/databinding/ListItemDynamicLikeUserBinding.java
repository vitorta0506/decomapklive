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
public final class ListItemDynamicLikeUserBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final ImageView focus;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView signare;
    @NonNull
    public final TextView userName;
    @NonNull
    public final VipIndicatorView vipIndicator;

    private ListItemDynamicLikeUserBinding(@NonNull LinearLayout linearLayout, @NonNull HeadPortraitView headPortraitView, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = linearLayout;
        this.avatarView = headPortraitView;
        this.focus = imageView;
        this.signare = textView;
        this.userName = textView2;
        this.vipIndicator = vipIndicatorView;
    }

    @NonNull
    public static ListItemDynamicLikeUserBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.focus;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.focus);
            if (imageView != null) {
                i9 = R.id.signare;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.signare);
                if (textView != null) {
                    i9 = R.id.user_name;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                    if (textView2 != null) {
                        i9 = R.id.vip_indicator;
                        VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator);
                        if (vipIndicatorView != null) {
                            return new ListItemDynamicLikeUserBinding((LinearLayout) view, headPortraitView, imageView, textView, textView2, vipIndicatorView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemDynamicLikeUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemDynamicLikeUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_dynamic_like_user, viewGroup, false);
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
