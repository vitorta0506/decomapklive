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
public final class UserPagePersonalDataViewBinding implements ViewBinding {
    @NonNull
    public final LinearLayout personalDataShowLy;
    @NonNull
    public final UserInfoHorizonTitleView personalDataTitleView;
    @NonNull
    private final RelativeLayout rootView;

    private UserPagePersonalDataViewBinding(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull UserInfoHorizonTitleView userInfoHorizonTitleView) {
        this.rootView = relativeLayout;
        this.personalDataShowLy = linearLayout;
        this.personalDataTitleView = userInfoHorizonTitleView;
    }

    @NonNull
    public static UserPagePersonalDataViewBinding bind(@NonNull View view) {
        int i9 = R.id.personal_data_show_ly;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.personal_data_show_ly);
        if (linearLayout != null) {
            i9 = R.id.personal_data_title_view;
            UserInfoHorizonTitleView userInfoHorizonTitleView = (UserInfoHorizonTitleView) ViewBindings.findChildViewById(view, R.id.personal_data_title_view);
            if (userInfoHorizonTitleView != null) {
                return new UserPagePersonalDataViewBinding((RelativeLayout) view, linearLayout, userInfoHorizonTitleView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static UserPagePersonalDataViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static UserPagePersonalDataViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.user_page_personal_data_view, viewGroup, false);
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
