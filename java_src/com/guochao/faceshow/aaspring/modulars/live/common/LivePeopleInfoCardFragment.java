package com.guochao.faceshow.aaspring.modulars.live.common;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.LivePeopleInfoBean;
import com.guochao.faceshow.aaspring.dialog.GCDialog;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.GiftLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.user.view.UserCenterSexLevel;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.Formatter;
import com.guochao.faceshow.aaspring.utils.FriendFromSource;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.aaspring.utils.ScreenShotHelper;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.e;
import d9.e;
import java.util.Objects;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
@Deprecated
/* loaded from: classes3.dex */
public class LivePeopleInfoCardFragment extends BaseDialogFragment implements d9.e {
    @BindView
    View adminArea;
    @BindView
    TextView chatTV;
    @BindView
    View cmdArea;
    @BindView
    View focus;
    boolean focusClick = true;
    @BindView
    View kickArea;
    @BindView
    HeadPortraitView mAvatarView;
    @BindView
    TextView mFCoins;
    @BindView
    TextView mFansCount;
    @BindView
    View mGenderAndSexView;
    d9.g mILiveRoomManager;
    @Nullable
    private LivePeopleInfoBean mLivePeopleInfoBean;
    private boolean mPkBroadcaster;
    @BindView
    View mReportView;
    @BindView
    TextView mSentCount;
    protected String mUserId;
    @BindView
    TextView mUserIdView;
    protected String mUserName;
    @BindView
    TextView mUserNameView;
    @BindView
    View muteArea;
    @BindView
    View peopleCardChat;
    @BindView
    TextView peopleCardUserFocus;
    @BindView
    View spaceView;
    @BindView
    LinearLayout userInfoLayout;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements hb.b<String> {
        a() {
        }

        @Override // hb.b
        /* renamed from: a */
        public void onFail(String str) {
            LivePeopleInfoCardFragment livePeopleInfoCardFragment = LivePeopleInfoCardFragment.this;
            livePeopleInfoCardFragment.focusClick = true;
            livePeopleInfoCardFragment.setFocused(false);
            if (LivePeopleInfoCardFragment.this.mLivePeopleInfoBean != null) {
                LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.setIs_tutual(0);
            }
        }

        @Override // hb.b
        /* renamed from: b */
        public void onResponse(String str) {
            LivePeopleInfoCardFragment livePeopleInfoCardFragment = LivePeopleInfoCardFragment.this;
            livePeopleInfoCardFragment.focusClick = true;
            if (livePeopleInfoCardFragment.getActivity() == null) {
                return;
            }
            if (LivePeopleInfoCardFragment.this.mLivePeopleInfoBean != null) {
                LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.setIs_tutual(1);
            }
            if (!LivePeopleInfoCardFragment.this.isBroadCaster()) {
                LivePeopleInfoCardFragment livePeopleInfoCardFragment2 = LivePeopleInfoCardFragment.this;
                if (livePeopleInfoCardFragment2.mUserId.equals(livePeopleInfoCardFragment2.mILiveRoomManager.getCurrentLiveRoom().getBroadCasterUserId())) {
                    LivePeopleInfoCardFragment livePeopleInfoCardFragment3 = LivePeopleInfoCardFragment.this;
                    livePeopleInfoCardFragment3.mILiveRoomManager.sendLiveMessage(LiveMessageModelFactory.createFocusBroadCasterModel(livePeopleInfoCardFragment3.getCurrentUser().getUserId(), LivePeopleInfoCardFragment.this.getCurrentUser().getUserName(), LivePeopleInfoCardFragment.this.getCurrentUser().getLevel(), LivePeopleInfoCardFragment.this.getCurrentLiveRoom().isAdministrator()), (e.a<Boolean>) null);
                }
            }
            LivePeopleInfoCardFragment livePeopleInfoCardFragment4 = LivePeopleInfoCardFragment.this;
            ((BaseLiveRoomFragment) livePeopleInfoCardFragment4.mILiveRoomManager).t("1", livePeopleInfoCardFragment4.mUserId);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<LivePeopleInfoBean> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LivePeopleInfoBean> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable LivePeopleInfoBean livePeopleInfoBean, @NonNull FaceCastBaseResponse<LivePeopleInfoBean> faceCastBaseResponse) {
            LivePeopleInfoCardFragment.this.mLivePeopleInfoBean = livePeopleInfoBean;
            if (livePeopleInfoBean != null) {
                if (LivePeopleInfoCardFragment.this.mPkBroadcaster && !LivePeopleInfoCardFragment.this.mILiveRoomManager.getCurrentLiveRoom().isBroadCaster()) {
                    LivePeopleInfoCardFragment livePeopleInfoCardFragment = LivePeopleInfoCardFragment.this;
                    livePeopleInfoCardFragment.mAvatarView.setLivingStatus(livePeopleInfoCardFragment.mLivePeopleInfoBean.getIsLive() == 1);
                }
                LivePeopleInfoCardFragment.this.mAvatarView.d(livePeopleInfoBean);
                new UserCenterSexLevel(LivePeopleInfoCardFragment.this.mGenderAndSexView, false, false).d(livePeopleInfoBean);
                LivePeopleInfoCardFragment.this.mFansCount.setText(Formatter.getFormat(StringUtils.parseIntSafely(livePeopleInfoBean.getFensiNum())));
                LivePeopleInfoCardFragment.this.mSentCount.setText(Formatter.getFormat(StringUtils.parseIntSafely(livePeopleInfoBean.getSendGiftNum())));
                LivePeopleInfoCardFragment.this.mFCoins.setText(Formatter.getFormat(StringUtils.parseIntSafely(livePeopleInfoBean.getGiftDiamondNum())));
                LivePeopleInfoCardFragment.this.mUserNameView.setText(livePeopleInfoBean.getNick_name());
                if (livePeopleInfoBean.getIs_tutual() == 1) {
                    LivePeopleInfoCardFragment.this.setFocused(true);
                    LivePeopleInfoCardFragment livePeopleInfoCardFragment2 = LivePeopleInfoCardFragment.this;
                    ((BaseLiveRoomFragment) livePeopleInfoCardFragment2.mILiveRoomManager).t("1", livePeopleInfoCardFragment2.mUserId);
                } else {
                    LivePeopleInfoCardFragment.this.setFocused(false);
                    LivePeopleInfoCardFragment livePeopleInfoCardFragment3 = LivePeopleInfoCardFragment.this;
                    ((BaseLiveRoomFragment) livePeopleInfoCardFragment3.mILiveRoomManager).t("0", livePeopleInfoCardFragment3.mUserId);
                }
                LivePeopleInfoCardFragment.this.userInfoLayout.setVisibility(0);
                LivePeopleInfoCardFragment.this.refreshUserType();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements e.a {

        /* loaded from: classes3.dex */
        class a extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<String> aVar) {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
                if (faceCastBaseResponse.getCode() != 1) {
                    onFailure(new g7.a<>(new Exception(""), -1));
                    return;
                }
                LivePeopleInfoCardFragment livePeopleInfoCardFragment = LivePeopleInfoCardFragment.this;
                livePeopleInfoCardFragment.mILiveRoomManager.K(true, livePeopleInfoCardFragment.mLivePeopleInfoBean.getUserId(), LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.getNick_name(), LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.getImg());
                LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.setBanTalk(1);
            }
        }

        c() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            LivePeopleInfoCardFragment.this.dismissAllowingStateLoss();
            if (z10) {
                LivePeopleInfoCardFragment.this.post("tokens/live/ban/openLiveBanByUid").P(LivePeopleInfoCardFragment.this.requireActivity()).D(Contants.USER_ID, LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.getUserId()).D("IMID", LivePeopleInfoCardFragment.this.getCurrentLiveRoom().getChatGroupId()).M(new a());
            }
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements e.a {

        /* loaded from: classes3.dex */
        class a extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<String> aVar) {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
                if (faceCastBaseResponse.getCode() != 1) {
                    onFailure(new g7.a<>(new Exception(""), -1));
                    return;
                }
                LivePeopleInfoCardFragment livePeopleInfoCardFragment = LivePeopleInfoCardFragment.this;
                livePeopleInfoCardFragment.mILiveRoomManager.K(false, livePeopleInfoCardFragment.mLivePeopleInfoBean.getUserId(), LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.getNick_name(), LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.getImg());
                LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.setBanTalk(0);
                LivePeopleInfoCardFragment.this.dismissAllowingStateLoss();
            }
        }

        d() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            LivePeopleInfoCardFragment.this.dismissAllowingStateLoss();
            if (z10) {
                LivePeopleInfoCardFragment.this.post("tokens/live/ban/closeLiveBanByUid").P(LivePeopleInfoCardFragment.this.getActivity()).D(Contants.USER_ID, LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.getUserId()).D("IMID", LivePeopleInfoCardFragment.this.getCurrentLiveRoom().getChatGroupId()).M(new a());
            }
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements Function1<GCDialog, Unit> {
        e() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(GCDialog gCDialog) {
            gCDialog.dismiss();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements Function1<GCDialog, Unit> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<String> aVar) {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
                if (faceCastBaseResponse.getCode() != 1) {
                    onFailure(new g7.a<>(new Exception(""), -1));
                    return;
                }
                LivePeopleInfoCardFragment livePeopleInfoCardFragment = LivePeopleInfoCardFragment.this;
                d9.g gVar = livePeopleInfoCardFragment.mILiveRoomManager;
                if (gVar instanceof d9.c) {
                    ((d9.c) gVar).w0(livePeopleInfoCardFragment.mLivePeopleInfoBean.getUserId(), LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.getNick_name(), LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.getImg(), true);
                    LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.setAdmin(1);
                    LivePeopleInfoCardFragment.this.dismissAllowingStateLoss();
                }
            }
        }

        f() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(GCDialog gCDialog) {
            gCDialog.dismiss();
            LivePeopleInfoCardFragment.this.post("tokens/live/home/setLiveAdmin").P(LivePeopleInfoCardFragment.this.requireActivity()).D(Contants.USER_ID, LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.getUserId()).D("liveId", LivePeopleInfoCardFragment.this.getCurrentLiveRoom().getLiveRoomId()).M(new a());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements Function1<GCDialog, Unit> {
        g() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(GCDialog gCDialog) {
            gCDialog.dismiss();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements Function1<GCDialog, Unit> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<String> aVar) {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
                if (faceCastBaseResponse.getCode() != 1) {
                    onFailure(new g7.a<>(new Exception(""), -1));
                    return;
                }
                LivePeopleInfoCardFragment livePeopleInfoCardFragment = LivePeopleInfoCardFragment.this;
                d9.g gVar = livePeopleInfoCardFragment.mILiveRoomManager;
                if (gVar instanceof d9.c) {
                    ((d9.c) gVar).w0(livePeopleInfoCardFragment.mLivePeopleInfoBean.getUserId(), LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.getNick_name(), LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.getImg(), false);
                    LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.setAdmin(0);
                    LivePeopleInfoCardFragment.this.dismissAllowingStateLoss();
                }
            }
        }

        h() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(GCDialog gCDialog) {
            gCDialog.dismiss();
            LivePeopleInfoCardFragment.this.post("tokens/live/home/cancelLiveAdmin").P(LivePeopleInfoCardFragment.this.requireActivity()).D(Contants.USER_ID, LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.getUserId()).D("liveId", LivePeopleInfoCardFragment.this.getCurrentLiveRoom().getLiveRoomId()).M(new a());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements e.a {

        /* loaded from: classes3.dex */
        class a extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<Object> aVar) {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
                LivePeopleInfoCardFragment livePeopleInfoCardFragment = LivePeopleInfoCardFragment.this;
                livePeopleInfoCardFragment.mILiveRoomManager.h(livePeopleInfoCardFragment.mLivePeopleInfoBean.getUserId(), LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.getNick_name(), LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.getImg());
                LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.setKink(1);
                LivePeopleInfoCardFragment.this.dismissAllowingStateLoss();
            }
        }

        i() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                LivePeopleInfoCardFragment.this.post("tokens/live/kick/liveKickUser").P(LivePeopleInfoCardFragment.this.requireActivity()).D("liveId", LivePeopleInfoCardFragment.this.getCurrentLiveRoom().getLiveRoomId()).D(Contants.USER_ID, LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.getUserId()).M(new a());
            }
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements hb.b<String> {
        j() {
        }

        @Override // hb.b
        /* renamed from: a */
        public void onFail(String str) {
            LivePeopleInfoCardFragment livePeopleInfoCardFragment = LivePeopleInfoCardFragment.this;
            livePeopleInfoCardFragment.focusClick = true;
            if (livePeopleInfoCardFragment.getActivity() == null) {
                return;
            }
            LivePeopleInfoCardFragment.this.setFocused(true);
            if (LivePeopleInfoCardFragment.this.mLivePeopleInfoBean != null) {
                LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.setIs_tutual(1);
            }
        }

        @Override // hb.b
        /* renamed from: b */
        public void onResponse(String str) {
            LivePeopleInfoCardFragment livePeopleInfoCardFragment = LivePeopleInfoCardFragment.this;
            livePeopleInfoCardFragment.focusClick = true;
            if (livePeopleInfoCardFragment.getActivity() == null) {
                return;
            }
            LivePeopleInfoCardFragment livePeopleInfoCardFragment2 = LivePeopleInfoCardFragment.this;
            livePeopleInfoCardFragment2.peopleCardUserFocus.setText(String.format("%s", livePeopleInfoCardFragment2.getString(R.string.focus)));
            if (LivePeopleInfoCardFragment.this.mLivePeopleInfoBean != null) {
                LivePeopleInfoCardFragment.this.mLivePeopleInfoBean.setIs_tutual(0);
            }
            LivePeopleInfoCardFragment livePeopleInfoCardFragment3 = LivePeopleInfoCardFragment.this;
            ((BaseLiveRoomFragment) livePeopleInfoCardFragment3.mILiveRoomManager).t("0", livePeopleInfoCardFragment3.mUserId);
        }
    }

    private boolean hasPermission() {
        return myUserType() == 0 || myUserType() == 3 || otherVipLevel() == 0;
    }

    private boolean isAdmin() {
        LivePeopleInfoBean livePeopleInfoBean = this.mLivePeopleInfoBean;
        return livePeopleInfoBean != null && livePeopleInfoBean.getAdmin() == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isBroadCaster() {
        return this.mILiveRoomManager.getCurrentLiveRoom().isBroadCaster();
    }

    private boolean isSuperAdmin() {
        LivePeopleInfoBean livePeopleInfoBean = this.mLivePeopleInfoBean;
        return livePeopleInfoBean != null && livePeopleInfoBean.getLiveManager() == 1;
    }

    private int myUserType() {
        return this.mILiveRoomManager.getCurrentLiveRoom().getUserType();
    }

    private int myVipLevel() {
        return getCurrentUser().getUserVipMsg().getVipLevel();
    }

    private void onMenuClick(int i9) {
        LivePeopleInfoBean livePeopleInfoBean;
        if (this.mILiveRoomManager == null || (livePeopleInfoBean = this.mLivePeopleInfoBean) == null) {
            return;
        }
        if (i9 == 1) {
            alert(getString(R.string.livecanclemutedialog), null, new d(), false);
        } else if (i9 == 2) {
            if (!hasPermission()) {
                showToast(R.string.vip_mall_no_permission);
            } else {
                alert(getString(R.string.livemutedialog), null, new c(), false);
            }
        } else if (i9 == 3) {
            if (livePeopleInfoBean.getKink() == 1) {
                showToast(R.string.vip_mall_kick_live_room);
            } else if (!hasPermission()) {
                showToast(R.string.vip_mall_no_permission);
            } else {
                alert(getString(R.string.liveremovedialog), null, new i(), false);
            }
        } else if (i9 == 4) {
            new GCDialog.Builder().contentText(getString(R.string.voice_room_tips_no_admin_somebody)).onClick(new g(), new h()).build(requireContext()).show();
        } else if (i9 == 5) {
            new GCDialog.Builder().contentText(getString(R.string.voice_room_tips_admin_somebody)).onClick(new e(), new f()).build(requireContext()).show();
        } else if (i9 != R.string.report) {
        } else {
            report(null);
        }
    }

    private int otherUserType() {
        if (isSuperAdmin()) {
            return 3;
        }
        if (isAdmin()) {
            return 1;
        }
        LivePeopleInfoBean livePeopleInfoBean = this.mLivePeopleInfoBean;
        return (livePeopleInfoBean == null || !livePeopleInfoBean.getUserId().equals(getCurrentLiveRoom().getBroadCasterUserId())) ? 2 : 0;
    }

    private int otherVipLevel() {
        LivePeopleInfoBean livePeopleInfoBean = this.mLivePeopleInfoBean;
        if (livePeopleInfoBean == null || livePeopleInfoBean.getUserVipMsg() == null) {
            return 0;
        }
        return this.mLivePeopleInfoBean.getUserVipMsg().getVipLevel();
    }

    public static void showPeopleInfo(@NonNull FragmentManager fragmentManager, @NonNull String str, @NonNull String str2, d9.g gVar) {
        showPeopleInfo(fragmentManager, str, str2, false, gVar);
    }

    protected void addFocus() {
        setFocused(true);
        ib.b.b(this.mUserId, FriendFromSource.LIVE, getActivity(), new a());
    }

    protected void cancelFocus() {
        setFocused(false);
        ib.b.a(this.mUserId, getActivity(), new j());
    }

    @Override // d9.e
    public LiveRoomModel getCurrentLiveRoom() {
        return this.mILiveRoomManager.getCurrentLiveRoom();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.live_people_card_dialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        TextView textView = this.mUserIdView;
        textView.setText("" + this.mUserId);
        this.mUserNameView.setText(this.mUserName);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    public void loadData2() {
        if (this.mILiveRoomManager == null) {
            return;
        }
        post("tokens/user/info/findDetailAttention").D("account", this.mUserId).D("liveId", this.mILiveRoomManager.getCurrentLiveRoom().getLiveRoomId()).D("IMID", this.mILiveRoomManager.getCurrentLiveRoom().getChatGroupId()).M(new b());
    }

    @OnClick
    public void menuButtonClick(View view) {
        if (this.mLivePeopleInfoBean == null) {
            return;
        }
        switch (view.getId()) {
            case R.id.people_card_at_btn /* 2131363948 */:
                if (BaseConfig.isChinese() && com.guochao.faceshow.aaspring.manager.i.u().s().getIsBindMobile() == 0) {
                    com.guochao.faceshow.aaspring.modulars.live.broadcaster.d.e(getActivity(), getParentFragmentManager(), 0);
                    dismiss();
                    return;
                }
                dismiss();
                this.mILiveRoomManager.onAtSomebody(this.mLivePeopleInfoBean.getUserId(), this.mLivePeopleInfoBean.getNick_name());
                return;
            case R.id.people_card_chat /* 2131363949 */:
                KotlinBridge.startChatFromLiveRoom(this, this.mLivePeopleInfoBean.getUserId(), this.mLivePeopleInfoBean.getNick_name());
                return;
            default:
                return;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i9 == 652 && i10 == -1 && intent != null) {
            ScreenShotHelper.getInstance().onActivityResult(getActivity(), i10, intent);
            ScreenShotHelper.onActivityResult = true;
        }
    }

    @Override // d9.e
    public void onAtSomebody(String str, String str2) {
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        this.mGravity = 80;
        if (context instanceof BaseLiveActivity) {
            this.mILiveRoomManager = ((BaseLiveActivity) context).e0();
        }
        if (this.mILiveRoomManager == null) {
            dismissAllowingStateLoss();
        } else if (getArguments() != null) {
            this.mUserId = getArguments().getString(Contants.USER_ID);
            this.mUserName = getArguments().getString("userName");
            this.mPkBroadcaster = getArguments().getBoolean("pkBroadcaster");
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return createBottomDialog();
    }

    public void onEnterRoom(String str) {
    }

    public void onLinkMicResponse(boolean z10) {
    }

    @Override // d9.e
    public void onLinkMicStatusChanged(boolean z10) {
    }

    @Override // d9.e
    public void onLiveFinish(int i9, String str) {
    }

    @Override // d9.e
    public void onNetworkLose(int i9) {
    }

    @Override // d9.e
    public void onNetworkResume(int i9) {
    }

    @Override // d9.e
    public /* synthetic */ void onPlayMusicAnim(String str, String str2, int i9) {
        d9.d.a(this, str, str2, i9);
    }

    @Override // d9.e
    public void onPlaySuccess() {
    }

    @Override // d9.e
    public void onQuitLiveRoom(boolean z10, boolean z11) {
    }

    @Override // d9.e
    public void onReceiveFaceGift(GiftLiveMessage giftLiveMessage) {
    }

    @Override // d9.e
    public void onReceiveHugeGift(LiveMessageModel liveMessageModel) {
    }

    @Override // d9.e
    public <T extends BaseLiveMessage> void onReceiveLiveMessage(LiveMessageModel<T> liveMessageModel) {
    }

    public void onRefreshLiveInfo() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        loadData2();
    }

    @Override // d9.e
    public void onSelfMute(boolean z10) {
    }

    @Override // d9.e
    public void onUserTypeChanged(int i9) {
        refreshUserType();
    }

    @OnClick
    public void onViewClicked(View view) {
        LivePeopleInfoBean livePeopleInfoBean;
        if (DisableDoubleClickUtils.canClick(view, 1000L) && (livePeopleInfoBean = this.mLivePeopleInfoBean) != null && this.focusClick) {
            this.focusClick = false;
            if (livePeopleInfoBean.getIs_tutual() == 1) {
                cancelFocus();
            } else {
                addFocus();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        Window window = getDialog().getWindow();
        if (window != null) {
            window.setLayout(-1, -1);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.gravity = 80;
            window.setAttributes(attributes);
            window.setBackgroundDrawableResource(17170445);
            ViewGroup viewGroup = (ViewGroup) window.getDecorView();
            viewGroup.setClipChildren(false);
            viewGroup.setBackgroundColor(0);
        }
    }

    @OnClick
    public void operationButtonClick(View view) {
        if (view.getId() == R.id.mute) {
            if (this.muteArea.isSelected()) {
                onMenuClick(1);
            } else {
                onMenuClick(2);
            }
        } else if (view.getId() == R.id.kick) {
            onMenuClick(3);
        } else if (view.getId() == R.id.admin) {
            if (this.adminArea.isSelected()) {
                onMenuClick(4);
            } else {
                onMenuClick(5);
            }
        }
    }

    protected void refreshUserType() {
        if (this.mPkBroadcaster) {
            this.mReportView.setVisibility(0);
            this.cmdArea.setVisibility(8);
            return;
        }
        int myUserType = myUserType();
        int otherUserType = otherUserType();
        if (myUserType != 2) {
            this.mReportView.setVisibility(4);
            this.cmdArea.setVisibility(0);
        } else if (myVipLevel() != 2) {
            this.mReportView.setVisibility(0);
            this.cmdArea.setVisibility(8);
        } else if (otherUserType != 0 && otherUserType != 3 && otherUserType != 1) {
            this.mReportView.setVisibility(4);
            this.cmdArea.setVisibility(0);
        } else {
            this.mReportView.setVisibility(0);
            this.cmdArea.setVisibility(8);
        }
        setting();
    }

    @OnClick
    public void report(View view) {
        if (getActivity() == null || getDialog() == null || getDialog().getWindow() == null) {
            return;
        }
        this.mILiveRoomManager.U0(this, this.mUserId);
    }

    @OnClick
    public void seeUser(View view) {
        if (TextUtils.isEmpty(this.mUserId) && this.mLivePeopleInfoBean == null) {
            return;
        }
        LivePeopleInfoBean livePeopleInfoBean = this.mLivePeopleInfoBean;
        if (livePeopleInfoBean != null && this.mPkBroadcaster && livePeopleInfoBean.getIsLive() == 1 && !this.mILiveRoomManager.getCurrentLiveRoom().isBroadCaster()) {
            this.mILiveRoomManager.J0(this.mLivePeopleInfoBean);
            dismissAllowingStateLoss();
            return;
        }
        UserHomePageAct.start((Activity) getActivity(), this.mUserId, 1);
    }

    @Override // d9.e
    public <T extends BaseLiveMessage> void sendC2CLiveMessage(@NonNull String str, @NonNull LiveMessageModel<T> liveMessageModel, @Nullable e.a<Boolean> aVar) {
    }

    @Override // d9.e
    public <T extends BaseLiveMessage> void sendLiveMessage(@NonNull LiveMessageModel<T> liveMessageModel, @Nullable e.a<Boolean> aVar) {
    }

    @Override // d9.e
    public void sendLiveMessage(@NonNull String str, @Nullable e.a<Boolean> aVar) {
    }

    @Override // d9.e
    public void sendLiveMessageCmd(@NonNull String str, @Nullable e.a<Boolean> aVar) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setFocused(boolean z10) {
        if (this instanceof LivePeopleInfoCardFragmentV2) {
            if (z10) {
                this.focus.setSelected(true);
                this.peopleCardUserFocus.setText(R.string.focused);
                this.peopleCardUserFocus.setSelected(true);
                return;
            }
            this.focus.setSelected(false);
            this.peopleCardUserFocus.setSelected(false);
            this.peopleCardUserFocus.setText(String.format("%s", getString(R.string.focus)));
        } else if (z10) {
            this.focus.setSelected(true);
            this.peopleCardUserFocus.setText(R.string.focused);
            this.peopleCardUserFocus.setSelected(true);
            this.focus.setVisibility(8);
            this.spaceView.setVisibility(8);
            this.peopleCardChat.setBackgroundResource(R.drawable.btn_common_bg);
            this.chatTV.setTextColor(Color.parseColor("#ffffff"));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.peopleCardChat.getLayoutParams();
            layoutParams.leftMargin = DensityUtil.dp2px(26.0f);
            layoutParams.rightMargin = DensityUtil.dp2px(26.0f);
        } else {
            this.focus.setSelected(false);
            this.peopleCardUserFocus.setSelected(false);
            this.peopleCardUserFocus.setText(String.format("%s", getString(R.string.focus)));
            this.focus.setVisibility(0);
            this.spaceView.setVisibility(0);
            this.peopleCardChat.setBackgroundResource(R.drawable.bg_live_room_people_card_follow);
            this.chatTV.setTextColor(Color.parseColor("#6365FF"));
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.peopleCardChat.getLayoutParams();
            layoutParams2.leftMargin = DensityUtil.dp2px(0.0f);
            layoutParams2.rightMargin = DensityUtil.dp2px(0.0f);
        }
    }

    public void setting() {
        if (this.mLivePeopleInfoBean == null) {
            return;
        }
        int otherUserType = otherUserType();
        int myUserType = myUserType();
        if (myUserType == 0) {
            if (otherUserType == 1) {
                this.adminArea.setSelected(true);
                this.adminArea.setVisibility(0);
            } else if (otherUserType != 2) {
            } else {
                this.kickArea.setVisibility(0);
                if (this.mLivePeopleInfoBean.getBanTalk() == 1) {
                    this.muteArea.setSelected(true);
                    this.muteArea.setVisibility(0);
                } else {
                    this.muteArea.setSelected(false);
                    this.muteArea.setVisibility(0);
                }
                if (isAdmin()) {
                    this.adminArea.setSelected(true);
                } else {
                    this.adminArea.setSelected(false);
                }
                this.adminArea.setVisibility(0);
            }
        } else if (myUserType == 3 || myUserType == 1) {
            if (otherUserType != 2) {
                return;
            }
            this.kickArea.setVisibility(0);
            if (this.mLivePeopleInfoBean.getBanTalk() == 1) {
                this.muteArea.setSelected(true);
            } else {
                this.muteArea.setSelected(false);
            }
            this.muteArea.setVisibility(0);
        } else if (myVipLevel() == 2 && otherUserType == 2) {
            this.kickArea.setVisibility(0);
            if (this.mLivePeopleInfoBean.getBanTalk() == 1) {
                this.muteArea.setSelected(true);
            } else {
                this.muteArea.setSelected(false);
            }
            this.muteArea.setVisibility(0);
        }
    }

    public static void showPeopleInfo(@NonNull FragmentManager fragmentManager, @NonNull String str, @NonNull String str2) {
        showPeopleInfo(fragmentManager, str, str2, false);
    }

    public static void showPeopleInfo(@NonNull FragmentManager fragmentManager, @NonNull String str, @NonNull String str2, boolean z10) {
        showPeopleInfo(fragmentManager, str, str2, z10, null);
    }

    public static void showPeopleInfo(@NonNull FragmentManager fragmentManager, @NonNull String str, @NonNull String str2, boolean z10, d9.g gVar) {
        if (Objects.equals(b8.e.g().c().getUserId(), str)) {
            return;
        }
        LivePeopleInfoCardFragment livePeopleInfoCardFragment = new LivePeopleInfoCardFragment();
        Bundle bundle = new Bundle();
        bundle.putString(Contants.USER_ID, str);
        bundle.putString("userName", str2);
        bundle.putBoolean("pkBroadcaster", z10);
        livePeopleInfoCardFragment.setArguments(bundle);
        livePeopleInfoCardFragment.show(fragmentManager, "live_user_info");
    }
}
