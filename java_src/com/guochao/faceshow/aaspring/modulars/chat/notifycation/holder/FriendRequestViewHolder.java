package com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.FriendRequestBean;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.activity.FriendRequestListActivity;
import com.guochao.faceshow.aaspring.modulars.user.view.UserCenterSexLevel;
import com.guochao.faceshow.aaspring.utils.FriendFromSource;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.TimeUtil;
import hb.b;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes3.dex */
public class FriendRequestViewHolder extends BaseViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private UserCenterSexLevel f17160a;

    /* renamed from: b  reason: collision with root package name */
    private FriendRequestBean f17161b;
    @BindView
    ImageView iconRequest;
    @BindView
    TextView timeHistory;
    @BindView
    HeadPortraitView userAvatar;
    @BindView
    View userCenterAgeLevel;
    @BindView
    TextView userName;
    @BindView
    LinearLayout userNameLay;

    /* loaded from: classes3.dex */
    class a implements b<String> {
        a() {
        }

        @Override // hb.b
        /* renamed from: a */
        public void onResponse(String str) {
        }

        @Override // hb.b
        public /* synthetic */ void onFail(String str) {
            hb.a.a(this, str);
        }
    }

    public FriendRequestViewHolder(FriendRequestListActivity friendRequestListActivity, ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_request_friend, viewGroup, false));
        this.f17160a = new UserCenterSexLevel(this.userCenterAgeLevel, false, false);
    }

    public FriendRequestBean c() {
        return this.f17161b;
    }

    public void d(FriendRequestBean friendRequestBean, boolean z10) {
        SimpleDateFormat simpleDateFormat;
        this.f17161b = friendRequestBean;
        this.f17160a.d(friendRequestBean);
        this.userName.setText(TextViewUtils.getSubStr(friendRequestBean.getNickName(), -1));
        this.userAvatar.f(friendRequestBean, true);
        this.userAvatar.setOnline(friendRequestBean.getIsOnline() == 1);
        long j10 = 0;
        try {
            if (!BaseConfig.isChinese()) {
                simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.US);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("EST5EDT"));
            } else {
                simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.CHINESE);
            }
            j10 = System.currentTimeMillis() - simpleDateFormat.parse(friendRequestBean.getCreateTime()).getTime();
        } catch (Exception unused) {
        }
        this.timeHistory.setText(TimeUtil.getIMTime(this.itemView.getContext(), j10));
        e(friendRequestBean);
    }

    public void e(FriendRequestBean friendRequestBean) {
        int type = friendRequestBean.getType();
        if (type == 1) {
            this.iconRequest.setImageResource(R.mipmap.icon_im_yiguanzhu);
        } else if (type != 2) {
            this.iconRequest.setImageResource(R.mipmap.icon_im_jiaguanzhu);
        } else {
            this.iconRequest.setImageResource(R.mipmap.icon_im_huxiangguanzhu);
        }
    }

    @OnClick
    public void onViewClicked() {
        if (this.f17161b.getType() == 3) {
            ib.b.b(String.valueOf(this.f17161b.getAccount()), FriendFromSource.DEFAULT, (Activity) this.itemView.getContext(), new a());
        }
    }
}
