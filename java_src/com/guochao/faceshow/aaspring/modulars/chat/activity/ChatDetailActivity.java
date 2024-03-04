package com.guochao.faceshow.aaspring.modulars.chat.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.ViewModelProvider;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.BlackResponse;
import com.guochao.faceshow.aaspring.beans.ChatStatusBean;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.beans.ConversationInfoDetail;
import com.guochao.faceshow.aaspring.db.GroupInfo;
import com.guochao.faceshow.aaspring.modulars.chat.search.activity.SearchHistoryListActivity;
import com.guochao.faceshow.aaspring.modulars.chat.utils.ChatRecordUtils;
import com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel;
import com.guochao.faceshow.aaspring.utils.ConversationUtils;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.FriendFromSource;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.PhoneUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.LOCAL_EVENT_MSG;
import com.guochao.faceshow.utils.ReportController;
import com.guochao.faceshow.views.e;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMUserFullInfo;
import com.tencent.imsdk.v2.V2TIMValueCallback;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
/* loaded from: classes3.dex */
public class ChatDetailActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private Bitmap f16719a;
    @BindView
    TextView addBlack;

    /* renamed from: b  reason: collision with root package name */
    private ConversationInfo f16720b;

    /* renamed from: c  reason: collision with root package name */
    private ChatStatusBean f16721c;
    @BindView
    TextView cancelSubscribe;

    /* renamed from: d  reason: collision with root package name */
    private boolean f16722d = true;

    /* renamed from: e  reason: collision with root package name */
    private String f16723e;

    /* renamed from: f  reason: collision with root package name */
    private FriendListViewModel f16724f;
    @BindView
    View focusDivider;
    @BindView
    TextView groupName;
    @BindView
    ImageView imDisturbToggle;
    @BindView
    ImageView imStickyToggle;
    @BindView
    ImageView imTranslateState;
    @BindView
    ImageView imTrtcState;
    @BindView
    LinearLayout llTranslate;
    @BindView
    LinearLayout llTrtc;
    @BindView
    View notFocusDivider;
    @BindView
    TextView report;
    @BindView
    TextView searchChatRecord;
    @BindView
    View sendChatRecord;
    @BindView
    RelativeLayout setGroup;
    @BindView
    TextView title;
    @BindView
    FrameLayout titleBack;
    @BindView
    TextView tvTrtc;
    @BindView
    ImageView userAvatar;
    @BindView
    ImageView userFlag;
    @BindView
    RelativeLayout userLay;
    @BindView
    TextView userName;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements hb.b<String> {
        a() {
        }

        @Override // hb.b
        /* renamed from: a */
        public void onResponse(String str) {
            ChatDetailActivity.this.showToast(R.string.follow_success);
            ChatDetailActivity.this.f16721c.setAttentStatus(ChatDetailActivity.this.f16721c.getAttentStatus() + 2);
            ChatDetailActivity.this.u0();
        }

        @Override // hb.b
        public /* synthetic */ void onFail(String str) {
            hb.a.a(this, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements hb.b<String> {
        b() {
        }

        @Override // hb.b
        /* renamed from: a */
        public void onResponse(String str) {
            ChatDetailActivity.this.showToast(R.string.Unfollow_success);
            ChatDetailActivity.this.f16721c.setAttentStatus(ChatDetailActivity.this.f16721c.getAttentStatus() - 2);
            ChatDetailActivity.this.u0();
        }

        @Override // hb.b
        public /* synthetic */ void onFail(String str) {
            hb.a.a(this, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            LogUtils.i("zune", "result = " + str);
            try {
                BlackResponse blackResponse = (BlackResponse) GsonGetter.getGson().fromJson(str, (Class<Object>) BlackResponse.class);
                if (blackResponse.getErrorCode() != 0 || blackResponse.getResultItem() == null || blackResponse.getResultItem().isEmpty() || blackResponse.getResultItem().get(0).getResultCode() != 0) {
                    return;
                }
                ChatDetailActivity chatDetailActivity = ChatDetailActivity.this;
                ToastUtils.showToast(chatDetailActivity, chatDetailActivity.getString(R.string.Shielding_success));
                EventBus.getDefault().post(new Intent(LOCAL_EVENT_MSG.BLACK_NAME_ADD_OTHER));
                ChatDetailActivity.this.f16721c.setBlackStatus(ChatDetailActivity.this.f16721c.getBlackStatus() == 1 ? 3 : 4);
                ChatDetailActivity.this.u0();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* loaded from: classes3.dex */
    class d implements V2TIMValueCallback<List<V2TIMUserFullInfo>> {
        d() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: a */
        public void onSuccess(List<V2TIMUserFullInfo> list) {
            if (list != null && list.size() > 0) {
                ChatDetailActivity.this.f16720b.setConversationInfoDetail(ConversationUtils.from(list.get(0), ChatDetailActivity.this.f16720b.getTIMConversation()));
                com.guochao.faceshow.aaspring.manager.im.b.l0().R0(true);
            }
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
        }
    }

    /* loaded from: classes3.dex */
    class e extends SimpleObserver<te.a> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(te.a aVar) {
            if (aVar.f58133b) {
                if (ChatDetailActivity.this.f16719a != null) {
                    ReportController.afterBitmap(ChatDetailActivity.this.getActivity(), ChatDetailActivity.this.f16719a, ChatDetailActivity.this.f16720b.getConversationInfoDetail().getUserId(), ChatDetailActivity.this.f16720b.getConversationInfoDetail().getUserId(), "5");
                } else {
                    ReportController.report(ChatDetailActivity.this.getActivity(), ChatDetailActivity.this.f16720b.getConversationInfoDetail().getUserId(), ChatDetailActivity.this.f16720b.getConversationInfoDetail().getUserId(), "5");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            ImageView imageView = ChatDetailActivity.this.imTrtcState;
            imageView.setSelected(imageView.isSelected());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            ImageView imageView = ChatDetailActivity.this.imTrtcState;
            imageView.setSelected(!imageView.isSelected());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        g() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            ChatDetailActivity.this.imTranslateState.setSelected(false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            ChatDetailActivity.this.imTranslateState.setSelected(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        h() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            ChatDetailActivity.this.imTranslateState.setSelected(true);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            ChatDetailActivity.this.imTranslateState.setSelected(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        i() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            EventBus.getDefault().post(new Intent(LOCAL_EVENT_MSG.BLACK_NAME_CANCLE_OTHER));
            ChatDetailActivity.this.showToast(R.string.Successfully_unmasking);
            ChatDetailActivity.this.f16721c.setBlackStatus(ChatDetailActivity.this.f16721c.getBlackStatus() == 4 ? 2 : 1);
            ChatDetailActivity.this.u0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
        j() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<Object> aVar) {
            ImageView imageView = ChatDetailActivity.this.imDisturbToggle;
            imageView.setSelected(!imageView.isSelected());
            ChatDetailActivity.this.f16722d = true;
            LogUtils.i("zune", "消息免打扰e = " + aVar);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            LogUtils.i("zune", "消息免打扰 = " + obj);
            ChatDetailActivity.this.f16720b.setSilent(ChatDetailActivity.this.imDisturbToggle.isSelected() ? 1 : 0);
            if (ChatDetailActivity.this.imDisturbToggle.isSelected()) {
                com.guochao.faceshow.aaspring.manager.i.u().s().getMyNoDisturb().add(ChatDetailActivity.this.f16720b.getConversationId());
            } else {
                com.guochao.faceshow.aaspring.manager.i.u().s().getMyNoDisturb().remove(ChatDetailActivity.this.f16720b.getConversationId());
            }
            ImageView imageView = ChatDetailActivity.this.imDisturbToggle;
            imageView.setSelected(imageView.isSelected());
            ChatDetailActivity.this.f16722d = true;
            y7.h hVar = new y7.h();
            hVar.a(ChatDetailActivity.this.f16720b);
            EventBus.getDefault().post(hVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements e.a {
        k() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                dialog.dismiss();
                ChatDetailActivity.this.m0();
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements e.a {
        l() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            dialog.dismiss();
            if (z10) {
                ChatDetailActivity chatDetailActivity = ChatDetailActivity.this;
                chatDetailActivity.o0(chatDetailActivity.f16720b.getConversationInfoDetail().getUserId());
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    private void A0() {
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(this, new l());
        eVar.f(getString(R.string.Confirm_unfollow));
        eVar.k(getString(R.string.f16064ok));
        eVar.i(getString(R.string.str_no));
        eVar.show();
    }

    public static void B0(Activity activity, Bitmap bitmap, ChatStatusBean chatStatusBean, String str, int i9) {
        Intent intent = new Intent(activity, ChatDetailActivity.class);
        MemoryCache.getInstance().put(Contants.PARAMS_KEY1, bitmap);
        MemoryCache.getInstance().put(Contants.PARAMS_KEY2, chatStatusBean);
        MemoryCache.getInstance().put(Contants.PARAMS_KEY3, str);
        activity.startActivityForResult(intent, i9);
    }

    private void E0() {
        post(Contants.deletebacklist).D(Contants.USER_ID, this.f16720b.getConversationInfoDetail().getUserId()).D("account", this.f16720b.getConversationInfoDetail().getUserId()).M(new i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0() {
        post(Contants.BLACL_LIST_ADD).D("From_Account", getCurrentUser().getUserId()).D("To_Account", this.f16720b.getConversationInfoDetail().getUserId()).M(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0(String str) {
        ib.b.a(str, getActivity(), new b());
    }

    private void p0(String str) {
        ib.b.b(str, FriendFromSource.DEFAULT, getActivity(), new a());
    }

    private void q0() {
        if (this.f16720b == null) {
            this.f16720b = new ConversationInfo();
        }
        if (this.f16721c == null) {
            ChatStatusBean chatStatusBean = new ChatStatusBean();
            this.f16721c = chatStatusBean;
            chatStatusBean.setBlackStatus(1);
            this.f16721c.setAttentStatus(4);
            this.f16721c.setAutoTransFlag("0");
        }
    }

    private boolean r0() {
        ChatStatusBean chatStatusBean = this.f16721c;
        return chatStatusBean != null && chatStatusBean.getBlackStatus() > 2;
    }

    private boolean s0() {
        ChatStatusBean chatStatusBean = this.f16721c;
        return chatStatusBean != null && (chatStatusBean.getAttentStatus() == 3 || this.f16721c.getAttentStatus() == 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0() {
        ChatStatusBean chatStatusBean = this.f16721c;
        if (chatStatusBean != null) {
            this.addBlack.setText(getString(chatStatusBean.getBlackStatus() < 3 ? R.string.blacklist : R.string.unblock));
            this.cancelSubscribe.setText(getString((this.f16721c.getAttentStatus() == 3 || this.f16721c.getAttentStatus() == 4) ? R.string.Cancel_the_attention : R.string.focus));
            if (this.f16721c.getAttentStatus() == 4) {
                this.setGroup.setVisibility(0);
            } else {
                this.setGroup.setVisibility(8);
            }
            if (this.f16721c.getAttentStatus() != 3 && this.f16721c.getAttentStatus() != 4) {
                this.focusDivider.setVisibility(8);
                this.notFocusDivider.setVisibility(0);
            } else {
                this.focusDivider.setVisibility(0);
                this.notFocusDivider.setVisibility(8);
            }
        }
        this.imStickyToggle.setSelected(this.f16720b.getAlwaysTop() == 1);
        this.imDisturbToggle.setSelected(this.f16720b.getSilent() == 1);
        this.imTranslateState.setSelected("1".equals(this.f16721c.getAutoTransFlag()));
        this.imTrtcState.setSelected(1 == this.f16721c.getMyAttentionAppointAuth());
    }

    private void y0() {
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(getActivity(), new k());
        if (this.f16721c.getAttentStatus() == 4) {
            eVar.f(getString(R.string.la_black_friend));
        } else {
            eVar.f(getString(R.string.Confirm_masking));
        }
        eVar.k(getString(R.string.f16064ok));
        eVar.i(getString(R.string.str_no));
        eVar.show();
    }

    public void F0() {
        post("user/attention/updateAttention").v(Contants.USER_ID, getCurrentUser().getUserId()).v("account", this.f16720b.getConversationInfoDetail().getUserId()).v("disTurbSwitch", Integer.valueOf(this.imDisturbToggle.isSelected() ? 1 : 0)).M(new j());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_chat_detail;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.Chat_details);
        if (BaseConfig.isChinese()) {
            this.llTranslate.setVisibility(8);
        } else {
            this.llTranslate.setVisibility(0);
        }
        if (getCurrentUser().getBindMobileLimit() == 1 && PhoneUtils.isSouthKorea()) {
            this.sendChatRecord.setVisibility(0);
        } else {
            this.sendChatRecord.setVisibility(8);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        if (this.f16720b == null || this.f16721c == null) {
            q0();
        }
        if (this.f16720b.getConversationInfoDetail() == null) {
            ConversationInfoDetail conversationInfoDetail = new ConversationInfoDetail();
            conversationInfoDetail.setAvatar("");
            conversationInfoDetail.setNickName("");
            conversationInfoDetail.setUserId("");
            this.f16720b.setConversationInfoDetail(conversationInfoDetail);
        }
        u0();
        hc.a.e(this.userAvatar, this.f16720b.getConversationInfoDetail().getAvatar(), this.f16720b.getConversationInfoDetail().getGender());
        if (BaseConfig.isChinese()) {
            this.userFlag.setVisibility(8);
        } else {
            hc.a.h(this.userFlag, this.f16720b.getConversationInfoDetail().getCountryFlag(), R.mipmap.ic_earth);
        }
        this.userName.setText(TextViewUtils.getSubStr(this.f16720b.getConversationInfoDetail().getNickName(), -1));
    }

    public void n0() {
        this.imTranslateState.setSelected(false);
        post("tokens/translate/closeAutoTranslate").v("targetUserId", this.f16720b.getConversationInfoDetail().getUserId()).M(new h());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i10 == -1 && i9 == 105 && intent != null) {
            this.groupName.setText(intent.getStringExtra("name"));
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        Intent intent = getIntent();
        MemoryCache.getInstance().put(this.f16721c);
        setResult(-1, intent);
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        GroupInfo findGroupInfoByFriendId;
        this.f16724f = (FriendListViewModel) new ViewModelProvider(GCApplication.app()).get(FriendListViewModel.class);
        this.f16719a = (Bitmap) MemoryCache.getInstance().remove(Contants.PARAMS_KEY1);
        this.f16721c = (ChatStatusBean) MemoryCache.getInstance().remove(Contants.PARAMS_KEY2);
        this.f16723e = (String) MemoryCache.getInstance().remove(Contants.PARAMS_KEY3);
        this.f16720b = com.guochao.faceshow.aaspring.manager.im.b.l0().g0();
        super.onCreate(bundle);
        ConversationInfo conversationInfo = this.f16720b;
        if (conversationInfo != null && conversationInfo.getConversationInfoDetail() != null) {
            V2TIMManager.getInstance().getUsersInfo(Collections.singletonList(this.f16720b.getConversationInfoDetail().getUserId()), new d());
        }
        if (TextUtils.isEmpty(this.f16723e) || (findGroupInfoByFriendId = this.f16724f.findGroupInfoByFriendId(this.f16723e)) == null) {
            return;
        }
        if (findGroupInfoByFriendId.getId() == 0 && TextUtils.isEmpty(findGroupInfoByFriendId.getName())) {
            this.groupName.setText(R.string.message_Friends);
        } else {
            this.groupName.setText(findGroupInfoByFriendId.getName());
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.add_black /* 2131361920 */:
                if (!DisableDoubleClickUtils.canClick(view) || this.f16721c == null || this.f16720b == null) {
                    return;
                }
                if (!r0()) {
                    y0();
                    return;
                } else {
                    E0();
                    return;
                }
            case R.id.cancel_subscribe /* 2131362230 */:
                if (DisableDoubleClickUtils.canClick(view) && this.f16721c != null) {
                    if (s0()) {
                        A0();
                        return;
                    } else {
                        p0(this.f16720b.getConversationInfoDetail().getUserId());
                        return;
                    }
                }
                return;
            case R.id.im_disturb_toggle /* 2131363091 */:
                if (this.f16722d) {
                    this.f16722d = false;
                    ImageView imageView = this.imDisturbToggle;
                    imageView.setSelected(!imageView.isSelected());
                    F0();
                    return;
                }
                return;
            case R.id.im_sticky_toggle /* 2131363094 */:
                if (DisableDoubleClickUtils.canClick(view, 500L)) {
                    ImageView imageView2 = this.imStickyToggle;
                    imageView2.setSelected(!imageView2.isSelected());
                    this.f16720b.setAlwaysTop(this.imStickyToggle.isSelected() ? 1 : 0);
                    com.guochao.faceshow.aaspring.manager.im.b.l0().R0(true);
                    return;
                }
                return;
            case R.id.im_translate_state /* 2131363096 */:
                if (this.imTranslateState.isSelected()) {
                    n0();
                    return;
                } else if (com.guochao.faceshow.aaspring.manager.i.u().s().getTransSwitchEnableFlag() != 1) {
                    return;
                } else {
                    t0();
                    return;
                }
            case R.id.im_trtc_state /* 2131363097 */:
                if (this.imTrtcState.isSelected()) {
                    v0(0);
                    return;
                } else {
                    v0(1);
                    return;
                }
            case R.id.report /* 2131364209 */:
                if (this.f16720b == null) {
                    return;
                }
                new com.tbruyelle.rxpermissions2.a(this).p("android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE").subscribe(new e());
                return;
            case R.id.search_chat_record /* 2131364370 */:
                SearchHistoryListActivity.m0(this, this.f16720b);
                return;
            case R.id.send_chat_record /* 2131364444 */:
                ChatRecordUtils.loadMsg(new WeakReference(this), this.f16720b.getConversationInfoDetail().getUserId(), TextViewUtils.getSubStr(this.f16720b.getConversationInfoDetail().getNickName(), -1));
                return;
            case R.id.set_group /* 2131364451 */:
                Intent intent = new Intent(this, FriendSetGroupActivity.class);
                intent.putExtra("id", this.f16723e);
                startActivityForResult(intent, 105);
                return;
            case R.id.user_lay /* 2131365309 */:
                if (this.f16720b == null) {
                    return;
                }
                Intent intent2 = new Intent(this, UserHomePageAct.class);
                intent2.putExtra(Contants.USER_ID, this.f16720b.getConversationInfoDetail().getUserId());
                startActivity(intent2);
                return;
            default:
                return;
        }
    }

    public void t0() {
        this.imTranslateState.setSelected(true);
        post("tokens/translate/openAutoTranslate").v("targetUserId", this.f16720b.getConversationInfoDetail().getUserId()).M(new g());
    }

    public void v0(int i9) {
        post("tokens/appoint/attentionAppointAuth").y(Contants.USER_ID, getCurrentUser().getCurrentUserId()).y("accountId", this.f16723e).y("attentionAppointAuth", Integer.valueOf(i9)).M(new f());
    }
}
