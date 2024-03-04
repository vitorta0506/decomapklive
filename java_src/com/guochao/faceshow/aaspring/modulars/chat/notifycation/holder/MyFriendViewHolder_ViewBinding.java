package com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes3.dex */
public class MyFriendViewHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private MyFriendViewHolder f17185b;

    @UiThread
    public MyFriendViewHolder_ViewBinding(MyFriendViewHolder myFriendViewHolder, View view) {
        this.f17185b = myFriendViewHolder;
        myFriendViewHolder.userAvatar = (HeadPortraitView) c.d(view, R.id.avatar_view, "field 'userAvatar'", HeadPortraitView.class);
        myFriendViewHolder.userName = (TextView) c.d(view, R.id.user_name, "field 'userName'", TextView.class);
        myFriendViewHolder.iconRequest = (ImageView) c.d(view, R.id.icon_request, "field 'iconRequest'", ImageView.class);
        myFriendViewHolder.userSign = (TextView) c.d(view, R.id.user_sign, "field 'userSign'", TextView.class);
        myFriendViewHolder.userDivider = c.c(view, R.id.user_divider, "field 'userDivider'");
        myFriendViewHolder.vipIndicator = (VipIndicatorView) c.d(view, R.id.vip_indicator_view, "field 'vipIndicator'", VipIndicatorView.class);
        myFriendViewHolder.ageLevel = c.c(view, R.id.user_center_age_level, "field 'ageLevel'");
        myFriendViewHolder.living = c.c(view, R.id.living, "field 'living'");
        myFriendViewHolder.imageStatus = (ImageView) c.d(view, R.id.living_status, "field 'imageStatus'", ImageView.class);
        myFriendViewHolder.userId = (TextView) c.d(view, R.id.user_id, "field 'userId'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MyFriendViewHolder myFriendViewHolder = this.f17185b;
        if (myFriendViewHolder != null) {
            this.f17185b = null;
            myFriendViewHolder.userAvatar = null;
            myFriendViewHolder.userName = null;
            myFriendViewHolder.iconRequest = null;
            myFriendViewHolder.userSign = null;
            myFriendViewHolder.userDivider = null;
            myFriendViewHolder.vipIndicator = null;
            myFriendViewHolder.ageLevel = null;
            myFriendViewHolder.living = null;
            myFriendViewHolder.imageStatus = null;
            myFriendViewHolder.userId = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
