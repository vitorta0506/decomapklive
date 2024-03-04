package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.AgeAndSexView;
import com.guochao.faceshow.aaspring.views.LevelView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class LayoutF2fMatchedUserInfoBinding implements ViewBinding {
    @NonNull
    public final AgeAndSexView ageSexView;
    @NonNull
    public final LevelView levelView;
    @NonNull
    private final View rootView;
    @NonNull
    public final VipIndicatorView vipIndicator;

    private LayoutF2fMatchedUserInfoBinding(@NonNull View view, @NonNull AgeAndSexView ageAndSexView, @NonNull LevelView levelView, @NonNull VipIndicatorView vipIndicatorView) {
        this.rootView = view;
        this.ageSexView = ageAndSexView;
        this.levelView = levelView;
        this.vipIndicator = vipIndicatorView;
    }

    @NonNull
    public static LayoutF2fMatchedUserInfoBinding bind(@NonNull View view) {
        int i9 = R.id.age_sex_view;
        AgeAndSexView ageAndSexView = (AgeAndSexView) ViewBindings.findChildViewById(view, R.id.age_sex_view);
        if (ageAndSexView != null) {
            i9 = R.id.level_view;
            LevelView levelView = (LevelView) ViewBindings.findChildViewById(view, R.id.level_view);
            if (levelView != null) {
                i9 = R.id.vip_indicator;
                VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator);
                if (vipIndicatorView != null) {
                    return new LayoutF2fMatchedUserInfoBinding(view, ageAndSexView, levelView, vipIndicatorView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutF2fMatchedUserInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.layout_f2f_matched_user_info, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
