package com.guochao.faceshow.push;

import android.app.Dialog;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.config.ServerConfig;
import com.guochao.faceshow.aaspring.modulars.personal.setting.LiveOpenPushSettingActivity;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.push.model.PushStatus;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.views.e;
/* loaded from: classes4.dex */
public class PushSettingActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    PushStatus f26170a;
    @BindView
    ImageView friendCirclePraise;
    @BindView
    View liveOpenPushSetting;
    @BindView
    LinearLayout llPushVideo;
    @BindView
    ImageView newChatMsgStatues;
    @BindView
    ImageView requestPraise;
    @BindView
    ViewGroup rootLay;
    @BindView
    ImageView swCommentsAbout;
    @BindView
    ImageView swFocusLive;
    @BindView
    ImageView swFocusVideo;
    @BindView
    ImageView swQAndA;
    @BindView
    ImageView swUseYourMusic;
    @BindView
    ImageView swVideoAbout;
    @BindView
    ImageView swWhoSendGift;
    @BindView
    ImageView swWhoSendGiftForChat;
    @BindView
    ImageView swWhoSendGiftFromVideo;
    @BindView
    ImageView systemInteraction;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PushSettingActivity pushSettingActivity = PushSettingActivity.this;
            ImageView imageView = pushSettingActivity.swWhoSendGiftForChat;
            pushSettingActivity.k0(imageView, "is_gift_chat", !imageView.isSelected());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (PushSettingActivity.this.swFocusVideo.isSelected()) {
                PushSettingActivity.this.l0(3);
                return;
            }
            PushSettingActivity pushSettingActivity = PushSettingActivity.this;
            ImageView imageView = pushSettingActivity.swFocusVideo;
            pushSettingActivity.k0(imageView, "is_like_vide", !imageView.isSelected());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (PushSettingActivity.this.swFocusLive.isSelected()) {
                PushSettingActivity.this.l0(1);
                return;
            }
            PushSettingActivity pushSettingActivity = PushSettingActivity.this;
            ImageView imageView = pushSettingActivity.swFocusLive;
            pushSettingActivity.k0(imageView, "is_anchor", 1 ^ imageView.isSelected());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PushSettingActivity pushSettingActivity = PushSettingActivity.this;
            ImageView imageView = pushSettingActivity.swQAndA;
            pushSettingActivity.k0(imageView, "is_qa", !imageView.isSelected());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (PushSettingActivity.this.newChatMsgStatues.isSelected()) {
                PushSettingActivity.this.l0(2);
                return;
            }
            PushSettingActivity pushSettingActivity = PushSettingActivity.this;
            ImageView imageView = pushSettingActivity.newChatMsgStatues;
            pushSettingActivity.k0(imageView, "chat_switch", !imageView.isSelected());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PushSettingActivity pushSettingActivity = PushSettingActivity.this;
            ImageView imageView = pushSettingActivity.friendCirclePraise;
            pushSettingActivity.k0(imageView, "is_friend", !imageView.isSelected());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PushSettingActivity pushSettingActivity = PushSettingActivity.this;
            ImageView imageView = pushSettingActivity.requestPraise;
            pushSettingActivity.k0(imageView, "is_friend_request", !imageView.isSelected());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class h implements e.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f26178a;

        h(int i9) {
            this.f26178a = i9;
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                int i9 = this.f26178a;
                if (i9 == 1) {
                    PushSettingActivity pushSettingActivity = PushSettingActivity.this;
                    ImageView imageView = pushSettingActivity.swFocusLive;
                    pushSettingActivity.k0(imageView, "is_anchor", 1 ^ imageView.isSelected());
                } else if (i9 == 2) {
                    PushSettingActivity pushSettingActivity2 = PushSettingActivity.this;
                    ImageView imageView2 = pushSettingActivity2.newChatMsgStatues;
                    pushSettingActivity2.k0(imageView2, "chat_switch", 1 ^ imageView2.isSelected());
                } else {
                    PushSettingActivity pushSettingActivity3 = PushSettingActivity.this;
                    ImageView imageView3 = pushSettingActivity3.swFocusVideo;
                    pushSettingActivity3.k0(imageView3, "is_like_vide", 1 ^ imageView3.isSelected());
                }
                dialog.dismiss();
                return;
            }
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class i extends com.guochao.faceshow.aaspring.base.http.callback.c<PushStatus> {
        i() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable PushStatus pushStatus, @NonNull FaceCastBaseResponse<PushStatus> faceCastBaseResponse) {
            PushSettingActivity pushSettingActivity = PushSettingActivity.this;
            pushSettingActivity.f26170a = pushStatus;
            if (pushStatus == null) {
                return;
            }
            pushSettingActivity.swCommentsAbout.setSelected(pushStatus.getIs_reply_comment() == 1);
            PushSettingActivity pushSettingActivity2 = PushSettingActivity.this;
            pushSettingActivity2.swUseYourMusic.setSelected(pushSettingActivity2.f26170a.getIs_music() == 1);
            PushSettingActivity pushSettingActivity3 = PushSettingActivity.this;
            pushSettingActivity3.swVideoAbout.setSelected(pushSettingActivity3.f26170a.getIs_video() == 1);
            PushSettingActivity pushSettingActivity4 = PushSettingActivity.this;
            pushSettingActivity4.swWhoSendGift.setSelected(pushSettingActivity4.f26170a.getIs_gift() == 1);
            PushSettingActivity pushSettingActivity5 = PushSettingActivity.this;
            pushSettingActivity5.swWhoSendGiftFromVideo.setSelected(pushSettingActivity5.f26170a.getIs_video_gift() == 1);
            PushSettingActivity pushSettingActivity6 = PushSettingActivity.this;
            pushSettingActivity6.swWhoSendGiftForChat.setSelected(pushSettingActivity6.f26170a.getIs_gift_chat() == 1);
            PushSettingActivity pushSettingActivity7 = PushSettingActivity.this;
            pushSettingActivity7.swFocusVideo.setSelected(pushSettingActivity7.f26170a.getIs_like_vide() == 1);
            PushSettingActivity pushSettingActivity8 = PushSettingActivity.this;
            pushSettingActivity8.swFocusLive.setSelected(pushSettingActivity8.f26170a.getIs_anchor() == 1);
            PushSettingActivity pushSettingActivity9 = PushSettingActivity.this;
            pushSettingActivity9.swQAndA.setSelected(pushSettingActivity9.f26170a.getIs_qa() == 1);
            PushSettingActivity pushSettingActivity10 = PushSettingActivity.this;
            pushSettingActivity10.newChatMsgStatues.setSelected(pushSettingActivity10.f26170a.getChat_switch() == 1);
            PushSettingActivity.this.i0();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<PushStatus> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class j extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f26181a;

        j(ImageView imageView) {
            this.f26181a = imageView;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            this.f26181a.setEnabled(true);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<Object> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(Object obj, FaceCastBaseResponse<Object> faceCastBaseResponse) {
            ServerConfig s10 = com.guochao.faceshow.aaspring.manager.i.u().s();
            s10.setChat_switch(this.f26181a.isSelected() ? 1 : 0);
            com.guochao.faceshow.aaspring.manager.b.e("serverconfig" + SpUtils.getStr(PushSettingActivity.this, Contants.USER_ID), s10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class k extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f26183a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f26184b;

        k(ImageView imageView, String str) {
            this.f26183a = imageView;
            this.f26184b = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            this.f26183a.setEnabled(true);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(String str, FaceCastBaseResponse<String> faceCastBaseResponse) {
            if ("is_anchor".equals(this.f26184b)) {
                if (this.f26183a.isSelected()) {
                    PushSettingActivity.this.liveOpenPushSetting.setVisibility(0);
                } else {
                    PushSettingActivity.this.liveOpenPushSetting.setVisibility(8);
                }
            }
            SpUtils.setBool(PushSettingActivity.this.getActivity(), this.f26184b, this.f26183a.isSelected());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PushSettingActivity pushSettingActivity = PushSettingActivity.this;
            ImageView imageView = pushSettingActivity.swCommentsAbout;
            pushSettingActivity.k0(imageView, "is_reply_comment", !imageView.isSelected());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PushSettingActivity pushSettingActivity = PushSettingActivity.this;
            ImageView imageView = pushSettingActivity.systemInteraction;
            pushSettingActivity.k0(imageView, "is_system_interaction", !imageView.isSelected());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PushSettingActivity pushSettingActivity = PushSettingActivity.this;
            ImageView imageView = pushSettingActivity.swUseYourMusic;
            pushSettingActivity.k0(imageView, "is_music", !imageView.isSelected());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PushSettingActivity pushSettingActivity = PushSettingActivity.this;
            ImageView imageView = pushSettingActivity.swVideoAbout;
            pushSettingActivity.k0(imageView, "is_video", !imageView.isSelected());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PushSettingActivity pushSettingActivity = PushSettingActivity.this;
            ImageView imageView = pushSettingActivity.swWhoSendGift;
            pushSettingActivity.k0(imageView, "is_gift", !imageView.isSelected());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PushSettingActivity pushSettingActivity = PushSettingActivity.this;
            ImageView imageView = pushSettingActivity.swWhoSendGiftFromVideo;
            pushSettingActivity.k0(imageView, "is_video_gift", !imageView.isSelected());
        }
    }

    private void e0() {
        post(Contants.PUSH_CURRENT_STATUS).M(new i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0() {
        this.swCommentsAbout.setOnClickListener(new l());
        this.systemInteraction.setOnClickListener(new m());
        this.swUseYourMusic.setOnClickListener(new n());
        this.swVideoAbout.setOnClickListener(new o());
        this.swWhoSendGift.setOnClickListener(new p());
        this.swWhoSendGiftFromVideo.setOnClickListener(new q());
        this.swWhoSendGiftForChat.setOnClickListener(new a());
        this.swFocusVideo.setOnClickListener(new b());
        this.swFocusLive.setOnClickListener(new c());
        this.swQAndA.setOnClickListener(new d());
        this.newChatMsgStatues.setOnClickListener(new e());
        this.friendCirclePraise.setOnClickListener(new f());
        this.requestPraise.setOnClickListener(new g());
        if (this.swFocusLive.isSelected()) {
            this.liveOpenPushSetting.setVisibility(0);
        } else {
            this.liveOpenPushSetting.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0(ImageView imageView, String str, int i9) {
        imageView.setSelected(!imageView.isSelected());
        imageView.setEnabled(false);
        if ("chat_switch".equals(str)) {
            post("tokens/im/sendMsg/updateUserInfoMsg").v(str, Integer.valueOf(imageView.isSelected() ? 1 : 0)).v(Contants.USER_ID, getCurrentUser().getUserId()).M(new j(imageView));
        } else if (!"is_anchor".equals(str) && !"is_like_vide".equals(str)) {
            SpUtils.setBool(getActivity(), str, imageView.isSelected());
            imageView.setEnabled(true);
        } else {
            post(Contants.PUSH_CURRENT_STATUS_SET).B(str, imageView.isSelected() ? 1 : 0).M(new k(imageView, str));
        }
    }

    void g0(ViewGroup viewGroup) {
        for (int i9 = 0; i9 < viewGroup.getChildCount(); i9++) {
            View childAt = viewGroup.getChildAt(i9);
            if (childAt instanceof ImageView) {
                childAt.setSelected(true);
            } else if (childAt instanceof ViewGroup) {
                g0((ViewGroup) childAt);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_push_setting;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.push_notification_setting);
        g0(this.rootLay);
        if (BaseConfig.isChinese()) {
            this.llPushVideo.setVisibility(8);
        } else {
            this.llPushVideo.setVisibility(0);
        }
    }

    public void l0(int i9) {
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(getActivity(), new h(i9));
        eVar.m(ContextCompat.getColor(getActivity(), R.color.color_app_tips));
        eVar.d(ContextCompat.getColor(getActivity(), R.color.color_ugc_text_level_2));
        if (i9 == 1) {
            eVar.f(getString(R.string.push_close_live_msg));
        } else if (i9 == 2) {
            eVar.f(getString(R.string.push_close_chat_msg));
        } else {
            eVar.f(getString(R.string.push_close_video_msg));
        }
        eVar.show();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        e0();
        this.friendCirclePraise.setSelected(SpUtils.getBool(BaseApplication.getInstance(), "is_friend", true));
        this.systemInteraction.setSelected(SpUtils.getBool(BaseApplication.getInstance(), "is_system_interaction", true));
        this.requestPraise.setSelected(SpUtils.getBool(BaseApplication.getInstance(), "is_friend_request", true));
    }

    @OnClick
    public void onViewClicked() {
        startActivity(new Intent(getActivity(), LiveOpenPushSettingActivity.class));
    }
}
