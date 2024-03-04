package com.guochao.faceshow.aaspring.modulars.chat.notifycation.activity;

import android.view.View;
import androidx.annotation.UiThread;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity_ViewBinding;
/* loaded from: classes3.dex */
public class FriendRequestListActivity_ViewBinding extends BaseIMListActivity_ViewBinding {

    /* renamed from: d  reason: collision with root package name */
    private FriendRequestListActivity f17106d;

    /* renamed from: e  reason: collision with root package name */
    private View f17107e;

    /* loaded from: classes3.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FriendRequestListActivity f17108a;

        a(FriendRequestListActivity friendRequestListActivity) {
            this.f17108a = friendRequestListActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17108a.startExplore(view);
        }
    }

    @UiThread
    public FriendRequestListActivity_ViewBinding(FriendRequestListActivity friendRequestListActivity, View view) {
        super(friendRequestListActivity, view);
        this.f17106d = friendRequestListActivity;
        View c10 = c.c(view, R.id.explore, "field 'mViewExplore' and method 'startExplore'");
        friendRequestListActivity.mViewExplore = c10;
        this.f17107e = c10;
        c10.setOnClickListener(new a(friendRequestListActivity));
        friendRequestListActivity.redPoint = c.c(view, R.id.red_point, "field 'redPoint'");
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity_ViewBinding, com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        FriendRequestListActivity friendRequestListActivity = this.f17106d;
        if (friendRequestListActivity != null) {
            this.f17106d = null;
            friendRequestListActivity.mViewExplore = null;
            friendRequestListActivity.redPoint = null;
            this.f17107e.setOnClickListener(null);
            this.f17107e = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
