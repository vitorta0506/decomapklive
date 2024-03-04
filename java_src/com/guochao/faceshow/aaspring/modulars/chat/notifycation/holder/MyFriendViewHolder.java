package com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import b8.e;
import butterknife.BindView;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.beans.IM_User;
import com.guochao.faceshow.aaspring.beans.MyFriendsBean;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.user.view.UserCenterSexLevel;
import com.guochao.faceshow.aaspring.utils.ConversationUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.SpanColorUtils;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.utils.LiveInfoUtils;
import com.tencent.imsdk.v2.V2TIMConversation;
import com.tencent.imsdk.v2.V2TIMConversationManager;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMValueCallback;
/* loaded from: classes3.dex */
public class MyFriendViewHolder extends BaseViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private MyFriendsBean.FriendBean f17180a;
    @BindView
    View ageLevel;
    @BindView
    ImageView iconRequest;
    @BindView
    ImageView imageStatus;
    @BindView
    View living;
    @BindView
    HeadPortraitView userAvatar;
    @BindView
    View userDivider;
    @BindView
    TextView userId;
    @BindView
    TextView userName;
    @BindView
    TextView userSign;
    @BindView
    VipIndicatorView vipIndicator;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder.MyFriendViewHolder$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0163a implements V2TIMValueCallback<V2TIMConversation> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ConversationInfo f17182a;

            C0163a(ConversationInfo conversationInfo) {
                this.f17182a = conversationInfo;
            }

            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            /* renamed from: a */
            public void onSuccess(V2TIMConversation v2TIMConversation) {
                this.f17182a.setTIMConversation2(v2TIMConversation);
            }

            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onError(int i9, String str) {
            }
        }

        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ConversationInfo b10;
            if (MyFriendViewHolder.this.f17180a == null || (b10 = com.guochao.faceshow.aaspring.manager.im.b.l0().b(MyFriendViewHolder.this.f17180a.getCurrentUserId())) == null) {
                return;
            }
            V2TIMConversationManager conversationManager = V2TIMManager.getConversationManager();
            conversationManager.getConversation("c2c_" + MyFriendViewHolder.this.f17180a.getCurrentUserId(), new C0163a(b10));
            b10.setConversationInfoDetail(ConversationUtils.from((IM_User) MyFriendViewHolder.this.f17180a));
            com.guochao.faceshow.aaspring.manager.im.b.l0().N0(b10);
            Intent intent = new Intent(MyFriendViewHolder.this.itemView.getContext(), ChatActivity.class);
            Context context = MyFriendViewHolder.this.itemView.getContext();
            intent.putExtra("otherLanguage", SpUtils.getStr(context, e.g().c().getUserId() + MyFriendViewHolder.this.f17180a.getCurrentUserId() + "otherLanguage"));
            MyFriendViewHolder.this.itemView.getContext().startActivity(intent);
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MyFriendViewHolder.this.f17180a.getIsLive() == 1) {
                RoomItemData obtainData = MyFriendViewHolder.this.f17180a.getLiveData().obtainData();
                MyFriendViewHolder.this.f17180a.setImg(MyFriendViewHolder.this.f17180a.getImg());
                LiveInfoUtils.jumpToBaseLiveRoomAct(obtainData, view.getContext());
            }
        }
    }

    public MyFriendViewHolder(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_my_friend, viewGroup, false));
        this.iconRequest.setOnClickListener(new a());
        this.living.setOnClickListener(new b());
    }

    public void d(MyFriendsBean.FriendBean friendBean, String str, boolean z10) {
        this.f17180a = friendBean;
        this.userName.setText(TextViewUtils.getSubStr(TextUtils.isEmpty(friendBean.getNickName()) ? friendBean.getNick_name() : friendBean.getNickName(), -1));
        this.userId.setText(friendBean.getCurrentUserId());
        if (!TextUtils.isEmpty(str)) {
            SpanColorUtils.setSpannerString(this.userName, str, ContextCompat.getColor(this.itemView.getContext(), R.color.color_app_primary));
            SpanColorUtils.setSpannerString(this.userId, str, ContextCompat.getColor(this.itemView.getContext(), R.color.color_app_primary));
            this.userId.setVisibility(0);
        } else {
            this.userId.setVisibility(8);
        }
        this.userAvatar.f(friendBean, true);
        new UserCenterSexLevel(this.ageLevel).d(friendBean);
        if (friendBean.getUserVipMsg() != null && friendBean.getUserVipMsg().getIsVip() != 0) {
            this.vipIndicator.setVisibility(0);
            this.vipIndicator.setVipLevel(friendBean.getUserVipMsg().getIsVip());
        } else {
            this.vipIndicator.setVisibility(8);
        }
        this.userSign.setText(TextUtils.isEmpty(friendBean.getSignature()) ? BaseApplication.getInstance().getString(R.string.user_info_default_signature) : friendBean.getSignature());
        this.iconRequest.setImageResource(R.mipmap.icon_im_huihua);
        if (z10) {
            this.userDivider.setVisibility(8);
        } else {
            this.userDivider.setVisibility(0);
        }
        if (friendBean.getIsLive() == 1) {
            this.living.setVisibility(0);
            ((AnimationDrawable) this.imageStatus.getDrawable()).start();
            return;
        }
        this.living.setVisibility(4);
    }
}
