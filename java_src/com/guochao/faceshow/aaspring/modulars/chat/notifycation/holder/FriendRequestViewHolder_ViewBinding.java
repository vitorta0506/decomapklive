package com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes3.dex */
public class FriendRequestViewHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private FriendRequestViewHolder f17163b;

    /* renamed from: c  reason: collision with root package name */
    private View f17164c;

    /* loaded from: classes3.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FriendRequestViewHolder f17165a;

        a(FriendRequestViewHolder friendRequestViewHolder) {
            this.f17165a = friendRequestViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17165a.onViewClicked();
        }
    }

    @UiThread
    public FriendRequestViewHolder_ViewBinding(FriendRequestViewHolder friendRequestViewHolder, View view) {
        this.f17163b = friendRequestViewHolder;
        friendRequestViewHolder.userAvatar = (HeadPortraitView) c.d(view, R.id.user_avatar, "field 'userAvatar'", HeadPortraitView.class);
        friendRequestViewHolder.userName = (TextView) c.d(view, R.id.user_name, "field 'userName'", TextView.class);
        friendRequestViewHolder.userNameLay = (LinearLayout) c.d(view, R.id.user_name_lay, "field 'userNameLay'", LinearLayout.class);
        View c10 = c.c(view, R.id.icon_request, "field 'iconRequest' and method 'onViewClicked'");
        friendRequestViewHolder.iconRequest = (ImageView) c.a(c10, R.id.icon_request, "field 'iconRequest'", ImageView.class);
        this.f17164c = c10;
        c10.setOnClickListener(new a(friendRequestViewHolder));
        friendRequestViewHolder.timeHistory = (TextView) c.d(view, R.id.time_history, "field 'timeHistory'", TextView.class);
        friendRequestViewHolder.userCenterAgeLevel = c.c(view, R.id.user_center_age_level, "field 'userCenterAgeLevel'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FriendRequestViewHolder friendRequestViewHolder = this.f17163b;
        if (friendRequestViewHolder != null) {
            this.f17163b = null;
            friendRequestViewHolder.userAvatar = null;
            friendRequestViewHolder.userName = null;
            friendRequestViewHolder.userNameLay = null;
            friendRequestViewHolder.iconRequest = null;
            friendRequestViewHolder.timeHistory = null;
            friendRequestViewHolder.userCenterAgeLevel = null;
            this.f17164c.setOnClickListener(null);
            this.f17164c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
