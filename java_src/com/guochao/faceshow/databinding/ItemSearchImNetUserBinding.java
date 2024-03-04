package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes2.dex */
public final class ItemSearchImNetUserBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final View userDivider;
    @NonNull
    public final TextView userName;
    @NonNull
    public final TextView userSign;
    @NonNull
    public final VipIndicatorView vipIndicator;

    private ItemSearchImNetUserBinding(@NonNull RelativeLayout relativeLayout, @NonNull HeadPortraitView headPortraitView, @NonNull View view, @NonNull TextView textView, @NonNull TextView textView2, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = relativeLayout;
        this.avatarView = headPortraitView;
        this.userDivider = view;
        this.userName = textView;
        this.userSign = textView2;
        this.vipIndicator = vipIndicatorView;
    }

    @NonNull
    public static ItemSearchImNetUserBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.user_divider;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.user_divider);
            if (findChildViewById != null) {
                i9 = R.id.user_name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                if (textView != null) {
                    i9 = R.id.user_sign;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.user_sign);
                    if (textView2 != null) {
                        i9 = R.id.vip_indicator;
                        VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator);
                        if (vipIndicatorView != null) {
                            return new ItemSearchImNetUserBinding((RelativeLayout) view, headPortraitView, findChildViewById, textView, textView2, vipIndicatorView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemSearchImNetUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemSearchImNetUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_search_im_net_user, viewGroup, false);
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
