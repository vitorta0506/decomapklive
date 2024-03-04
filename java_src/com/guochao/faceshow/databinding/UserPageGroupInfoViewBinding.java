package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.userhomepage.view.UserInfoHorizonTitleView;
/* loaded from: classes2.dex */
public final class UserPageGroupInfoViewBinding implements ViewBinding {
    @NonNull
    public final UserInfoHorizonTitleView groupInfoTitleView;
    @NonNull
    public final LinearLayout groupViewShowLy;
    @NonNull
    private final RelativeLayout rootView;

    private UserPageGroupInfoViewBinding(@NonNull RelativeLayout relativeLayout, @NonNull UserInfoHorizonTitleView userInfoHorizonTitleView, @NonNull LinearLayout linearLayout) {
        this.rootView = relativeLayout;
        this.groupInfoTitleView = userInfoHorizonTitleView;
        this.groupViewShowLy = linearLayout;
    }

    @NonNull
    public static UserPageGroupInfoViewBinding bind(@NonNull View view) {
        int i9 = R.id.group_info_title_view;
        UserInfoHorizonTitleView userInfoHorizonTitleView = (UserInfoHorizonTitleView) ViewBindings.findChildViewById(view, R.id.group_info_title_view);
        if (userInfoHorizonTitleView != null) {
            i9 = R.id.group_view_show_ly;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.group_view_show_ly);
            if (linearLayout != null) {
                return new UserPageGroupInfoViewBinding((RelativeLayout) view, userInfoHorizonTitleView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static UserPageGroupInfoViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static UserPageGroupInfoViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.user_page_group_info_view, viewGroup, false);
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
