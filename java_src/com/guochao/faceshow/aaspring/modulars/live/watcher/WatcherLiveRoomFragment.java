package com.guochao.faceshow.aaspring.modulars.live.watcher;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Size;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.GravityCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Observer;
import butterknife.BindView;
import butterknife.OnClick;
import butterknife.Optional;
import c8.a;
import com.facebook.AuthenticationTokenClaims;
import com.facebook.share.widget.ShareDialog;
import com.guochao.component.liveroom.model.GCLiveRoomModel;
import com.guochao.component.liveroom.proxy.LiveRoomViewController;
import com.guochao.component.liveroomcommon.helper.LiveRoomViewLayoutHelper;
import com.guochao.component.liveroomcommon.view.LiveRoomRootView;
import com.guochao.component.voiceliveroom.fragment.VoiceRoomMainControllerFragment;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomMemberModel;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest;
import com.guochao.faceshow.aaspring.base.http.request.GetRequest;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.AdsBean;
import com.guochao.faceshow.aaspring.beans.AudienceInformation;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.beans.LiveInfoResult;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.beans.RoomItemDetail;
import com.guochao.faceshow.aaspring.beans.ShareContentBean;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.dialog.GCDialog;
import com.guochao.faceshow.aaspring.manager.im.b;
import com.guochao.faceshow.aaspring.modulars.debug.StreamUrlUtils;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.modulars.live.adapter.LiveLinkMicPlayAdapter;
import com.guochao.faceshow.aaspring.modulars.live.adapter.LivePlayMaskAdapter;
import com.guochao.faceshow.aaspring.modulars.live.adapter.LiveVideoAudioMaskAdapter;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.viewmodel.VideoCallDuringLivingViewModel;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.BasePkLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveChatFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayGiftFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayerProvider;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveUserInfoFragment;
import com.guochao.faceshow.aaspring.modulars.live.fragment.ApplyConversationListDialogFragment;
import com.guochao.faceshow.aaspring.modulars.live.fragment.LittleLinkMicInfoFragment;
import com.guochao.faceshow.aaspring.modulars.live.hello.HelloStarGiftDialog;
import com.guochao.faceshow.aaspring.modulars.live.hello.HelloStarHelp;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.GiftLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LinkMicInfoMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.live.watcher.LiveHelper;
import com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveActivityView;
import com.guochao.faceshow.aaspring.modulars.live.watcher.view.VideoCallingDuringLivingView;
import com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager;
import com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog;
import com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.FriendFromSource;
import com.guochao.faceshow.aaspring.utils.GCEventUtils;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.ScreenshotsUtils;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.aaspring.views.AdsUnShowDialog;
import com.guochao.faceshow.aaspring.views.LiveScrollToClearScreenView;
import com.guochao.faceshow.aaspring.views.MultiLivePlayView;
import com.guochao.faceshow.aaspring.views.UserGuideTouchView;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.signin.SigninManager;
import com.guochao.faceshow.signin.dialog.LiveSignCenterDialog;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.LOCAL_EVENT_MSG;
import com.guochao.faceshow.utils.PushUtils;
import com.guochao.faceshow.views.SvgaImageViewV2;
import com.guochao.player.GCLivePlayer;
import com.guochao.pusher.GCLivePusher;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import com.tencent.imsdk.BaseConstants;
import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMManager;
import d9.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class WatcherLiveRoomFragment extends BasePkLiveRoomFragment implements PushUtils.OnPushCustomMessageHandler<String>, b.m, LiveRoomViewController {
    GCLivePusher O5;
    @Nullable
    private RoomItemDetail P5;
    Runnable R5;
    Runnable S5;
    public VideoCallingDuringLivingView U5;
    private LiveRoomViewLayoutHelper V5;
    private VoiceRoomMainControllerFragment W5;
    @BindView
    View adsClose;
    @BindView
    View closeLive;
    @BindView
    View dividerView;

    /* renamed from: g6  reason: collision with root package name */
    private View f20010g6;

    /* renamed from: h6  reason: collision with root package name */
    Animation f20011h6;

    /* renamed from: i6  reason: collision with root package name */
    private boolean f20012i6;

    /* renamed from: j6  reason: collision with root package name */
    boolean f20013j6;
    @BindView
    FrameLayout littlePusherArea;
    @BindView
    SVGAImageView mDYLoadingView;
    @BindView
    ImageView mImageViewLiveBg;
    @BindView
    View mLiveShareBtn;
    @BindView
    public TextView mTextViewUserGuideGift;

    /* renamed from: n6  reason: collision with root package name */
    GCLivePlayer f20017n6;
    @BindView
    View voiceRoomArea;
    private boolean Q5 = true;
    private boolean T5 = false;
    private boolean X5 = false;
    private Runnable Y5 = new k();
    private V2TIMCallback Z5 = new v();

    /* renamed from: a6  reason: collision with root package name */
    private b.m f20004a6 = new w();

    /* renamed from: b6  reason: collision with root package name */
    public Runnable f20005b6 = new x();

    /* renamed from: c6  reason: collision with root package name */
    private long f20006c6 = 0;

    /* renamed from: d6  reason: collision with root package name */
    private Runnable f20007d6 = new z();

    /* renamed from: e6  reason: collision with root package name */
    Runnable f20008e6 = new b0();

    /* renamed from: f6  reason: collision with root package name */
    private Runnable f20009f6 = new c();

    /* renamed from: k6  reason: collision with root package name */
    Runnable f20014k6 = new p();

    /* renamed from: l6  reason: collision with root package name */
    Runnable f20015l6 = new q();

    /* renamed from: m6  reason: collision with root package name */
    Runnable f20016m6 = new r();

    /* renamed from: o6  reason: collision with root package name */
    final List<BaseFaceCastRequest<?>> f20018o6 = new ArrayList();

    /* renamed from: p6  reason: collision with root package name */
    private boolean f20019p6 = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DisableDoubleClickUtils.canClick(view)) {
                c8.a.r().y(WatcherLiveRoomFragment.this.getActivity());
                ja.a.b().e("KEY_LIVE_ADS_TIPS");
                PopupWindow popupWindow = WatcherLiveRoomFragment.this.H5;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                    WatcherLiveRoomFragment.this.H5 = null;
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    class a0 implements Observer<VoiceRoomInfoModel> {
        a0() {
        }

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void onChanged(VoiceRoomInfoModel voiceRoomInfoModel) {
            if (voiceRoomInfoModel == null || voiceRoomInfoModel.getOwner() == null) {
                return;
            }
            VoiceRoomMemberModel owner = voiceRoomInfoModel.getOwner();
            RoomItemData roomItemData = (RoomItemData) WatcherLiveRoomFragment.this.getCurrentLiveRoom();
            roomItemData.setTitle(voiceRoomInfoModel.getTitle());
            roomItemData.setNickName(owner.getNickName());
            roomItemData.setAvatar(owner.getAvatarUrl());
            roomItemData.setImg(owner.getAvatarUrl());
            roomItemData.setLevel(owner.getLevel());
            boolean z10 = false;
            roomItemData.setVoiceRoomAdministrator(voiceRoomInfoModel.getRoleType() == 10);
            roomItemData.setVoiceRoomMember(voiceRoomInfoModel.getRoleType() == 20);
            roomItemData.setVoiceRoomOwner(voiceRoomInfoModel.getRoleType() == 1);
            roomItemData.setBackgroundImg(voiceRoomInfoModel.getBackImgUrl());
            roomItemData.setLiveImg(voiceRoomInfoModel.getBackImgUrl());
            roomItemData.setCoverImgUrl(voiceRoomInfoModel.getCoverImgUrl());
            hc.a.h(WatcherLiveRoomFragment.this.mImageViewLiveBg, voiceRoomInfoModel.getBackImgUrl(), R.mipmap.voice_room_create_bg);
            UserVipData userVipData = new UserVipData();
            userVipData.setIsVip(owner.getVipLevel());
            roomItemData.setUserVipMsg(userVipData);
            LiveChatFragment liveChatFragment = WatcherLiveRoomFragment.this.f18532y;
            if (liveChatFragment == null || !liveChatFragment.isAdded()) {
                return;
            }
            WatcherLiveRoomFragment.this.f18532y.resetVoiceRoomChatList();
            WatcherLiveRoomFragment.this.f18532y.setMoreBtn(Boolean.valueOf((roomItemData.isAdministrator() || roomItemData.isVoiceRoomOwner()) ? true : true));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* loaded from: classes3.dex */
        class a implements AdsUnShowDialog.OnAdsClickListener {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.views.AdsUnShowDialog.OnAdsClickListener
            public void adsGoneDayClick(@NonNull Dialog dialog) {
                c8.a.r().p(false);
                WatcherLiveRoomFragment.this.q5();
                dialog.dismiss();
            }

            @Override // com.guochao.faceshow.aaspring.views.AdsUnShowDialog.OnAdsClickListener
            public void adsHidePermanentlyClick(@NonNull Dialog dialog) {
                c8.a.r().p(true);
                WatcherLiveRoomFragment.this.q5();
                dialog.dismiss();
            }
        }

        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AdsUnShowDialog adsUnShowDialog = new AdsUnShowDialog(WatcherLiveRoomFragment.this.getActivity());
            adsUnShowDialog.setOnAdsClickListener(new a());
            adsUnShowDialog.show();
        }
    }

    /* loaded from: classes3.dex */
    class b0 implements Runnable {
        b0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            HelloStarHelp helloStarHelp = HelloStarHelp.INSTANCE;
            HelloStarGiftDialog.getInstance(0, helloStarHelp.getHelloConfigData().getFirstNum(), helloStarHelp.getHelloConfigData().getLockNum()).show(WatcherLiveRoomFragment.this.getChildFragmentManager(), "HelloStarGiftDialog");
            WatcherLiveRoomFragment watcherLiveRoomFragment = WatcherLiveRoomFragment.this;
            watcherLiveRoomFragment.B.removeCallbacks(watcherLiveRoomFragment.f20008e6);
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WatcherLiveRoomFragment watcherLiveRoomFragment = WatcherLiveRoomFragment.this;
            if (watcherLiveRoomFragment.I || watcherLiveRoomFragment.getActivity() == null || WatcherLiveRoomFragment.this.getActivity().isFinishing() || WatcherLiveRoomFragment.this.getActivity().isDestroyed()) {
                return;
            }
            WatcherLiveRoomFragment.this.u5(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c0 implements a.h {
        c0() {
        }

        @Override // c8.a.h
        public void a() {
            if (((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).adsLay != null) {
                ((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).adsLay.setVisibility(8);
            }
        }

        @Override // c8.a.h
        public void b(AdsBean adsBean) {
            String str = (WatcherLiveRoomFragment.this.getActivity() == null || !(WatcherLiveRoomFragment.this.getActivity() instanceof WatchLiveRoomActivity)) ? null : ((WatchLiveRoomActivity) WatcherLiveRoomFragment.this.getActivity()).f18078o;
            if (((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).adsLay != null) {
                if (TextUtils.isEmpty(str)) {
                    ((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).adsLay.setVisibility(0);
                    WatcherLiveRoomFragment.this.J3();
                }
                p9.a.g().B(p9.a.g().f() + 1);
            }
        }

        @Override // c8.a.h
        public void c(String str) {
            String str2 = (WatcherLiveRoomFragment.this.getActivity() == null || !(WatcherLiveRoomFragment.this.getActivity() instanceof WatchLiveRoomActivity)) ? null : ((WatchLiveRoomActivity) WatcherLiveRoomFragment.this.getActivity()).f18078o;
            if (((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).adsLay == null || !TextUtils.isEmpty(str2)) {
                return;
            }
            ((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).adsLay.setVisibility(0);
            WatcherLiveRoomFragment.this.J3();
        }

        @Override // c8.a.h
        public void onError() {
            if (((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).adsLay != null) {
                ((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).adsLay.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<RoomItemDetail> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f20027a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                WatcherLiveRoomFragment.this.D5();
            }
        }

        d(List list) {
            this.f20027a = list;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable RoomItemDetail roomItemDetail, @NonNull FaceCastBaseResponse<RoomItemDetail> faceCastBaseResponse) {
            if (WatcherLiveRoomFragment.this.getActivity() instanceof WatchLiveRoomActivity) {
                ((WatchLiveRoomActivity) WatcherLiveRoomFragment.this.getActivity()).T1(false);
            }
            if (WatcherLiveRoomFragment.this.getActivity() == null) {
                return;
            }
            RoomItemData roomItemData = (RoomItemData) WatcherLiveRoomFragment.this.f18506l;
            if (roomItemData == null) {
                roomItemData = new RoomItemData();
            }
            boolean isMultiLiveRoom = roomItemData.isMultiLiveRoom();
            if (roomItemDetail != null && roomItemDetail.getLiveInfo() != null) {
                String streamUrl = WatcherLiveRoomFragment.this.getCurrentLiveRoom().getStreamUrl();
                roomItemDetail.getLiveInfo().setLastRoomItem(roomItemData.getLastRoomItem());
                roomItemData.setLastRoomItem(null);
                ((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).H4 = true;
                WatcherLiveRoomFragment.this.P5 = roomItemDetail;
                LiveRoomModel liveRoomModel = WatcherLiveRoomFragment.this.f18506l;
                if (liveRoomModel != null) {
                    String streamUrl2 = liveRoomModel.getStreamUrl();
                    if (TextUtils.isEmpty(WatcherLiveRoomFragment.this.P5.getLiveInfo().getStreamUrl())) {
                        WatcherLiveRoomFragment.this.P5.getLiveInfo().setStreamUrl(streamUrl2);
                    }
                }
                LiveRoomModel liveRoomModel2 = WatcherLiveRoomFragment.this.f18506l;
                boolean z10 = (liveRoomModel2 == null || liveRoomModel2.isInPkMode() == roomItemDetail.getLiveInfo().isInPkMode()) ? false : true;
                WatcherLiveRoomFragment watcherLiveRoomFragment = WatcherLiveRoomFragment.this;
                watcherLiveRoomFragment.f18506l = watcherLiveRoomFragment.P5.getLiveInfo();
                if (WatcherLiveRoomFragment.this.f18506l != null) {
                    LogUtils.i("mRoomItemDetail.getLiveInfo().getScreenShotSwitch():" + WatcherLiveRoomFragment.this.P5.getLiveInfo().getScreenShotSwitch());
                    ScreenshotsUtils.INSTANCE.changeFlagSecure(WatcherLiveRoomFragment.this.getActivity(), WatcherLiveRoomFragment.this.P5.getLiveInfo().getScreenShotSwitch());
                }
                if ((WatcherLiveRoomFragment.this.getActivity() instanceof WatchLiveRoomActivity) && WatcherLiveRoomFragment.this.f18506l != null) {
                    int i9 = 0;
                    while (true) {
                        if (i9 >= ((WatchLiveRoomActivity) WatcherLiveRoomFragment.this.getActivity()).f18074k.size()) {
                            break;
                        } else if (Objects.equals(((WatchLiveRoomActivity) WatcherLiveRoomFragment.this.getActivity()).f18074k.get(i9).getLiveRoomId(), WatcherLiveRoomFragment.this.f18506l.getLiveRoomId())) {
                            ((WatchLiveRoomActivity) WatcherLiveRoomFragment.this.getActivity()).f18074k.set(i9, WatcherLiveRoomFragment.this.P5.getLiveInfo());
                            break;
                        } else {
                            i9++;
                        }
                    }
                }
                ArrayList arrayList = new ArrayList();
                int i10 = 0;
                for (int i11 = 0; i11 < this.f20027a.size(); i11++) {
                    for (Map.Entry entry : ((Map) this.f20027a.get(i11)).entrySet()) {
                        if ("liveId".equals(entry.getKey())) {
                            if (roomItemDetail.getLiveInfo().getLiveRoomId().equals(entry.getValue())) {
                                i10 = i11;
                            } else {
                                arrayList.add((String) entry.getValue());
                            }
                        }
                    }
                }
                if (i10 > 0) {
                    ((WatchLiveRoomActivity) WatcherLiveRoomFragment.this.getActivity()).Q1(roomItemDetail.getLiveInfo().getLiveRoomId(), arrayList);
                }
                if ("1".equals(roomItemDetail.getLiveInfo().getStatus())) {
                    if (TextUtils.isEmpty(WatcherLiveRoomFragment.this.getCurrentLiveRoom().getStatus()) || WatcherLiveRoomFragment.this.getCurrentLiveRoom().isMultiLiveRoom() != roomItemDetail.getLiveInfo().isMultiLiveRoom()) {
                        WatcherLiveRoomFragment watcherLiveRoomFragment2 = WatcherLiveRoomFragment.this;
                        watcherLiveRoomFragment2.f18506l = watcherLiveRoomFragment2.P5.getLiveInfo();
                    }
                    WatcherLiveRoomFragment.this.mDYLoadingView.setVisibility(8);
                    WatcherLiveRoomFragment.this.mDYLoadingView.stopAnimation();
                    WatcherLiveRoomFragment.this.getCurrentLiveRoom().setStatus(roomItemDetail.getLiveInfo().getStatus());
                    WatcherLiveRoomFragment.this.onLiveFinish(1, "closed");
                    return;
                } else if (10001 == roomItemDetail.getLiveInfo().getCode() && WatcherLiveRoomFragment.this.getCurrentLiveRoom().isPrivateLiveRoom() && (WatcherLiveRoomFragment.this.getActivity() instanceof WatchLiveRoomActivity) && !((WatchLiveRoomActivity) WatcherLiveRoomFragment.this.getActivity()).f18081r) {
                    WatcherLiveRoomFragment.this.mDYLoadingView.setVisibility(8);
                    WatcherLiveRoomFragment.this.mDYLoadingView.stopAnimation();
                    WatcherLiveRoomFragment.this.onLiveFinish(10001, "closed");
                    return;
                } else if (roomItemDetail.getLiveInfo().isKickedOut()) {
                    if ("2".equals(roomItemDetail.getLiveInfo().getBlackFlag())) {
                        WatcherLiveRoomFragment.this.b3(false, false, false, true, false);
                        return;
                    }
                    String kickAdminType = roomItemDetail.getLiveInfo().getKickAdminType();
                    WatcherLiveRoomFragment.this.b3("1".equals(kickAdminType) || "2".equals(kickAdminType), "5".equals(kickAdminType), "3".equals(kickAdminType), false, false);
                    return;
                } else if ("2".equals(roomItemDetail.getLiveInfo().getBlackFlag())) {
                    WatcherLiveRoomFragment.this.b3(false, false, false, true, false);
                    return;
                } else {
                    RoomItemData liveInfo = roomItemDetail.getLiveInfo();
                    RoomItemData roomItemData2 = (RoomItemData) WatcherLiveRoomFragment.this.getCurrentLiveRoom();
                    roomItemData2.setLiveId(liveInfo.getLiveId());
                    roomItemData2.setLiveCoverImg(liveInfo.getLiveCoverImg());
                    roomItemData2.setRoomID(liveInfo.getRoomID());
                    roomItemData2.setLiveRoomId(liveInfo.getLiveRoomId());
                    roomItemData2.setCity(liveInfo.getCity());
                    roomItemData2.setLevel(liveInfo.getLevel());
                    roomItemData2.setKickedOut(roomItemDetail.getLiveInfo().isKickedOut());
                    roomItemData2.setCountry(liveInfo.getCountry());
                    roomItemData2.setInfoName(liveInfo.getInfoName());
                    roomItemData2.setStreamUrl(liveInfo.getStreamUrl());
                    WatcherLiveRoomFragment.this.getCurrentLiveRoom().setRequestLinkMicEnabled(liveInfo.canRequestLinkMic());
                    WatcherLiveRoomFragment.this.getCurrentLiveRoom().setFreeLinkMic(liveInfo.isFreeLinkMic());
                    WatcherLiveRoomFragment.this.onLinkMicStatusChanged(liveInfo.canRequestLinkMic() && !liveInfo.isInPkMode());
                    WatcherLiveRoomFragment.this.getCurrentLiveRoom().setBanTalk(liveInfo.isBanTalk());
                    WatcherLiveRoomFragment.this.getCurrentLiveRoom().setStatus(roomItemDetail.getLiveInfo().getStatus());
                    WatcherLiveRoomFragment.this.onSelfMute(liveInfo.isBanTalk());
                    WatcherLiveRoomFragment.this.getCurrentLiveRoom().setUserType(liveInfo.getUserType());
                    WatcherLiveRoomFragment.this.getCurrentLiveRoom().setPrivateType(liveInfo.getPrivateType());
                    WatcherLiveRoomFragment.this.getCurrentLiveRoom().setBroadCasterUserName(liveInfo.getBroadCasterUserName());
                    ((RoomItemData) WatcherLiveRoomFragment.this.getCurrentLiveRoom()).setImg(liveInfo.getImg());
                    ((RoomItemData) WatcherLiveRoomFragment.this.getCurrentLiveRoom()).setLogo(liveInfo.getLogo());
                    WatcherLiveRoomFragment.this.getCurrentLiveRoom().setMultiLiveRoom(roomItemDetail.getLiveInfo().isMultiLiveRoom());
                    roomItemData2.setVideoSwitch(liveInfo.getVideoSwitch());
                    roomItemData2.setVideoOpen(liveInfo.getVideoOpen());
                    VideoCallDuringLivingViewModel videoCallDuringLivingViewModel = WatcherLiveRoomFragment.this.f18482a;
                    if (videoCallDuringLivingViewModel != null) {
                        videoCallDuringLivingViewModel.setCurrentLiveRoom(roomItemData2);
                    }
                    WatcherLiveRoomFragment watcherLiveRoomFragment3 = WatcherLiveRoomFragment.this;
                    com.guochao.faceshow.aaspring.modulars.live.game.f fVar = watcherLiveRoomFragment3.P4;
                    if (fVar != null) {
                        fVar.C(watcherLiveRoomFragment3, watcherLiveRoomFragment3.getCurrentLiveRoom());
                    }
                    WatcherLiveRoomFragment watcherLiveRoomFragment4 = WatcherLiveRoomFragment.this;
                    if (watcherLiveRoomFragment4.f18506l != null) {
                        hc.a.v(watcherLiveRoomFragment4.mImageViewLiveBg, liveInfo.getLiveCoverImg());
                    }
                    LiveUserInfoFragment liveUserInfoFragment = WatcherLiveRoomFragment.this.f18534z;
                    if (liveUserInfoFragment != null && liveUserInfoFragment.isAdded()) {
                        WatcherLiveRoomFragment.this.f18534z.setBroadCasterUserName(liveInfo.getBroadCasterUserName());
                    }
                    ((RoomItemData) WatcherLiveRoomFragment.this.getCurrentLiveRoom()).setUserVipMsg(liveInfo.getUserVipMsg());
                    if (WatcherLiveRoomFragment.this.getCurrentLiveRoom() instanceof RoomItemData) {
                        ((RoomItemData) WatcherLiveRoomFragment.this.getCurrentLiveRoom()).setUserVipMsg(liveInfo.getUserVipMsg());
                    }
                    ((RoomItemData) WatcherLiveRoomFragment.this.getCurrentLiveRoom()).setIsMusicActivity(roomItemDetail.getLiveInfo().getIsMusicActivity());
                    if (WatcherLiveRoomFragment.this.f18534z != null && roomItemDetail.getLiveInfo().getUserVipMsg() != null) {
                        WatcherLiveRoomFragment.this.f18534z.updateHeadView(roomItemDetail.getLiveInfo());
                    }
                    if (WatcherLiveRoomFragment.this.getActivity() != null && WatcherLiveRoomFragment.this.getCurrentLiveRoom().isPrivateLiveRoom()) {
                        WatcherLiveRoomFragment.this.getActivity().getWindow().addFlags(8192);
                    }
                    WatcherLiveRoomFragment.this.onUserTypeChanged(liveInfo.getUserType());
                    ((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).f18490d = true;
                    if (((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).f18488c) {
                        WatcherLiveRoomFragment.this.B5();
                    }
                    if ((!StreamUrlUtils.streamEquals(streamUrl, WatcherLiveRoomFragment.this.P5.getLiveInfo().getStreamUrl()) && !WatcherLiveRoomFragment.this.Q) || TextUtils.isEmpty(roomItemData.getStatus()) || TextUtils.isEmpty(roomItemData.getBroadCasterUserId()) || isMultiLiveRoom != liveInfo.isMultiLiveRoom()) {
                        WatcherLiveRoomFragment.this.f18506l.setInPkMode(roomItemData.isPkModeWhenFloatWindow());
                        WatcherLiveRoomFragment watcherLiveRoomFragment5 = WatcherLiveRoomFragment.this;
                        watcherLiveRoomFragment5.f18506l = watcherLiveRoomFragment5.P5.getLiveInfo();
                        WatcherLiveRoomFragment.this.I2();
                        WatcherLiveRoomFragment.this.f3();
                    }
                    WatcherLiveRoomFragment.this.getCurrentLiveRoom().setLaunchFromFloatWindow(roomItemData.isLaunchFromFloatWindow());
                    WatcherLiveRoomFragment.this.getCurrentLiveRoom().setStatus(roomItemDetail.getLiveInfo().getStatus());
                    WatcherLiveRoomFragment.this.getCurrentLiveRoom().setInPkMode(liveInfo.isInPkMode());
                    WatcherLiveRoomFragment.this.x5();
                    WatcherLiveRoomFragment.this.V2();
                    WatcherLiveRoomFragment.this.t(roomItemDetail.getLiveInfo().getIsAttention(), WatcherLiveRoomFragment.this.getCurrentLiveRoom().getBroadCasterUserId());
                    WatcherLiveRoomFragment watcherLiveRoomFragment6 = WatcherLiveRoomFragment.this;
                    Handler handler = watcherLiveRoomFragment6.B;
                    a aVar = new a();
                    watcherLiveRoomFragment6.R5 = aVar;
                    handler.postDelayed(aVar, AuthenticationTokenClaims.MAX_TIME_SINCE_TOKEN_ISSUED);
                    WatcherLiveRoomFragment.this.O3();
                    if (!StreamUrlUtils.streamEquals(streamUrl, WatcherLiveRoomFragment.this.P5.getLiveInfo().getStreamUrl())) {
                        WatcherLiveRoomFragment watcherLiveRoomFragment7 = WatcherLiveRoomFragment.this;
                        if (!watcherLiveRoomFragment7.Q) {
                            watcherLiveRoomFragment7.getCurrentLiveRoom().setStreamUrl(roomItemDetail.getLiveInfo().getFlvUrl());
                            BaseLiveActivity.u0("WatcherLiveRoomFragment.checkLiveState()", true);
                            WatcherLiveRoomFragment.this.D0().stopPlay(false, false);
                            WatcherLiveRoomFragment watcherLiveRoomFragment8 = WatcherLiveRoomFragment.this;
                            if (watcherLiveRoomFragment8.f18507l5) {
                                return;
                            }
                            watcherLiveRoomFragment8.D0().startPlay(WatcherLiveRoomFragment.this.getCurrentLiveRoom().getStreamUrl(), WatcherLiveRoomFragment.this.getCurrentLiveRoom().buildRoomInfo());
                        }
                    }
                    if (roomItemDetail.getLiveInfo().getChatGroupId() != null && !roomItemDetail.getLiveInfo().getChatGroupId().equals(WatcherLiveRoomFragment.this.getCurrentLiveRoom().getChatGroupId())) {
                        WatcherLiveRoomFragment.this.getCurrentLiveRoom().setChatGroupId(roomItemDetail.getLiveInfo().getChatGroupId());
                    }
                    if (com.guochao.faceshow.aaspring.manager.im.b.l0().q0()) {
                        WatcherLiveRoomFragment watcherLiveRoomFragment9 = WatcherLiveRoomFragment.this;
                        watcherLiveRoomFragment9.B.postDelayed(watcherLiveRoomFragment9.f20009f6, 5000L);
                    } else if (com.guochao.faceshow.aaspring.manager.im.b.l0().m()) {
                        WatcherLiveRoomFragment.this.u5(false);
                    } else {
                        com.guochao.faceshow.aaspring.manager.im.b.l0().Z();
                        com.guochao.faceshow.aaspring.manager.im.b.l0().w(WatcherLiveRoomFragment.this.Z5);
                    }
                    WatcherLiveRoomFragment.this.T3();
                    if (!WatcherLiveRoomFragment.this.getCurrentLiveRoom().isVoiceRoom()) {
                        if (!WatcherLiveRoomFragment.this.getCurrentLiveRoom().isPrivateLiveRoom() && (!(WatcherLiveRoomFragment.this.getCurrentLiveRoom() instanceof RoomItemData) || "1".equals(((RoomItemData) WatcherLiveRoomFragment.this.getCurrentLiveRoom()).getPrivateType()))) {
                            WatcherLiveRoomFragment.this.mLiveShareBtn.setVisibility(0);
                            WatcherLiveRoomFragment.this.dividerView.setVisibility(0);
                        } else {
                            WatcherLiveRoomFragment.this.mLiveShareBtn.setVisibility(8);
                            WatcherLiveRoomFragment.this.dividerView.setVisibility(8);
                        }
                    }
                    if (WatcherLiveRoomFragment.this.T5) {
                        WatcherLiveRoomFragment.this.S3();
                    }
                    WatcherLiveRoomFragment watcherLiveRoomFragment10 = WatcherLiveRoomFragment.this;
                    if (!watcherLiveRoomFragment10.f18483a1) {
                        watcherLiveRoomFragment10.H5();
                    }
                    if (z10) {
                        WatcherLiveRoomFragment watcherLiveRoomFragment11 = WatcherLiveRoomFragment.this;
                        watcherLiveRoomFragment11.k2(watcherLiveRoomFragment11.getView());
                        return;
                    }
                    return;
                }
            }
            onFailure(new g7.a<>(new Exception(""), -1));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<RoomItemDetail> aVar) {
            if (WatcherLiveRoomFragment.this.getActivity() instanceof WatchLiveRoomActivity) {
                ((WatchLiveRoomActivity) WatcherLiveRoomFragment.this.getActivity()).T1(false);
            }
            ((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).H4 = false;
            if (aVar.a() == 20002) {
                WatcherLiveRoomFragment.this.onLiveFinish(BaseConstants.ERR_SVR_MSG_INTERNAL_AUTH_FAILED, "closed");
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onStart() {
            if (WatcherLiveRoomFragment.this.getActivity() instanceof WatchLiveRoomActivity) {
                ((WatchLiveRoomActivity) WatcherLiveRoomFragment.this.getActivity()).T1(false);
            }
            super.onStart();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* loaded from: classes3.dex */
        class a implements hb.b {
            a() {
            }

            @Override // hb.b
            public /* synthetic */ void onFail(Object obj) {
                hb.a.a(this, obj);
            }

            @Override // hb.b
            public void onResponse(Object obj) {
                WatcherLiveRoomFragment watcherLiveRoomFragment = WatcherLiveRoomFragment.this;
                watcherLiveRoomFragment.sendLiveMessage(LiveMessageModelFactory.createFocusBroadCasterModel(watcherLiveRoomFragment.getCurrentUser().getUserId(), WatcherLiveRoomFragment.this.getCurrentUser().getUserName(), WatcherLiveRoomFragment.this.getCurrentUser().getLevel(), WatcherLiveRoomFragment.this.getCurrentLiveRoom().isAdministrator()), (e.a<Boolean>) null);
                WatcherLiveRoomFragment.this.getActivity();
            }
        }

        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WatcherLiveRoomFragment watcherLiveRoomFragment = WatcherLiveRoomFragment.this;
            if (watcherLiveRoomFragment.f20011h6 != null) {
                return;
            }
            watcherLiveRoomFragment.t("1", watcherLiveRoomFragment.getCurrentLiveRoom().getBroadCasterUserId());
            WatcherLiveRoomFragment.this.showToast(R.string.focused);
            WatcherLiveRoomFragment.this.n5(false);
            ib.b.b(WatcherLiveRoomFragment.this.getCurrentLiveRoom().getBroadCasterUserId(), FriendFromSource.LIVE, WatcherLiveRoomFragment.this.getActivity(), new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements Animation.AnimationListener {

        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                WatcherLiveRoomFragment.this.n5(false);
            }
        }

        f() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            WatcherLiveRoomFragment watcherLiveRoomFragment = WatcherLiveRoomFragment.this;
            watcherLiveRoomFragment.f20011h6 = null;
            Handler handler = watcherLiveRoomFragment.B;
            a aVar = new a();
            watcherLiveRoomFragment.S5 = aVar;
            handler.postDelayed(aVar, 5000L);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements Animation.AnimationListener {
        g() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            WatcherLiveRoomFragment.this.f20010g6.setVisibility(8);
            WatcherLiveRoomFragment.this.f20011h6 = null;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements e.a<Boolean> {
        h() {
        }

        @Override // d9.e.a
        /* renamed from: b */
        public void a(int i9, String str, @Nullable Boolean bool) {
        }

        @Override // d9.e.a
        /* renamed from: c */
        public void onSuccess(@NonNull Boolean bool) {
            long currentTimeMillis = System.currentTimeMillis();
            HelloStarHelp helloStarHelp = HelloStarHelp.INSTANCE;
            long regTime = helloStarHelp.getHelloConfigData().getRegTime();
            long j10 = regTime + 86400000;
            long j11 = regTime + 172800000;
            if (helloStarHelp.isShowHelloMessage(WatcherLiveRoomFragment.this.getCurrentLiveRoom().getBroadCasterUserId(), WatcherLiveRoomFragment.this.getCurrentUser(), currentTimeMillis, j10, j11)) {
                WatcherLiveRoomFragment watcherLiveRoomFragment = WatcherLiveRoomFragment.this;
                if (watcherLiveRoomFragment.m5(helloStarHelp.get24SendHelloGiftUserId(watcherLiveRoomFragment.getCurrentUser()), currentTimeMillis, j10, j11)) {
                    WatcherLiveRoomFragment.this.sendLiveMessage(LiveMessageModelFactory.createHelloUserJoinModel(1), (e.a<Boolean>) null);
                } else {
                    WatcherLiveRoomFragment.this.sendLiveMessage(LiveMessageModelFactory.createHelloUserJoinModel(0), (e.a<Boolean>) null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends com.guochao.faceshow.aaspring.base.http.callback.c<LiveInfoResult> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f20036a;

        i(long j10) {
            this.f20036a = j10;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LiveInfoResult liveInfoResult, @NonNull FaceCastBaseResponse<LiveInfoResult> faceCastBaseResponse) {
            ToastUtils.debug("轮询调用成功,耗时" + (System.currentTimeMillis() - this.f20036a));
            if (liveInfoResult == null) {
                onFailure(new g7.a<>(new Exception(), -1));
            } else if (liveInfoResult.getCode() == 10001 && WatcherLiveRoomFragment.this.getCurrentLiveRoom().isPrivateLiveRoom() && (WatcherLiveRoomFragment.this.getActivity() instanceof WatchLiveRoomActivity) && !((WatchLiveRoomActivity) WatcherLiveRoomFragment.this.getActivity()).f18081r) {
                ToastUtils.debugToast(WatcherLiveRoomFragment.this.getContext(), "私密直播观看人数已经达到上线");
                WatcherLiveRoomFragment.this.onLiveFinish(10001, "close");
            } else {
                AudienceInformation audienceInformation = new AudienceInformation();
                audienceInformation.setUserId(WatcherLiveRoomFragment.this.getCurrentUser().getUserId());
                audienceInformation.setAvatar(WatcherLiveRoomFragment.this.getCurrentUser().getPendantUrl());
                audienceInformation.setImg(WatcherLiveRoomFragment.this.getCurrentUser().getAvatarUrl());
                audienceInformation.setUserVipMsg(WatcherLiveRoomFragment.this.getCurrentUser().getUserVipMsg());
                audienceInformation.setType("0");
                if (!WatcherLiveRoomFragment.this.L2(liveInfoResult.getAudienceList(), audienceInformation)) {
                    if (audienceInformation.getUserVipMsg() != null && audienceInformation.getUserVipMsg().getIsVip() > 0) {
                        liveInfoResult.getAudienceList().add(audienceInformation);
                    } else {
                        liveInfoResult.getAudienceList().add(0, audienceInformation);
                    }
                }
                LogUtils.d("liveInfoState", "观众geliveinfo成功");
                WatcherLiveRoomFragment.this.M3(liveInfoResult, true);
                if (WatcherLiveRoomFragment.this.getCurrentLiveRoom().isMultiLiveRoom() && ((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).mMaskRecyclerView != null) {
                    ((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).mMaskRecyclerView.setVisibility(0);
                } else if (((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).mMaskRecyclerView != null) {
                    ((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).mMaskRecyclerView.setVisibility(8);
                }
                LiveRoomModel liveRoomModel = WatcherLiveRoomFragment.this.f18506l;
                if (liveRoomModel != null) {
                    liveRoomModel.setShareUrl(liveInfoResult.getShareUrl());
                    LiveChatFragment liveChatFragment = WatcherLiveRoomFragment.this.f18532y;
                    if (liveChatFragment != null) {
                        liveChatFragment.addShareMessage(true);
                    }
                }
                LiveUserInfoFragment liveUserInfoFragment = WatcherLiveRoomFragment.this.f18534z;
                if (liveUserInfoFragment == null || !liveUserInfoFragment.isAdded()) {
                    return;
                }
                WatcherLiveRoomFragment.this.f18534z.checkHourRank(liveInfoResult);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            ((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).f18520s = true;
            WatcherLiveRoomFragment.this.hideLoading(true);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LiveInfoResult> aVar) {
            WatcherLiveRoomFragment.this.f20013j6 = false;
        }
    }

    /* loaded from: classes3.dex */
    class j implements ShareFragment.m {
        j() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment.m
        public void a(String str, ShareContentBean shareContentBean) {
            WatcherLiveRoomFragment.this.sendLiveMessage(new LiveMessageModel("LIVE_SHARE", null), (e.a<Boolean>) null);
        }
    }

    /* loaded from: classes3.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                GCEventUtils.track(GCEventUtils.STAY_IN_LIVE, Integer.valueOf(WatcherLiveRoomFragment.this.getCurrentLiveRoom().getBroadCasterUserId()));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            WatcherLiveRoomFragment.this.B.postDelayed(this, 60000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements LiveScrollToClearScreenView.c {
        l() {
        }

        @Override // com.guochao.faceshow.aaspring.views.LiveScrollToClearScreenView.c
        public void a(MotionEvent motionEvent) {
            if (((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).f18494f == null || ((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).f18494f.getVisibility() != 0) {
                return;
            }
            ((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).f18494f.setVisibility(8);
            ja.a.b().e(((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).G4);
        }

        @Override // com.guochao.faceshow.aaspring.views.LiveScrollToClearScreenView.c
        public void b(MotionEvent motionEvent) {
            WatcherLiveRoomFragment watcherLiveRoomFragment = WatcherLiveRoomFragment.this;
            if (watcherLiveRoomFragment.f18506l != null) {
                watcherLiveRoomFragment.sendLiveMessageCmd("LIVE_LIKE", null);
            }
            WatcherLiveRoomFragment.this.j2();
            WatcherLiveRoomFragment watcherLiveRoomFragment2 = WatcherLiveRoomFragment.this;
            if (watcherLiveRoomFragment2.f20011h6 == null && watcherLiveRoomFragment2.f20010g6 != null && WatcherLiveRoomFragment.this.f20010g6.getVisibility() == 0) {
                WatcherLiveRoomFragment.this.n5(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WatcherLiveRoomFragment watcherLiveRoomFragment = WatcherLiveRoomFragment.this;
            watcherLiveRoomFragment.k2(watcherLiveRoomFragment.getView());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n implements V2TIMCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f20042a;

        n(boolean z10) {
            this.f20042a = z10;
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
            Context context = WatcherLiveRoomFragment.this.getContext();
            ToastUtils.debugToast(context, "进群失败" + i9 + ", desc = " + str);
            WatcherLiveRoomFragment watcherLiveRoomFragment = WatcherLiveRoomFragment.this;
            watcherLiveRoomFragment.print("LiveRoom", "加入群组失败：" + i9 + " " + str);
            LiveHelper.Companion.getInstance().setFloatTouchLiveRoom(false);
            if (i9 == 10010 && this.f20042a) {
                ((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).H4 = false;
                WatcherLiveRoomFragment.this.o2();
            }
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
            ToastUtils.debugToast(WatcherLiveRoomFragment.this.getContext(), "进群成功");
            WatcherLiveRoomFragment.this.print("LiveRoom", "加入群组成功：");
            if (WatcherLiveRoomFragment.this.getActivity() == null || WatcherLiveRoomFragment.this.getActivity().isFinishing() || this.f20042a) {
                return;
            }
            if (WatcherLiveRoomFragment.this.P5 == null || WatcherLiveRoomFragment.this.P5.getLiveInfo() == null || WatcherLiveRoomFragment.this.P5.getLiveInfo().getCode() != 10001 || !WatcherLiveRoomFragment.this.getCurrentLiveRoom().isPrivateLiveRoom()) {
                ((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).f18488c = true;
                if (((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).f18490d) {
                    WatcherLiveRoomFragment.this.B5();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o extends com.guochao.faceshow.aaspring.base.http.callback.c<LinkMicInfoMessage> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f20044a;

        o(String str) {
            this.f20044a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LinkMicInfoMessage linkMicInfoMessage, @NonNull FaceCastBaseResponse<LinkMicInfoMessage> faceCastBaseResponse) {
            if (WatcherLiveRoomFragment.this.getActivity() == null) {
                return;
            }
            WatcherLiveRoomFragment.this.sendLiveMessage(LiveMessageModelFactory.createHangupModel(this.f20044a), (e.a<Boolean>) null);
            if (WatcherLiveRoomFragment.this.getActivity().isFinishing() || WatcherLiveRoomFragment.this.getActivity().isDestroyed()) {
                return;
            }
            com.guochao.faceshow.aaspring.modulars.live.common.a.m().w(false);
            WatcherLiveRoomFragment.this.l3(this.f20044a);
            if (WatcherLiveRoomFragment.this.getCurrentLiveRoom().isMultiLiveRoom()) {
                return;
            }
            WatcherLiveRoomFragment watcherLiveRoomFragment = WatcherLiveRoomFragment.this;
            if (watcherLiveRoomFragment.f18507l5) {
                return;
            }
            watcherLiveRoomFragment.x3();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LinkMicInfoMessage> aVar) {
        }
    }

    /* loaded from: classes3.dex */
    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WatcherLiveRoomFragment watcherLiveRoomFragment = WatcherLiveRoomFragment.this;
            watcherLiveRoomFragment.f18484a2 = true;
            if (watcherLiveRoomFragment.isDetached() || !WatcherLiveRoomFragment.this.isAdded()) {
                return;
            }
            WatcherLiveRoomFragment.this.hideLoading(false);
        }
    }

    /* loaded from: classes3.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WatcherLiveRoomFragment.this.mVideoRecyclerView.bringToFront();
            com.guochao.faceshow.aaspring.modulars.live.common.u.h(WatcherLiveRoomFragment.this.mVideoRecyclerView, -1);
            WatcherLiveRoomFragment.this.X4.x(false);
            LiveInfoMatchBean j10 = com.guochao.faceshow.aaspring.modulars.live.common.a.m().j(WatcherLiveRoomFragment.this.getCurrentLiveRoom().getBroadCasterUserId());
            if (j10 != null) {
                WatcherLiveRoomFragment.this.D0().stopPlay(j10.getStreamId());
            }
        }
    }

    /* loaded from: classes3.dex */
    class r implements Runnable {

        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MultiLivePlayView multiLivePlayView = WatcherLiveRoomFragment.this.mVideoRecyclerView;
                if (multiLivePlayView != null) {
                    com.guochao.faceshow.aaspring.modulars.live.common.u.h(multiLivePlayView, 1);
                }
                WatcherLiveRoomFragment.this.mTXCloudVideoViewAcc.setVisibility(0);
                WatcherLiveRoomFragment.this.mTXCloudVideoViewAcc.bringToFront();
            }
        }

        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WatcherLiveRoomFragment watcherLiveRoomFragment = WatcherLiveRoomFragment.this;
            if (watcherLiveRoomFragment.mTXCloudVideoViewAcc != null) {
                watcherLiveRoomFragment.mVideoRecyclerView.bringToFront();
                com.guochao.faceshow.aaspring.modulars.live.common.u.h(WatcherLiveRoomFragment.this.mTXCloudVideoViewAcc, -1);
                WatcherLiveRoomFragment.this.B.post(new a());
            }
            if (WatcherLiveRoomFragment.this.I) {
                BaseLiveActivity.u0("WatcherLiveRoomFragment.mSwitchStreamRunnable", true);
                WatcherLiveRoomFragment.this.D0().stopPlay(false, false);
                return;
            }
            LiveInfoMatchBean j10 = com.guochao.faceshow.aaspring.modulars.live.common.a.m().j(WatcherLiveRoomFragment.this.getCurrentLiveRoom().getBroadCasterUserId());
            if (j10 != null) {
                WatcherLiveRoomFragment.this.D0().setMute(false, j10.getStreamId());
            }
            WatcherLiveRoomFragment.this.D0().stopPlay(true, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f20050a;

        s(int i9) {
            this.f20050a = i9;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (WatcherLiveRoomFragment.this.getActivity() == null || WatcherLiveRoomFragment.this.getActivity().isDestroyed() || WatcherLiveRoomFragment.this.getActivity().isFinishing() || WatcherLiveRoomFragment.this.isDetached() || !WatcherLiveRoomFragment.this.isAdded()) {
                return;
            }
            if (this.f20050a == 1) {
                WatcherLiveRoomFragment.this.showGiftDialog();
            } else {
                WatcherLiveRoomFragment.this.F5();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class t implements Function1<GCDialog, Unit> {
        t() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(GCDialog gCDialog) {
            WatcherLiveRoomFragment.this.dismiss();
            WatcherLiveRoomFragment.this.getActivity().finish();
            return null;
        }
    }

    /* loaded from: classes3.dex */
    class u implements PendantDialog.c {
        u() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog.c
        public void a() {
            ((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).M4 = null;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog.c
        public void b(String str, ResourceListItemBean resourceListItemBean) {
            WatcherLiveRoomFragment.this.z5(str, resourceListItemBean);
        }
    }

    /* loaded from: classes3.dex */
    class v implements V2TIMCallback {
        v() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
            WatcherLiveRoomFragment.this.u5(false);
        }
    }

    /* loaded from: classes3.dex */
    class w implements b.m {

        /* loaded from: classes3.dex */
        class a implements V2TIMCallback {
            a() {
            }

            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onError(int i9, String str) {
            }

            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onSuccess() {
                WatcherLiveRoomFragment.this.u5(true);
            }
        }

        w() {
        }

        @Override // com.guochao.faceshow.aaspring.manager.im.b.m
        public void f0(boolean z10) {
            WatcherLiveRoomFragment watcherLiveRoomFragment = WatcherLiveRoomFragment.this;
            if (watcherLiveRoomFragment.I || watcherLiveRoomFragment.f18507l5) {
                return;
            }
            if (!((BaseLiveRoomFragment) watcherLiveRoomFragment).H4) {
                WatcherLiveRoomFragment.this.o2();
            } else if (z10) {
                WatcherLiveRoomFragment.this.u5(true);
            } else {
                UserBean currentUser = WatcherLiveRoomFragment.this.getCurrentUser();
                if (currentUser == null) {
                    return;
                }
                ((BaseLiveRoomFragment) WatcherLiveRoomFragment.this).f18488c = false;
                com.guochao.faceshow.aaspring.manager.im.b.l0().t0(currentUser.getUserId(), currentUser.getSignature(), new a());
            }
        }
    }

    /* loaded from: classes3.dex */
    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextView textView;
            WatcherLiveRoomFragment watcherLiveRoomFragment = WatcherLiveRoomFragment.this;
            if (watcherLiveRoomFragment.f18507l5 || watcherLiveRoomFragment.I || (textView = watcherLiveRoomFragment.mTextViewUserGuideGift) == null) {
                return;
            }
            textView.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class y implements SVGAParser.ParseCompletion {
        y() {
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            SVGAImageView sVGAImageView;
            WatcherLiveRoomFragment watcherLiveRoomFragment = WatcherLiveRoomFragment.this;
            if (watcherLiveRoomFragment.I || (sVGAImageView = watcherLiveRoomFragment.mDYLoadingView) == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = sVGAImageView.getLayoutParams();
            layoutParams.width = (int) sVGAVideoEntity.getVideoSize().getWidth();
            layoutParams.height = (int) sVGAVideoEntity.getVideoSize().getHeight();
            WatcherLiveRoomFragment.this.mDYLoadingView.setVideoItem(sVGAVideoEntity);
            WatcherLiveRoomFragment.this.mDYLoadingView.startAnimation();
            WatcherLiveRoomFragment.this.mDYLoadingView.setLayoutParams(layoutParams);
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* loaded from: classes3.dex */
    class z implements Runnable {
        z() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (WatcherLiveRoomFragment.this.getContext() == null || WatcherLiveRoomFragment.this.isDetached()) {
                return;
            }
            c8.b.k().y(WatcherLiveRoomFragment.this);
        }
    }

    private void A5(View view) {
        ViewParent parent = view.getParent();
        if (parent != null) {
            ((ViewGroup) parent).removeView(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B5() {
        if (!this.f18488c || this.P5 == null || this.f20012i6) {
            return;
        }
        if (getCurrentLiveRoom().isLaunchFromFloatWindow()) {
            this.f20012i6 = true;
            return;
        }
        LiveHelper.Companion companion = LiveHelper.Companion;
        if (companion.getInstance().isFloatTouchLiveRoom()) {
            companion.getInstance().setFloatTouchLiveRoom(false);
            this.f20012i6 = true;
        } else if (this.P5.getLiveInfo().isVoiceRoom()) {
        } else {
            this.f20012i6 = true;
            BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
            baseLiveMessage.setType(BaseLiveMessage.TYPE_ADD_GROUP);
            LiveMessageModel liveMessageModel = new LiveMessageModel("LIVE_ADD_GROUP", baseLiveMessage);
            sendLiveMessage(liveMessageModel, new h());
            onReceiveLiveMessage(liveMessageModel);
            companion.getInstance().setFloatTouchLiveRoom(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D5() {
        if (getView() == null || "1".equalsIgnoreCase(((RoomItemData) getCurrentLiveRoom()).getIsAttention())) {
            return;
        }
        if (this.f20010g6 == null) {
            this.f20010g6 = ((ViewStub) getView().findViewById(R.id.focus_bottom_bar_area)).inflate();
        }
        this.f20010g6.setVisibility(0);
        this.f20010g6.findViewById(R.id.focus_button).setOnClickListener(new e());
        hc.a.d((ImageView) this.f20010g6.findViewById(R.id.avatar), getCurrentLiveRoom().getAvatarUrl());
        ((TextView) this.f20010g6.findViewById(R.id.nickname)).setText(getCurrentLiveRoom().getUserNickName());
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 1.0f, 1, 0.0f);
        translateAnimation.setDuration(250L);
        translateAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
        this.f20010g6.startAnimation(translateAnimation);
        translateAnimation.setAnimationListener(new f());
        this.f20011h6 = translateAnimation;
    }

    private void E5() {
        ImageView imageView = this.mImageViewLiveBg;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
        SVGAImageView sVGAImageView = this.mDYLoadingView;
        if (sVGAImageView != null) {
            sVGAImageView.setVisibility(0);
            this.mDYLoadingView.startAnimation();
        }
        ViewGroup viewGroup = this.firstRechargeLay;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
        ViewGroup viewGroup2 = this.firstRechargeLayVoice;
        if (viewGroup2 != null) {
            viewGroup2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H5() {
        if (!this.f18507l5 && !this.I) {
            LiveRoomModel liveRoomModel = this.f18506l;
            if (liveRoomModel != null) {
                onLinkMicStatusChanged(liveRoomModel.canRequestLinkMic());
                if (!this.f18506l.isLaunchFromFloatWindow() && !TextUtils.isEmpty(this.f18506l.getStreamUrl())) {
                    D0().startPlay(this.f18506l.getStreamUrl(), getCurrentLiveRoom().buildRoomInfo());
                }
            }
            this.f18500i = false;
            long currentTimeMillis = System.currentTimeMillis();
            this.f18518r = false;
            this.f18520s = false;
            if (this.f20013j6) {
                return;
            }
            this.f20013j6 = true;
            if (getCurrentLiveRoom().isVoiceRoom()) {
                return;
            }
            get("tokens/live/newLive/getLiveInfo").v("likeNum", "").v("liveId", getCurrentLiveRoom().getLiveRoomId()).v(Contants.USER_ID, getCurrentLiveRoom().getCurrentUserId()).M(new i(currentTimeMillis));
            return;
        }
        BaseLiveActivity.u0("WatcherLiveRoomFragment.startVideo()", true);
        D0().stopPlay(false, false);
    }

    private void initAds() {
        if (getCurrentUser().getRegType() != 2 && c8.a.r().q() != 0 && !c8.a.r().u() && getCurrentUser().getRiskLevel() <= 1 && !getCurrentLiveRoom().isVoiceRoom()) {
            BaseLiveActivity baseLiveActivity = (BaseLiveActivity) getActivity();
            if (baseLiveActivity == null || !baseLiveActivity.k0()) {
                c8.a.r().w(getActivity(), new c0());
                this.adsLay.setOnClickListener(new a());
                this.adsClose.setOnClickListener(new b());
                return;
            }
            return;
        }
        View view = this.adsLay;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    private void k5() {
        HelloStarHelp helloStarHelp = HelloStarHelp.INSTANCE;
        if (helloStarHelp.getHelloConfigSwitch() != 1 || helloStarHelp.getHelloStarGiftNum() <= 0 || helloStarHelp.getHelloConfigData().getRegTime() + 86400000 <= System.currentTimeMillis() || !ja.a.b().f("KEY_HELLO_HOUR_SHOW")) {
            return;
        }
        this.B.postDelayed(this.f20008e6, 3000L);
    }

    private void l5() {
        MultiLivePlayView multiLivePlayView = this.mVideoRecyclerView;
        if (multiLivePlayView != null) {
            if (multiLivePlayView.getVisibility() != 0) {
                this.mVideoRecyclerView.setVisibility(0);
            }
            k2(getView());
            if (getCurrentLiveRoom().isMultiLiveRoom()) {
                MultiLivePlayView multiLivePlayView2 = this.mMaskVideoRecyclerView;
                if (multiLivePlayView2 != null && multiLivePlayView2.getAdapter() != null) {
                    this.mMaskVideoRecyclerView.setVisibility(0);
                    this.mMaskVideoRecyclerView.getAdapter().notifyDataSetChanged();
                }
                MultiLivePlayView multiLivePlayView3 = this.mMaskRecyclerView;
                if (multiLivePlayView3 != null && multiLivePlayView3.getAdapter() != null) {
                    this.mMaskRecyclerView.setVisibility(0);
                    this.mMaskRecyclerView.getAdapter().notifyDataSetChanged();
                }
                this.mVideoRecyclerView.setVisibility(0);
                return;
            }
            MultiLivePlayView multiLivePlayView4 = this.mMaskVideoRecyclerView;
            if (multiLivePlayView4 != null) {
                multiLivePlayView4.setVisibility(8);
            }
            MultiLivePlayView multiLivePlayView5 = this.mMaskRecyclerView;
            if (multiLivePlayView5 != null) {
                multiLivePlayView5.setVisibility(8);
            }
            if (getCurrentLiveRoom().isVoiceRoom()) {
                this.mVideoRecyclerView.setVisibility(8);
            } else {
                this.mVideoRecyclerView.setVisibility(0);
            }
            if (N2()) {
                this.mPkInfoAreaView.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean m5(List<String> list, long j10, long j11, long j12) {
        return j10 >= j11 && list.contains(getCurrentLiveRoom().getBroadCasterUserId()) && j10 <= j12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n5(boolean z10) {
        if (this.f20010g6 == null) {
            return;
        }
        if (z10 || this.f20011h6 == null) {
            Animation animation = this.f20011h6;
            if (animation != null) {
                animation.cancel();
            }
            if (z10) {
                this.f20010g6.setVisibility(8);
                return;
            }
            TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 1, 1.0f);
            translateAnimation.setDuration(250L);
            translateAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
            translateAnimation.setAnimationListener(new g());
            this.f20010g6.startAnimation(translateAnimation);
            Runnable runnable = this.S5;
            if (runnable != null) {
                this.B.removeCallbacks(runnable);
            }
            this.f20011h6 = translateAnimation;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q5() {
        this.adsLay.setVisibility(8);
        E2();
        if (getActivity() == null || !(getActivity() instanceof WatchLiveRoomActivity)) {
            return;
        }
        ((WatchLiveRoomActivity) getActivity()).f18078o = getCurrentLiveRoom().getLiveRoomId();
    }

    public static boolean s5(int i9, int i10) {
        return (i9 == 1088 && i10 == 960) || (i9 == 544 && i10 == 480) || ((i9 == 1080 && i10 == 960) || (i9 == 540 && i10 == 480));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u5(boolean z10) {
        if (getCurrentLiveRoom().isVoiceRoom() || this.f18488c || this.f18506l == null) {
            return;
        }
        RoomItemDetail roomItemDetail = this.P5;
        if (roomItemDetail != null && roomItemDetail.getLiveInfo() != null && this.P5.getLiveInfo().getCode() == 10001 && getCurrentLiveRoom().isPrivateLiveRoom()) {
            ToastUtils.debugToast(getContext(), "房间观众已满，不再执行进群逻辑");
        } else if ((getActivity() instanceof WatchLiveRoomActivity) && ((WatchLiveRoomActivity) getActivity()).f18081r && getCurrentLiveRoom().isPrivateLiveRoom()) {
            ToastUtils.debugToast(getContext(), "从小窗直播间进来的，不再执行进群逻辑");
        } else {
            V2TIMManager.getInstance().joinGroup(this.f18506l.getChatGroupId(), "123", new n(z10));
        }
    }

    private void w5() {
        if (getView() == null) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) this.mAdsAndActivityView;
        LiveActivityView liveActivityView = (LiveActivityView) getView().findViewById(R.id.live_activity_view);
        A5(liveActivityView);
        ViewGroup viewGroup2 = (ViewGroup) this.giftAndAdsView;
        ViewGroup viewGroup3 = this.firstRechargeLayVoice;
        A5(viewGroup3);
        View view = this.mViewGiftBox;
        A5(view);
        if (viewGroup2 != null) {
            viewGroup2.addView(viewGroup3);
        }
        viewGroup.addView(liveActivityView, 0);
        if (viewGroup2 != null) {
            viewGroup2.addView(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x5() {
        if (this.H4 && this.Q4 && (getActivity() instanceof WatchLiveRoomActivity)) {
            ((WatchLiveRoomActivity) getActivity()).L1(getCurrentLiveRoom());
            ((WatchLiveRoomActivity) getActivity()).t0();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    public void B3() {
        super.B3();
        GCLivePusher gCLivePusher = this.O5;
        if (gCLivePusher != null && this.M4 != null) {
            gCLivePusher.getBeautyManager().setMotionTmpl(this.M4);
        } else if (gCLivePusher != null) {
            gCLivePusher.getBeautyManager().setMotionTmpl("");
        }
    }

    public void C() {
        PendantDialog pendantDialog = new PendantDialog();
        pendantDialog.setType(5);
        pendantDialog.setOnItemClickListener(new u());
        pendantDialog.show(getChildFragmentManager(), "beauty");
    }

    public void C5(LiveRoomModel liveRoomModel) {
        this.f18506l = liveRoomModel;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.g
    public GCLivePlayer D0() {
        GCLivePlayer gCLivePlayer = this.f20017n6;
        if (gCLivePlayer != null) {
            return gCLivePlayer;
        }
        GCLivePlayer player = LivePlayerProvider.player();
        this.f20017n6 = player;
        return player;
    }

    public void F5() {
        ImageView imageView;
        LiveChatFragment liveChatFragment = this.f18532y;
        if (liveChatFragment == null || (imageView = liveChatFragment.liveChatBtn) == null) {
            return;
        }
        imageView.performClick();
    }

    public void G5() {
        ImageView imageView = this.mImageViewLiveBg;
        if (imageView != null) {
            imageView.setVisibility(0);
            hc.a.g(this.mImageViewLiveBg, Uri.parse("file:///android_asset/leave_bj01.png"));
        }
        this.f20019p6 = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    public void I2() {
        super.I2();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.g
    public z8.b K1() {
        z8.b bVar = new z8.b();
        bVar.q((RoomItemData) getCurrentLiveRoom());
        bVar.t(D0());
        WatchLiveRoomActivity watchLiveRoomActivity = (WatchLiveRoomActivity) getActivity();
        if (watchLiveRoomActivity != null) {
            bVar.r(new ArrayList(watchLiveRoomActivity.f18074k));
        }
        if (N2()) {
            bVar.u(1);
        } else if (getCurrentLiveRoom().isMultiLiveRoom()) {
            bVar.u(2);
            bVar.o(this.J);
            bVar.s(this.f18491d5);
        }
        LiveChatFragment liveChatFragment = this.f18532y;
        if (liveChatFragment != null && liveChatFragment.mLiveChatAdapter != null && liveChatFragment.isAdded()) {
            bVar.c().setMessages(new ArrayList(this.f18532y.mLiveChatAdapter.getList()));
        }
        bVar.n(this.Q);
        bVar.l(this.f18488c);
        return bVar;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.g
    public void M1() {
        if (getView() == null) {
            return;
        }
        getCurrentLiveRoom().setLaunchFromFloatWindow(true);
        ViewGroup viewGroup = (ViewGroup) getView().findViewById(R.id.watch_holder_container);
        if (viewGroup != null) {
            D0().setPlayerView(viewGroup);
            D0().setMute(false);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    public void M3(LiveInfoResult liveInfoResult, boolean z10) {
        LiveUserInfoFragment liveUserInfoFragment;
        super.M3(liveInfoResult, z10);
        if (liveInfoResult.getVersion() <= 0 && (liveUserInfoFragment = this.f18534z) != null && liveUserInfoFragment.isAdded()) {
            this.f18534z.setUserInfoData(liveInfoResult, z10, true);
        }
        if (liveInfoResult.getMatchList() != null) {
            d3(liveInfoResult.getMatchList(), liveInfoResult.getServerTime());
        }
        this.f18483a1 = true;
        if (liveInfoResult.getPk() != null) {
            k4(-1L, -1L, -1L, false);
        }
        h0(liveInfoResult.getPk(), liveInfoResult.getServerTime(), true);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    public void S3() {
        super.S3();
        if (this.f18484a2 && !getCurrentLiveRoom().isVoiceRoom()) {
            x2();
        } else {
            this.T5 = true;
        }
    }

    @Override // d9.g
    public void V0(int i9) {
        if (!this.Q || com.guochao.faceshow.aaspring.modulars.live.common.a.m().f18998h == null) {
            return;
        }
        c0(com.guochao.faceshow.aaspring.modulars.live.common.a.m().f18998h.getStreamId(), getCurrentUser().userId);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    public void X2(int i9, int i10, int i11) {
        super.X2(i9, i10, i11);
        if (this.mTextViewLinkMicUserName != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mTextViewLinkMicUserName.getLayoutParams();
            marginLayoutParams.leftMargin = (int) (i9 * 0.69485295f);
            marginLayoutParams.topMargin = (int) (getResources().getDisplayMetrics().heightPixels * 0.8854167f);
            this.mTextViewLinkMicUserName.setLayoutParams(marginLayoutParams);
            this.mTextViewLinkMicUserName.setMaxWidth(180);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    public void X3() {
        String str;
        LivePlayGiftFragment livePlayGiftFragment = this.T4;
        if (livePlayGiftFragment != null) {
            livePlayGiftFragment.U1();
        }
        this.Q4 = false;
        ViewGroup viewGroup = this.firstRechargeLay;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
            ((LinearLayout.LayoutParams) this.firstRechargeLay.getLayoutParams()).gravity = GravityCompat.END;
        }
        if (getCurrentLiveRoom().isLaunchFromFloatWindow()) {
            GCLivePlayer n9 = z8.c.o().n();
            this.f20017n6 = n9;
            if (n9 != null) {
                Size videoSize = n9.getVideoSize();
                boolean s52 = s5(videoSize.getWidth(), videoSize.getHeight());
                if (getCurrentLiveRoom() != null) {
                    getCurrentLiveRoom().setPkModeWhenFloatWindow(s52);
                    getCurrentLiveRoom().setInPkMode(s52);
                }
            }
        }
        LiveRoomModel liveRoomModel = this.f18506l;
        RoomItemData roomItemData = (RoomItemData) liveRoomModel;
        if (!liveRoomModel.isLaunchFromFloatWindow() && !TextUtils.isEmpty(this.f18506l.getStreamUrl())) {
            ToastUtils.debug("开始播放了：" + this.f18506l.getStreamUrl());
            if (!roomItemData.isPrivateLiveRoom() || roomItemData.getRefer() != null) {
                D0().startPlay(this.f18506l.getStreamUrl(), getCurrentLiveRoom().buildRoomInfo());
            }
        }
        LiveUserInfoFragment liveUserInfoFragment = this.f18534z;
        if (liveUserInfoFragment != null && liveUserInfoFragment.isAdded() && this.f18506l != null) {
            this.f18534z.resetData();
            this.f18534z.refreshUserInfo(String.valueOf(this.f18506l.getOnlineNum()), ((RoomItemData) this.f18506l).getFcoin(), ((RoomItemData) this.f18506l).getLikeNum(), null, this.f18483a1);
            this.f18534z.onFocusState(((RoomItemData) this.f18506l).getIsAttention());
        }
        if (this.f18506l != null) {
            if (getCurrentLiveRoom().isVoiceRoom()) {
                o5(getCurrentLiveRoom().getLiveCoverImg());
            } else {
                hc.a.v(this.mImageViewLiveBg, this.f18506l.getLiveCoverImg());
            }
        }
        SvgaImageViewUtils.getParser().decodeFromInputStream(getResources().openRawResource(R.raw.loading_white), "loading_white", new y(), true);
        this.f18507l5 = false;
        this.I = false;
        super.X3();
        View view = this.giftAndAdsView;
        if (view != null) {
            view.setVisibility(8);
        }
        this.mTextViewUserGuideGift.setVisibility(8);
        g2();
        if (getCurrentLiveRoom().isLaunchFromFloatWindow()) {
            RoomItemData roomItemData2 = (RoomItemData) getCurrentLiveRoom();
            if (roomItemData2.getMessages() != null && !roomItemData2.getMessages().isEmpty()) {
                this.f18532y.restoreMessage(roomItemData2.getMessages());
            }
            LiveVideoAudioMaskAdapter liveVideoAudioMaskAdapter = this.Z4;
            if (liveVideoAudioMaskAdapter != null) {
                liveVideoAudioMaskAdapter.H(z8.c.o().m());
            }
            LivePlayMaskAdapter livePlayMaskAdapter = this.Y4;
            if (livePlayMaskAdapter != null) {
                livePlayMaskAdapter.H(z8.c.o().m());
            }
            this.J.clear();
            if (z8.c.o().m() != null) {
                this.J.addAll(z8.c.o().m());
            }
            if (D0().isLoading()) {
                E5();
            } else {
                this.f18520s = true;
                this.f18484a2 = true;
                hideLoading(true);
            }
            if (getCurrentLiveRoom().isPkModeWhenFloatWindow()) {
                k4(-1L, -1L, -1L, false);
            }
            z8.c.o().H();
        } else {
            E5();
        }
        com.guochao.faceshow.aaspring.modulars.live.common.a.m().x(this.mPushCloudView);
        Fragment findFragmentById = getChildFragmentManager().findFragmentById(R.id.live_end_info_area);
        if (findFragmentById != null && findFragmentById.isAdded()) {
            getChildFragmentManager().beginTransaction().remove(findFragmentById).commitNowAllowingStateLoss();
        }
        if (getActivity() instanceof WatchLiveRoomActivity) {
            if (((WatchLiveRoomActivity) getActivity()).f18073j) {
                this.mLiveScrollToClearScreenView.f();
            } else {
                this.mLiveScrollToClearScreenView.g();
            }
        }
        if (getCurrentLiveRoom().isVoiceRoom()) {
            str = "2";
        } else {
            str = getCurrentLiveRoom().isMultiLiveRoom() ? "1" : "0";
        }
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.enter_live_room, str);
        this.f20006c6 = System.currentTimeMillis();
        if (getCurrentLiveRoom().isVoiceRoom()) {
            this.closeLive.setVisibility(4);
            this.W5 = VoiceRoomMainControllerFragment.newInstance(getCurrentGCLiveRoomModel());
            getChildFragmentManager().beginTransaction().replace(R.id.voice_room_seat_area, this.W5).commitAllowingStateLoss();
            f3();
            D0().stopPlay(true, true);
            this.mImageViewLiveBg.setVisibility(0);
            this.voiceRoomArea.setVisibility(4);
            o5(getCurrentLiveRoom().getLiveCoverImg());
            LiveScrollToClearScreenView liveScrollToClearScreenView = this.mLiveScrollToClearScreenView;
            if (liveScrollToClearScreenView != null) {
                liveScrollToClearScreenView.setIsVoiceRoom(true);
            }
        } else {
            this.closeLive.setVisibility(0);
            LiveScrollToClearScreenView liveScrollToClearScreenView2 = this.mLiveScrollToClearScreenView;
            if (liveScrollToClearScreenView2 != null) {
                liveScrollToClearScreenView2.setIsVoiceRoom(false);
            }
        }
        View view2 = getView();
        if (view2 instanceof LiveRoomRootView) {
            ((LiveRoomRootView) view2).setOnLayoutListener(null);
        }
        this.V5 = LiveRoomViewLayoutHelper.create((GCLiveRoomModel) getCurrentLiveRoom(), getView());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BasePkLiveRoomFragment, com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    public void Z2(int i9) {
        super.Z2(i9);
        if (getView() == null) {
            return;
        }
        View findViewById = getView().findViewById(R.id.little_pusher_info_area);
        if (findViewById != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) findViewById.getLayoutParams();
            marginLayoutParams.bottomMargin = DensityUtil.dp2px(75.0f);
            findViewById.setLayoutParams(marginLayoutParams);
        }
        View findViewById2 = getView().findViewById(R.id.little_pusher_area);
        if (findViewById2 != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) findViewById2.getLayoutParams();
            marginLayoutParams2.bottomMargin = DensityUtil.dp2px(75.0f);
            findViewById2.setLayoutParams(marginLayoutParams2);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void blackEvent(Intent intent) {
        if (LOCAL_EVENT_MSG.BLACK_NAME_ADD.equals(intent.getAction()) && Objects.equals(intent.getStringExtra(Contants.USER_ID), getCurrentLiveRoom().getBroadCasterUserId())) {
            b3(false, false, false, true, false);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.g
    public void c0(String str, String str2) {
        super.c0(str, str2);
        post("tokens/live/microphone/leave").P(null).v("liveId", getCurrentLiveRoom().getLiveRoomId()).v("streamId", str).v("audienceId", str2).I(3).v("anchorId", getCurrentLiveRoom().getBroadCasterUserId()).M(new o(str2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    public void c3(boolean z10) {
        super.c3(z10);
        if (this.I || this.f18507l5 || getCurrentLiveRoom() == null) {
            return;
        }
        if (z10) {
            LiveInfoMatchBean j10 = com.guochao.faceshow.aaspring.modulars.live.common.a.m().j(getCurrentLiveRoom().getBroadCasterUserId());
            if (j10 == null) {
                return;
            }
            this.f18517q5 = j10.getJsUrl();
            if (!getCurrentLiveRoom().isMultiLiveRoom()) {
                com.guochao.faceshow.aaspring.modulars.live.common.a.m().B(this.f20017n6, com.guochao.faceshow.aaspring.modulars.live.common.a.m().j(getCurrentLiveRoom().getBroadCasterUserId()).getStreamId(), this.f18517q5, this.mTXCloudVideoViewAcc);
            }
        } else {
            D0().startPlay(getCurrentLiveRoom().getStreamUrl(), getCurrentLiveRoom().buildRoomInfo());
        }
        ApplyConversationListDialogFragment applyConversationListDialogFragment = this.C;
        if (applyConversationListDialogFragment != null) {
            applyConversationListDialogFragment.k2(true);
        }
        if (!this.Q) {
            x3();
        }
        if (getActivity() != null && (getActivity() instanceof WatchLiveRoomActivity) && getCurrentLiveRoom().isMultiLiveRoom()) {
            ((WatchLiveRoomActivity) getActivity()).I1(z10);
        }
        com.guochao.faceshow.aaspring.modulars.live.common.a.m().w(false);
        onLinkMicStatusChanged(getCurrentLiveRoom().canRequestLinkMic());
    }

    @OnClick
    @Optional
    public void close(View view) {
        UserGuideTouchView userGuideTouchView = this.f18494f;
        if (userGuideTouchView != null && userGuideTouchView.getVisibility() == 0) {
            ja.a.b().e(this.G4);
            this.f18494f.setVisibility(8);
        } else if (getActivity() == null || onBack()) {
        } else {
            if ((FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing() && (getActivity() instanceof WatchLiveRoomActivity)) || this.I) {
                UserStateHolder.setIsLivingInMic(false);
                ((WatchLiveRoomActivity) getActivity()).o1();
                return;
            }
            UserStateHolder.setIsLivingInMic(false);
            getActivity().onBackPressed();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    public void e3() {
        ApplyConversationListDialogFragment applyConversationListDialogFragment = this.C;
        if (applyConversationListDialogFragment != null) {
            applyConversationListDialogFragment.dismissAllowingStateLoss();
        }
        this.Q = true;
        this.R = true;
        onLinkMicStatusChanged(getCurrentLiveRoom().canRequestLinkMic());
        if (getCurrentLiveRoom().isMultiLiveRoom()) {
            this.B.removeCallbacks(this.f20015l6);
            LiveLinkMicPlayAdapter liveLinkMicPlayAdapter = this.X4;
            if (liveLinkMicPlayAdapter != null) {
                liveLinkMicPlayAdapter.x(true);
                this.X4.b(com.guochao.faceshow.aaspring.modulars.live.common.a.m().f18998h);
            }
            LivePlayMaskAdapter livePlayMaskAdapter = this.Y4;
            if (livePlayMaskAdapter != null) {
                livePlayMaskAdapter.x(true);
                this.Y4.b(com.guochao.faceshow.aaspring.modulars.live.common.a.m().f18998h);
            }
            LiveVideoAudioMaskAdapter liveVideoAudioMaskAdapter = this.Z4;
            if (liveVideoAudioMaskAdapter != null) {
                liveVideoAudioMaskAdapter.x(true);
                this.Z4.b(com.guochao.faceshow.aaspring.modulars.live.common.a.m().f18998h);
            }
            com.guochao.faceshow.aaspring.modulars.live.common.a.m().z();
            U2(true);
            return;
        }
        com.guochao.faceshow.aaspring.modulars.live.common.a.m().g(false);
        W3();
        U2(true);
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.b.m
    public void f0(boolean z10) {
        this.f20004a6.f0(z10);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    public void f3() {
        super.f3();
        boolean f10 = ja.a.b().f("KEY_GIFT_ICON_CLICK_TIPS");
        this.B.removeCallbacks(this.f20005b6);
        if (f10) {
            this.B.postDelayed(this.f20005b6, 300000L);
        } else {
            this.mTextViewUserGuideGift.setVisibility(8);
        }
        this.mMaskRecyclerView.setVisibility(4);
        if (!getCurrentLiveRoom().isMultiLiveRoom()) {
            this.mMaskVideoRecyclerView.setVisibility(4);
            this.mLiveScrollToClearScreenView.setOnTouchDownListener(new l());
        } else {
            this.mLiveScrollToClearScreenView.setOnTouchDownListener(null);
            this.mMaskVideoRecyclerView.setVisibility(0);
        }
        LiveRoomModel liveRoomModel = this.f18506l;
        if (liveRoomModel != null) {
            hc.a.v(this.mImageViewLiveBg, liveRoomModel.getLiveCoverImg());
        }
        this.B.post(new m());
        String str = (getActivity() == null || !(getActivity() instanceof WatchLiveRoomActivity)) ? null : ((WatchLiveRoomActivity) getActivity()).f18078o;
        if (!TextUtils.isEmpty(str) && !str.equals(getCurrentLiveRoom().getLiveRoomId()) && getActivity() != null && (getActivity() instanceof WatchLiveRoomActivity)) {
            ((WatchLiveRoomActivity) getActivity()).f18078o = null;
        }
        initAds();
        onEnterRoom(this.f18506l.getChatGroupId());
        o2();
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public GetRequest get(String str) {
        GetRequest getRequest = super.get(str);
        this.f20018o6.add(getRequest);
        return getRequest;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_live_room;
    }

    public void hideBackToLast() {
        RoomItemData roomItemData = (RoomItemData) getCurrentLiveRoom();
        if (roomItemData != null) {
            roomItemData.setLastRoomItem(null);
        }
        LiveUserInfoFragment liveUserInfoFragment = this.f18534z;
        if (liveUserInfoFragment == null || !liveUserInfoFragment.isAdded()) {
            return;
        }
        this.f18534z.hideBackToLast();
    }

    @Override // com.guochao.component.liveroom.proxy.LiveRoomViewController
    public void hideLoading(boolean z10) {
        String str;
        LiveInfoMatchBean j10;
        if (getCurrentLiveRoom().isVoiceRoom()) {
            this.f18520s = true;
            this.f18484a2 = true;
            this.voiceRoomArea.setVisibility(0);
            com.bumptech.glide.c.v(this.mImageViewLiveBg).r(getCurrentGCLiveRoomModel().getBackgroundImage()).b0(R.mipmap.voice_room_create_bg).Q0(this.mImageViewLiveBg);
        }
        int intExtra = getActivity().getIntent().getIntExtra("ShowGiftDialog", 0);
        if (intExtra > 0) {
            getActivity().getIntent().putExtra("ShowGiftDialog", 0);
            HandlerGetter.getMainHandler().postDelayed(new s(intExtra), 1000L);
        }
        if ((!getCurrentLiveRoom().isMultiLiveRoom() || (this.f18520s && this.f18484a2)) && this.f18484a2) {
            l5();
            if (this.Q4) {
                return;
            }
            SigninManager.INSTANCE.startWatchLiveListener();
            if (getCurrentLiveRoom().isVoiceRoom()) {
                str = "2";
            } else {
                str = getCurrentLiveRoom().isMultiLiveRoom() ? "1" : "0";
            }
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.enter_live_room_success, str);
            com.guochao.faceshow.aaspring.modulars.live.common.u.h(this.mVideoRecyclerView, -1);
            FrameLayout frameLayout = this.mTXCloudVideoViewAcc;
            if (frameLayout != null) {
                frameLayout.setVisibility(4);
                com.guochao.faceshow.aaspring.modulars.live.common.u.h(this.mTXCloudVideoViewAcc, 1);
            }
            if (this.mImageViewLiveBg != null && !getCurrentLiveRoom().isVoiceRoom()) {
                this.mImageViewLiveBg.setVisibility(8);
            }
            SVGAImageView sVGAImageView = this.mDYLoadingView;
            if (sVGAImageView != null) {
                sVGAImageView.setVisibility(8);
                this.mDYLoadingView.stopAnimation();
            }
            if (this.mLiveViewMaskContainer != null && getCurrentLiveRoom() != null) {
                if (getCurrentLiveRoom().isMultiLiveRoom()) {
                    this.mLiveViewMaskContainer.setVisibility(0);
                } else {
                    this.mLiveViewMaskContainer.setVisibility(8);
                }
            }
            this.f18529w5 = false;
            if (!z10 && (j10 = com.guochao.faceshow.aaspring.modulars.live.common.a.m().j(getCurrentLiveRoom().getBroadCasterUserId())) != null && D0().isPlaying(j10.getStreamId())) {
                D0().stopPlay(j10.getStreamId());
            }
            this.f18517q5 = null;
            View view = this.giftAndAdsView;
            if (view != null) {
                view.setVisibility(0);
                if (getCurrentLiveRoom().isInPkMode()) {
                    this.mAdsAndActivityView.setVisibility(8);
                    this.firstRechargeLay.setVisibility(8);
                }
            }
            onPlaySuccess();
            onLinkMicStatusChanged(getCurrentLiveRoom().canRequestLinkMic());
            if (this.mTextViewFaceCastId != null && !getCurrentLiveRoom().isVoiceRoom()) {
                this.mTextViewFaceCastId.setVisibility(0);
            }
            if (this.f18489c5) {
                this.f18489c5 = false;
                q3();
            }
            View view2 = this.mPkInfoAreaView;
            if (view2 != null) {
                view2.setVisibility(0);
            }
            if (this.f18532y != null && !this.f18518r) {
                I3();
            }
            if (this.T5) {
                x2();
            }
            J3();
            if (this.f18529w5) {
                A3(false);
            }
            this.Q4 = true;
            x5();
            LiveUserInfoFragment liveUserInfoFragment = this.f18534z;
            if (liveUserInfoFragment != null && liveUserInfoFragment.isAdded()) {
                this.f18534z.checkBackToLast((RoomItemData) getCurrentLiveRoom());
            }
            try {
                GCEventUtils.track(GCEventUtils.VIEW_LIVE, Integer.valueOf(getCurrentLiveRoom().getBroadCasterUserId()));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            R3();
            this.B.postDelayed(this.Y5, 60000L);
        }
    }

    public void i5(LiveInfoMatchBean liveInfoMatchBean) {
        this.Q = true;
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        LittlePusherFragment P1 = LittlePusherFragment.P1(com.guochao.faceshow.aaspring.modulars.live.common.a.m().f18998h);
        this.P = P1;
        beginTransaction.replace(R.id.little_pusher_area, P1);
        LittleLinkMicInfoFragment P12 = LittleLinkMicInfoFragment.P1(getCurrentUser().getUserName(), null);
        this.M = P12;
        beginTransaction.replace(R.id.little_pusher_info_area, P12);
        beginTransaction.commitNowAllowingStateLoss();
        t3(true);
        View view = this.mLittleClickView;
        if (view != null) {
            view.setVisibility(8);
        }
        this.f18511n5 = null;
        this.f18513o5 = null;
        TextView textView = this.mTextViewLinkMicUserName;
        if (textView != null) {
            textView.setText((CharSequence) null);
        }
        this.f18517q5 = liveInfoMatchBean.getJsUrl();
        com.guochao.faceshow.aaspring.modulars.live.common.a.m().B(this.f20017n6, liveInfoMatchBean.getStreamId(), liveInfoMatchBean.getJsUrl(), this.mTXCloudVideoViewAcc);
        this.B.removeCallbacks(this.f20014k6);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        this.U5 = new VideoCallingDuringLivingView((ViewStub) view.findViewById(R.id.calling_info), this, this.f18482a);
        PushUtils.registerCustomMessageHandler(this, "65", "66", "67", "68", "69", "70");
        this.mTextViewFaceCastId.setVisibility(4);
        this.mLiveScrollToClearScreenView.d(this.mTextViewUserGuideGift);
        k5();
        B2().getRoomInfo().observe(getViewLifecycleOwner(), new a0());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BasePkLiveRoomFragment, com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    public void j3(int i9) {
        super.j3(i9);
        if (getView() == null) {
            return;
        }
        View findViewById = getView().findViewById(R.id.little_pusher_info_area);
        if (findViewById != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) findViewById.getLayoutParams();
            marginLayoutParams.bottomMargin = DensityUtil.dp2px(75.0f) + i9;
            findViewById.setLayoutParams(marginLayoutParams);
        }
        View findViewById2 = getView().findViewById(R.id.little_pusher_area);
        if (findViewById2 != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) findViewById2.getLayoutParams();
            marginLayoutParams2.bottomMargin = DensityUtil.dp2px(75.0f) + i9;
            findViewById2.setLayoutParams(marginLayoutParams2);
        }
    }

    protected void j5() {
        for (int i9 = 0; i9 < this.f20018o6.size(); i9++) {
            this.f20018o6.get(i9).cancel();
        }
        this.f20018o6.clear();
    }

    @Override // com.guochao.component.liveroom.proxy.LiveRoomViewController
    public void kickedFromVoiceRoom(@NonNull VoiceRoomInfoModel voiceRoomInfoModel) {
        b3(true, false, false, false, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m4(String str) {
        LiveInfoMatchBean j10 = com.guochao.faceshow.aaspring.modulars.live.common.a.m().j(getCurrentLiveRoom().getBroadCasterUserId());
        if (j10 == null || !Objects.equals(str, j10.getStreamId())) {
            return;
        }
        if (this.f20019p6) {
            r5();
            return;
        }
        sendLiveMessage(LiveMessageModelFactory.createPlaySuccessModel(com.guochao.faceshow.aaspring.modulars.live.common.a.m().j(getCurrentUser().getUserId())), (e.a<Boolean>) null);
        if (!getCurrentLiveRoom().isMultiLiveRoom()) {
            this.B.removeCallbacks(this.f20016m6);
            this.B.postDelayed(this.f20016m6, 2000L);
        }
        com.guochao.faceshow.aaspring.modulars.live.common.a.m().r();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    protected void o2() {
        boolean z10;
        if (getCurrentLiveRoom() == null) {
            return;
        }
        if (getCurrentLiveRoom().isVoiceRoom()) {
            this.H4 = true;
            V2();
        } else if (this.H4) {
        } else {
            this.H4 = true;
            this.f18483a1 = false;
            ArrayList arrayList = new ArrayList();
            if (getActivity() instanceof WatchLiveRoomActivity) {
                z10 = ((WatchLiveRoomActivity) getActivity()).D1();
                if (!z10) {
                    arrayList.addAll(((WatchLiveRoomActivity) getActivity()).r1((RoomItemData) this.f18506l));
                }
            } else {
                z10 = false;
            }
            if (arrayList.isEmpty()) {
                ArrayMap arrayMap = new ArrayMap();
                arrayMap.put("liveId", getCurrentLiveRoom().getLiveRoomId());
                arrayMap.put("startTime", getCurrentLiveRoom().getLiveStartTimestamp());
                arrayList.add(0, arrayMap);
            }
            get("tokens/live/newLive/findEndLiveMsg").I(3).v("liveMapList", arrayList).v("fromClick", z10 ? "1" : "0").M(new d(arrayList));
        }
    }

    public void o5(String str) {
        com.bumptech.glide.c.u(GCApplication.app()).r(str).q0(new jc.f(15, 2, Color.parseColor("#1A000000"))).b0(R.mipmap.voice_room_create_bg).a0(Integer.MIN_VALUE, Integer.MIN_VALUE).Q0(this.mImageViewLiveBg);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onCloseLiveEvent(y7.b bVar) {
        if (getActivity() == null || !this.Q || com.guochao.faceshow.aaspring.modulars.live.common.a.m().f18998h == null) {
            return;
        }
        c0(com.guochao.faceshow.aaspring.modulars.live.common.a.m().f18998h.getStreamId(), getCurrentUser().userId);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        MemoryCache memoryCache = MemoryCache.getInstance();
        this.f18506l = (LiveRoomModel) memoryCache.remove("data" + WatcherLiveRoomFragment.class.getSimpleName());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BasePkLiveRoomFragment, com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        c8.a.r().z();
        PushUtils.unregisterCustomMessageHandler(this, "65", "66", "67", "68", "69", "70");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEndPushEvent(y7.d dVar) {
        if (getActivity() != null && this.Q && com.guochao.faceshow.aaspring.modulars.live.common.a.m().f18998h != null) {
            ToastUtils.showToast(getContext(), (int) R.string.trtc_call_stop_linkmic);
            c0(com.guochao.faceshow.aaspring.modulars.live.common.a.m().f18998h.getStreamId(), getCurrentUser().userId);
        }
        D0().freezeAllPlayers();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    public void onEnterRoom(String str) {
        super.onEnterRoom(str);
        if (getView() != null && getView().findViewById(R.id.chat_fragment) != null) {
            getView().findViewById(R.id.chat_fragment).setVisibility(0);
        }
        Handler handler = this.B;
        if (handler != null) {
            handler.removeCallbacks(this.f20007d6);
            c8.b.k().u();
            this.B.postDelayed(this.f20007d6, 10000L);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.e
    public void onLinkMicStatusChanged(boolean z10) {
        super.onLinkMicStatusChanged(z10);
        View view = this.mRequestLink;
        if (view == null) {
            return;
        }
        if (!this.f18484a2) {
            view.setVisibility(8);
        } else if (com.guochao.faceshow.aaspring.modulars.live.common.a.m().o() && getCurrentLiveRoom().isFreeLinkMic()) {
            this.mRequestLink.setVisibility(8);
        } else {
            if (!this.Q && !this.R) {
                if (z10 && !N2()) {
                    this.mRequestLink.setVisibility(0);
                } else {
                    this.mRequestLink.setVisibility(8);
                }
            } else {
                this.mRequestLink.setVisibility(8);
            }
            i4();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.e
    public void onLiveFinish(int i9, String str) {
        int t12;
        this.B.removeCallbacks(this.Y5);
        if (getCurrentLiveRoom().isVoiceRoom()) {
            if (getCurrentLiveRoom().getLiveRoomId() == null || getCurrentLiveRoom().getLiveRoomId().equals(UserSessionViewModel.Companion.instance().current().getUserId())) {
                return;
            }
            VoiceRoomMainControllerFragment voiceRoomMainControllerFragment = this.W5;
            if (voiceRoomMainControllerFragment != null) {
                voiceRoomMainControllerFragment.getViewModel().destroyCurrentRoom();
                this.W5.dismiss();
            }
            GCDialog build = new GCDialog.Builder().contentText(getString(R.string.voice_room_private_title)).onClick(null, new t()).singleButton(true).build(requireContext());
            build.setCancelable(false);
            build.show();
            return;
        }
        super.onLiveFinish(i9, str);
        this.Q4 = false;
        this.f20012i6 = false;
        this.f18500i = false;
        this.B.removeCallbacks(this.f20009f6);
        com.guochao.faceshow.aaspring.manager.im.b.l0().E(this.Z5);
        if (this.I) {
            return;
        }
        this.T5 = false;
        if (this.f20017n6 != null) {
            BaseLiveActivity.u0("WatcherLiveRoomFragment.onLiveFinish()", true);
            this.f20017n6.stopPlay(false, false);
        }
        if (getActivity() != null && (getActivity() instanceof WatchLiveRoomActivity) && i9 != 10001) {
            ((WatchLiveRoomActivity) getActivity()).J1(this.f18506l);
        }
        u3(R.id.live_end_info_area, LiveEndWatcherFragment.Q1(this.P5, i9 == 10001 && getCurrentLiveRoom().isPrivateLiveRoom()));
        if (getActivity() != null && getActivity().getSupportFragmentManager() != null) {
            Iterator<Fragment> it = getActivity().getSupportFragmentManager().getFragments().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Fragment next = it.next();
                if (next instanceof LiveSignCenterDialog) {
                    ((LiveSignCenterDialog) next).dismissAllowingStateLoss();
                    break;
                }
            }
        }
        if (getView() != null && getView().findViewById(R.id.chat_fragment) != null) {
            getView().findViewById(R.id.chat_fragment).setVisibility(8);
        }
        UserGuideTouchView userGuideTouchView = this.f18494f;
        if (userGuideTouchView != null && userGuideTouchView.getVisibility() == 0) {
            this.f18494f.setVisibility(8);
        }
        this.I = true;
        this.Q = false;
        this.f18488c = false;
        this.f18490d = false;
        this.f18483a1 = false;
        this.f20013j6 = false;
        this.H4 = false;
        UserStateHolder.setIsLivingInMic(false);
        l2();
        com.guochao.faceshow.aaspring.modulars.live.common.a.m().f();
        if (getActivity() instanceof WatchLiveRoomActivity) {
            WatchLiveRoomActivity watchLiveRoomActivity = (WatchLiveRoomActivity) getActivity();
            if (watchLiveRoomActivity.f18076m && (t12 = watchLiveRoomActivity.t1()) > 1) {
                watchLiveRoomActivity.U1(t12 - 2);
            }
        }
        EventBus.getDefault().post(new y7.f());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.e
    public void onNetworkResume(int i9) {
        super.onNetworkResume(i9);
        o2();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.X5 = false;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BasePkLiveRoomFragment, com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.e
    public void onQuitLiveRoom(boolean z10, boolean z11) {
        String str;
        LiveRoomModel liveRoomModel;
        ImageView imageView;
        Fragment findFragmentById;
        if (!z10) {
            this.J.clear();
        }
        this.B.removeCallbacks(this.Y5);
        MultiLivePlayView multiLivePlayView = this.mVideoRecyclerView;
        if (multiLivePlayView != null && multiLivePlayView.getVisibility() == 8) {
            this.mVideoRecyclerView.setVisibility(0);
        }
        w5();
        if (getCurrentLiveRoom().isVoiceRoom() && (findFragmentById = getChildFragmentManager().findFragmentById(R.id.voice_room_seat_area)) != null) {
            getChildFragmentManager().beginTransaction().remove(findFragmentById).commitAllowingStateLoss();
        }
        hideBackToLast();
        VideoCallDuringLivingViewModel videoCallDuringLivingViewModel = this.f18482a;
        if (videoCallDuringLivingViewModel != null) {
            videoCallDuringLivingViewModel.setCurrentLiveRoom(null);
        }
        this.f20012i6 = false;
        this.f18483a1 = false;
        this.Q4 = false;
        this.f20013j6 = false;
        this.f18519r5 = false;
        this.R = false;
        this.f18520s = false;
        this.f18484a2 = false;
        r5();
        getCurrentLiveRoom().setPkModeWhenFloatWindow(false);
        j5();
        if (z10 && (imageView = this.mImageViewLiveBg) != null) {
            imageView.setVisibility(0);
            hc.a.v(this.mImageViewLiveBg, getCurrentLiveRoom().getLiveCoverImg());
        }
        MultiLivePlayView multiLivePlayView2 = this.mVideoRecyclerView;
        if (multiLivePlayView2 != null && multiLivePlayView2.getVisibility() == 4) {
            this.mVideoRecyclerView.setVisibility(0);
        }
        this.B.removeMessages(0);
        if (z10 && !this.I && (((liveRoomModel = this.f18506l) == null || !liveRoomModel.isKickedOut()) && !this.Q && (getActivity() instanceof WatchLiveRoomActivity) && !FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing() && !getCurrentLiveRoom().isVoiceRoom())) {
            WatchLiveRoomActivity watchLiveRoomActivity = (WatchLiveRoomActivity) getActivity();
            if (watchLiveRoomActivity != null && !watchLiveRoomActivity.f18080q && !watchLiveRoomActivity.f18082s) {
                z8.b K1 = K1();
                K1.m(this.f20006c6);
                getCurrentLiveRoom().setShowedFloatFromLiveRoom(false);
                z8.c.o().N(K1);
            } else if (watchLiveRoomActivity != null && watchLiveRoomActivity.f18082s) {
                D0().stopPlay(true, false);
            }
        } else {
            D0().stopPlay(true, false);
        }
        this.f20017n6.stopPlay(null);
        n5(true);
        if (this.Q && com.guochao.faceshow.aaspring.modulars.live.common.a.m().f18998h != null) {
            sendLiveMessage(LiveMessageModelFactory.createHangupModel(getCurrentUser().getUserId()), (e.a<Boolean>) null);
            c0(com.guochao.faceshow.aaspring.modulars.live.common.a.m().f18998h.getStreamId(), getCurrentUser().getUserId());
            com.guochao.faceshow.aaspring.modulars.live.common.a.m().f();
        }
        ApplyConversationListDialogFragment applyConversationListDialogFragment = this.C;
        if (applyConversationListDialogFragment != null) {
            applyConversationListDialogFragment.a2(-1, null);
        }
        super.onQuitLiveRoom(z10, false);
        E5();
        cancelLocationAnimator();
        SVGAImageView sVGAImageView = this.mDYLoadingView;
        if (sVGAImageView != null) {
            sVGAImageView.stopAnimation(true);
        }
        com.guochao.faceshow.aaspring.manager.im.b.l0().E(this.Z5);
        View view = this.mPkInfoAreaView;
        if (view != null) {
            view.setVisibility(8);
        }
        y3(true);
        this.H4 = false;
        View view2 = this.mLiveViewMaskContainer;
        if (view2 != null) {
            view2.setVisibility(4);
        }
        this.T5 = false;
        UserGuideTouchView userGuideTouchView = this.f18494f;
        if (userGuideTouchView != null) {
            userGuideTouchView.setVisibility(8);
        }
        this.T5 = false;
        this.f18488c = false;
        LiveRoomModel liveRoomModel2 = this.f18506l;
        if (liveRoomModel2 != null) {
            liveRoomModel2.setLaunchFromFloatWindow(false);
        }
        if (getActivity() instanceof WatchLiveRoomActivity) {
            ((WatchLiveRoomActivity) getActivity()).P1();
        }
        long currentTimeMillis = (System.currentTimeMillis() - this.f20006c6) / 1000;
        long j10 = currentTimeMillis < 30 ? 0L : currentTimeMillis < 60 ? 1L : currentTimeMillis < 300 ? 2L : currentTimeMillis < 600 ? 3L : currentTimeMillis < 1800 ? 4L : 5L;
        boolean isVoiceRoom = getCurrentLiveRoom().isVoiceRoom();
        boolean isMultiLiveRoom = getCurrentLiveRoom().isMultiLiveRoom();
        if (isVoiceRoom) {
            str = EventTrackingV2Utils.watch_voice_room_single_stay;
        } else if (isMultiLiveRoom) {
            str = EventTrackingV2Utils.watch_live_multi_stay;
        } else {
            str = EventTrackingV2Utils.watch_live_single_stay;
        }
        EventTrackingV2Utils.INSTANCE.track(str, String.valueOf(j10));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.e
    public void onReceiveFaceGift(GiftLiveMessage giftLiveMessage) {
        super.onReceiveFaceGift(giftLiveMessage);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.e
    public void onReceiveHugeGift(LiveMessageModel liveMessageModel) {
        super.onReceiveHugeGift(liveMessageModel);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.X5 = true;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.e
    public void onSelfMute(boolean z10) {
        super.onSelfMute(z10);
        if (z10) {
            ApplyConversationListDialogFragment applyConversationListDialogFragment = this.C;
            if (applyConversationListDialogFragment != null) {
                applyConversationListDialogFragment.a2(-1, null);
                this.C.dismissAllowingStateLoss();
            }
            if (com.guochao.faceshow.aaspring.modulars.live.common.a.m().f18998h != null) {
                c0(com.guochao.faceshow.aaspring.modulars.live.common.a.m().f18998h.getStreamId(), getCurrentUser().getUserId());
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
    }

    public GCLivePlayer p5() {
        return D0();
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public PostRequest post(String str) {
        PostRequest post = super.post(str);
        this.f20018o6.add(post);
        return post;
    }

    public void r5() {
        ImageView imageView = this.mImageViewLiveBg;
        if (imageView != null) {
            imageView.setVisibility(8);
            this.mImageViewLiveBg.setImageBitmap(null);
        }
        this.f20019p6 = false;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void screenShotChange(y7.k kVar) {
        RoomItemData roomItemData = (RoomItemData) getCurrentLiveRoom();
        if (getUserVisibleHint() && this.X5 && roomItemData.getScreenShotSwitch() != Contants.SWITCH_SCREEN_SHOTS_ON) {
            showToast(R.string.live_lock_screenshots_off);
        }
    }

    @OnClick
    @Optional
    public void shareRoom(View view) {
        if (TextUtils.isEmpty(getCurrentLiveRoom().getShareUrl()) || getActivity() == null) {
            return;
        }
        boolean isMultiLiveRoom = (getParentFragment() == null || !(getParentFragment() instanceof BaseLiveRoomFragment)) ? false : ((BaseLiveRoomFragment) getParentFragment()).getCurrentLiveRoom().isMultiLiveRoom();
        ShareContentBean shareContentBean = new ShareContentBean();
        shareContentBean.setShareType(0);
        shareContentBean.setContent(getString(isMultiLiveRoom ? R.string.live_share_text : R.string.live_share_text_single));
        shareContentBean.setImgUrl(getCurrentLiveRoom().getLiveCoverImg());
        shareContentBean.setShortUrl(getCurrentLiveRoom().getShareUrl());
        shareContentBean.setTitle(isMultiLiveRoom ? getString(R.string.live_share_title, getCurrentLiveRoom().getUserNickName()) : getString(R.string.live_share_title_single, getCurrentLiveRoom().getUserNickName()));
        ShareFragment g22 = ShareFragment.g2(shareContentBean, getCurrentLiveRoom());
        g22.setOnSharePlatformClickListener(new j());
        g22.show(getActivity().getSupportFragmentManager(), ShareDialog.WEB_SHARE_DIALOG);
    }

    public void showGiftDialog() {
        SvgaImageViewV2 svgaImageViewV2;
        LiveChatFragment liveChatFragment = this.f18532y;
        if (liveChatFragment == null || (svgaImageViewV2 = liveChatFragment.mGiftSVGAImageView) == null) {
            return;
        }
        svgaImageViewV2.performClick();
    }

    @Override // d9.g
    public void switchCamera() {
        if (y2(false) != null) {
            y2(false).switchCamera();
            boolean z10 = !this.Q5;
            this.Q5 = z10;
            if (z10) {
                y2(false).setMirror(true);
            } else {
                y2(false).setMirror(false);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.g
    public void t(String str, String str2) {
        super.t(str, str2);
        if (getCurrentLiveRoom().getBroadCasterUserId().equals(str2)) {
            ((RoomItemData) getCurrentLiveRoom()).setIsAttention(str);
        }
    }

    public boolean t5(int i9, int i10) {
        return getCurrentLiveRoom().isMultiLiveRoom() && i9 != i10;
    }

    public void v5(ViewGroup viewGroup) {
        if (getView() == null) {
            return;
        }
        LiveActivityView liveActivityView = (LiveActivityView) getView().findViewById(R.id.live_activity_view);
        A5(liveActivityView);
        View view = this.mViewGiftBox;
        ViewGroup viewGroup2 = this.firstRechargeLayVoice;
        A5(view);
        A5(viewGroup2);
        viewGroup.addView(viewGroup2);
        viewGroup.addView(liveActivityView);
        viewGroup.addView(view);
        if (getView().findViewById(R.id.chat_fragment).getLayoutParams().height < DensityUtil.dp2px(60.0f) + DensityUtil.dp2px(75.0f) + DensityUtil.dp2px(70.0f)) {
            viewGroup2.setVisibility(8);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.g
    public boolean x0() {
        return this.Q4;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    public GCLivePusher y2(boolean z10) {
        if (!z10) {
            return this.O5;
        }
        if (this.O5 == null) {
            this.O5 = LivePlayerProvider.pusher();
            if (getCurrentLiveRoom().isMultiLiveRoom()) {
                this.O5.setPauseImage("leave_bj02.png", 300, 5);
                this.O5.setSoundLevelListener(this);
            } else {
                this.O5.setPauseImage("leave_bj01.png", 300, 5);
                this.O5.setSoundLevelListener(null);
            }
            this.O5.setMirror(true);
        }
        return this.O5;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    public void y3(boolean z10) {
        super.y3(z10);
        ApplyConversationListDialogFragment applyConversationListDialogFragment = this.C;
        if (applyConversationListDialogFragment != null) {
            applyConversationListDialogFragment.k2(true);
        }
        this.Q = false;
        this.f18517q5 = null;
        if (z10) {
            return;
        }
        this.mVideoRecyclerView.bringToFront();
        if (getCurrentLiveRoom().isMultiLiveRoom()) {
            com.guochao.faceshow.aaspring.modulars.live.common.u.h(this.mVideoRecyclerView, -1);
            this.mTXCloudVideoViewAcc.bringToFront();
            com.guochao.faceshow.aaspring.modulars.live.common.u.h(this.mTXCloudVideoViewAcc, 1);
            D0().setPlayerView((ViewGroup) this.mTXCloudVideoViewAcc);
        } else {
            com.guochao.faceshow.aaspring.modulars.live.common.u.h(this.mVideoRecyclerView, 1);
        }
        this.f18519r5 = true;
        D0().startPlay(getCurrentLiveRoom().getStreamUrl(), getCurrentLiveRoom().buildRoomInfo());
        if (D0().isCompatMode()) {
            this.B.postDelayed(this.f20015l6, 6000L);
        }
    }

    @Override // com.guochao.faceshow.utils.PushUtils.OnPushCustomMessageHandler
    /* renamed from: y5 */
    public void onPushCustomMessage(@Nullable String str, @NonNull String str2, @NonNull Map<String, Object> map, @Nullable String str3) {
        if (TextUtils.isEmpty(str2) || getCurrentLiveRoom() == null || !getCurrentLiveRoom().getLiveRoomId().equals(map.get("live_id"))) {
            return;
        }
        char c10 = 65535;
        int hashCode = str2.hashCode();
        if (hashCode != 1753) {
            switch (hashCode) {
                case 1727:
                    if (str2.equals("65")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 1728:
                    if (str2.equals("66")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 1729:
                    if (str2.equals("67")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 1730:
                    if (str2.equals("68")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 1731:
                    if (str2.equals("69")) {
                        c10 = 4;
                        break;
                    }
                    break;
            }
        } else if (str2.equals("70")) {
            c10 = 5;
        }
        if (c10 == 0) {
            getCurrentLiveRoom().setUserType(1);
            Context context = getContext();
            ToastUtils.debugToast(context, "(仅测试)收到推送——你被主播设置了管理员liveId = " + map.get("live_id"));
        } else if (c10 == 1) {
            getCurrentLiveRoom().setUserType(2);
            Context context2 = getContext();
            ToastUtils.debugToast(context2, "(仅测试)收到推送——你被主播取消了管理员liveId = " + map.get("live_id"));
        } else if (c10 == 2) {
            onSelfMute(true);
            Context context3 = getContext();
            ToastUtils.debugToast(context3, "(仅测试)收到推送——你被主播禁言了liveId = " + map.get("live_id"));
        } else if (c10 != 3) {
            if (c10 != 4) {
                return;
            }
            a3(null);
        } else {
            onSelfMute(false);
            Context context4 = getContext();
            ToastUtils.debugToast(context4, "(仅测试)收到推送——你被主播解除禁言了liveId = " + map.get("live_id"));
        }
    }

    public void z5(String str, ResourceListItemBean resourceListItemBean) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.M4 = str;
        this.O5.getBeautyManager().setMotionTmpl(str);
    }
}
