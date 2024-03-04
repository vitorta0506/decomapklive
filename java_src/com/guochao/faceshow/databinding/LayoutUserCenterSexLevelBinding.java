package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.LevelView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes2.dex */
public final class LayoutUserCenterSexLevelBinding implements ViewBinding {
    @NonNull
    public final ImageView mvpIV;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final LinearLayout userCenterAgeLevel;
    @NonNull
    public final LevelView userLevel;
    @NonNull
    public final VipIndicatorView vipIndicatorView;

    private LayoutUserCenterSexLevelBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull LevelView levelView, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = linearLayout;
        this.mvpIV = imageView;
        this.userCenterAgeLevel = linearLayout2;
        this.userLevel = levelView;
        this.vipIndicatorView = vipIndicatorView;
    }

    @NonNull
    public static LayoutUserCenterSexLevelBinding bind(@NonNull View view) {
        int i9 = R.id.mvpIV;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.mvpIV);
        if (imageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i9 = R.id.user_level;
            LevelView levelView = (LevelView) ViewBindings.findChildViewById(view, R.id.user_level);
            if (levelView != null) {
                i9 = R.id.vip_indicator_view;
                VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator_view);
                if (vipIndicatorView != null) {
                    return new LayoutUserCenterSexLevelBinding(linearLayout, imageView, linearLayout, levelView, vipIndicatorView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutUserCenterSexLevelBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutUserCenterSexLevelBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_user_center_sex_level, viewGroup, false);
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
