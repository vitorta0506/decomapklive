package com.guochao.faceshow.userhomepage.view;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes4.dex */
public class UserInfoTopView_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private UserInfoTopView f26540b;

    @UiThread
    public UserInfoTopView_ViewBinding(UserInfoTopView userInfoTopView, View view) {
        this.f26540b = userInfoTopView;
        userInfoTopView.mOnlineInfoArea = c.c(view, R.id.online_info_area, "field 'mOnlineInfoArea'");
        userInfoTopView.mTextViewOnlineInfo = (TextView) c.d(view, R.id.online_info, "field 'mTextViewOnlineInfo'", TextView.class);
        userInfoTopView.mTextViewOnlineInfoExtra = (TextView) c.d(view, R.id.online_info_extra, "field 'mTextViewOnlineInfoExtra'", TextView.class);
        userInfoTopView.mvpIV = (ImageView) c.d(view, R.id.mvpIV, "field 'mvpIV'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        UserInfoTopView userInfoTopView = this.f26540b;
        if (userInfoTopView != null) {
            this.f26540b = null;
            userInfoTopView.mOnlineInfoArea = null;
            userInfoTopView.mTextViewOnlineInfo = null;
            userInfoTopView.mTextViewOnlineInfoExtra = null;
            userInfoTopView.mvpIV = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
