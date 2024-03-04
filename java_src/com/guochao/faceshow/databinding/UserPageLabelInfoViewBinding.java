package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.userhomepage.view.UserInfoHorizonTitleView;
import com.guochao.faceshow.views.flowlayout.TagFlowLayout;
/* loaded from: classes2.dex */
public final class UserPageLabelInfoViewBinding implements ViewBinding {
    @NonNull
    public final UserInfoHorizonTitleView labelInfoTitleView;
    @NonNull
    public final TagFlowLayout labelViewShowLy;
    @NonNull
    private final RelativeLayout rootView;

    private UserPageLabelInfoViewBinding(@NonNull RelativeLayout relativeLayout, @NonNull UserInfoHorizonTitleView userInfoHorizonTitleView, @NonNull TagFlowLayout tagFlowLayout) {
        this.rootView = relativeLayout;
        this.labelInfoTitleView = userInfoHorizonTitleView;
        this.labelViewShowLy = tagFlowLayout;
    }

    @NonNull
    public static UserPageLabelInfoViewBinding bind(@NonNull View view) {
        int i9 = R.id.label_info_title_view;
        UserInfoHorizonTitleView userInfoHorizonTitleView = (UserInfoHorizonTitleView) ViewBindings.findChildViewById(view, R.id.label_info_title_view);
        if (userInfoHorizonTitleView != null) {
            i9 = R.id.label_view_show_ly;
            TagFlowLayout tagFlowLayout = (TagFlowLayout) ViewBindings.findChildViewById(view, R.id.label_view_show_ly);
            if (tagFlowLayout != null) {
                return new UserPageLabelInfoViewBinding((RelativeLayout) view, userInfoHorizonTitleView, tagFlowLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static UserPageLabelInfoViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static UserPageLabelInfoViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.user_page_label_info_view, viewGroup, false);
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
