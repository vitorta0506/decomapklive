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
public final class AdapterPkSelectFriendsBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarUser;
    @NonNull
    public final ImageView ivApply;
    @NonNull
    public final LinearLayout living;
    @NonNull
    public final ImageView livingStatus;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvUserName;
    @NonNull
    public final TextView userAge;
    @NonNull
    public final ImageView userGender;
    @NonNull
    public final LinearLayout userGenderAge;
    @NonNull
    public final VipIndicatorView vipIndicatorView;

    private AdapterPkSelectFriendsBinding(@NonNull LinearLayout linearLayout, @NonNull HeadPortraitView headPortraitView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout3, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = linearLayout;
        this.avatarUser = headPortraitView;
        this.ivApply = imageView;
        this.living = linearLayout2;
        this.livingStatus = imageView2;
        this.tvUserName = textView;
        this.userAge = textView2;
        this.userGender = imageView3;
        this.userGenderAge = linearLayout3;
        this.vipIndicatorView = vipIndicatorView;
    }

    @NonNull
    public static AdapterPkSelectFriendsBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_user;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_user);
        if (headPortraitView != null) {
            i9 = R.id.iv_apply;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_apply);
            if (imageView != null) {
                i9 = R.id.living;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.living);
                if (linearLayout != null) {
                    i9 = R.id.living_status;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.living_status);
                    if (imageView2 != null) {
                        i9 = R.id.tv_user_name;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_name);
                        if (textView != null) {
                            i9 = R.id.user_age;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.user_age);
                            if (textView2 != null) {
                                i9 = R.id.user_gender;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.user_gender);
                                if (imageView3 != null) {
                                    i9 = R.id.user_gender_age;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.user_gender_age);
                                    if (linearLayout2 != null) {
                                        i9 = R.id.vip_indicator_view;
                                        VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator_view);
                                        if (vipIndicatorView != null) {
                                            return new AdapterPkSelectFriendsBinding((LinearLayout) view, headPortraitView, imageView, linearLayout, imageView2, textView, textView2, imageView3, linearLayout2, vipIndicatorView);
                                        }
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
    public static AdapterPkSelectFriendsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static AdapterPkSelectFriendsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.adapter_pk_select_friends, viewGroup, false);
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
