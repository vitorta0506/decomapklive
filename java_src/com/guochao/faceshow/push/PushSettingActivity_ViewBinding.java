package com.guochao.faceshow.push;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.UiThread;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes4.dex */
public class PushSettingActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private PushSettingActivity f26192c;

    /* renamed from: d  reason: collision with root package name */
    private View f26193d;

    /* loaded from: classes4.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PushSettingActivity f26194a;

        a(PushSettingActivity pushSettingActivity) {
            this.f26194a = pushSettingActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f26194a.onViewClicked();
        }
    }

    @UiThread
    public PushSettingActivity_ViewBinding(PushSettingActivity pushSettingActivity, View view) {
        super(pushSettingActivity, view);
        this.f26192c = pushSettingActivity;
        pushSettingActivity.swCommentsAbout = (ImageView) c.d(view, R.id.swCommentsAbout, "field 'swCommentsAbout'", ImageView.class);
        pushSettingActivity.swUseYourMusic = (ImageView) c.d(view, R.id.swUseYourMusic, "field 'swUseYourMusic'", ImageView.class);
        pushSettingActivity.swVideoAbout = (ImageView) c.d(view, R.id.swVideoAbout, "field 'swVideoAbout'", ImageView.class);
        pushSettingActivity.swWhoSendGift = (ImageView) c.d(view, R.id.swWhoSendGift, "field 'swWhoSendGift'", ImageView.class);
        pushSettingActivity.swWhoSendGiftFromVideo = (ImageView) c.d(view, R.id.swWhoSendGiftFromVideo, "field 'swWhoSendGiftFromVideo'", ImageView.class);
        pushSettingActivity.swWhoSendGiftForChat = (ImageView) c.d(view, R.id.swWhoSendGiftForChat, "field 'swWhoSendGiftForChat'", ImageView.class);
        pushSettingActivity.swFocusVideo = (ImageView) c.d(view, R.id.swFocusVideo, "field 'swFocusVideo'", ImageView.class);
        pushSettingActivity.swFocusLive = (ImageView) c.d(view, R.id.swFocusLive, "field 'swFocusLive'", ImageView.class);
        pushSettingActivity.swQAndA = (ImageView) c.d(view, R.id.swQAndA, "field 'swQAndA'", ImageView.class);
        pushSettingActivity.newChatMsgStatues = (ImageView) c.d(view, R.id.newChatMsgStatues, "field 'newChatMsgStatues'", ImageView.class);
        pushSettingActivity.friendCirclePraise = (ImageView) c.d(view, R.id.friend_circle_praise, "field 'friendCirclePraise'", ImageView.class);
        pushSettingActivity.requestPraise = (ImageView) c.d(view, R.id.requestPraise, "field 'requestPraise'", ImageView.class);
        pushSettingActivity.rootLay = (ViewGroup) c.d(view, R.id.root_lay, "field 'rootLay'", ViewGroup.class);
        View c10 = c.c(view, R.id.live_open_push_setting, "field 'liveOpenPushSetting' and method 'onViewClicked'");
        pushSettingActivity.liveOpenPushSetting = c10;
        this.f26193d = c10;
        c10.setOnClickListener(new a(pushSettingActivity));
        pushSettingActivity.systemInteraction = (ImageView) c.d(view, R.id.system_interaction, "field 'systemInteraction'", ImageView.class);
        pushSettingActivity.llPushVideo = (LinearLayout) c.d(view, R.id.ll_push_video, "field 'llPushVideo'", LinearLayout.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        PushSettingActivity pushSettingActivity = this.f26192c;
        if (pushSettingActivity != null) {
            this.f26192c = null;
            pushSettingActivity.swCommentsAbout = null;
            pushSettingActivity.swUseYourMusic = null;
            pushSettingActivity.swVideoAbout = null;
            pushSettingActivity.swWhoSendGift = null;
            pushSettingActivity.swWhoSendGiftFromVideo = null;
            pushSettingActivity.swWhoSendGiftForChat = null;
            pushSettingActivity.swFocusVideo = null;
            pushSettingActivity.swFocusLive = null;
            pushSettingActivity.swQAndA = null;
            pushSettingActivity.newChatMsgStatues = null;
            pushSettingActivity.friendCirclePraise = null;
            pushSettingActivity.requestPraise = null;
            pushSettingActivity.rootLay = null;
            pushSettingActivity.liveOpenPushSetting = null;
            pushSettingActivity.systemInteraction = null;
            pushSettingActivity.llPushVideo = null;
            this.f26193d.setOnClickListener(null);
            this.f26193d = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
