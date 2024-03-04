package com.guochao.faceshow.aaspring.modulars.live.common;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.animation.LinearInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.GravityCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import butterknife.Optional;
import c8.b;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.material.badge.BadgeDrawable;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import com.guochao.component.liveroom.model.GCLiveRoomModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomCMDMessageModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.im_messages.dispatcher.GCIMMessageDispatcher;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.beans.ApplyPkCountdown;
import com.guochao.faceshow.aaspring.beans.ArenaBean;
import com.guochao.faceshow.aaspring.beans.AudienceInformation;
import com.guochao.faceshow.aaspring.beans.CancelPkData;
import com.guochao.faceshow.aaspring.beans.GiftMessageRefresh;
import com.guochao.faceshow.aaspring.beans.JoinGameUser;
import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.aaspring.beans.LiveGameExtras;
import com.guochao.faceshow.aaspring.beans.LiveGamePollDetail;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.beans.LiveInfoResult;
import com.guochao.faceshow.aaspring.beans.LivePeopleInfoBean;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.config.ServerConfig;
import com.guochao.faceshow.aaspring.danmu.DanmuView;
import com.guochao.faceshow.aaspring.manager.a;
import com.guochao.faceshow.aaspring.manager.im.a;
import com.guochao.faceshow.aaspring.manager.im.d;
import com.guochao.faceshow.aaspring.modulars.chat.models.LiveMessage;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.FirstRechargeDialog;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.FirstRechargeDownTimeUtils;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.FirstRechargeManager;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.LiveFirstRechargeCloseTip;
import com.guochao.faceshow.aaspring.modulars.live.VoiceRoomLiveTopUserInfoFragment;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.aaspring.modulars.live.activity.LiveKickOutActivity;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.modulars.live.adapter.BigGiftRecycleViewAdapter;
import com.guochao.faceshow.aaspring.modulars.live.adapter.LiveLinkMicPlayAdapter;
import com.guochao.faceshow.aaspring.modulars.live.adapter.LivePlayMaskAdapter;
import com.guochao.faceshow.aaspring.modulars.live.adapter.LiveVideoAudioMaskAdapter;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.BroadCastFragment;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.LittlePlayerFragment;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.LiveBroadCasterInfoFragment;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.viewmodel.VideoCallDuringLivingViewModel;
import com.guochao.faceshow.aaspring.modulars.live.common.u;
import com.guochao.faceshow.aaspring.modulars.live.fragment.ApplyConversationListDialogFragment;
import com.guochao.faceshow.aaspring.modulars.live.fragment.BottomInteractionDialogFragment;
import com.guochao.faceshow.aaspring.modulars.live.fragment.LittleLinkMicInfoFragment;
import com.guochao.faceshow.aaspring.modulars.live.fragment.RichListDialogFragment;
import com.guochao.faceshow.aaspring.modulars.live.game.GameBackDiamondDialog;
import com.guochao.faceshow.aaspring.modulars.live.game.MiniGameDataManager;
import com.guochao.faceshow.aaspring.modulars.live.game.g;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.AudienceListInfoMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel;
import com.guochao.faceshow.aaspring.modulars.live.model.GiftLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.GroupDismissMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.ILuckyRunwayMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LinkMicInfoMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LinkMicMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveActivityMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveFullScreenMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveLuckyRunwayMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveLuckyUserUpdateMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMicApplyResult;
import com.guochao.faceshow.aaspring.modulars.live.model.PkFCoinMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.PkResultMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.RunwayMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.SwitchUrlMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.TreasureMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.VolumeMessage;
import com.guochao.faceshow.aaspring.modulars.live.pk.InviteThePkDialogFragment;
import com.guochao.faceshow.aaspring.modulars.live.pk.PkRecordDialogFragment;
import com.guochao.faceshow.aaspring.modulars.live.pk.PkSelectFriendsDialogFragment;
import com.guochao.faceshow.aaspring.modulars.live.pk.PkTypeSelectDialogFragment;
import com.guochao.faceshow.aaspring.modulars.live.watcher.BigGiftBoxFragment;
import com.guochao.faceshow.aaspring.modulars.live.watcher.LittlePusherFragment;
import com.guochao.faceshow.aaspring.modulars.live.watcher.WatcherLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveActivityView;
import com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveMusicActivityView;
import com.guochao.faceshow.aaspring.modulars.main.fragment.MainMenuDialogFragment;
import com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager;
import com.guochao.faceshow.aaspring.modulars.setting.NetworkAnalysisActivity;
import com.guochao.faceshow.aaspring.modulars.vip.fragment.BuyVipContainerDialogFragment;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EmptyUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MicroPhoneLevelHelper;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.utils.ScreenshotsUtils;
import com.guochao.faceshow.aaspring.utils.SendMessageHandle;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.aaspring.utils.ZipUtils;
import com.guochao.faceshow.aaspring.utils.listener.OnBackButtonPressedHandler;
import com.guochao.faceshow.aaspring.views.AddZanHeartView;
import com.guochao.faceshow.aaspring.views.LiveRoomView;
import com.guochao.faceshow.aaspring.views.LiveScrollToClearScreenView;
import com.guochao.faceshow.aaspring.views.MultiLivePlayView;
import com.guochao.faceshow.aaspring.views.UserGuideTouchView;
import com.guochao.faceshow.activity.ReportDetailActivity;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.gift.controller.GiftRunwayScrollEndEvent;
import com.guochao.faceshow.promotion.data.PromotionData;
import com.guochao.faceshow.signin.SigninManager;
import com.guochao.faceshow.signin.dialog.LiveSignCenterDialog;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.Foreground;
import com.guochao.faceshow.utils.ReportController;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.utils.SensitiveWordFilter;
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
import com.guochao.faceshow.utils.TXIMUtils;
import com.guochao.faceshow.utils.TimeUtil;
import com.guochao.faceshow.views.e;
import com.guochao.player.GCLivePlayer;
import com.guochao.pusher.GCLivePusher;
import com.guochao.pusher.base.ILivePusher;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMGroupMemberInfo;
import d9.e;
import io.jsonwebtoken.JwtParser;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.TimerTask;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.functions.Function1;
import kotlin.text.Typography;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.light.utils.IOUtils;
import p9.a;
/* loaded from: classes3.dex */
public abstract class BaseLiveRoomFragment extends BaseFragment implements d9.g, OnBackButtonPressedHandler, Foreground.OnForegroundStateChangedListener, LiveScrollToClearScreenView.b, b.c, a.g, d.a, ILivePusher.PushSoundLevelListener, GCIMMessageDispatcher, a.e {
    public static final Gson K5 = new GsonBuilder().excludeFieldsWithModifiers(16, 128, 8).create();
    public static final String[] L5 = new String[2];
    private BottomInteractionDialogFragment A5;
    protected d9.a B3;
    private PkTypeSelectDialogFragment B5;
    public ApplyConversationListDialogFragment C;
    protected PKLiveInfoFragment C4;
    private PkSelectFriendsDialogFragment C5;
    protected AudienceInformation D4;
    private PkRecordDialogFragment D5;
    private InviteThePkDialogFragment E5;
    protected com.guochao.faceshow.views.g F;
    protected long F4;
    private long F5;
    protected int G;
    protected String G4;
    protected BigGiftBoxFragment H;
    public PopupWindow H5;
    LiveDanmuHelper I4;
    public BuyVipContainerDialogFragment I5;
    protected int J4;
    protected ViewGroup.MarginLayoutParams K4;
    protected PostRequest L;
    protected String L4;
    protected LittleLinkMicInfoFragment M;
    protected String M4;
    protected long N4;
    protected long O4;
    protected LittlePusherFragment P;
    @Nullable
    public com.guochao.faceshow.aaspring.modulars.live.game.f P4;
    public boolean Q;
    public boolean R;
    private long R4;
    protected List<d9.m> S4;
    protected LivePlayGiftFragment T4;
    protected boolean V2;
    private VoiceRoomSeatControllerViewModel V4;
    private long W4;
    public LiveLinkMicPlayAdapter X4;
    public LivePlayMaskAdapter Y4;
    public LiveVideoAudioMaskAdapter Z4;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public VideoCallDuringLivingViewModel f18482a;

    /* renamed from: a1  reason: collision with root package name */
    public boolean f18483a1;
    @BindView
    protected View adsLay;

    /* renamed from: b  reason: collision with root package name */
    GiftAnimator f18486b;
    @BindView
    ImageView btnSend;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f18488c;

    /* renamed from: c5  reason: collision with root package name */
    protected boolean f18489c5;
    @BindView
    View clickView;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f18490d;

    /* renamed from: d5  reason: collision with root package name */
    public long f18491d5;
    @BindView
    ViewStub dishWheelView;

    /* renamed from: e  reason: collision with root package name */
    protected View f18492e;

    /* renamed from: e5  reason: collision with root package name */
    protected String f18493e5;

    /* renamed from: f  reason: collision with root package name */
    protected UserGuideTouchView f18494f;

    /* renamed from: f5  reason: collision with root package name */
    BaseLiveMessage f18495f5;
    @Nullable
    @BindView
    ImageView firstRechargeClose;
    @BindView
    ImageView firstRechargeCloseVoice;
    @BindView
    protected ViewGroup firstRechargeLay;
    @BindView
    public ViewGroup firstRechargeLayVoice;
    @BindView
    protected LinearLayout flWatcherDate;

    /* renamed from: g  reason: collision with root package name */
    private BigGiftRecycleViewAdapter f18496g;
    @Nullable
    @BindView
    public View giftAndAdsView;

    /* renamed from: i  reason: collision with root package name */
    protected boolean f18500i;
    @BindView
    ImageView iconBigBox;

    /* renamed from: j  reason: collision with root package name */
    protected LiveMusicActivityView f18502j;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public LiveRoomModel f18506l;
    @BindView
    public View mAdsAndActivityView;
    @BindView
    public EditText mEditText;
    @BindView
    View mGuideDanmu;
    @BindView
    DanmuView mIDanmakuView;
    @BindView
    public View mInputArea;
    @Nullable
    @BindView
    protected View mLittleClickView;
    @BindView
    public LiveScrollToClearScreenView mLiveScrollToClearScreenView;
    @Nullable
    @BindView
    public ViewGroup mLiveViewContainer;
    @Nullable
    @BindView
    public View mLiveViewMaskContainer;
    @BindView
    protected MultiLivePlayView mMaskRecyclerView;
    @BindView
    protected MultiLivePlayView mMaskVideoRecyclerView;
    @Nullable
    @BindView
    AddZanHeartView mPeriscopeLayout;
    @BindView
    public View mPkInfoAreaView;
    @Nullable
    @BindView
    public FrameLayout mPushCloudView;
    @BindView
    protected View mRequestLink;
    @BindView
    protected TextView mRequestLinkCountTextView;
    @BindView
    protected FrameLayout mRunwayMessageViewArea;
    @Nullable
    @BindView
    public FrameLayout mTXCloudVideoViewAcc;
    @BindView
    TextView mTextViewBigGiftBoxCount;
    @BindView
    TextView mTextViewCountDownGift;
    @BindView
    protected TextView mTextViewFaceCastId;
    @Nullable
    @BindView
    public TextView mTextViewLinkMicUserName;
    @BindView
    public MultiLivePlayView mVideoRecyclerView;
    @BindView
    public View mViewGiftBox;
    @BindView
    View mViewLiveDanmuSwitch;
    @BindView
    ViewStub musicViewSub;

    /* renamed from: n5  reason: collision with root package name */
    protected String f18511n5;

    /* renamed from: o5  reason: collision with root package name */
    protected String f18513o5;

    /* renamed from: q5  reason: collision with root package name */
    protected String f18517q5;

    /* renamed from: r5  reason: collision with root package name */
    public boolean f18519r5;
    @BindView
    protected RecyclerView rcvGift;

    /* renamed from: s  reason: collision with root package name */
    protected boolean f18520s;

    /* renamed from: s5  reason: collision with root package name */
    protected List<LiveInfoMatchBean> f18521s5;
    @BindView
    public View smallMiniGameLay;

    /* renamed from: t  reason: collision with root package name */
    protected int f18522t;
    @BindView
    TextView tvRechargeDowntownTime;
    @BindView
    TextView tvRechargeDowntownTimeVoice;

    /* renamed from: u  reason: collision with root package name */
    String f18524u;

    /* renamed from: u5  reason: collision with root package name */
    protected LittlePlayerFragment f18525u5;

    /* renamed from: v5  reason: collision with root package name */
    protected long f18527v5;

    /* renamed from: w  reason: collision with root package name */
    protected sa.c f18528w;

    /* renamed from: w5  reason: collision with root package name */
    protected boolean f18529w5;

    /* renamed from: x  reason: collision with root package name */
    protected LiveBroadCasterInfoFragment f18530x;

    /* renamed from: y  reason: collision with root package name */
    public LiveChatFragment f18532y;

    /* renamed from: z  reason: collision with root package name */
    public LiveUserInfoFragment f18534z;

    /* renamed from: h  reason: collision with root package name */
    protected int f18498h = 1;

    /* renamed from: k  reason: collision with root package name */
    private final List<BaseLiveMessage> f18504k = new ArrayList();

    /* renamed from: m  reason: collision with root package name */
    protected long f18508m = 0;

    /* renamed from: n  reason: collision with root package name */
    protected long f18510n = 0;

    /* renamed from: o  reason: collision with root package name */
    protected long f18512o = 0;

    /* renamed from: p  reason: collision with root package name */
    protected long f18514p = 0;

    /* renamed from: q  reason: collision with root package name */
    protected long f18516q = 0;

    /* renamed from: r  reason: collision with root package name */
    protected boolean f18518r = false;

    /* renamed from: v  reason: collision with root package name */
    protected boolean f18526v = false;
    private final SparseArray<Fragment> A = new SparseArray<>();
    public Handler B = new Handler();
    protected final List<TreasureMessage.BigGiftBox> D = new CopyOnWriteArrayList();
    protected final List<TreasureMessage.BigGiftBox> E = new CopyOnWriteArrayList();
    public boolean I = false;
    protected final List<LiveInfoMatchBean> J = new ArrayList();
    protected List<AudienceInformation> K = new ArrayList();
    protected long N = 0;
    protected long O = 0;
    public boolean V1 = false;

    /* renamed from: a2  reason: collision with root package name */
    public boolean f18484a2 = false;
    TimeoutReceiver V3 = new TimeoutReceiver();
    protected boolean E4 = false;
    protected boolean H4 = false;
    protected boolean Q4 = false;
    protected boolean U4 = false;

    /* renamed from: a5  reason: collision with root package name */
    int f18485a5 = 0;

    /* renamed from: b5  reason: collision with root package name */
    int f18487b5 = 0;

    /* renamed from: g5  reason: collision with root package name */
    protected List<BaseLiveMessage> f18497g5 = new ArrayList();

    /* renamed from: h5  reason: collision with root package name */
    private final Runnable f18499h5 = new i();

    /* renamed from: i5  reason: collision with root package name */
    private final List<LiveMessageModel<BaseLiveMessage>> f18501i5 = new ArrayList();

    /* renamed from: j5  reason: collision with root package name */
    LinearInterpolator f18503j5 = new LinearInterpolator();

    /* renamed from: k5  reason: collision with root package name */
    Runnable f18505k5 = new l();

    /* renamed from: l5  reason: collision with root package name */
    public boolean f18507l5 = false;

    /* renamed from: m5  reason: collision with root package name */
    protected Runnable f18509m5 = new q();

    /* renamed from: p5  reason: collision with root package name */
    boolean f18515p5 = false;

    /* renamed from: t5  reason: collision with root package name */
    Runnable f18523t5 = new w();

    /* renamed from: x5  reason: collision with root package name */
    private boolean f18531x5 = true;

    /* renamed from: y5  reason: collision with root package name */
    private boolean f18533y5 = false;

    /* renamed from: z5  reason: collision with root package name */
    Runnable f18535z5 = new c0();
    w0 G5 = new w0(this, null);
    private final com.guochao.faceshow.views.g J5 = new o0(2147483647L, 1000);

    /* loaded from: classes3.dex */
    public class TimeoutReceiver extends BroadcastReceiver {
        public TimeoutReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (d9.c.f37999d0.equalsIgnoreCase(intent.getAction())) {
                BaseLiveRoomFragment.this.V0(intent.getIntExtra(CrashHianalyticsData.TIME, 0));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a0 implements View.OnClickListener {
        a0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UserGuideTouchView userGuideTouchView = BaseLiveRoomFragment.this.f18494f;
            if (userGuideTouchView == null || userGuideTouchView.getVisibility() != 0) {
                return;
            }
            if (!TextUtils.isEmpty(BaseLiveRoomFragment.this.G4)) {
                ja.a.b().e(BaseLiveRoomFragment.this.G4);
                BaseLiveRoomFragment.this.f18494f.setVisibility(8);
            }
            BaseLiveRoomFragment.this.F3(true);
        }
    }

    /* loaded from: classes3.dex */
    class b extends s0.c<Drawable> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f18539a;

        b(View view) {
            this.f18539a = view;
        }

        @Override // s0.k
        public void onLoadCleared(@Nullable Drawable drawable) {
        }

        @Override // s0.k
        public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable t0.f fVar) {
            onResourceReady((Drawable) obj, (t0.f<? super Drawable>) fVar);
        }

        public void onResourceReady(@NonNull Drawable drawable, @Nullable t0.f<? super Drawable> fVar) {
            this.f18539a.setBackground(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b0 implements SVGAParser.ParseCompletion {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SVGAImageView f18541a;

        b0(SVGAImageView sVGAImageView) {
            this.f18541a = sVGAImageView;
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            this.f18541a.setVideoItem(sVGAVideoEntity);
            SvgaImageViewUtils.fitImageView(sVGAVideoEntity, this.f18541a);
            this.f18541a.startAnimation();
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LiveUserInfoFragment liveUserInfoFragment = BaseLiveRoomFragment.this.f18534z;
            if (liveUserInfoFragment == null || liveUserInfoFragment.getView() == null) {
                return;
            }
            View findViewById = BaseLiveRoomFragment.this.f18534z.getView().findViewById(R.id.top_info);
            View findViewById2 = BaseLiveRoomFragment.this.f18534z.getView().findViewById(R.id.live_fb_and_like_ly);
            int measuredHeight = findViewById2 == null ? 0 : findViewById2.getMeasuredHeight();
            int measuredHeight2 = findViewById != null ? findViewById.getMeasuredHeight() : 0;
            int measuredHeight3 = BaseLiveRoomFragment.this.mTextViewFaceCastId.getMeasuredHeight();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) BaseLiveRoomFragment.this.mTextViewFaceCastId.getLayoutParams();
            if (measuredHeight2 == 0) {
                measuredHeight2 = DensityUtil.fillDp2px(BaseLiveRoomFragment.this.getActivity(), 49.0f);
            }
            BaseLiveRoomFragment baseLiveRoomFragment = BaseLiveRoomFragment.this;
            int statusbarHeight = measuredHeight2 + StatusBarHelper.getStatusbarHeight(baseLiveRoomFragment.getActivity()) + ((measuredHeight - measuredHeight3) / 2) + DensityUtil.fillDp2px(BaseLiveRoomFragment.this.getActivity(), 5.0f);
            marginLayoutParams.topMargin = statusbarHeight;
            baseLiveRoomFragment.f18522t = statusbarHeight;
            BaseLiveRoomFragment.this.mTextViewFaceCastId.setLayoutParams(marginLayoutParams);
            View view = BaseLiveRoomFragment.this.giftAndAdsView;
            if (view != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                marginLayoutParams2.topMargin = marginLayoutParams.topMargin + DensityUtil.fillDp2px(BaseLiveRoomFragment.this.getActivity(), 30.0f);
                BaseLiveRoomFragment.this.giftAndAdsView.setLayoutParams(marginLayoutParams2);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c0 implements Runnable {
        c0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseLiveRoomFragment baseLiveRoomFragment = BaseLiveRoomFragment.this;
            baseLiveRoomFragment.B.removeCallbacks(baseLiveRoomFragment.f18535z5);
            if (!BaseLiveRoomFragment.this.isAdded() || BaseLiveRoomFragment.this.isDetached() || BaseLiveRoomFragment.this.f18528w == null || !Foreground.get().isForeground()) {
                return;
            }
            BaseLiveRoomFragment baseLiveRoomFragment2 = BaseLiveRoomFragment.this;
            baseLiveRoomFragment2.f18528w.A(baseLiveRoomFragment2.getCurrentUser().getUserName(), BaseLiveRoomFragment.this.getCurrentUser().getUserId(), BaseLiveRoomFragment.this.getCurrentUser().getAvatarUrl(), BaseLiveRoomFragment.this.getCurrentUser().getLevel(), BaseLiveRoomFragment.this.getCurrentUser().getUserVipMsg(), BaseLiveRoomFragment.this.getCurrentUser().getMVPUrl());
            BaseLiveRoomFragment.this.f18518r = true;
        }
    }

    /* loaded from: classes3.dex */
    class d extends com.guochao.faceshow.aaspring.base.http.callback.c<List<TreasureMessage.BigGiftBox>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f18545a;

        d(long j10) {
            this.f18545a = j10;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<TreasureMessage.BigGiftBox>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<TreasureMessage.BigGiftBox> list, @NonNull FaceCastBaseResponse<List<TreasureMessage.BigGiftBox>> faceCastBaseResponse) {
            BaseLiveRoomFragment baseLiveRoomFragment = BaseLiveRoomFragment.this;
            if (baseLiveRoomFragment.I) {
                LogUtils.i("zune", "尚未结束直播");
            } else if (!baseLiveRoomFragment.getCurrentLiveRoom().isBroadCaster() || BaseLiveRoomFragment.this.V2) {
                if (list != null && list.size() > 0) {
                    for (int i9 = 0; i9 < list.size(); i9++) {
                        list.get(i9).setRequestTime(this.f18545a);
                    }
                    HashSet hashSet = new HashSet(BaseLiveRoomFragment.this.D);
                    hashSet.addAll(list);
                    BaseLiveRoomFragment.this.D.clear();
                    BaseLiveRoomFragment.this.D.addAll(0, hashSet);
                    BaseLiveRoomFragment.this.U3();
                    if (!BaseLiveRoomFragment.this.getCurrentLiveRoom().isBroadCaster() && !BaseLiveRoomFragment.this.f18484a2) {
                        LogUtils.i("zune", "尚未拉流成功");
                        BaseLiveRoomFragment.this.f18489c5 = true;
                        return;
                    }
                    BaseLiveRoomFragment.this.q3();
                    return;
                }
                BaseLiveRoomFragment.this.mViewGiftBox.setVisibility(8);
                BaseLiveRoomFragment.this.R3();
            }
        }
    }

    /* loaded from: classes3.dex */
    class d0 implements e.a {
        d0() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            LiveInfoMatchBean liveInfoMatchBean;
            if (z10) {
                dialog.dismiss();
                BaseLiveRoomFragment baseLiveRoomFragment = BaseLiveRoomFragment.this;
                LittlePlayerFragment littlePlayerFragment = baseLiveRoomFragment.f18525u5;
                if (littlePlayerFragment != null && (liveInfoMatchBean = littlePlayerFragment.f18446b) != null) {
                    baseLiveRoomFragment.c0(liveInfoMatchBean.getStreamId(), BaseLiveRoomFragment.this.f18525u5.f18446b.getUserId());
                }
                BaseLiveRoomFragment baseLiveRoomFragment2 = BaseLiveRoomFragment.this;
                baseLiveRoomFragment2.B5 = PkTypeSelectDialogFragment.R1(baseLiveRoomFragment2.getChildFragmentManager(), BaseLiveRoomFragment.this.getCurrentLiveRoom());
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* loaded from: classes3.dex */
    class e extends com.guochao.faceshow.aaspring.base.http.callback.c<JsonObject> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f18548a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f18549b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f18550c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ d9.h f18551d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ boolean f18552e;

        e(boolean z10, String str, String str2, d9.h hVar, boolean z11) {
            this.f18548a = z10;
            this.f18549b = str;
            this.f18550c = str2;
            this.f18551d = hVar;
            this.f18552e = z11;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<JsonObject> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable JsonObject jsonObject, @NonNull FaceCastBaseResponse<JsonObject> faceCastBaseResponse) {
            if (jsonObject == null || !jsonObject.has("selectTime")) {
                return;
            }
            long asLong = jsonObject.get("selectTime").getAsLong();
            BaseLiveRoomFragment.this.X4.A(this.f18548a, this.f18549b, asLong, false);
            BaseLiveRoomFragment.this.Z4.A(this.f18548a, this.f18549b, asLong, false);
            BaseLiveRoomFragment.this.sendLiveMessage(LiveMessageModelFactory.createAudioStatusChangeModel(this.f18548a, this.f18549b, this.f18550c, asLong), (e.a<Boolean>) null);
            d9.h hVar = this.f18551d;
            if (hVar != null) {
                hVar.onCallback();
            }
            if (Objects.equals(this.f18549b, BaseLiveRoomFragment.this.getCurrentUser().getUserId())) {
                BaseLiveRoomFragment.this.f18533y5 = this.f18548a;
            }
            Iterator<LiveInfoMatchBean> it = BaseLiveRoomFragment.this.J.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                LiveInfoMatchBean next = it.next();
                if (next != null && next.getUserId() != null && next.getUserId().equals(this.f18549b)) {
                    next.setVoiceStatus(this.f18548a ? "2" : "1");
                }
            }
            if (this.f18552e) {
                BaseLiveRoomFragment.this.getCurrentLiveRoom().setVoiceStatus(this.f18548a ? "2" : "1");
            }
        }
    }

    /* loaded from: classes3.dex */
    class e0 implements Runnable {
        e0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseLiveRoomFragment.this.r2();
        }
    }

    /* loaded from: classes3.dex */
    class f extends com.guochao.faceshow.aaspring.base.http.callback.c<JsonObject> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f18555a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f18556b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f18557c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ d9.h f18558d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ boolean f18559e;

        f(boolean z10, String str, String str2, d9.h hVar, boolean z11) {
            this.f18555a = z10;
            this.f18556b = str;
            this.f18557c = str2;
            this.f18558d = hVar;
            this.f18559e = z11;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<JsonObject> aVar) {
            d9.h hVar = this.f18558d;
            if (hVar != null) {
                hVar.onErrorCallback();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable JsonObject jsonObject, @NonNull FaceCastBaseResponse<JsonObject> faceCastBaseResponse) {
            if (jsonObject == null || !jsonObject.has("selectTime")) {
                return;
            }
            long asLong = jsonObject.get("selectTime").getAsLong();
            BaseLiveRoomFragment.this.Z4.E(this.f18555a, this.f18556b, asLong, false);
            BaseLiveRoomFragment.this.X4.E(this.f18555a, this.f18556b, asLong, false);
            BaseLiveRoomFragment.this.sendLiveMessage(LiveMessageModelFactory.createVideoStatusChangeModel(this.f18555a, this.f18556b, this.f18557c, asLong), (e.a<Boolean>) null);
            d9.h hVar = this.f18558d;
            if (hVar != null) {
                hVar.onCallback();
            }
            if (this.f18556b.equals(BaseLiveRoomFragment.this.getCurrentUser().getUserId())) {
                BaseLiveRoomFragment.this.f18531x5 = this.f18555a;
            }
            Iterator<LiveInfoMatchBean> it = BaseLiveRoomFragment.this.J.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                LiveInfoMatchBean next = it.next();
                if (next != null && next.getUserId() != null && next.getUserId().equals(this.f18556b)) {
                    next.setMatchType(BaseLiveRoomFragment.this.f18531x5 ? "2" : "1");
                    LivePlayMaskAdapter livePlayMaskAdapter = BaseLiveRoomFragment.this.Y4;
                    if (livePlayMaskAdapter != null) {
                        livePlayMaskAdapter.D(next, this.f18555a ? "2" : "1");
                    }
                }
            }
            if (this.f18559e) {
                BaseLiveRoomFragment.this.getCurrentLiveRoom().setMatchType(this.f18555a ? "2" : "1");
            }
        }
    }

    /* loaded from: classes3.dex */
    class f0 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Runnable f18561a;

        f0(Runnable runnable) {
            this.f18561a = runnable;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f18561a.run();
            BaseLiveRoomFragment.this.B.removeCallbacks(this.f18561a);
        }
    }

    /* loaded from: classes3.dex */
    class g extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d9.h f18563a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f18564b;

        g(d9.h hVar, boolean z10) {
            this.f18563a = hVar;
            this.f18564b = z10;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
            d9.h hVar = this.f18563a;
            if (hVar != null) {
                hVar.onErrorCallback();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            d9.h hVar = this.f18563a;
            if (hVar != null) {
                hVar.onCallback();
            }
            ((BroadCasterLiveModel) BaseLiveRoomFragment.this.getCurrentLiveRoom()).setVideoSwitch(this.f18564b ? 1 : 0);
            if (this.f18564b) {
                BaseLiveRoomFragment.this.showToast(R.string.video_call_during_living_open);
            } else {
                BaseLiveRoomFragment.this.showToast(R.string.video_call_during_living_close);
            }
        }
    }

    /* loaded from: classes3.dex */
    class g0 implements g.i {
        g0() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.g.i
        public void a(CharSequence charSequence) {
            BaseLiveRoomFragment.this.smallMiniGameLay.setVisibility(0);
            ((TextView) BaseLiveRoomFragment.this.smallMiniGameLay.findViewById(R.id.game_info)).setText(charSequence);
            BaseLiveRoomFragment baseLiveRoomFragment = BaseLiveRoomFragment.this;
            baseLiveRoomFragment.P4.Y(baseLiveRoomFragment.smallMiniGameLay);
            BaseLiveRoomFragment.this.i4();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.g.i
        public void b(View view) {
            BaseLiveRoomFragment baseLiveRoomFragment = BaseLiveRoomFragment.this;
            LiveScrollToClearScreenView liveScrollToClearScreenView = baseLiveRoomFragment.mLiveScrollToClearScreenView;
            if (liveScrollToClearScreenView == null || baseLiveRoomFragment.P4 == null) {
                return;
            }
            liveScrollToClearScreenView.d(view);
            List<LiveScrollToClearScreenView.a> clickInfos = BaseLiveRoomFragment.this.mLiveScrollToClearScreenView.getClickInfos();
            if (clickInfos != null) {
                for (LiveScrollToClearScreenView.a aVar : clickInfos) {
                    if (aVar.a() == view) {
                        return;
                    }
                }
            }
            BaseLiveRoomFragment baseLiveRoomFragment2 = BaseLiveRoomFragment.this;
            baseLiveRoomFragment2.mLiveScrollToClearScreenView.j(view, baseLiveRoomFragment2.P4.b0());
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.g.i
        public void c(View view) {
            LiveScrollToClearScreenView liveScrollToClearScreenView;
            if (view == null || (liveScrollToClearScreenView = BaseLiveRoomFragment.this.mLiveScrollToClearScreenView) == null) {
                return;
            }
            liveScrollToClearScreenView.e(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements a.k<File> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ sa.a f18567a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements Function1<String, String> {
            a() {
            }

            @Override // kotlin.jvm.functions.Function1
            /* renamed from: a */
            public String invoke(String str) {
                sa.a aVar;
                GCLivePusher A2;
                if (BaseLiveRoomFragment.this.getActivity() != null && !BaseLiveRoomFragment.this.getActivity().isDestroyed() && !BaseLiveRoomFragment.this.getActivity().isFinishing() && !TextUtils.isEmpty(str) && (((aVar = h.this.f18567a) == null || aVar.k() || (h.this.f18567a.h() != null && !h.this.f18567a.h().isEmpty())) && (A2 = BaseLiveRoomFragment.this.A2()) != null)) {
                    A2.getBeautyManager().setMotionTmpl(str);
                    BaseLiveRoomFragment.this.f18493e5 = str;
                }
                return "";
            }
        }

        h(sa.a aVar) {
            this.f18567a = aVar;
        }

        @Override // com.guochao.faceshow.aaspring.manager.a.k
        public void a(@NonNull ResourceCategoryItem resourceCategoryItem, @NonNull ResourceListItemBean resourceListItemBean, double d10, long j10, long j11) {
        }

        @Override // com.guochao.faceshow.aaspring.manager.a.k
        public void b(int i9, String str, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean) {
        }

        @Override // com.guochao.faceshow.aaspring.manager.a.k
        /* renamed from: d */
        public void c(@NonNull ResourceCategoryItem resourceCategoryItem, @NonNull ResourceListItemBean resourceListItemBean, @Nullable File file) {
            if (file == null) {
                return;
            }
            ZipUtils.safeUnZip(file.getPath(), new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h0 implements View.OnClickListener {

        /* loaded from: classes3.dex */
        class a implements LiveFirstRechargeCloseTip.OnConfirmListener {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.LiveFirstRechargeCloseTip.OnConfirmListener
            public void onConfirm() {
                ViewGroup viewGroup = BaseLiveRoomFragment.this.firstRechargeLay;
                if (viewGroup != null) {
                    viewGroup.setVisibility(8);
                }
                com.guochao.faceshow.aaspring.manager.b.f("live", "ShowFirstRecharge", Long.valueOf(FirstRechargeDownTimeUtils.INSTANCE.getLastLoginTime()));
            }
        }

        h0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LiveFirstRechargeCloseTip.showDialog(BaseLiveRoomFragment.this.getChildFragmentManager()).setOnConfirmListener(new a());
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* loaded from: classes3.dex */
        class a extends TimerTask {
            a() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                BaseLiveRoomFragment baseLiveRoomFragment;
                FrameLayout frameLayout;
                BaseLiveRoomFragment baseLiveRoomFragment2 = BaseLiveRoomFragment.this;
                baseLiveRoomFragment2.B.removeCallbacks(baseLiveRoomFragment2.f18499h5);
                if (BaseLiveRoomFragment.this.q2() || (frameLayout = (baseLiveRoomFragment = BaseLiveRoomFragment.this).mRunwayMessageViewArea) == null) {
                    return;
                }
                com.guochao.faceshow.aaspring.modulars.live.common.u.d(frameLayout, baseLiveRoomFragment.rcvGift, baseLiveRoomFragment.B, new u0(baseLiveRoomFragment, null));
            }
        }

        /* loaded from: classes3.dex */
        class b extends TimerTask {
            b() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                BaseLiveRoomFragment baseLiveRoomFragment;
                FrameLayout frameLayout;
                BaseLiveRoomFragment baseLiveRoomFragment2 = BaseLiveRoomFragment.this;
                baseLiveRoomFragment2.B.removeCallbacks(baseLiveRoomFragment2.f18499h5);
                if (BaseLiveRoomFragment.this.q2() || (frameLayout = (baseLiveRoomFragment = BaseLiveRoomFragment.this).mRunwayMessageViewArea) == null) {
                    return;
                }
                com.guochao.faceshow.aaspring.modulars.live.common.u.d(frameLayout, baseLiveRoomFragment.rcvGift, baseLiveRoomFragment.B, new u0(baseLiveRoomFragment, null));
            }
        }

        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseLiveRoomFragment baseLiveRoomFragment = BaseLiveRoomFragment.this;
            if (baseLiveRoomFragment.rcvGift == null || baseLiveRoomFragment.q2()) {
                return;
            }
            if (Language.ARABIC.equalsIgnoreCase(q7.a.e().c())) {
                if (!BaseLiveRoomFragment.this.rcvGift.canScrollHorizontally(-3)) {
                    BaseLiveRoomFragment.this.B.postDelayed(new a(), 3000L);
                    return;
                } else {
                    BaseLiveRoomFragment baseLiveRoomFragment2 = BaseLiveRoomFragment.this;
                    baseLiveRoomFragment2.rcvGift.smoothScrollBy(-4, 0, baseLiveRoomFragment2.f18503j5, 50);
                }
            } else if (!BaseLiveRoomFragment.this.rcvGift.canScrollHorizontally(3)) {
                BaseLiveRoomFragment.this.B.postDelayed(new b(), 3000L);
                return;
            } else {
                BaseLiveRoomFragment baseLiveRoomFragment3 = BaseLiveRoomFragment.this;
                baseLiveRoomFragment3.rcvGift.smoothScrollBy(4, 0, baseLiveRoomFragment3.f18503j5, 50);
            }
            BaseLiveRoomFragment.this.B.postDelayed(this, 50L);
        }
    }

    /* loaded from: classes3.dex */
    class i0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PopupWindow f18575a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f18576b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ TextView f18577c;

        i0(PopupWindow popupWindow, float f10, TextView textView) {
            this.f18575a = popupWindow;
            this.f18576b = f10;
            this.f18577c = textView;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BaseLiveRoomFragment.this.isDetached() || !BaseLiveRoomFragment.this.isAdded()) {
                return;
            }
            BaseLiveRoomFragment baseLiveRoomFragment = BaseLiveRoomFragment.this;
            if (baseLiveRoomFragment.I || baseLiveRoomFragment.f18507l5 || baseLiveRoomFragment.adsLay == null || baseLiveRoomFragment.getView() == null) {
                return;
            }
            int[] iArr = new int[2];
            BaseLiveRoomFragment.this.adsLay.getLocationInWindow(iArr);
            if (q7.a.e().j()) {
                this.f18575a.showAtLocation(BaseLiveRoomFragment.this.getView(), BadgeDrawable.TOP_START, iArr[0] + BaseLiveRoomFragment.this.adsLay.getMeasuredWidth(), iArr[1] + DensityUtil.dp2px(8.0f));
            } else if (Build.VERSION.SDK_INT <= 23) {
                this.f18575a.showAtLocation(BaseLiveRoomFragment.this.getView(), BadgeDrawable.TOP_START, (int) (((ScreenTools.getScreenWidth() - DensityUtil.dp2px(40.0f)) - BaseLiveRoomFragment.this.adsLay.getMeasuredWidth()) - this.f18576b), iArr[1] + DensityUtil.dp2px(8.0f));
            } else {
                this.f18575a.showAtLocation(BaseLiveRoomFragment.this.getView(), BadgeDrawable.TOP_START, (int) (((ScreenTools.getScreenWidth() - DensityUtil.dp2px(40.0f)) - BaseLiveRoomFragment.this.adsLay.getMeasuredWidth()) - this.f18576b), iArr[1] + DensityUtil.dp2px(8.0f));
            }
            this.f18577c.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j extends s0.i<Drawable> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseLiveMessage f18579a;

        j(BaseLiveMessage baseLiveMessage) {
            this.f18579a = baseLiveMessage;
        }

        @Override // s0.a, s0.k
        public void onLoadFailed(@Nullable Drawable drawable) {
            BaseLiveRoomFragment.this.D3(drawable, this.f18579a);
        }

        @Override // s0.k
        public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable t0.f fVar) {
            onResourceReady((Drawable) obj, (t0.f<? super Drawable>) fVar);
        }

        public void onResourceReady(@NonNull Drawable drawable, @Nullable t0.f<? super Drawable> fVar) {
            BaseLiveRoomFragment.this.D3(drawable, this.f18579a);
        }
    }

    /* loaded from: classes3.dex */
    class j0 implements Runnable {
        j0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SoftKeyBoardUtils.openSoftKeyBoardNow(BaseLiveRoomFragment.this.mEditText);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k extends com.guochao.faceshow.views.g {
        k(long j10, long j11) {
            super(j10, j11);
        }

        @Override // com.guochao.faceshow.views.g
        public void onFinish() {
        }

        @Override // com.guochao.faceshow.views.g
        public void onTick(long j10) {
            BaseLiveRoomFragment.this.q3();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k0 implements TextWatcher {
        k0() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            BaseLiveRoomFragment.this.btnSend.setEnabled(charSequence != null && charSequence.length() > 0);
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseLiveRoomFragment.this.Y3();
            BaseLiveRoomFragment.this.B.removeCallbacks(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l0 implements TextView.OnEditorActionListener {
        l0() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i9, KeyEvent keyEvent) {
            if (i9 != 4) {
                return false;
            }
            BaseLiveRoomFragment.this.send(textView);
            return true;
        }
    }

    /* loaded from: classes3.dex */
    class m implements V2TIMCallback {
        m() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
            Context context = BaseLiveRoomFragment.this.getContext();
            ToastUtils.debugToast(context, "退群失败： " + i9 + ", desc = " + str);
            LogUtils.i("zune: ", "code: " + i9 + ", desc: " + str);
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
            ToastUtils.debugToast(BaseLiveRoomFragment.this.getContext(), "退群成功");
            BaseLiveRoomFragment baseLiveRoomFragment = BaseLiveRoomFragment.this;
            baseLiveRoomFragment.f18490d = false;
            baseLiveRoomFragment.f18483a1 = false;
            baseLiveRoomFragment.f18488c = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m0 implements View.OnKeyListener {
        m0() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i9, KeyEvent keyEvent) {
            if (i9 == 66) {
                if (keyEvent.getAction() == 0) {
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    BaseLiveRoomFragment.this.C3(false);
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n implements V2TIMCallback {
        n() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
            Context context = BaseLiveRoomFragment.this.getContext();
            ToastUtils.debugToast(context, "退群失败： " + i9 + ", desc = " + str);
            LogUtils.i("zune: ", "code: " + i9 + ", desc: " + str);
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
            ToastUtils.debugToast(BaseLiveRoomFragment.this.getContext(), "退群成功");
            BaseLiveRoomFragment baseLiveRoomFragment = BaseLiveRoomFragment.this;
            baseLiveRoomFragment.f18490d = false;
            baseLiveRoomFragment.f18483a1 = false;
            LogUtils.d("liveInfoState", "Base里边quitGroup()方法执行" + BaseLiveRoomFragment.this.f18483a1);
            BaseLiveRoomFragment.this.f18488c = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n0 implements e.a<Boolean> {
        n0() {
        }

        @Override // d9.e.a
        /* renamed from: b */
        public void a(int i9, String str, @Nullable Boolean bool) {
        }

        @Override // d9.e.a
        /* renamed from: c */
        public void onSuccess(@NonNull Boolean bool) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o implements V2TIMCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveMessageModel f18590a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ e.a f18591b;

        o(LiveMessageModel liveMessageModel, e.a aVar) {
            this.f18590a = liveMessageModel;
            this.f18591b = aVar;
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
            if ("LIVE_SEND_GIFT".equals(this.f18590a.getCmd())) {
                BaseLiveRoomFragment.this.f18501i5.add(this.f18590a);
            }
            e.a aVar = this.f18591b;
            if (aVar != null) {
                aVar.a(i9, str, Boolean.FALSE);
            }
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
            e.a aVar = this.f18591b;
            if (aVar != null) {
                aVar.onSuccess(Boolean.TRUE);
            }
        }
    }

    /* loaded from: classes3.dex */
    class o0 extends com.guochao.faceshow.views.g {
        o0(long j10, long j11) {
            super(j10, j11);
        }

        @Override // com.guochao.faceshow.views.g
        public void onFinish() {
        }

        @Override // com.guochao.faceshow.views.g
        public void onTick(long j10) {
            if (BaseLiveRoomFragment.this.isDetached() || !BaseLiveRoomFragment.this.isAdded()) {
                return;
            }
            FirstRechargeDownTimeUtils firstRechargeDownTimeUtils = FirstRechargeDownTimeUtils.INSTANCE;
            long lastLoginTime = ((firstRechargeDownTimeUtils.getLastLoginTime() + 86400000) - System.currentTimeMillis()) - com.guochao.faceshow.aaspring.manager.i.u().s().getServerTimeDiff();
            if (lastLoginTime < 0) {
                firstRechargeDownTimeUtils.setShowIcon(true);
                lastLoginTime = 0;
            }
            StringBuilder sb2 = new StringBuilder();
            long j11 = lastLoginTime / 1000;
            long j12 = j11 / 3600;
            sb2.append(j12 < 10 ? "0" : "");
            sb2.append(j12);
            String sb3 = sb2.toString();
            StringBuilder sb4 = new StringBuilder();
            long j13 = (j11 / 60) % 60;
            sb4.append(j13 < 10 ? "0" : "");
            sb4.append(j13);
            String sb5 = sb4.toString();
            StringBuilder sb6 = new StringBuilder();
            long j14 = j11 % 60;
            sb6.append(j14 >= 10 ? "" : "0");
            sb6.append(j14);
            String sb7 = sb6.toString();
            BaseLiveRoomFragment.this.tvRechargeDowntownTime.setText(sb3 + CertificateUtil.DELIMITER + sb5 + CertificateUtil.DELIMITER + sb7);
            BaseLiveRoomFragment.this.tvRechargeDowntownTimeVoice.setText(sb3 + CertificateUtil.DELIMITER + sb5 + CertificateUtil.DELIMITER + sb7);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p extends com.guochao.faceshow.aaspring.base.http.callback.c<ArenaBean> {
        p() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable ArenaBean arenaBean, @NonNull FaceCastBaseResponse<ArenaBean> faceCastBaseResponse) {
            if (arenaBean != null) {
                BaseLiveRoomFragment.this.f18514p = arenaBean.getSelectTime();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<ArenaBean> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p0 implements Runnable {
        p0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LiveUserInfoFragment liveUserInfoFragment;
            BaseLiveRoomFragment baseLiveRoomFragment = BaseLiveRoomFragment.this;
            if (baseLiveRoomFragment.f18502j == null || (liveUserInfoFragment = baseLiveRoomFragment.f18534z) == null || liveUserInfoFragment.getView() == null) {
                return;
            }
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) BaseLiveRoomFragment.this.f18502j.k().getLayoutParams();
            layoutParams.gravity = BadgeDrawable.BOTTOM_END;
            layoutParams.topMargin = DensityUtil.dp2px(0.0f);
            layoutParams.bottomMargin = DensityUtil.dp2px(60.0f);
            layoutParams.setMarginStart(DensityUtil.dp2px(5.0f));
            layoutParams.setMarginEnd(DensityUtil.dp2px(10.0f));
            boolean z10 = true;
            BaseLiveRoomFragment.this.f18502j.x(true, true);
            BaseLiveRoomFragment baseLiveRoomFragment2 = BaseLiveRoomFragment.this;
            LiveChatFragment liveChatFragment = baseLiveRoomFragment2.f18532y;
            if (liveChatFragment != null) {
                boolean z11 = baseLiveRoomFragment2.Q;
                LiveMusicActivityView liveMusicActivityView = baseLiveRoomFragment2.f18502j;
                liveChatFragment.refreshChatMargin(false, z11, (liveMusicActivityView == null || !liveMusicActivityView.n()) ? false : false);
            }
        }
    }

    /* loaded from: classes3.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ToastUtils.showToast(BaseLiveRoomFragment.this.getActivity(), (int) R.string.pk_loading_finish);
            com.guochao.faceshow.aaspring.modulars.live.common.x.n().e();
            if (com.guochao.faceshow.aaspring.modulars.live.common.x.n().p() == 1) {
                com.guochao.faceshow.aaspring.modulars.live.common.x.n().d();
            }
            BaseLiveRoomFragment.this.f18506l.setApplyPkState(false);
            ToastUtils.debugToast(BaseLiveRoomFragment.this.getActivity(), "mApplyPkCountDownRunnable");
            LiveChatFragment liveChatFragment = BaseLiveRoomFragment.this.f18532y;
            if (liveChatFragment != null) {
                liveChatFragment.refreshPkBtn();
            }
            BaseLiveRoomFragment baseLiveRoomFragment = BaseLiveRoomFragment.this;
            baseLiveRoomFragment.sendC2CLiveMessage(baseLiveRoomFragment.f18506l.getPkUserInfo().getUser_id(), LiveMessageModelFactory.createCancelPkMessage(BaseLiveRoomFragment.this.f18506l.getLiveRoomId(), BaseLiveRoomFragment.this.getCurrentUser().getUserId(), BaseLiveRoomFragment.this.getCurrentUser().getUserName(), BaseLiveRoomFragment.this.f18506l.getPkUserInfo().getUser_id(), BaseLiveRoomFragment.this.f18506l.getPkUserInfo().getNickName()), null);
            BaseLiveRoomFragment.this.D2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q0 implements Runnable {
        q0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LiveUserInfoFragment liveUserInfoFragment;
            BaseLiveRoomFragment baseLiveRoomFragment = BaseLiveRoomFragment.this;
            if (baseLiveRoomFragment.f18502j == null || (liveUserInfoFragment = baseLiveRoomFragment.f18534z) == null || liveUserInfoFragment.getView() == null) {
                return;
            }
            View findViewById = BaseLiveRoomFragment.this.f18534z.getView().findViewById(R.id.live_fb_and_like_ly);
            float y10 = findViewById.getY();
            int height = findViewById.getHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) BaseLiveRoomFragment.this.f18502j.k().getLayoutParams();
            layoutParams.gravity = BadgeDrawable.TOP_START;
            layoutParams.topMargin = (int) (DensityUtil.dp2px(7.0f) + y10 + height + StatusBarHelper.getStatusbarHeight(BaseLiveRoomFragment.this.getContext()));
            layoutParams.bottomMargin = DensityUtil.dp2px(0.0f);
            layoutParams.setMarginStart(DensityUtil.dp2px(5.0f));
            layoutParams.setMarginEnd(DensityUtil.dp2px(10.0f));
            BaseLiveRoomFragment.this.f18502j.x(true, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class r implements V2TIMCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e.a f18598a;

        r(e.a aVar) {
            this.f18598a = aVar;
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
            e.a aVar = this.f18598a;
            if (aVar != null) {
                aVar.a(i9, str, Boolean.FALSE);
            }
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
            e.a aVar = this.f18598a;
            if (aVar != null) {
                aVar.onSuccess(Boolean.TRUE);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class r0 implements LiveMusicActivityView.f {
        r0() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveMusicActivityView.f
        public void a(int i9) {
            BaseLiveRoomFragment.this.J2(String.valueOf(2147483646), i9);
            LiveMusicActivityView liveMusicActivityView = BaseLiveRoomFragment.this.f18502j;
            if (liveMusicActivityView != null) {
                liveMusicActivityView.s(i9, true);
            }
            if (BaseLiveRoomFragment.this.getCurrentLiveRoom().isBroadCaster()) {
                ToastUtils.debugToast(BaseLiveRoomFragment.this.getContext(), "观众帮你触发了丛林直播间全屏特效");
            } else {
                ToastUtils.debugToast(BaseLiveRoomFragment.this.getContext(), "恭喜大家共同触发了丛林直播间全屏特效");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftLiveMessage f18601a;

        s(GiftLiveMessage giftLiveMessage) {
            this.f18601a = giftLiveMessage;
        }

        @Override // java.lang.Runnable
        public void run() {
            List<GiftFragment.r> giftSendList = this.f18601a.getGiftSendList();
            for (int i9 = 0; i9 < giftSendList.size(); i9++) {
                GiftLiveMessage giftLiveMessage = this.f18601a;
                GiftLiveMessage from = GiftLiveMessage.from(giftLiveMessage, giftLiveMessage.getItemBean());
                from.setToUserNickName(giftSendList.get(i9).f17820b);
                from.setToUserId(giftSendList.get(i9).f17819a);
                from.setToUserAvatar(giftSendList.get(i9).f17821c);
                from.setToUserVipMsgr(giftSendList.get(i9).f17822d);
                from.setIsGiftAllSend(0);
                BaseLiveRoomFragment.this.onReceiveLiveMessage(new LiveMessageModel("LIVE_SEND_GIFT", from));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s0 extends SimpleObserver<te.a> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<LiveMicApplyResult> {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            /* renamed from: a */
            public void onResponse(@Nullable LiveMicApplyResult liveMicApplyResult, @NonNull FaceCastBaseResponse<LiveMicApplyResult> faceCastBaseResponse) {
                if (liveMicApplyResult != null) {
                    liveMicApplyResult.setAudienceId(BaseLiveRoomFragment.this.getCurrentUser().getUserId());
                    BaseLiveRoomFragment.this.r(liveMicApplyResult);
                    com.guochao.faceshow.aaspring.modulars.live.common.a.m().z();
                    com.guochao.faceshow.aaspring.modulars.live.common.a.m().C(liveMicApplyResult, false);
                    return;
                }
                com.guochao.faceshow.aaspring.modulars.live.common.a.m().w(false);
                BaseLiveRoomFragment baseLiveRoomFragment = BaseLiveRoomFragment.this;
                baseLiveRoomFragment.onLinkMicStatusChanged(baseLiveRoomFragment.f18506l.canRequestLinkMic());
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<LiveMicApplyResult> aVar) {
                com.guochao.faceshow.aaspring.modulars.live.common.a.m().w(false);
                BaseLiveRoomFragment baseLiveRoomFragment = BaseLiveRoomFragment.this;
                baseLiveRoomFragment.onLinkMicStatusChanged(baseLiveRoomFragment.f18506l.canRequestLinkMic());
            }
        }

        s0() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(te.a aVar) {
            super.onNext((s0) aVar);
            if (aVar.f58133b) {
                com.guochao.faceshow.aaspring.modulars.live.common.a.m().w(true);
                BaseLiveRoomFragment baseLiveRoomFragment = BaseLiveRoomFragment.this;
                baseLiveRoomFragment.onLinkMicStatusChanged(baseLiveRoomFragment.f18506l.canRequestLinkMic());
                com.guochao.faceshow.aaspring.modulars.live.common.a.m().e(new a());
            } else if (aVar.f58134c) {
            } else {
                PackageUtils.gotoSetting(BaseLiveRoomFragment.this.getActivity());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class t extends com.guochao.faceshow.aaspring.base.http.callback.c<JsonObject> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LinkMicMessage f18605a;

        t(LinkMicMessage linkMicMessage) {
            this.f18605a = linkMicMessage;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<JsonObject> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable JsonObject jsonObject, @NonNull FaceCastBaseResponse<JsonObject> faceCastBaseResponse) {
            if (jsonObject != null && jsonObject.has("selectTime")) {
                long asLong = jsonObject.get("selectTime").getAsLong();
                BaseLiveRoomFragment.this.f18527v5 = asLong;
                LiveInfoMatchBean j10 = com.guochao.faceshow.aaspring.modulars.live.common.a.m().j(this.f18605a.getFromUserId());
                if (j10 != null) {
                    LiveLinkMicPlayAdapter liveLinkMicPlayAdapter = BaseLiveRoomFragment.this.X4;
                    if (liveLinkMicPlayAdapter != null) {
                        liveLinkMicPlayAdapter.c(j10, asLong);
                    }
                    LivePlayMaskAdapter livePlayMaskAdapter = BaseLiveRoomFragment.this.Y4;
                    if (livePlayMaskAdapter != null) {
                        livePlayMaskAdapter.c(j10, asLong);
                    }
                    LiveVideoAudioMaskAdapter liveVideoAudioMaskAdapter = BaseLiveRoomFragment.this.Z4;
                    if (liveVideoAudioMaskAdapter != null) {
                        liveVideoAudioMaskAdapter.c(j10, asLong);
                    }
                }
            }
            BaseLiveRoomFragment.this.sendLiveMessage(LiveMessageModelFactory.createStartMergeModel(this.f18605a.getFromUserId(), this.f18605a.getStreamId()), (e.a<Boolean>) null);
        }
    }

    /* loaded from: classes3.dex */
    class t0 implements e.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f18607a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f18608b;

        t0(int i9, boolean z10) {
            this.f18607a = i9;
            this.f18608b = z10;
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (BaseLiveRoomFragment.this.getActivity() != null && z10) {
                dialog.dismiss();
                if (this.f18607a == 10) {
                    NetworkAnalysisActivity.p0(BaseLiveRoomFragment.this.getActivity(), 1);
                } else if (BaseLiveRoomFragment.this.getCurrentLiveRoom().isBroadCaster()) {
                    if (UserStateHolder.isLiving() && BaseLiveRoomFragment.this.getCurrentLiveRoom().isBroadCaster()) {
                        BaseLiveRoomFragment.this.onLiveFinish(-1, "close");
                        return;
                    }
                    if (BaseLiveRoomFragment.this.getCurrentLiveRoom().isBroadCaster()) {
                        BaseLiveRoomFragment.this.A2().stopAll();
                    }
                    if (this.f18608b) {
                        return;
                    }
                    BaseLiveRoomFragment.this.getActivity().finish();
                }
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class u extends com.guochao.faceshow.aaspring.base.http.callback.c<LiveInfoResult> {
        u() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LiveInfoResult liveInfoResult, @NonNull FaceCastBaseResponse<LiveInfoResult> faceCastBaseResponse) {
            if (liveInfoResult == null || liveInfoResult.getPk() == null || liveInfoResult.getPk().getRightAnchorMsg() == null) {
                return;
            }
            FragmentActivity activity = BaseLiveRoomFragment.this.getActivity();
            ToastUtils.debugToast(activity, "对方加速流地址：" + liveInfoResult.getPk().getRightAnchorMsg().getJsUrl());
            com.guochao.faceshow.aaspring.modulars.live.common.x.n().y(liveInfoResult.getPk());
            BaseLiveRoomFragment.this.f18508m = liveInfoResult.getServerTime();
            BaseLiveRoomFragment.this.h0(com.guochao.faceshow.aaspring.modulars.live.common.x.n().m(), liveInfoResult.getServerTime(), false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LiveInfoResult> aVar) {
        }
    }

    /* loaded from: classes3.dex */
    private class u0 implements d9.i {
        private u0() {
        }

        @Override // d9.i
        public void onCallback() {
            if (BaseLiveRoomFragment.this.f18497g5.size() > 0) {
                BaseLiveRoomFragment.this.f18497g5.remove(0);
            }
            if (BaseLiveRoomFragment.this.f18497g5.size() > 0) {
                BaseLiveRoomFragment.this.T3();
            }
        }

        /* synthetic */ u0(BaseLiveRoomFragment baseLiveRoomFragment, k kVar) {
            this();
        }
    }

    /* loaded from: classes3.dex */
    class v implements d9.b {
        v() {
        }

        @Override // d9.b
        public void a(boolean z10, boolean z11) {
            BaseLiveRoomFragment baseLiveRoomFragment = BaseLiveRoomFragment.this;
            ViewGroup.MarginLayoutParams marginLayoutParams = baseLiveRoomFragment.K4;
            if (marginLayoutParams == null) {
                return;
            }
            if (z10) {
                if (z11) {
                    marginLayoutParams.bottomMargin = 0;
                } else {
                    marginLayoutParams.bottomMargin = baseLiveRoomFragment.J4 - DensityUtil.dp2px(50.0f);
                }
            } else if (baseLiveRoomFragment.getCurrentLiveRoom().isMultiLiveRoom()) {
                BaseLiveRoomFragment baseLiveRoomFragment2 = BaseLiveRoomFragment.this;
                baseLiveRoomFragment2.K4.bottomMargin = baseLiveRoomFragment2.J4 + DensityUtil.dp2px(4.0f);
            } else {
                BaseLiveRoomFragment baseLiveRoomFragment3 = BaseLiveRoomFragment.this;
                baseLiveRoomFragment3.K4.bottomMargin = baseLiveRoomFragment3.J4;
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface v0 {
        void w(LiveRoomModel liveRoomModel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class w implements Runnable {

        /* loaded from: classes3.dex */
        class a extends com.guochao.faceshow.aaspring.base.http.callback.c<LinkMicInfoMessage> {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            /* renamed from: a */
            public void onResponse(@Nullable LinkMicInfoMessage linkMicInfoMessage, @NonNull FaceCastBaseResponse<LinkMicInfoMessage> faceCastBaseResponse) {
                if (linkMicInfoMessage != null) {
                    BaseLiveRoomFragment.this.f18521s5 = linkMicInfoMessage.getMatchList();
                    BaseLiveRoomFragment.this.b4(linkMicInfoMessage);
                }
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<LinkMicInfoMessage> aVar) {
                if (aVar.a() == 80006 || aVar.a() == 80001) {
                    BaseLiveRoomFragment.this.l2();
                }
            }
        }

        /* loaded from: classes3.dex */
        class b implements BaseFaceCastRequest.b<PostRequest> {
            b() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest.b
            /* renamed from: b */
            public void a(PostRequest postRequest) {
                postRequest.v("pushIp", BaseLiveRoomFragment.this.getCurrentLiveRoom().getLivePushIP());
            }
        }

        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseLiveRoomFragment baseLiveRoomFragment = BaseLiveRoomFragment.this;
            baseLiveRoomFragment.L = baseLiveRoomFragment.post("tokens/live/microphone/roundRobin").v("liveId", BaseLiveRoomFragment.this.getCurrentLiveRoom().getLiveRoomId()).v("anchorId", BaseLiveRoomFragment.this.getCurrentLiveRoom().getBroadCasterUserId()).A(new b()).G(10000, new a());
        }
    }

    /* loaded from: classes3.dex */
    private class w0 implements Runnable {

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UserGuideTouchView userGuideTouchView = BaseLiveRoomFragment.this.f18494f;
                if (userGuideTouchView == null || userGuideTouchView.getVisibility() != 0) {
                    return;
                }
                if (!TextUtils.isEmpty(BaseLiveRoomFragment.this.G4)) {
                    ja.a.b().e(BaseLiveRoomFragment.this.G4);
                    BaseLiveRoomFragment.this.f18494f.setVisibility(8);
                }
                BaseLiveRoomFragment.this.F3(true);
            }
        }

        /* loaded from: classes3.dex */
        class b implements SVGAParser.ParseCompletion {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SVGAImageView f18618a;

            b(SVGAImageView sVGAImageView) {
                this.f18618a = sVGAImageView;
            }

            @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
            public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
                this.f18618a.setVideoItem(sVGAVideoEntity);
                SvgaImageViewUtils.fitImageView(sVGAVideoEntity, this.f18618a);
                this.f18618a.startAnimation();
            }

            @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
            public void onError() {
            }
        }

        private w0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BaseLiveRoomFragment.this.getView() != null && ja.a.b().f("KEY_SWIPE_TO_SHOW_LIVE_CHAT")) {
                BaseLiveRoomFragment baseLiveRoomFragment = BaseLiveRoomFragment.this;
                if (baseLiveRoomFragment.f18494f == null) {
                    BaseLiveRoomFragment.this.f18494f = (UserGuideTouchView) ((ViewStub) baseLiveRoomFragment.getView().findViewById(R.id.user_guide_swipe_to_dismiss_stub)).inflate();
                }
                BaseLiveRoomFragment baseLiveRoomFragment2 = BaseLiveRoomFragment.this;
                baseLiveRoomFragment2.f18494f.setLiveScrollToClearScreenView(baseLiveRoomFragment2.mLiveScrollToClearScreenView);
                BaseLiveRoomFragment.this.f18494f.setOnClickListener(new a());
                int i9 = q7.a.e().j() ? R.raw.user_guide_swipe_to_dismiss : R.raw.user_guide_swipe_to_show;
                UserGuideTouchView userGuideTouchView = BaseLiveRoomFragment.this.f18494f;
                if (userGuideTouchView != null) {
                    SvgaImageViewUtils.getParser().decodeFromInputStream(BaseLiveRoomFragment.this.getResources().openRawResource(i9), "swipe_to_show", new b((SVGAImageView) userGuideTouchView.findViewById(R.id.svga)), true);
                    ((TextView) BaseLiveRoomFragment.this.f18494f.findViewById(R.id.text)).setText(R.string.user_guide_swipe_to_show);
                    BaseLiveRoomFragment.this.f18494f.setVisibility(0);
                    BaseLiveRoomFragment.this.F3(false);
                    BaseLiveRoomFragment.this.G4 = "KEY_SWIPE_TO_SHOW_LIVE_CHAT";
                }
            }
        }

        /* synthetic */ w0(BaseLiveRoomFragment baseLiveRoomFragment, k kVar) {
            this();
        }
    }

    /* loaded from: classes3.dex */
    class x implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveGameExtras f18620a;

        x(LiveGameExtras liveGameExtras) {
            this.f18620a = liveGameExtras;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!this.f18620a.isStarted() && BaseLiveRoomFragment.this.getCurrentLiveRoom().isBroadCaster()) {
                c9.a.i().I0();
            } else {
                c9.a.i().V();
            }
        }
    }

    /* loaded from: classes3.dex */
    class y implements SVGAParser.ParseCompletion {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SVGAImageView f18622a;

        y(SVGAImageView sVGAImageView) {
            this.f18622a = sVGAImageView;
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            this.f18622a.setVideoItem(sVGAVideoEntity);
            SvgaImageViewUtils.fitImageView(sVGAVideoEntity, this.f18622a);
            this.f18622a.startAnimation();
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* loaded from: classes3.dex */
    class z implements View.OnClickListener {
        z() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseLiveRoomFragment.this.f18492e.setVisibility(8);
            ja.a.b().e("KEY_SLIDE_TO_SEE_MORE_LIVE");
            Intent intent = new Intent();
            intent.putExtra("checkStartLive", 1);
            if (BaseLiveRoomFragment.this.getActivity() != null) {
                BaseLiveRoomFragment.this.getActivity().setResult(-1, intent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C3(boolean z10) {
        ServerConfig s10 = com.guochao.faceshow.aaspring.manager.i.u().s();
        boolean z11 = true;
        if ((s10.getUserSpeech() != 0) && s10.getLiveSpeechOperationLogVo() != null) {
            showToast(s10.getLiveSpeechOperationLogVo().getReasonContentLang());
        } else if (!getCurrentLiveRoom().isMute() && !getCurrentGCLiveRoomModel().getForbiddenMessage()) {
            String trim = this.mEditText.getText().toString().trim();
            if (!TextUtils.isEmpty(trim)) {
                Context context = getContext();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getCurrentUser().getCurrentUserId());
                sb2.append("showDanmu");
                boolean z12 = SpUtils.getBool(context, sb2.toString()) && getCurrentUser().getVipLevel() == 2;
                Context context2 = getContext();
                StringBuilder sb3 = new StringBuilder();
                sb3.append(getCurrentUser().getCurrentUserId());
                sb3.append("showDanmu");
                z11 = (SpUtils.getBool(context2, sb3.toString()) && getCurrentUser().isMVPDanmuOn()) ? false : false;
                if (!SensitiveWordFilter.getInstance().hasKeyword(trim)) {
                    SigninManager.INSTANCE.addLiveMessageCount();
                    LiveMessageModel<BaseLiveMessage> createTextModel = LiveMessageModelFactory.createTextModel(trim, z12, z11);
                    sendLiveMessage(createTextModel, new n0());
                    C2(createTextModel);
                }
                this.mEditText.setText("");
            }
            if (z10) {
                return;
            }
            this.mEditText.requestFocus();
        } else {
            showToast(R.string.livehavemote_self);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D2() {
        post("tokens/live/invite/cancel/arena").v("cancelUserId", this.f18506l.getPkUserInfo().getCurrentUserId()).v("liveId", this.f18506l.getLiveRoomId()).I(3).M(new p());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D3(@NonNull Drawable drawable, BaseLiveMessage baseLiveMessage) {
        this.f18495f5 = baseLiveMessage;
        baseLiveMessage.setType("0");
        ((RunwayMessage.BigGiftBean) baseLiveMessage).setResource(drawable);
        this.f18504k.clear();
        this.f18504k.add(baseLiveMessage);
        RunwayMessage.BigGiftBean bigGiftBean = new RunwayMessage.BigGiftBean();
        bigGiftBean.setType("5");
        this.f18504k.add(bigGiftBean);
        this.f18496g.notifyDataSetChanged();
        if (this.mRunwayMessageViewArea == null || q2()) {
            return;
        }
        H3(baseLiveMessage);
    }

    private void F2() {
        if (this.f18502j == null) {
            LiveMusicActivityView liveMusicActivityView = new LiveMusicActivityView(this.musicViewSub.inflate());
            this.f18502j = liveMusicActivityView;
            liveMusicActivityView.setOnPlayMusicAnimListener(new r0());
        }
    }

    private void H2() {
        this.mGuideDanmu.setVisibility(ja.a.b().f("KEY_LIVE_DANMU") ? 0 : 8);
        this.btnSend.setEnabled(false);
        Context context = getContext();
        if (SpUtils.getBool(context, getCurrentUser().getCurrentUserId() + "showDanmu") && (getCurrentUser().getVipLevel() == 2 || getCurrentUser().isMVPDanmuOn())) {
            this.mViewLiveDanmuSwitch.setSelected(true);
        }
        this.mEditText.addTextChangedListener(new k0());
        this.mEditText.setOnEditorActionListener(new l0());
        this.mEditText.setOnKeyListener(new m0());
    }

    private void H3(BaseLiveMessage baseLiveMessage) {
        TranslateAnimation translateAnimation = new TranslateAnimation(1, Language.ARABIC.equalsIgnoreCase(q7.a.e().c()) ? -1.0f : 1.0f, 1, 0.0f, 1, 0.0f, 1, 0.0f);
        translateAnimation.setDuration(500L);
        this.mRunwayMessageViewArea.clearAnimation();
        this.mRunwayMessageViewArea.setVisibility(0);
        this.mRunwayMessageViewArea.startAnimation(translateAnimation);
        if (baseLiveMessage instanceof RunwayMessage.LuckyGiftRunwayMessage) {
            return;
        }
        this.B.postDelayed(this.f18505k5, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J2(String str, int i9) {
        List<d9.e> list = getList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            list.get(i10).onPlayMusicAnim(str, "2", i9);
        }
    }

    private boolean M2(String str) {
        return getCurrentUser().getUserId().equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void O2(View view) {
        BaseLiveMessage baseLiveMessage;
        RecyclerView.ViewHolder findViewHolderForAdapterPosition = this.rcvGift.findViewHolderForAdapterPosition(0);
        if (findViewHolderForAdapterPosition != null && (findViewHolderForAdapterPosition.itemView.getTag() instanceof BaseLiveMessage)) {
            baseLiveMessage = (BaseLiveMessage) findViewHolderForAdapterPosition.itemView.getTag();
        } else {
            baseLiveMessage = this.f18495f5;
        }
        if (baseLiveMessage != null) {
            if (!getCurrentLiveRoom().isBroadCaster() || getCurrentLiveRoom().isVoiceRoom()) {
                if ((K2() && !getCurrentLiveRoom().isVoiceRoom()) || baseLiveMessage.getRoomId().equals(getCurrentLiveRoom().getChatGroupId()) || baseLiveMessage.getRoomId().equals(getCurrentLiveRoom().getLiveRoomId())) {
                    return;
                }
                RoomItemData roomItemData = new RoomItemData();
                roomItemData.setLiveRoomId(baseLiveMessage.getRoomId());
                boolean z10 = baseLiveMessage instanceof RunwayMessage.BigGiftBean;
                if (z10) {
                    RunwayMessage.BigGiftBean bigGiftBean = (RunwayMessage.BigGiftBean) baseLiveMessage;
                    roomItemData.setVoiceRoom(bigGiftBean.getTrackType() == 2 || bigGiftBean.getTrackType() == 3);
                    roomItemData.setLiveRoomId(String.valueOf(bigGiftBean.getRoomId()));
                    roomItemData.setLiveImg(String.valueOf(bigGiftBean.getLiveUserImg()));
                    roomItemData.setImg(bigGiftBean.getLiveUserImg());
                    roomItemData.setLiveCoverImg(bigGiftBean.getLiveCoverImg());
                    roomItemData.setStreamUrl(bigGiftBean.getLiveFlow());
                    roomItemData.setChatGroupId(bigGiftBean.getGroupId());
                    roomItemData.setGroupId(bigGiftBean.getGroupId());
                    roomItemData.setUserId(String.valueOf(bigGiftBean.getRoomId()));
                    roomItemData.setLiveType("1");
                } else if (baseLiveMessage instanceof LiveLuckyRunwayMessage) {
                    LiveLuckyRunwayMessage liveLuckyRunwayMessage = (LiveLuckyRunwayMessage) baseLiveMessage;
                    roomItemData.setImg(liveLuckyRunwayMessage.getLiveUserImg());
                    roomItemData.setLiveCoverImg(liveLuckyRunwayMessage.getLiveCoverImg());
                    roomItemData.setStreamUrl(liveLuckyRunwayMessage.getLiveFlow());
                    roomItemData.setGroupId(liveLuckyRunwayMessage.getGroupId());
                    roomItemData.setLiveType(liveLuckyRunwayMessage.getLiveType());
                }
                if (this.f18497g5.size() > 0) {
                    this.f18497g5.remove(0);
                }
                this.mRunwayMessageViewArea.setVisibility(8);
                if (getActivity() instanceof WatchLiveRoomActivity) {
                    roomItemData.setLastRoomItem((RoomItemData) getCurrentLiveRoom());
                    ((WatchLiveRoomActivity) getActivity()).B1(roomItemData);
                }
                if (z10) {
                    RunwayMessage.BigGiftBean bigGiftBean2 = (RunwayMessage.BigGiftBean) baseLiveMessage;
                    if (TextUtils.isEmpty(bigGiftBean2.getTrackId())) {
                        return;
                    }
                    post("tokens/live/treasure/click/track").v("trackId", bigGiftBean2.getTrackId()).v("trackType", Integer.valueOf(bigGiftBean2.getTrackType())).L();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void P2(View view) {
        Object tag = view.getTag();
        if ((tag instanceof Integer) && 1 == ((Integer) tag).intValue()) {
            ToastUtils.showToast(getContext(), (int) R.string.live_receive_happyb_after_count_down);
        } else {
            ToastUtils.showToast(getContext(), (int) R.string.live_receive_diamonds_after_count_down);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Q2(View view) {
        com.guochao.faceshow.aaspring.modulars.live.game.f fVar = this.P4;
        if (fVar != null && fVar.f19479a != null && fVar.f19463w != null && fVar.m() >= 0) {
            CharSequence text = ((TextView) this.smallMiniGameLay.findViewById(R.id.game_info)).getText();
            view.setVisibility(8);
            this.P4.f19479a.setVisibility(0);
            this.P4.f19463w.setText(text);
        } else {
            c9.a.i().V();
        }
        i4();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R2() {
        this.f18529w5 = true;
        A3(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S2(View view) {
        if (DisableDoubleClickUtils.canClick(view)) {
            int[] iArr = new int[2];
            this.firstRechargeLayVoice.getLocationOnScreen(iArr);
            ArrayList arrayList = new ArrayList();
            arrayList.add(Integer.valueOf(iArr[0]));
            arrayList.add(Integer.valueOf(iArr[0] + this.firstRechargeLayVoice.getMeasuredWidth()));
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Integer.valueOf(iArr[1]));
            arrayList2.add(Integer.valueOf(iArr[1] + this.firstRechargeLayVoice.getMeasuredHeight()));
            FirstRechargeDialog.showDialog(arrayList, arrayList2, 3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T2(View view) {
        if (DisableDoubleClickUtils.canClick(view)) {
            int[] iArr = new int[2];
            this.firstRechargeLay.getLocationOnScreen(iArr);
            ArrayList arrayList = new ArrayList();
            arrayList.add(Integer.valueOf(iArr[0]));
            arrayList.add(Integer.valueOf(iArr[0] + this.firstRechargeLay.getMeasuredWidth()));
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Integer.valueOf(iArr[1]));
            arrayList2.add(Integer.valueOf(iArr[1] + this.firstRechargeLay.getMeasuredHeight()));
            FirstRechargeDialog.showDialog(arrayList, arrayList2, 3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U3() {
        ArrayList arrayList = new ArrayList(this.D);
        Collections.sort(arrayList);
        this.D.clear();
        this.D.addAll(arrayList);
    }

    private void V3() {
        this.J5.start();
    }

    public static Intent W2(Context context, boolean z10, boolean z11, boolean z12, boolean z13) {
        Intent intent = new Intent(context, LiveKickOutActivity.class);
        intent.addFlags(536870912);
        intent.putExtra("isBroadcaster", z10);
        intent.putExtra("isVVip", z11);
        intent.putExtra("isOfficial", z12);
        intent.putExtra("isBlacked", z13);
        return intent;
    }

    private void a4() {
        if (getActivity() != null) {
            try {
                getActivity().unregisterReceiver(this.V3);
            } catch (Exception unused) {
            }
        }
    }

    private void f4(List<LiveInfoMatchBean> list, long j10) {
        LivePlayMaskAdapter livePlayMaskAdapter = this.Y4;
        if (livePlayMaskAdapter != null) {
            livePlayMaskAdapter.z(new ArrayList(list), j10);
        }
        LiveLinkMicPlayAdapter liveLinkMicPlayAdapter = this.X4;
        if (liveLinkMicPlayAdapter != null) {
            liveLinkMicPlayAdapter.z(new ArrayList(list), j10);
        }
        LiveVideoAudioMaskAdapter liveVideoAudioMaskAdapter = this.Z4;
        if (liveVideoAudioMaskAdapter != null) {
            liveVideoAudioMaskAdapter.z(new ArrayList(list), j10);
        }
        this.f18491d5 = j10;
    }

    private List<d9.e> getList() {
        if (isAdded() && !isDetached()) {
            List<Fragment> fragments = getChildFragmentManager().getFragments();
            ArrayList arrayList = new ArrayList();
            for (int i9 = 0; i9 < fragments.size(); i9++) {
                if (fragments.get(i9).isAdded() && (fragments.get(i9) instanceof d9.e)) {
                    arrayList.add((d9.e) fragments.get(i9));
                }
            }
            return arrayList;
        }
        return new ArrayList();
    }

    private void h2() {
        if (getView() == null || getView().findViewById(R.id.live_info_area) == null) {
            return;
        }
        LiveBroadCasterInfoFragment liveBroadCasterInfoFragment = new LiveBroadCasterInfoFragment();
        this.f18530x = liveBroadCasterInfoFragment;
        u3(R.id.live_info_area, liveBroadCasterInfoFragment);
    }

    private void i2() {
        if (getCurrentLiveRoom().isVoiceRoom()) {
            this.f18534z = new VoiceRoomLiveTopUserInfoFragment();
        } else {
            this.f18534z = new LiveUserInfoFragment();
        }
        u3(R.id.user_info_fragment, this.f18534z);
        LiveRoomModel liveRoomModel = this.f18506l;
        if (liveRoomModel instanceof RoomItemData) {
            this.f18534z.refreshUserInfo(String.valueOf(liveRoomModel.getOnlineNum()), ((RoomItemData) this.f18506l).getFcoin(), ((RoomItemData) this.f18506l).getLikeNum(), null, this.f18483a1);
        }
    }

    private void o3(boolean z10) {
        LiveRoomModel liveRoomModel = this.f18506l;
        if (liveRoomModel == null || TextUtils.isEmpty(liveRoomModel.getChatGroupId()) || z10) {
            return;
        }
        TXIMUtils.quitGroup(this.f18506l.getChatGroupId(), new n());
    }

    private void p2(ViewGroup.MarginLayoutParams marginLayoutParams, boolean z10) {
        if (this.smallMiniGameLay != null) {
            int dp2px = DensityUtil.dp2px(306.0f) + StatusBarHelper.getStatusbarHeight(getContext());
            int i9 = 0;
            if (this.firstRechargeLay.getVisibility() == 0 && this.smallMiniGameLay.getVisibility() == 0) {
                i9 = DensityUtil.dp2px(78.0f);
            }
            if ((ScreenTools.getScreenHeight() / 2.0f) - i9 >= dp2px || !z10) {
                return;
            }
            marginLayoutParams.width = -1;
            ((LinearLayout.LayoutParams) this.smallMiniGameLay.getLayoutParams()).gravity = GravityCompat.START;
            ((LinearLayout.LayoutParams) this.firstRechargeLay.getLayoutParams()).gravity = GravityCompat.START;
        }
    }

    private void r3(LinkMicInfoMessage linkMicInfoMessage) {
        if (!getCurrentLiveRoom().isMultiLiveRoom()) {
            if (this.mTextViewLinkMicUserName != null) {
                if (this.Q) {
                    z3();
                    return;
                }
                LiveInfoMatchBean liveInfoMatchBean = null;
                boolean z10 = false;
                int i9 = 0;
                while (true) {
                    if (i9 >= linkMicInfoMessage.getMatchList().size()) {
                        break;
                    } else if (!linkMicInfoMessage.getMatchList().get(i9).getUserId().equals(getCurrentLiveRoom().getBroadCasterUserId())) {
                        liveInfoMatchBean = linkMicInfoMessage.getMatchList().get(i9);
                        break;
                    } else {
                        i9++;
                    }
                }
                boolean z11 = true;
                if (liveInfoMatchBean != null) {
                    this.mTextViewLinkMicUserName.setText(liveInfoMatchBean.getUserNickName());
                    this.f18511n5 = liveInfoMatchBean.getUserId();
                    this.f18513o5 = liveInfoMatchBean.getUserNickName();
                    this.mTextViewLinkMicUserName.setVisibility(0);
                    View view = this.mLittleClickView;
                    if (view != null) {
                        view.setVisibility(0);
                    }
                    LiveChatFragment liveChatFragment = this.f18532y;
                    if (liveChatFragment == null || liveChatFragment.getView() == null) {
                        return;
                    }
                    LiveChatFragment liveChatFragment2 = this.f18532y;
                    boolean z12 = this.Q;
                    LiveMusicActivityView liveMusicActivityView = this.f18502j;
                    if (liveMusicActivityView != null && liveMusicActivityView.n()) {
                        z10 = true;
                    }
                    liveChatFragment2.refreshChatMargin(true, z12, z10);
                    return;
                }
                z3();
                LiveChatFragment liveChatFragment3 = this.f18532y;
                if (liveChatFragment3 == null || liveChatFragment3.getView() == null) {
                    return;
                }
                LiveChatFragment liveChatFragment4 = this.f18532y;
                boolean z13 = this.Q;
                LiveMusicActivityView liveMusicActivityView2 = this.f18502j;
                liveChatFragment4.refreshChatMargin(false, z13, (liveMusicActivityView2 == null || !liveMusicActivityView2.n()) ? false : false);
                return;
            }
            return;
        }
        z3();
    }

    private void z3() {
        View view = this.mLittleClickView;
        if (view != null) {
            view.setVisibility(8);
        }
        this.f18511n5 = null;
        this.f18513o5 = null;
        TextView textView = this.mTextViewLinkMicUserName;
        if (textView != null) {
            textView.setText((CharSequence) null);
            this.mTextViewLinkMicUserName.setVisibility(8);
        }
    }

    public GCLivePusher A2() {
        return LivePlayerProvider.pusher();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void A3(boolean z10) {
        if (c8.b.k().h(getCurrentLiveRoom()) && c8.b.k().m()) {
            if (isDetached() || getActivity() == null || getActivity().isFinishing() || getActivity().isDestroyed() || this.musicViewSub == null || getView() == null || !this.f18484a2) {
                return;
            }
            LiveMusicActivityView liveMusicActivityView = this.f18502j;
            if (liveMusicActivityView == null || liveMusicActivityView.k().getVisibility() != 0 || z10) {
                if (this.f18529w5 || getCurrentLiveRoom().isInPkMode() || z10 || getCurrentLiveRoom().isBroadCaster()) {
                    if (!getCurrentLiveRoom().isBroadCaster() || getCurrentLiveRoom().isFullScreenActivity()) {
                        if (getCurrentLiveRoom().isInPkMode()) {
                            F2();
                            getView().post(new p0());
                        } else if (!getCurrentLiveRoom().isMultiLiveRoom() && !getCurrentLiveRoom().isPrivateLiveRoom()) {
                            F2();
                            LiveUserInfoFragment liveUserInfoFragment = this.f18534z;
                            if (liveUserInfoFragment != null && liveUserInfoFragment.getView() != null) {
                                getView().post(new q0());
                            }
                        } else {
                            LiveMusicActivityView liveMusicActivityView2 = this.f18502j;
                            if (liveMusicActivityView2 != null) {
                                liveMusicActivityView2.x(false, false);
                            }
                        }
                        LiveMusicActivityView liveMusicActivityView3 = this.f18502j;
                        if (liveMusicActivityView3 != null) {
                            liveMusicActivityView3.u();
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        LiveMusicActivityView liveMusicActivityView4 = this.f18502j;
        if (liveMusicActivityView4 != null) {
            liveMusicActivityView4.x(false, getCurrentLiveRoom().isInPkMode());
        }
    }

    @NonNull
    public VoiceRoomSeatControllerViewModel B2() {
        if (this.V4 == null) {
            this.V4 = (VoiceRoomSeatControllerViewModel) new ViewModelProvider(requireActivity()).get(VoiceRoomSeatControllerViewModel.class);
        }
        return this.V4;
    }

    public void B3() {
        this.f18493e5 = null;
    }

    @Override // d9.g
    public void C0(String str) {
        sendLiveMessage(LiveMessageModelFactory.createCancelApplyLinkMicModel(str), (e.a<Boolean>) null);
    }

    @Override // d9.g
    public void C1(d9.k kVar) {
        this.smallMiniGameLay.setVisibility(8);
        if (getView() != null && getView().findViewById(R.id.live_game_area) != null) {
            getView().findViewById(R.id.live_game_area).setVisibility(8);
        }
        i4();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void C2(@Nullable LiveMessageModel<? extends BaseLiveMessage> liveMessageModel) {
        char c10;
        boolean z10;
        char c11;
        LiveInfoMatchBean j10;
        if (EmptyUtils.isEmpty(liveMessageModel) || TextUtils.isEmpty(liveMessageModel.getCmd()) || this.I) {
            return;
        }
        List<d9.m> list = this.S4;
        if (list != null) {
            for (d9.m mVar : list) {
                if (mVar.y(this, liveMessageModel)) {
                    return;
                }
            }
        }
        boolean isAction = liveMessageModel.getData() != null ? liveMessageModel.getData().isAction() : false;
        String cmd = liveMessageModel.getCmd();
        cmd.hashCode();
        boolean z11 = isAction;
        switch (cmd.hashCode()) {
            case -2024670318:
                if (cmd.equals(BaseLiveMessage.RECOMMEND_LOCK_SUCCESS)) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case -1956628214:
                if (cmd.equals("LIVE_LINKMIC_PLAYSUCCESS")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case -1934385366:
                if (cmd.equals("GAME_GUESS")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case -1822604909:
                if (cmd.equals("LIVE_LUCKY_REMOTE_REMOVE")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case -1726840360:
                if (cmd.equals("LIVE_LUCKY_REMOTE_UPDATE")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case -1695248187:
                if (cmd.equals("LIVE_CLOSE")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case -1680604500:
                if (cmd.equals("LIVE_SHARE")) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case -1594615568:
                if (cmd.equals("LIVE_FOLLOW_ANCHOR")) {
                    c10 = 7;
                    break;
                }
                c10 = 65535;
                break;
            case -1536236541:
                if (cmd.equals("LIVE_RUNWAY_MULTIPLE_LUCKY_MSG")) {
                    c10 = '\b';
                    break;
                }
                c10 = 65535;
                break;
            case -1462696348:
                if (cmd.equals("LIVE_LINKMIC_PUSHSUCCESS")) {
                    c10 = '\t';
                    break;
                }
                c10 = 65535;
                break;
            case -1310769851:
                if (cmd.equals("LIVE_REPLY_PK_INVITE")) {
                    c10 = '\n';
                    break;
                }
                c10 = 65535;
                break;
            case -1264611414:
                if (cmd.equals(BaseLiveMessage.LIVE_HELLO_JOIN_GROUP)) {
                    c10 = 11;
                    break;
                }
                c10 = 65535;
                break;
            case -1167184236:
                if (cmd.equals("LIVE_LUCKY_REMOTE_READY")) {
                    c10 = '\f';
                    break;
                }
                c10 = 65535;
                break;
            case -1166866817:
                if (cmd.equals("LIVE_LUCKY_REMOTE_ROUND")) {
                    c10 = '\r';
                    break;
                }
                c10 = 65535;
                break;
            case -1165813421:
                if (cmd.equals("LIVE_LUCKY_REMOTE_START")) {
                    c10 = 14;
                    break;
                }
                c10 = 65535;
                break;
            case -976003807:
                if (cmd.equals("LIVE_LUCKY_REMOTE_UPDATE_V_COIN")) {
                    c10 = 15;
                    break;
                }
                c10 = 65535;
                break;
            case -872866986:
                if (cmd.equals("LIVE_HAPPY_RUNWAY")) {
                    c10 = 16;
                    break;
                }
                c10 = 65535;
                break;
            case -791193586:
                if (cmd.equals("LIVE_ADMIN_USER")) {
                    c10 = 17;
                    break;
                }
                c10 = 65535;
                break;
            case -774586775:
                if (cmd.equals("LIVE_LINKMIC_APPLY")) {
                    c10 = 18;
                    break;
                }
                c10 = 65535;
                break;
            case -763705610:
                if (cmd.equals("LIVE_LINKMIC_MIXED")) {
                    c10 = 19;
                    break;
                }
                c10 = 65535;
                break;
            case -755413130:
                if (cmd.equals("LIVE_LINKMIC_VIDEO")) {
                    c10 = 20;
                    break;
                }
                c10 = 65535;
                break;
            case -755229651:
                if (cmd.equals("LIVE_LINKMIC_VOICE")) {
                    c10 = 21;
                    break;
                }
                c10 = 65535;
                break;
            case -735285587:
                if (cmd.equals("LIVE_PK_INVITED_PLAY_SUCCESS")) {
                    c10 = 22;
                    break;
                }
                c10 = 65535;
                break;
            case -620057347:
                if (cmd.equals("LIVE_UPDATE_LIVEINFO")) {
                    c10 = 23;
                    break;
                }
                c10 = 65535;
                break;
            case -546460403:
                if (cmd.equals("LIVE_LUCKY_REMOTE_WIN")) {
                    c10 = 24;
                    break;
                }
                c10 = 65535;
                break;
            case -519342778:
                if (cmd.equals("LIVE_LUCKY_REMOTE_START_V_COIN")) {
                    c10 = 25;
                    break;
                }
                c10 = 65535;
                break;
            case -495544855:
                if (cmd.equals("LIVE_EVENT_ANIM")) {
                    c10 = 26;
                    break;
                }
                c10 = 65535;
                break;
            case -480508645:
                if (cmd.equals("LIVE_BAN_TALK_USER")) {
                    c10 = 27;
                    break;
                }
                c10 = 65535;
                break;
            case -478405209:
                if (cmd.equals("HOUR_RANK")) {
                    c10 = 28;
                    break;
                }
                c10 = 65535;
                break;
            case -478142127:
                if (cmd.equals("GAME_DION")) {
                    c10 = 29;
                    break;
                }
                c10 = 65535;
                break;
            case -470062326:
                if (cmd.equals("LIVE_LIKE")) {
                    c10 = 30;
                    break;
                }
                c10 = 65535;
                break;
            case -467416251:
                if (cmd.equals("LIVE_CALLING_BTN_SWITCH")) {
                    c10 = 31;
                    break;
                }
                c10 = 65535;
                break;
            case -466448947:
                if (cmd.equals("LIVE_VOLUME")) {
                    c10 = ' ';
                    break;
                }
                c10 = 65535;
                break;
            case -375572666:
                if (cmd.equals("LIVE_LINKMIC_RESPONSE")) {
                    c10 = '!';
                    break;
                }
                c10 = 65535;
                break;
            case -289472917:
                if (cmd.equals("LIVE_PK_MERGE_SUCCESS")) {
                    c10 = Typography.quote;
                    break;
                }
                c10 = 65535;
                break;
            case -284336779:
                if (cmd.equals("LOCAL_GROUP_DISSMISS")) {
                    c10 = '#';
                    break;
                }
                c10 = 65535;
                break;
            case -207753727:
                if (cmd.equals("LIVE_UPDATE_PK_COINS")) {
                    c10 = Typography.dollar;
                    break;
                }
                c10 = 65535;
                break;
            case -29739025:
                if (cmd.equals(BaseLiveMessage.MVP_RECOMMEND_IM_LOCK_SUCCESS)) {
                    c10 = '%';
                    break;
                }
                c10 = 65535;
                break;
            case 18326114:
                if (cmd.equals("LIVE_RUNWAY_LUCKY_MSG")) {
                    c10 = Typography.amp;
                    break;
                }
                c10 = 65535;
                break;
            case 87886182:
                if (cmd.equals("LIVE_VOICE_RUNWAY_MSG")) {
                    c10 = '\'';
                    break;
                }
                c10 = 65535;
                break;
            case 121642060:
                if (cmd.equals("LIVE_LUCKY_REMOTE_WIN_V_COIN")) {
                    c10 = '(';
                    break;
                }
                c10 = 65535;
                break;
            case 194716901:
                if (cmd.equals("LIVE_LUCKY_REMOTE_READY_V_COIN")) {
                    c10 = ')';
                    break;
                }
                c10 = 65535;
                break;
            case 204859347:
                if (cmd.equals("LIVE_REMOVE_USER")) {
                    c10 = '*';
                    break;
                }
                c10 = 65535;
                break;
            case 232162784:
                if (cmd.equals("LIVE_LUCKY_REMOTE_JOIN_V_COIN")) {
                    c10 = '+';
                    break;
                }
                c10 = 65535;
                break;
            case 239215097:
                if (cmd.equals("LIVE_LUCKY_REMOTE_JOIN")) {
                    c10 = ',';
                    break;
                }
                c10 = 65535;
                break;
            case 406621785:
                if (cmd.equals("LIVE_RUNWAY_MSG")) {
                    c10 = '-';
                    break;
                }
                c10 = 65535;
                break;
            case 422851572:
                if (cmd.equals("LIVE_SEND_GIFT")) {
                    c10 = JwtParser.SEPARATOR_CHAR;
                    break;
                }
                c10 = 65535;
                break;
            case 455262234:
                if (cmd.equals("LIVE_SCREEN_SHOT")) {
                    c10 = IOUtils.DIR_SEPARATOR_UNIX;
                    break;
                }
                c10 = 65535;
                break;
            case 472994601:
                if (cmd.equals("LIVE_LINKMIC_START_MERGE_STREAM")) {
                    c10 = '0';
                    break;
                }
                c10 = 65535;
                break;
            case 492509593:
                if (cmd.equals("LIVE_RUNWAY_LUCKY_MSG_V2")) {
                    c10 = '1';
                    break;
                }
                c10 = 65535;
                break;
            case 499143725:
                if (cmd.equals("LIVE_LINKMIC_MICLOCK")) {
                    c10 = '2';
                    break;
                }
                c10 = 65535;
                break;
            case 499173541:
                if (cmd.equals("LIVE_LINKMIC_MICMODE")) {
                    c10 = '3';
                    break;
                }
                c10 = 65535;
                break;
            case 515662217:
                if (cmd.equals("LIVE_UPDATE_ACTIVITY_V2")) {
                    c10 = '4';
                    break;
                }
                c10 = 65535;
                break;
            case 526009630:
                if (cmd.equals("LIVE_UPDATE_LIVEINFO_V2")) {
                    c10 = '5';
                    break;
                }
                c10 = 65535;
                break;
            case 600629362:
                if (cmd.equals("LIVE_UPDATE_ACTIVITY")) {
                    c10 = '6';
                    break;
                }
                c10 = 65535;
                break;
            case 776828255:
                if (cmd.equals("LIVE_PK_INVITER_PLAY_SUCCESS")) {
                    c10 = '7';
                    break;
                }
                c10 = 65535;
                break;
            case 905694627:
                if (cmd.equals("LIVE_UPDATE_LINKMIC_INFO")) {
                    c10 = '8';
                    break;
                }
                c10 = 65535;
                break;
            case 930782874:
                if (cmd.equals("LIVE_LUCKY_REMOTE_ROUND_V_COIN")) {
                    c10 = '9';
                    break;
                }
                c10 = 65535;
                break;
            case 955635797:
                if (cmd.equals("LIVE_RESET_TITLE")) {
                    c10 = ':';
                    break;
                }
                c10 = 65535;
                break;
            case 1205656262:
                if (cmd.equals("LIVE_CUSTOM_MSG")) {
                    c10 = ';';
                    break;
                }
                c10 = 65535;
                break;
            case 1333976243:
                if (cmd.equals("LIVE_PUSH_CHECH")) {
                    c10 = Typography.less;
                    break;
                }
                c10 = 65535;
                break;
            case 1396935188:
                if (cmd.equals("LIVE_HOUR_RANK")) {
                    c10 = '=';
                    break;
                }
                c10 = 65535;
                break;
            case 1530076740:
                if (cmd.equals("LIVE_TREASURE_MSG")) {
                    c10 = Typography.greater;
                    break;
                }
                c10 = 65535;
                break;
            case 1615504782:
                if (cmd.equals("LIVE_ADD_GROUP")) {
                    c10 = '?';
                    break;
                }
                c10 = 65535;
                break;
            case 1627079677:
                if (cmd.equals("LIVE_SCREENSHOT_BTN_SWITCH")) {
                    c10 = '@';
                    break;
                }
                c10 = 65535;
                break;
            case 1702034254:
                if (cmd.equals("LIVE_PK_RESULT")) {
                    c10 = 'A';
                    break;
                }
                c10 = 65535;
                break;
            case 1715438854:
                if (cmd.equals("LIVE_LUCKY_REMOTE_REMOVE_V_COIN")) {
                    c10 = 'B';
                    break;
                }
                c10 = 65535;
                break;
            case 1778386788:
                if (cmd.equals("LIVE_BEGIN_PK")) {
                    c10 = 'C';
                    break;
                }
                c10 = 65535;
                break;
            case 1800950463:
                if (cmd.equals("LIVE_LINKMIC_CANCEL")) {
                    c10 = 'D';
                    break;
                }
                c10 = 65535;
                break;
            case 1822258519:
                if (cmd.equals("LIVE_CHANGE_PK")) {
                    c10 = 'E';
                    break;
                }
                c10 = 65535;
                break;
            case 1861916226:
                if (cmd.equals("LIVE_RUNWAY_MSG_V2")) {
                    c10 = 'F';
                    break;
                }
                c10 = 65535;
                break;
            case 1866583702:
                if (cmd.equals("LIVE_LEAVE_PK")) {
                    c10 = 'G';
                    break;
                }
                c10 = 65535;
                break;
            case 1933138607:
                if (cmd.equals("LIVE_UPDATE_PK_INFO")) {
                    c10 = 'H';
                    break;
                }
                c10 = 65535;
                break;
            case 1944100562:
                if (cmd.equals("LIVE_LINKMIC_HANGUP")) {
                    c10 = 'I';
                    break;
                }
                c10 = 65535;
                break;
            case 2013701235:
                if (cmd.equals("LIVE_GET_URL")) {
                    c10 = 'J';
                    break;
                }
                c10 = 65535;
                break;
            case 2039248777:
                if (cmd.equals("LIVE_LUCKY_REMOTE_CANCEL")) {
                    c10 = 'K';
                    break;
                }
                c10 = 65535;
                break;
            case 2059863843:
                if (cmd.equals("LIVE_VOICE_HAPPY_RUNWAY")) {
                    c10 = 'L';
                    break;
                }
                c10 = 65535;
                break;
            case 2084626351:
                if (cmd.equals("LIVE_VOICE_RUNWAY_LUCKY_MSG")) {
                    c10 = 'M';
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        switch (c10) {
            case 0:
                if (getCurrentLiveRoom().isBroadCaster()) {
                    liveMessageModel.getData().setType(BaseLiveMessage.RECOMMEND_LOCK_SUCCESS);
                    break;
                } else {
                    return;
                }
            case 1:
                if (this instanceof BroadCastFragment) {
                    LinkMicMessage linkMicMessage = (LinkMicMessage) liveMessageModel.getData();
                    post("tokens/live/microphone/anchorMergeStream").v("liveId", getCurrentLiveRoom().getLiveRoomId()).v("audienceId", linkMicMessage.getFromUserId()).v("streamId", linkMicMessage.getStreamId()).M(new t(linkMicMessage));
                    return;
                }
                return;
            case 2:
            case '\r':
            case 29:
            case '9':
                if (MiniGameDataManager.getInstance().isGameEnable()) {
                    LiveLuckyRunwayMessage liveLuckyRunwayMessage = (LiveLuckyRunwayMessage) liveMessageModel.getData();
                    liveLuckyRunwayMessage.setFlag(liveMessageModel.getCmd().equals("LIVE_LUCKY_REMOTE_ROUND_V_COIN") ? 1 : 0);
                    h3(liveLuckyRunwayMessage);
                    return;
                }
                return;
            case 3:
            case 'B':
                if (MiniGameDataManager.getInstance().isGameEnable() && this.f18484a2 && !getCurrentLiveRoom().isBroadCaster()) {
                    LiveLuckyUserUpdateMessage liveLuckyUserUpdateMessage = (LiveLuckyUserUpdateMessage) liveMessageModel.getData();
                    if (liveLuckyUserUpdateMessage.getGameInfo() == null) {
                        return;
                    }
                    com.guochao.faceshow.aaspring.modulars.live.game.f fVar = this.P4;
                    if (fVar != null && fVar.m() == -1 && this.P4.d0() && liveLuckyUserUpdateMessage.getGameInfo() != null) {
                        this.P4.x(liveLuckyUserUpdateMessage.getGameInfo());
                        this.P4.v(liveLuckyUserUpdateMessage.getGameInfo().getConfUserNum(), liveLuckyUserUpdateMessage.getGameInfo().getConfDiamondNum(), false);
                        this.P4.q0(true, liveLuckyUserUpdateMessage.getGameInfo().getLuckyUsers(), liveLuckyUserUpdateMessage.getGameInfo().getLuckyUsers().size() - liveLuckyUserUpdateMessage.getGameInfo().getRemoveCount());
                        return;
                    }
                    com.guochao.faceshow.aaspring.modulars.live.game.f fVar2 = this.P4;
                    if (fVar2 == null || fVar2.m() != 0 || this.P4.l() == null || this.P4.l().getGameInfoId() != liveLuckyUserUpdateMessage.getGameInfo().getGameInfoId()) {
                        return;
                    }
                    this.P4.v(liveLuckyUserUpdateMessage.getGameInfo().getConfUserNum(), liveLuckyUserUpdateMessage.getGameInfo().getConfDiamondNum(), false);
                    this.P4.q0(true, liveLuckyUserUpdateMessage.getGameInfo().getLuckyUsers(), liveLuckyUserUpdateMessage.getGameInfo().getLuckyUsers().size() - liveLuckyUserUpdateMessage.getGameInfo().getRemoveCount());
                    return;
                }
                return;
            case 4:
            case 15:
                if (MiniGameDataManager.getInstance().isGameEnable() && this.f18484a2 && !getCurrentLiveRoom().isBroadCaster()) {
                    LiveLuckyUserUpdateMessage liveLuckyUserUpdateMessage2 = (LiveLuckyUserUpdateMessage) liveMessageModel.getData();
                    if (liveLuckyUserUpdateMessage2.getGameInfo() != null && liveLuckyUserUpdateMessage2.getServerTime() >= this.R4) {
                        com.guochao.faceshow.aaspring.modulars.live.game.f fVar3 = this.P4;
                        if (fVar3 != null && fVar3.m() == -1 && this.P4.d0() && liveLuckyUserUpdateMessage2.getGameInfo() != null) {
                            this.P4.s();
                            this.P4.x(liveLuckyUserUpdateMessage2.getGameInfo());
                            this.P4.v(liveLuckyUserUpdateMessage2.getGameInfo().getConfUserNum(), liveLuckyUserUpdateMessage2.getGameInfo().getConfDiamondNum(), false);
                            this.P4.p0(true, liveLuckyUserUpdateMessage2.getGameInfo().getLuckyUsers());
                            return;
                        }
                        com.guochao.faceshow.aaspring.modulars.live.game.f fVar4 = this.P4;
                        if (fVar4 == null || fVar4.m() < 0 || !this.P4.d0() || liveLuckyUserUpdateMessage2.getGameInfo() == null) {
                            return;
                        }
                        List<JoinGameUser> n9 = this.P4.n();
                        List<LiveGamePollDetail.LiveGameRoundDetail> luckyUsers = liveLuckyUserUpdateMessage2.getGameInfo().getLuckyUsers();
                        if (luckyUsers == null) {
                            luckyUsers = new ArrayList<>();
                        }
                        if (n9.size() == luckyUsers.size() && this.P4.l() != null && this.P4.l().getRoundId().equals(liveLuckyUserUpdateMessage2.getGameInfo().getRoundId())) {
                            z10 = true;
                            for (int i9 = 0; i9 < n9.size(); i9++) {
                                if (!n9.get(i9).getCurrentUserId().equals(String.valueOf(luckyUsers.get(i9).getCurrentUserId()))) {
                                    z10 = false;
                                }
                            }
                        } else {
                            z10 = false;
                        }
                        if (z10) {
                            return;
                        }
                        this.P4.x(liveLuckyUserUpdateMessage2.getGameInfo());
                        this.P4.v(liveLuckyUserUpdateMessage2.getGameInfo().getConfUserNum(), liveLuckyUserUpdateMessage2.getGameInfo().getConfDiamondNum(), false);
                        this.P4.p0(true, liveLuckyUserUpdateMessage2.getGameInfo().getLuckyUsers());
                        return;
                    }
                    return;
                }
                return;
            case 5:
                if (Objects.equals(liveMessageModel.getData().getFromUserId(), getCurrentLiveRoom().getBroadCasterUserId())) {
                    onLiveFinish(1, "closed by broadcaster");
                    return;
                }
                return;
            case 6:
                liveMessageModel.getData().setType(BaseLiveMessage.TYPE_SHARE);
                liveMessageModel.getData().setContent(getString(R.string.livesendshare));
                break;
            case 7:
                liveMessageModel.getData().setType(BaseLiveMessage.TYPE_FOLLOW_ANCHOR);
                liveMessageModel.getData().setContent(getString(R.string.livesendfollow));
                break;
            case '\b':
            case '&':
                if (getCurrentUser().getRegType() == 2) {
                    return;
                }
                h3(liveMessageModel.getData());
                return;
            case '\t':
                if (this.f18506l.isFreeLinkMic()) {
                    com.guochao.faceshow.aaspring.modulars.live.common.a.m().p(0, null);
                    if (this instanceof BroadCastFragment) {
                        W3();
                        return;
                    }
                    return;
                }
                ApplyConversationListDialogFragment applyConversationListDialogFragment = this.C;
                if (applyConversationListDialogFragment != null) {
                    applyConversationListDialogFragment.f2(liveMessageModel, true);
                    return;
                }
                int i10 = this.G + 1;
                this.G = i10;
                s3(i10);
                return;
            case '\n':
                if (getCurrentLiveRoom().isBroadCaster()) {
                    if (z11) {
                        UserStateHolder.setIsPKPrepare(true);
                        ToastUtils.debugToast(BaseApplication.getInstance(), liveMessageModel.getData().getFromUserId() + "对方同意了PK");
                    } else {
                        UserStateHolder.setIsPKPrepare(false);
                        ToastUtils.debugToast(BaseApplication.getInstance(), liveMessageModel.getData().getFromUserId() + "对方拒绝了PK");
                    }
                    com.guochao.faceshow.aaspring.modulars.live.common.x.n().e();
                    this.B.removeCallbacks(this.f18509m5);
                    if (this.f18532y != null) {
                        if (liveMessageModel.getData().isAction()) {
                            if (getCurrentLiveRoom().getPkUserInfo() != null) {
                                UserBean currentUser = getCurrentUser();
                                this.f18532y.onReceiveLiveMessage(LiveMessageModelFactory.createPkMessageModel(currentUser.getUserId(), currentUser.getUserName(), getCurrentLiveRoom().getPkUserInfo().getCurrentUserId(), getCurrentLiveRoom().getPkUserInfo().getNick_name()));
                            }
                            if (this instanceof BroadCastFragment) {
                                com.guochao.faceshow.aaspring.modulars.live.common.x.n().v();
                                return;
                            }
                            return;
                        }
                        ToastUtils.debugToast(getActivity(), "对方拒绝PK 恢复按钮");
                        p3();
                        this.f18532y.setPkBtnVisibility(true);
                        LiveChatFragment liveChatFragment = this.f18532y;
                        if (liveChatFragment != null) {
                            liveChatFragment.dismissInvite();
                        }
                        ToastUtils.showToast(getContext(), liveMessageModel.getData().isRefusePkInvite() ? R.string.pk_friends_will_not_accept_invitation_ten_minutes : R.string.pk_your_friend_rejected_invitation);
                        return;
                    }
                    return;
                }
                return;
            case 11:
                if (!Objects.equals(liveMessageModel.getData().getFromUserId(), getCurrentLiveRoom().getBroadCasterUserId()) && getCurrentLiveRoom().isBroadCaster()) {
                    if (liveMessageModel.getData().getChatDate() == null) {
                        liveMessageModel.getData().setChatDate(Long.valueOf(System.currentTimeMillis()));
                    }
                    liveMessageModel.getData().setType(BaseLiveMessage.LIVE_HELLO_JOIN_GROUP);
                    break;
                } else {
                    return;
                }
                break;
            case '\f':
            case ')':
                if (!MiniGameDataManager.getInstance().isGameEnable()) {
                    ToastUtils.debugToast(BaseApplication.getInstance(), "收到了游戏准备的请求，但游戏不可用, 终止加入");
                    return;
                } else if (!this.f18484a2) {
                    ToastUtils.debugToast(BaseApplication.getInstance(), "收到了游戏准备的请求，但尚未拉流成功, 终止加入");
                    return;
                } else {
                    com.guochao.faceshow.aaspring.modulars.live.game.f fVar5 = this.P4;
                    if (fVar5 == null || !fVar5.d0() || getCurrentLiveRoom().isBroadCaster()) {
                        return;
                    }
                    LiveLuckyUserUpdateMessage liveLuckyUserUpdateMessage3 = (LiveLuckyUserUpdateMessage) liveMessageModel.getData();
                    if (liveLuckyUserUpdateMessage3.getGameInfo() == null) {
                        ToastUtils.debugToast(BaseApplication.getInstance(), "收到了游戏准备的请求，但getGameInfo == null, 终止加入");
                        return;
                    }
                    this.P4.s();
                    this.P4.x(liveLuckyUserUpdateMessage3.getGameInfo());
                    this.P4.v(liveLuckyUserUpdateMessage3.getGameInfo().getConfUserNum(), liveLuckyUserUpdateMessage3.getGameInfo().getConfDiamondNum(), false);
                    this.P4.A(true);
                    if (liveLuckyUserUpdateMessage3.getGameInfo().getLuckyUsers() != null && !liveLuckyUserUpdateMessage3.getGameInfo().getLuckyUsers().isEmpty()) {
                        this.P4.b(liveLuckyUserUpdateMessage3.getGameInfo().getLuckyUsers().get(0));
                        return;
                    } else {
                        ToastUtils.debugToast(BaseApplication.getInstance(), "收到了游戏准备的请求，发生意外, 终止加入");
                        return;
                    }
                }
            case 14:
            case 25:
                if (MiniGameDataManager.getInstance().isGameEnable() && this.f18484a2) {
                    LiveLuckyUserUpdateMessage liveLuckyUserUpdateMessage4 = (LiveLuckyUserUpdateMessage) liveMessageModel.getData();
                    if (liveLuckyUserUpdateMessage4.getGameInfo() == null) {
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    List<LiveGamePollDetail.LiveGameRoundDetail> luckyUsers2 = liveLuckyUserUpdateMessage4.getGameInfo().getLuckyUsers();
                    for (int i11 = 0; i11 < luckyUsers2.size(); i11++) {
                        int i12 = 0;
                        while (true) {
                            if (i12 >= luckyUsers2.size()) {
                                break;
                            } else if (i11 == luckyUsers2.get(i12).getRemovePosition()) {
                                arrayList.add(Integer.valueOf(i12));
                            } else {
                                i12++;
                            }
                        }
                    }
                    com.guochao.faceshow.aaspring.modulars.live.game.f fVar6 = this.P4;
                    if (fVar6 != null && fVar6.m() == 0 && !getCurrentLiveRoom().isBroadCaster()) {
                        this.P4.z(arrayList);
                        this.P4.t(liveLuckyUserUpdateMessage4.getGameInfo().getLuckyUsers());
                        this.P4.D();
                        return;
                    }
                    com.guochao.faceshow.aaspring.modulars.live.game.f fVar7 = this.P4;
                    if (fVar7 == null || fVar7.m() != -1 || getCurrentLiveRoom().isBroadCaster()) {
                        return;
                    }
                    this.P4.s();
                    this.P4.v(liveLuckyUserUpdateMessage4.getGameInfo().getConfUserNum(), liveLuckyUserUpdateMessage4.getGameInfo().getConfDiamondNum(), false);
                    this.P4.p0(true, liveLuckyUserUpdateMessage4.getGameInfo().getLuckyUsers());
                    return;
                }
                return;
            case 16:
            case '\'':
            case 'L':
                if (getCurrentUser().getRegType() == 2) {
                    return;
                }
                RunwayMessage.BigGiftBean bigGiftBean = (RunwayMessage.BigGiftBean) liveMessageModel.getData();
                String cmd2 = liveMessageModel.getCmd();
                cmd2.hashCode();
                switch (cmd2.hashCode()) {
                    case -872866986:
                        if (cmd2.equals("LIVE_HAPPY_RUNWAY")) {
                            c11 = 0;
                            break;
                        }
                        c11 = 65535;
                        break;
                    case 87886182:
                        if (cmd2.equals("LIVE_VOICE_RUNWAY_MSG")) {
                            c11 = 1;
                            break;
                        }
                        c11 = 65535;
                        break;
                    case 2059863843:
                        if (cmd2.equals("LIVE_VOICE_HAPPY_RUNWAY")) {
                            c11 = 2;
                            break;
                        }
                        c11 = 65535;
                        break;
                    default:
                        c11 = 65535;
                        break;
                }
                switch (c11) {
                    case 0:
                        bigGiftBean.setTrackType(1);
                        break;
                    case 1:
                        bigGiftBean.setTrackType(2);
                        break;
                    case 2:
                        bigGiftBean.setTrackType(3);
                        break;
                }
                h3(bigGiftBean);
                return;
            case 17:
                if (M2(liveMessageModel.getData().getToUserId())) {
                    if (z11) {
                        onUserTypeChanged(1);
                    } else {
                        onUserTypeChanged(2);
                    }
                }
                liveMessageModel.getData().setType(BaseLiveMessage.TYPE_ADMIN_USER);
                liveMessageModel.getData().setFromUserNickName("");
                liveMessageModel.getData().setContent(getResources().getString(R.string.live_admin));
                break;
            case 18:
                if (this instanceof WatcherLiveRoomFragment) {
                    ApplyConversationListDialogFragment applyConversationListDialogFragment2 = this.C;
                    if (applyConversationListDialogFragment2 != null) {
                        applyConversationListDialogFragment2.f2(liveMessageModel, true);
                        return;
                    }
                    int i13 = this.G + 1;
                    this.G = i13;
                    s3(i13);
                    return;
                }
                return;
            case 19:
                LinkMicInfoMessage linkMicInfoMessage = (LinkMicInfoMessage) liveMessageModel.getData();
                d3(linkMicInfoMessage.getMatchList(), linkMicInfoMessage.getServerTime());
                r3(linkMicInfoMessage);
                return;
            case 20:
                String str = liveMessageModel.getData().toUserId;
                LivePlayMaskAdapter livePlayMaskAdapter = this.Y4;
                if (livePlayMaskAdapter != null) {
                    livePlayMaskAdapter.E(liveMessageModel.getData().action, liveMessageModel.getData().getToUserId(), liveMessageModel.getData().getServerTime(), true);
                }
                LiveLinkMicPlayAdapter liveLinkMicPlayAdapter = this.X4;
                if (liveLinkMicPlayAdapter != null) {
                    liveLinkMicPlayAdapter.E(liveMessageModel.getData().action, liveMessageModel.getData().getToUserId(), liveMessageModel.getData().getServerTime(), true);
                }
                LiveVideoAudioMaskAdapter liveVideoAudioMaskAdapter = this.Z4;
                if (liveVideoAudioMaskAdapter != null) {
                    liveVideoAudioMaskAdapter.E(liveMessageModel.getData().action, liveMessageModel.getData().getToUserId(), liveMessageModel.getData().getServerTime(), true);
                }
                BottomInteractionDialogFragment bottomInteractionDialogFragment = this.A5;
                if (bottomInteractionDialogFragment != null && bottomInteractionDialogFragment.c2() != null && Objects.equals(this.A5.c2().getCurrentUserId(), str)) {
                    this.A5.e2(liveMessageModel.getData().action ? "2" : "1");
                    this.A5.g2(true ^ liveMessageModel.getData().action);
                }
                if (liveMessageModel.getData().getToUserId().equals(getCurrentUser().getUserId())) {
                    this.f18531x5 = liveMessageModel.getData().action;
                }
                if (liveMessageModel.getData().getToUserId().equals(getCurrentLiveRoom().getBroadCasterUserId())) {
                    getCurrentLiveRoom().setMatchType(liveMessageModel.getData().action ? "2" : "1");
                }
                for (int i14 = 0; i14 < this.J.size(); i14++) {
                    LiveInfoMatchBean liveInfoMatchBean = this.J.get(i14);
                    if (Objects.equals(liveInfoMatchBean.getUserId(), str)) {
                        liveInfoMatchBean.setMatchType(liveMessageModel.getData().action ? "2" : "1");
                        return;
                    }
                }
                return;
            case 21:
                String str2 = liveMessageModel.getData().toUserId;
                LivePlayMaskAdapter livePlayMaskAdapter2 = this.Y4;
                if (livePlayMaskAdapter2 == null || this.X4 == null || this.Z4 == null) {
                    return;
                }
                livePlayMaskAdapter2.A(liveMessageModel.getData().action, liveMessageModel.getData().getToUserId(), liveMessageModel.getData().getServerTime(), true);
                this.X4.A(liveMessageModel.getData().action, liveMessageModel.getData().getToUserId(), liveMessageModel.getData().getServerTime(), true);
                this.Z4.A(liveMessageModel.getData().action, liveMessageModel.getData().getToUserId(), liveMessageModel.getData().getServerTime(), true);
                BottomInteractionDialogFragment bottomInteractionDialogFragment2 = this.A5;
                if (bottomInteractionDialogFragment2 != null && bottomInteractionDialogFragment2.c2() != null && Objects.equals(this.A5.c2().getCurrentUserId(), str2)) {
                    this.A5.f2(liveMessageModel.getData().action ? "2" : "1");
                    this.A5.h2(liveMessageModel.getData().action);
                }
                if (liveMessageModel.getData().getToUserId().equals(getCurrentUser().getUserId())) {
                    this.f18533y5 = liveMessageModel.getData().action;
                    A2().enableAudio(true ^ this.f18533y5);
                }
                if (liveMessageModel.getData().getToUserId().equals(getCurrentLiveRoom().getBroadCasterUserId())) {
                    getCurrentLiveRoom().setVoiceStatus(liveMessageModel.getData().action ? "2" : "1");
                }
                for (int i15 = 0; i15 < this.J.size(); i15++) {
                    LiveInfoMatchBean liveInfoMatchBean2 = this.J.get(i15);
                    if (Objects.equals(liveInfoMatchBean2.getUserId(), str2)) {
                        liveInfoMatchBean2.setVoiceStatus(liveMessageModel.getData().action ? "2" : "1");
                        return;
                    }
                }
                return;
            case 22:
                ToastUtils.debugToast(BaseApplication.getInstance(), "收到了对方拉流成功消息：此时我是否为邀请者" + com.guochao.faceshow.aaspring.modulars.live.common.x.n().t());
                com.guochao.faceshow.aaspring.modulars.live.common.x.n().z(true);
                return;
            case 23:
                LogUtils.d("liveInfoState", "Base里边LIVE_UPDATE_LIVEINFO消息执行" + this.f18483a1 + getCurrentLiveRoom().getLiveRoomId());
                M3((LiveInfoResult) liveMessageModel.getData(), false);
                return;
            case 24:
            case '(':
                break;
            case 26:
                if (this.f18502j != null) {
                    this.N4 = liveMessageModel.getData().getServerTime();
                    this.f18502j.z(((LiveFullScreenMessage) liveMessageModel.getData()).getActivityId());
                    break;
                }
                break;
            case 27:
                if (!getCurrentUser().getUserId().equals(liveMessageModel.getData().getFromUserId())) {
                    if (M2(liveMessageModel.getData().toUserId)) {
                        onSelfMute(z11);
                    }
                    liveMessageModel.getData().setType(BaseLiveMessage.TYPE_BAN_TALK_USER);
                    break;
                } else {
                    return;
                }
            case 28:
                HourRankAnimHelper.anim((ViewGroup) getView(), getCurrentLiveRoom());
                return;
            case 30:
                j2();
                return;
            case 31:
                if (this instanceof WatcherLiveRoomFragment) {
                    RoomItemData roomItemData = (RoomItemData) getCurrentLiveRoom();
                    boolean z12 = liveMessageModel.getData().action;
                    if (roomItemData.getVideoSwitch() != z12) {
                        roomItemData.setVideoSwitch(z12 ? 1 : 0);
                        VideoCallDuringLivingViewModel videoCallDuringLivingViewModel = this.f18482a;
                        if (videoCallDuringLivingViewModel != null) {
                            videoCallDuringLivingViewModel.setCurrentLiveRoom(roomItemData);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            case ' ':
                VolumeMessage volumeMessage = (VolumeMessage) liveMessageModel.getData();
                LiveVideoAudioMaskAdapter liveVideoAudioMaskAdapter2 = this.Z4;
                if (liveVideoAudioMaskAdapter2 != null) {
                    liveVideoAudioMaskAdapter2.F(volumeMessage);
                    return;
                }
                return;
            case '!':
                if (liveMessageModel.getData().getToUserId().equals(getCurrentUser().getUserId())) {
                    if (liveMessageModel.getData().action) {
                        com.guochao.faceshow.aaspring.modulars.live.common.a.m().p(1, null);
                        com.guochao.faceshow.aaspring.modulars.live.common.a.m().z();
                        ApplyConversationListDialogFragment applyConversationListDialogFragment3 = this.C;
                        if (applyConversationListDialogFragment3 != null) {
                            applyConversationListDialogFragment3.dismissAllowingStateLoss();
                        }
                        if (!getCurrentLiveRoom().isBroadCaster()) {
                            this.Q = true;
                            onLinkMicStatusChanged(getCurrentLiveRoom().canRequestLinkMic());
                        }
                    } else {
                        com.guochao.faceshow.aaspring.modulars.live.common.a.m().s(liveMessageModel.getData().getToUserId());
                    }
                } else if (this.Q) {
                    com.guochao.faceshow.aaspring.modulars.live.common.a.m().p(0, null);
                    if (liveMessageModel.getData().action && (j10 = com.guochao.faceshow.aaspring.modulars.live.common.a.m().j(liveMessageModel.getData().getToUserId())) != null) {
                        LiveLinkMicPlayAdapter liveLinkMicPlayAdapter2 = this.X4;
                        if (liveLinkMicPlayAdapter2 != null) {
                            liveLinkMicPlayAdapter2.c(j10, liveMessageModel.getData().getServerTime());
                        }
                        LivePlayMaskAdapter livePlayMaskAdapter3 = this.Y4;
                        if (livePlayMaskAdapter3 != null) {
                            livePlayMaskAdapter3.c(j10, liveMessageModel.getData().getServerTime());
                        }
                        LiveVideoAudioMaskAdapter liveVideoAudioMaskAdapter3 = this.Z4;
                        if (liveVideoAudioMaskAdapter3 != null) {
                            liveVideoAudioMaskAdapter3.c(j10, liveMessageModel.getData().getServerTime());
                        }
                    }
                }
                if (this.C != null) {
                    if (!liveMessageModel.getData().action) {
                        this.C.h2(liveMessageModel.getData().getToUserId());
                        return;
                    } else {
                        this.C.j2(liveMessageModel.getData().getToUserId());
                        return;
                    }
                } else if (liveMessageModel.getData().action) {
                    return;
                } else {
                    com.guochao.faceshow.aaspring.modulars.live.common.a.m().s(liveMessageModel.getData().getToUserId());
                    return;
                }
            case '\"':
            case 'H':
                if (liveMessageModel.getData() instanceof LiveInfoResult) {
                    LiveInfoResult liveInfoResult = (LiveInfoResult) liveMessageModel.getData();
                    if (liveInfoResult != null && liveInfoResult.getPk() != null && liveInfoResult.getPk().getRightAnchorMsg() != null) {
                        ToastUtils.debugToast(BaseApplication.getInstance(), "收到PK轮询消息" + liveMessageModel.getCmd() + "且数据完整");
                        if (liveInfoResult.getPk().getLeftAnchorMsg().getFCoinCount() > this.N) {
                            this.N = liveInfoResult.getPk().getLeftAnchorMsg().getFCoinCount();
                        }
                        if (liveInfoResult.getPk().getRightAnchorMsg().getFCoinCount() > this.O) {
                            this.O = liveInfoResult.getPk().getRightAnchorMsg().getFCoinCount();
                        }
                    } else {
                        ToastUtils.debugToast(BaseApplication.getInstance(), "收到PK轮询消息" + liveMessageModel.getCmd() + "但数据不完整");
                    }
                    if (liveInfoResult != null) {
                        "LIVE_PK_MERGE_SUCCESS".equals(liveMessageModel.getCmd());
                        h0(liveInfoResult.getPk(), liveInfoResult.getServerTime() + ("LIVE_PK_MERGE_SUCCESS".equals(liveMessageModel.getCmd()) ? 1000L : 500L), false);
                        return;
                    }
                    return;
                }
                return;
            case '#':
                if ((this instanceof WatcherLiveRoomFragment) && Objects.equals(((GroupDismissMessage) liveMessageModel.getData()).getGroupId(), getCurrentLiveRoom().getChatGroupId())) {
                    onLiveFinish(0, "system notify");
                    return;
                }
                return;
            case '$':
                if (this instanceof BroadCastFragment) {
                    sendLiveMessage(liveMessageModel, (e.a<Boolean>) null);
                    this.O = ((PkFCoinMessage) liveMessageModel.getData()).getFCoin();
                }
                g3(liveMessageModel);
                return;
            case '%':
                if (getCurrentLiveRoom().isBroadCaster()) {
                    liveMessageModel.getData().setType(BaseLiveMessage.MVP_RECOMMEND_IM_LOCK_SUCCESS);
                    break;
                } else {
                    return;
                }
            case '*':
                liveMessageModel.getData().setType(BaseLiveMessage.TYPE_REMOVE_USER);
                if (M2(liveMessageModel.getData().toUserId)) {
                    a3(liveMessageModel);
                    return;
                }
                break;
            case '+':
            case ',':
                if (!MiniGameDataManager.getInstance().isGameEnable()) {
                    ToastUtils.debugToast(BaseApplication.getInstance(), "收到了加入的请求，但游戏不可用, 终止加入");
                    return;
                } else if (!this.f18484a2) {
                    ToastUtils.debugToast(BaseApplication.getInstance(), "收到了加入的请求，但尚未拉流成功, 终止加入");
                    return;
                } else {
                    com.guochao.faceshow.aaspring.modulars.live.game.f fVar8 = this.P4;
                    if (fVar8 != null && fVar8.m() == 0 && !b8.e.g().getUserId().equals(liveMessageModel.getData().getFromUserId())) {
                        LiveGamePollDetail.LiveGameRoundDetail fromLiveMessage = LiveGamePollDetail.LiveGameRoundDetail.fromLiveMessage(liveMessageModel.getData());
                        boolean z13 = false;
                        for (JoinGameUser joinGameUser : this.P4.n()) {
                            if (fromLiveMessage.getCurrentUserId().equals(joinGameUser.getCurrentUserId())) {
                                ToastUtils.debugToast(BaseApplication.getInstance(), "收到了加入的请求，但发现轮盘里面已经有该用户了, 替换加入");
                                z13 = true;
                            }
                        }
                        this.P4.X(fromLiveMessage, z13);
                        return;
                    }
                    ToastUtils.debugToast(BaseApplication.getInstance(), "收到了加入的请求，发生意外, 终止加入");
                    return;
                }
            case '-':
                if (getCurrentUser().getRegType() == 2) {
                    return;
                }
                h3((RunwayMessage) liveMessageModel.getData());
                return;
            case '.':
                GiftLiveMessage giftLiveMessage = (GiftLiveMessage) liveMessageModel.getData();
                if (getCurrentLiveRoom().isInPkMode() && liveMessageModel.getData().getServerTime() > this.F4) {
                    int giftBCoinValue = giftLiveMessage.getGiftBCoinValue();
                    this.N += giftBCoinValue;
                    LogUtils.e("Facecast_MB", "mMyFCoin=" + this.N + "||giftPrice=" + giftBCoinValue);
                    y1(this.N);
                }
                n2(liveMessageModel, giftLiveMessage);
                if (!liveMessageModel.getData().getFromUserId().equals(getCurrentUser().getUserId())) {
                    liveMessageModel.getData().setType(BaseLiveMessage.TYPE_SEND_GIFT);
                    if (liveMessageModel.getData() instanceof GiftLiveMessage) {
                        onReceiveFaceGift((GiftLiveMessage) liveMessageModel.getData());
                    } else {
                        onReceiveHugeGift(liveMessageModel);
                    }
                    if (this.f18534z != null && Objects.equals(getCurrentLiveRoom().getBroadCasterUserId(), liveMessageModel.getData().getToUserId())) {
                        this.f18534z.addFBNumber(liveMessageModel);
                        break;
                    }
                }
                break;
            case '/':
                if (getCurrentLiveRoom().isBroadCaster()) {
                    liveMessageModel.getData().setType(BaseLiveMessage.TYPE_SCREEN_SHOT);
                    break;
                } else {
                    return;
                }
            case '0':
                String toUserId = liveMessageModel.getData().getToUserId();
                if (getCurrentUser().getUserId().equals(toUserId)) {
                    e3();
                    return;
                }
                List<LiveInfoMatchBean> arrayList2 = new ArrayList<>(com.guochao.faceshow.aaspring.modulars.live.common.a.m().f18995e);
                for (int i16 = 0; i16 < arrayList2.size(); i16++) {
                    if (arrayList2.get(i16).getCurrentUserId().equals(toUserId)) {
                        arrayList2.get(i16).setIsOnLine(1);
                        LinkMicInfoMessage linkMicInfoMessage2 = new LinkMicInfoMessage();
                        linkMicInfoMessage2.setMatchList(arrayList2);
                        linkMicInfoMessage2.setServerTime(this.f18527v5 + 1000);
                        LogUtils.i("LiveRoom", "从消息体里刷新UI " + toUserId);
                        b4(linkMicInfoMessage2);
                        return;
                    }
                }
                return;
            case '1':
            case 'M':
                RunwayMessage.BigGiftBean bigGiftBean2 = (RunwayMessage.BigGiftBean) liveMessageModel.getData();
                if ("LIVE_RUNWAY_LUCKY_MSG_V2".equals(liveMessageModel.getCmd())) {
                    bigGiftBean2.setTrackType(0);
                } else {
                    bigGiftBean2.setTrackType(2);
                }
                h3(RunwayMessage.LuckyGiftDiamondsMessage.obtain(bigGiftBean2));
                return;
            case '2':
                if (getCurrentLiveRoom().isVoiceRoom()) {
                    return;
                }
                liveMessageModel.getData().setType(BaseLiveMessage.TYPE_MICROPHON);
                this.f18506l.setRequestLinkMicEnabled(!liveMessageModel.getData().action);
                onLinkMicStatusChanged(true ^ liveMessageModel.getData().action);
                if (this instanceof BroadCastFragment) {
                    return;
                }
                break;
            case '3':
                this.f18506l.setFreeLinkMic(liveMessageModel.getData().action);
                if (liveMessageModel.getData().action) {
                    com.guochao.faceshow.aaspring.modulars.live.common.a.m().w(false);
                }
                liveMessageModel.getData().setType(BaseLiveMessage.TYPE_MICROPHON_MODE);
                onLinkMicStatusChanged(this.f18506l.canRequestLinkMic());
                if (com.guochao.faceshow.aaspring.modulars.live.common.a.m().o() && !this.f18506l.isFreeLinkMic()) {
                    com.guochao.faceshow.aaspring.modulars.live.common.a.m().f();
                }
                if (this instanceof BroadCastFragment) {
                    return;
                }
                break;
            case '4':
                long serverTime = liveMessageModel.getData().getServerTime();
                if (serverTime > this.N4 && serverTime > this.O4) {
                    c8.b.k().A((LiveActivityMessage) liveMessageModel.getData());
                    LiveMusicActivityView liveMusicActivityView = this.f18502j;
                    if (liveMusicActivityView != null) {
                        liveMusicActivityView.v(serverTime);
                    }
                    this.O4 = serverTime;
                    return;
                }
                return;
            case '5':
                if (this.D4 == null) {
                    AudienceInformation audienceInformation = new AudienceInformation();
                    this.D4 = audienceInformation;
                    audienceInformation.setUserId(getCurrentUser().getUserId());
                    this.D4.setAvatar(getCurrentUser().getPendantUrl());
                    this.D4.setImg(getCurrentUser().getAvatarUrl());
                    this.D4.setUserVipMsg(getCurrentUser().getUserVipMsg());
                    this.D4.setType("0");
                }
                AudienceListInfoMessage audienceListInfoMessage = (AudienceListInfoMessage) liveMessageModel.getData();
                if (!TextUtils.isEmpty(audienceListInfoMessage.getOnlineNum())) {
                    try {
                        getCurrentLiveRoom().setOnlineNum(Integer.parseInt(audienceListInfoMessage.getOnlineNum()));
                    } catch (Exception unused) {
                    }
                }
                if (this instanceof WatcherLiveRoomFragment) {
                    RoomItemData roomItemData2 = (RoomItemData) getCurrentLiveRoom();
                    if (roomItemData2.getVideoOpen() != audienceListInfoMessage.getVideoOpen() || roomItemData2.getVideoSwitch() != audienceListInfoMessage.getVideoSwitch()) {
                        roomItemData2.setVideoOpen(audienceListInfoMessage.getVideoOpen());
                        roomItemData2.setVideoSwitch(audienceListInfoMessage.getVideoSwitch());
                        this.f18482a.setCurrentLiveRoom(roomItemData2);
                    }
                    if (roomItemData2.getScreenShotSwitch() != audienceListInfoMessage.getScreenShotSwitch()) {
                        ScreenshotsUtils.INSTANCE.changeFlagSecure(getActivity(), audienceListInfoMessage.getScreenShotSwitch());
                    }
                }
                if (!L2(audienceListInfoMessage.getAudienceList(), this.D4)) {
                    audienceListInfoMessage.getAudienceList().add(0, this.D4);
                }
                LiveUserInfoFragment liveUserInfoFragment = this.f18534z;
                if (liveUserInfoFragment != null && liveUserInfoFragment.isAdded()) {
                    this.f18534z.updateAudienceLiveInfo(audienceListInfoMessage, this.f18484a2);
                }
                this.f18500i = true;
                this.f18506l.setRequestLinkMicEnabled("0".equals(audienceListInfoMessage.getIsLockMicrophone()));
                onLinkMicStatusChanged("0".equals(audienceListInfoMessage.getIsLockMicrophone()));
                return;
            case '6':
                LiveActivityMessage liveActivityMessage = (LiveActivityMessage) liveMessageModel.getData();
                LiveUserInfoFragment liveUserInfoFragment2 = this.f18534z;
                if (liveUserInfoFragment2 == null || !liveUserInfoFragment2.isAdded()) {
                    return;
                }
                this.f18534z.updateActivityInfo(liveActivityMessage);
                return;
            case '7':
                com.guochao.faceshow.aaspring.modulars.live.common.x.n().B(true);
                return;
            case '8':
                LinkMicInfoMessage linkMicInfoMessage3 = (LinkMicInfoMessage) liveMessageModel.getData();
                for (LiveInfoMatchBean liveInfoMatchBean3 : linkMicInfoMessage3.getMatchList()) {
                    LivePlayMaskAdapter livePlayMaskAdapter4 = this.Y4;
                    if (livePlayMaskAdapter4 != null) {
                        for (LiveRoomModel liveRoomModel : livePlayMaskAdapter4.getList()) {
                            if (liveInfoMatchBean3.getUserId().equals(liveRoomModel.getCurrentUserId())) {
                                liveRoomModel.setMatchType(liveInfoMatchBean3.getMatchType());
                                liveRoomModel.setVoiceStatus(liveInfoMatchBean3.getVoiceStatus());
                            }
                        }
                    }
                }
                d3(linkMicInfoMessage3.getMatchList(), linkMicInfoMessage3.getServerTime());
                return;
            case ':':
                if (getCurrentUser().getCurrentUserId().equals(liveMessageModel.getData().getFromUserId())) {
                    liveMessageModel.getData().setContent(getString(R.string.live_reset_title));
                    if (getCurrentLiveRoom().isMultiLiveRoom()) {
                        SpUtils.setStr(BaseApplication.getInstance(), "live_text_persons" + b8.e.g().getUserId(), "");
                        break;
                    } else {
                        SpUtils.setStr(BaseApplication.getInstance(), "live_text" + b8.e.g().getUserId(), "");
                        break;
                    }
                } else {
                    return;
                }
            case ';':
                liveMessageModel.getData().setType(BaseLiveMessage.TYPE_CUSTOM_MSG);
                onReceiveLiveMessage(liveMessageModel);
                m2(liveMessageModel);
                return;
            case '<':
                if (getCurrentUser().getCurrentUserId().equals(liveMessageModel.getData().getToUserId())) {
                    liveMessageModel.getData().setType(BaseLiveMessage.TYPE_PUSH_CHECH);
                    liveMessageModel.getData().setContent(getString(R.string.live_yellow_alert));
                    break;
                } else {
                    return;
                }
            case '=':
                LiveInfoResult liveInfoResult2 = (LiveInfoResult) liveMessageModel.getData();
                LiveUserInfoFragment liveUserInfoFragment3 = this.f18534z;
                if (liveUserInfoFragment3 == null || !liveUserInfoFragment3.isAdded()) {
                    return;
                }
                this.f18534z.checkHourRank(liveInfoResult2);
                return;
            case '>':
                if (getCurrentUser().getRegType() == 2) {
                    return;
                }
                i3((TreasureMessage) liveMessageModel.getData());
                return;
            case '?':
                if (Objects.equals(liveMessageModel.getData().getFromUserId(), getCurrentLiveRoom().getBroadCasterUserId())) {
                    return;
                }
                if (liveMessageModel.getData().getChatDate() == null) {
                    liveMessageModel.getData().setChatDate(Long.valueOf(System.currentTimeMillis()));
                }
                liveMessageModel.getData().setType(BaseLiveMessage.TYPE_ADD_GROUP);
                liveMessageModel.getData().setContent(getString(R.string.joined));
                if (!liveMessageModel.getData().getFromUserId().equals(getCurrentUser().getUserId()) && this.f18484a2 && isAdded() && !isDetached() && Foreground.get().isForeground()) {
                    this.f18528w.A(liveMessageModel.getData().getFromUserNickName(), liveMessageModel.getData().getFromUserId(), liveMessageModel.getData().getFromUserAvatar(), liveMessageModel.getData().getLevelId(), liveMessageModel.getData().getUserVipMsg(), liveMessageModel.getData().getMvpUrl());
                }
                if (this.f18534z != null && this.f18483a1) {
                    LogUtils.d("liveInfoState", "Base里边LIVE_ADD_GROUP消息执行" + getCurrentLiveRoom().getLiveRoomId() + "用户" + liveMessageModel.getData().getFromUserId());
                    this.f18534z.onUserEnterIn(liveMessageModel);
                }
                if (getCurrentLiveRoom().isVoiceRoom()) {
                    VoiceRoomCMDMessageModel.VoiceRoomCMDUserEnterRoomMessageModel voiceRoomCMDUserEnterRoomMessageModel = new VoiceRoomCMDMessageModel.VoiceRoomCMDUserEnterRoomMessageModel();
                    voiceRoomCMDUserEnterRoomMessageModel.setNickName(liveMessageModel.getData().getFromUserNickName());
                    voiceRoomCMDUserEnterRoomMessageModel.setUserId(liveMessageModel.getData().getFromUserId());
                    voiceRoomCMDUserEnterRoomMessageModel.setImg(liveMessageModel.getData().getFromUserAvatar());
                    B2().userEnterRoom(voiceRoomCMDUserEnterRoomMessageModel);
                    break;
                }
                break;
            case '@':
                if (this instanceof WatcherLiveRoomFragment) {
                    LogUtils.i("model.getData().action:", liveMessageModel.getData().action + "");
                    RoomItemData roomItemData3 = (RoomItemData) getCurrentLiveRoom();
                    if (liveMessageModel.getData().action) {
                        roomItemData3.setScreenShotSwitch(Contants.SWITCH_SCREEN_SHOTS_ON);
                        ScreenshotsUtils.INSTANCE.changeFlagSecure(getActivity(), Contants.SWITCH_SCREEN_SHOTS_ON);
                        return;
                    }
                    roomItemData3.setScreenShotSwitch(Contants.SWITCH_SCREEN_SHOTS_OFF);
                    ScreenshotsUtils.INSTANCE.changeFlagSecure(getActivity(), Contants.SWITCH_SCREEN_SHOTS_OFF);
                    return;
                }
                return;
            case 'A':
                if (!getCurrentLiveRoom().isBroadCaster()) {
                    ToastUtils.debugToast(BaseApplication.getInstance(), "接收到了本次PK的结果信息" + new Gson().toJson(liveMessageModel));
                    PKLiveInfoFragment pKLiveInfoFragment = this.C4;
                    if (pKLiveInfoFragment != null) {
                        pKLiveInfoFragment.r2(liveMessageModel);
                    }
                    liveMessageModel.getData().setType("LIVE_PK_RESULT");
                    break;
                } else {
                    return;
                }
            case 'C':
                if (!getCurrentLiveRoom().isBroadCaster()) {
                    liveMessageModel.getData().setType("LIVE_BEGIN_PK");
                    ToastUtils.debugToast(getActivity(), "接收到了主播发送的开始PK消息。 data=" + new Gson().toJson(liveMessageModel));
                    break;
                } else {
                    return;
                }
            case 'D':
                ApplyConversationListDialogFragment applyConversationListDialogFragment4 = this.C;
                if (applyConversationListDialogFragment4 != null) {
                    applyConversationListDialogFragment4.f2(liveMessageModel, false);
                    return;
                }
                int i17 = this.G - 1;
                this.G = i17;
                s3(i17);
                return;
            case 'E':
                if (this instanceof BroadCastFragment) {
                    ToastUtils.debugToast(BaseApplication.getInstance(), "收到Change_pk消息");
                    get("tokens/live/newLive/getLiveInfo").v("liveId", getCurrentLiveRoom().getLiveRoomId()).v(Contants.USER_ID, getCurrentLiveRoom().getBroadCasterUserId()).v("likeNum", Long.valueOf(this.f18534z.getLikeNum())).I(3).M(new u());
                    return;
                }
                return;
            case 'F':
                if (getCurrentUser().getRegType() == 2) {
                    return;
                }
                RunwayMessage.BigGiftBean bigGiftBean3 = (RunwayMessage.BigGiftBean) liveMessageModel.getData();
                bigGiftBean3.setTrackType(0);
                h3(RunwayMessage.obtain(bigGiftBean3));
                return;
            case 'G':
                PkResultMessage pkResultMessage = (PkResultMessage) liveMessageModel.getData();
                if (com.guochao.faceshow.aaspring.modulars.live.common.x.n().m() == null || com.guochao.faceshow.aaspring.modulars.live.common.x.n().m().getRightAnchorMsg() == null || pkResultMessage.getFromUserId().equals(com.guochao.faceshow.aaspring.modulars.live.common.x.n().m().getRightAnchorMsg().getUserId())) {
                    ToastUtils.debugToast(BaseApplication.getInstance(), "对方下P了");
                    p3();
                    if (!pkResultMessage.isPunishment() && !getCurrentLiveRoom().isInPkPunishmentTime() && com.guochao.faceshow.aaspring.modulars.live.common.x.n().m() != null && com.guochao.faceshow.aaspring.modulars.live.common.x.n().m().getRightAnchorMsg() != null) {
                        c(1, com.guochao.faceshow.aaspring.modulars.live.common.x.n().m().getRightAnchorMsg().getUserId(), com.guochao.faceshow.aaspring.modulars.live.common.x.n().m().getRightAnchorMsg().getNickName(), String.valueOf(this.N), String.valueOf(this.O), false, false);
                    }
                    PKLiveInfoFragment pKLiveInfoFragment2 = this.C4;
                    if (pKLiveInfoFragment2 != null) {
                        pKLiveInfoFragment2.s2();
                    }
                    com.guochao.faceshow.aaspring.modulars.live.common.x.n().d();
                    return;
                }
                return;
            case 'I':
                String fromUserId = liveMessageModel.getData().getFromUserId();
                BottomInteractionDialogFragment bottomInteractionDialogFragment3 = this.A5;
                if (bottomInteractionDialogFragment3 != null && bottomInteractionDialogFragment3.c2() != null && fromUserId.equals(this.A5.c2().getCurrentUserId())) {
                    this.A5.b2();
                }
                l3(fromUserId);
                return;
            case 'J':
                if (this.I || this.f18507l5 || this.Q || getCurrentLiveRoom().isBroadCaster() || getCurrentLiveRoom().isMultiLiveRoom()) {
                    return;
                }
                String flvUrl = ((SwitchUrlMessage) liveMessageModel.getData()).getFlvUrl();
                if (TextUtils.isEmpty(flvUrl)) {
                    return;
                }
                D0().startPlay(flvUrl, getCurrentLiveRoom().buildRoomInfo());
                getCurrentLiveRoom().setStreamUrl(flvUrl);
                return;
            case 'K':
                if (MiniGameDataManager.getInstance().isGameEnable()) {
                    LiveLuckyUserUpdateMessage liveLuckyUserUpdateMessage5 = (LiveLuckyUserUpdateMessage) liveMessageModel.getData();
                    if (liveLuckyUserUpdateMessage5 != null && liveLuckyUserUpdateMessage5.getGameInfo() != null) {
                        this.R4 = liveLuckyUserUpdateMessage5.getServerTime();
                        com.guochao.faceshow.aaspring.modulars.live.game.f fVar9 = this.P4;
                        if (fVar9 == null || fVar9.m() < 0 || getCurrentLiveRoom().isBroadCaster()) {
                            return;
                        }
                        if (this.P4.l() == null || liveLuckyUserUpdateMessage5.getGameInfo().getGameInfoId() == this.P4.l().getGameInfoId()) {
                            if (liveLuckyUserUpdateMessage5.getGameInfo().getLuckyUsers() != null) {
                                Iterator<LiveGamePollDetail.LiveGameRoundDetail> it = liveLuckyUserUpdateMessage5.getGameInfo().getLuckyUsers().iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                        LiveGamePollDetail.LiveGameRoundDetail next = it.next();
                                        if (getCurrentUser().getUserId().equals(String.valueOf(next.getUserId()))) {
                                            GameBackDiamondDialog.T1(getChildFragmentManager(), next.getBackDiamond(), liveLuckyUserUpdateMessage5.getGameInfo().getFlag());
                                            if (liveLuckyUserUpdateMessage5.getGameInfo().getFlag() == 0) {
                                                if (p9.a.g().e().getDiamond() != null) {
                                                    p9.a.g().B(p9.a.g().e().getDiamond().intValue() + next.getBackDiamond());
                                                }
                                            } else {
                                                p9.a.g().e().setTokenNum(p9.a.g().e().getTokenNum() + next.getBackDiamond());
                                            }
                                        }
                                    }
                                }
                            }
                            if (this.P4.d0()) {
                                this.P4.f();
                                this.smallMiniGameLay.setVisibility(8);
                                i4();
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    com.guochao.faceshow.aaspring.modulars.live.game.f fVar10 = this.P4;
                    if (fVar10 == null || fVar10.m() < 0 || getCurrentLiveRoom().isBroadCaster() || !this.P4.d0()) {
                        return;
                    }
                    this.P4.f();
                    this.smallMiniGameLay.setVisibility(8);
                    i4();
                    return;
                }
                return;
            default:
                return;
        }
        onReceiveLiveMessage(liveMessageModel);
    }

    @Override // d9.g
    public /* synthetic */ GCLivePlayer D0() {
        return d9.f.c(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void E2() {
        TextView textView;
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup == null || (textView = (TextView) viewGroup.findViewById(R.id.ads_tips)) == null) {
            return;
        }
        textView.setVisibility(8);
    }

    public void E3(List<LiveInfoMatchBean> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        this.J.clear();
        this.J.addAll(list);
    }

    @Override // d9.g
    public void F(boolean z10, d9.h hVar) {
        post("tokens/live/newLive/updateLiveInfo").v("videoSwitch", Integer.valueOf(z10 ? 1 : 0)).v("liveId", getCurrentLiveRoom().getLiveRoomId()).I(3).M(new g(hVar, z10));
    }

    protected void F3(boolean z10) {
        if (getActivity() instanceof WatchLiveRoomActivity) {
            ((WatchLiveRoomActivity) getActivity()).W1(z10);
        }
    }

    protected void G2() {
        if (this.f18496g != null) {
            return;
        }
        this.rcvGift.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        BigGiftRecycleViewAdapter bigGiftRecycleViewAdapter = new BigGiftRecycleViewAdapter(getActivity(), this.f18504k);
        this.f18496g = bigGiftRecycleViewAdapter;
        this.rcvGift.setAdapter(bigGiftRecycleViewAdapter);
        if (this.mRunwayMessageViewArea.getLayoutTransition() != null) {
            this.mRunwayMessageViewArea.getLayoutTransition().setAnimateParentHierarchy(false);
        }
        this.clickView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseLiveRoomFragment.this.O2(view);
            }
        });
        this.mVideoRecyclerView.setOnTouchListener(new a());
    }

    protected boolean G3() {
        if (c9.a.i().W()) {
            return false;
        }
        BaseLiveActivity baseLiveActivity = (BaseLiveActivity) getActivity();
        if (baseLiveActivity != null) {
            ViewGroup viewGroup = baseLiveActivity.f18053e;
            if (viewGroup != null) {
                if (viewGroup.getVisibility() != 0) {
                    return baseLiveActivity.f18053e.getVisibility() == 8;
                }
                Fragment findFragmentById = baseLiveActivity.getSupportFragmentManager().findFragmentById(R.id.live_float_chat);
                return findFragmentById == null || !findFragmentById.isAdded();
            }
            Fragment findFragmentById2 = baseLiveActivity.getSupportFragmentManager().findFragmentById(R.id.live_float_chat);
            return findFragmentById2 == null || !findFragmentById2.isAdded();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void I2() {
        if (getCurrentLiveRoom().isVoiceRoom()) {
            return;
        }
        this.mVideoRecyclerView.setNestedScrollingEnabled(false);
        this.mVideoRecyclerView.setDefaultGapBackgroundColor(getResources().getColor(R.color.live_multi_live_bg));
        MultiLivePlayView multiLivePlayView = this.mVideoRecyclerView;
        LiveLinkMicPlayAdapter liveLinkMicPlayAdapter = new LiveLinkMicPlayAdapter(this, multiLivePlayView);
        this.X4 = liveLinkMicPlayAdapter;
        multiLivePlayView.setAdapter(liveLinkMicPlayAdapter);
        LiveVideoAudioMaskAdapter liveVideoAudioMaskAdapter = new LiveVideoAudioMaskAdapter(this, this.mMaskVideoRecyclerView);
        this.Z4 = liveVideoAudioMaskAdapter;
        this.mMaskVideoRecyclerView.setAdapter(liveVideoAudioMaskAdapter);
        LivePlayMaskAdapter livePlayMaskAdapter = new LivePlayMaskAdapter(this, this.mMaskRecyclerView);
        this.Y4 = livePlayMaskAdapter;
        this.mMaskRecyclerView.setAdapter(livePlayMaskAdapter);
        this.mVideoRecyclerView.setLayoutDirection(0);
        this.mMaskRecyclerView.setLayoutDirection(0);
        this.mMaskVideoRecyclerView.setLayoutDirection(0);
    }

    public void I3() {
        if (getCurrentLiveRoom().isLaunchFromFloatWindow()) {
            return;
        }
        this.B.postDelayed(this.f18535z5, 500L);
    }

    @Override // d9.g
    public void J0(LivePeopleInfoBean livePeopleInfoBean) {
        if (livePeopleInfoBean == null || getCurrentLiveRoom().isBroadCaster() || livePeopleInfoBean.getLiveId().equals(getCurrentLiveRoom().getLiveRoomId())) {
            return;
        }
        RoomItemData roomItemData = new RoomItemData();
        roomItemData.setLiveRoomId(livePeopleInfoBean.getLiveId());
        roomItemData.setImg(livePeopleInfoBean.getImg());
        roomItemData.setLiveCoverImg(livePeopleInfoBean.getLiveCoverImg());
        roomItemData.setGroupId(livePeopleInfoBean.getLiveId());
        if (getActivity() instanceof WatchLiveRoomActivity) {
            ((WatchLiveRoomActivity) getActivity()).B1(roomItemData);
        }
    }

    public void J3() {
        if (getView() == null || this.U4 || getCurrentLiveRoom().isVoiceRoom() || getCurrentUser().getRiskLevel() > 1 || !ja.a.b().f("KEY_LIVE_ADS_TIPS")) {
            return;
        }
        View view = this.adsLay;
        if ((view == null || view.getVisibility() == 0) && this.f18484a2 && !getCurrentLiveRoom().isInPkMode() && this.H5 == null) {
            BaseLiveActivity baseLiveActivity = (BaseLiveActivity) getActivity();
            if (baseLiveActivity == null || !baseLiveActivity.k0()) {
                if (getActivity() instanceof WatchLiveRoomActivity) {
                    WatchLiveRoomActivity watchLiveRoomActivity = (WatchLiveRoomActivity) getActivity();
                    int i9 = watchLiveRoomActivity.f18079p + 1;
                    watchLiveRoomActivity.f18079p = i9;
                    if (i9 >= 3) {
                        ja.a.b().e("KEY_LIVE_ADS_TIPS");
                        return;
                    }
                }
                PopupWindow popupWindow = new PopupWindow(getActivity());
                popupWindow.setBackgroundDrawable(new ColorDrawable(0));
                popupWindow.setOutsideTouchable(false);
                TextView textView = (TextView) ((ViewGroup) getView()).findViewById(R.id.ads_tips);
                if (textView == null) {
                    textView = new TextView(getContext());
                }
                textView.setVisibility(0);
                textView.setId(R.id.ads_tips);
                textView.setText(R.string.Get_free_diamond);
                textView.setBackgroundResource(R.drawable.ad_bj);
                textView.setTextColor(getResources().getColor(R.color.white));
                textView.setTextSize(2, 14.0f);
                int dp2px = DensityUtil.dp2px(8.0f);
                textView.setPadding(dp2px, dp2px, dp2px, dp2px);
                popupWindow.setContentView(textView);
                this.H5 = popupWindow;
                e0 e0Var = new e0();
                textView.setOnClickListener(new f0(e0Var));
                float measureText = textView.getPaint().measureText(textView.getText().toString());
                this.B.postDelayed(e0Var, 5000L);
                this.B.postDelayed(new i0(popupWindow, measureText, textView), 300L);
            }
        }
    }

    @Override // d9.g
    public void K(boolean z10, String str, String str2, String str3) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        baseLiveMessage.setType(BaseLiveMessage.TYPE_BAN_TALK_USER);
        baseLiveMessage.setAction(z10);
        baseLiveMessage.setToUserId(str);
        baseLiveMessage.setOperatedUserImg(str3);
        baseLiveMessage.setToUserNickName(str2);
        LiveMessageModel liveMessageModel = new LiveMessageModel("LIVE_BAN_TALK_USER", baseLiveMessage);
        sendLiveMessage(liveMessageModel, (e.a<Boolean>) null);
        onReceiveLiveMessage(liveMessageModel);
        ApplyConversationListDialogFragment applyConversationListDialogFragment = this.C;
        if (applyConversationListDialogFragment != null) {
            applyConversationListDialogFragment.g2(-1, null, str);
        }
    }

    @Override // d9.g
    public /* synthetic */ z8.b K1() {
        return d9.f.a(this);
    }

    public boolean K2() {
        LivePlayMaskAdapter livePlayMaskAdapter = this.Y4;
        if (livePlayMaskAdapter != null && livePlayMaskAdapter.getList() != null) {
            for (LiveRoomModel liveRoomModel : this.Y4.getList()) {
                if (getCurrentUser().getUserId().equals(liveRoomModel.getCurrentUserId())) {
                    return true;
                }
            }
        }
        return false;
    }

    public void K3(FragmentManager fragmentManager, LiveRoomModel liveRoomModel, LiveRoomModel liveRoomModel2, int i9) {
        this.A5 = BottomInteractionDialogFragment.j2(fragmentManager, liveRoomModel, liveRoomModel2, i9);
    }

    @Override // d9.g
    public void L(boolean z10, String str, String str2, d9.h hVar) {
        if (TextUtils.isEmpty(str)) {
            str = getCurrentUser().getUserId();
        }
        boolean z11 = (this instanceof BroadCastFragment) && getCurrentUser().getUserId().equals(str);
        e eVar = new e(z10, str, str2, hVar, z11);
        if (z11) {
            post("tokens/live/newLive/updateLiveInfo").v("liveId", getCurrentLiveRoom().getLiveRoomId()).v("voiceStatus", z10 ? "2" : "1").I(3).M(eVar);
        } else {
            post("tokens/live/microphone/updateVoiceStatusOrLiveType").v("voiceStatus", z10 ? "2" : "1").v("audienceId", str).v("liveId", getCurrentLiveRoom().getLiveRoomId()).v("ifUpdateAudience", Integer.valueOf(!getCurrentLiveRoom().isBroadCaster())).I(3).M(eVar);
        }
    }

    public boolean L2(List<AudienceInformation> list, AudienceInformation audienceInformation) {
        return (getCurrentLiveRoom().isBroadCaster() || list == null || !list.contains(audienceInformation)) ? false : true;
    }

    public void L3() {
        t2();
        this.E5 = InviteThePkDialogFragment.S1(getChildFragmentManager(), this.f18506l);
    }

    @Override // d9.g
    public void M(int i9, int i10) {
        View view;
        if (isDetached() || getActivity() == null || getActivity().isDestroyed() || getActivity().isDestroyed() || (view = this.smallMiniGameLay) == null) {
            return;
        }
        ((TextView) view.findViewById(R.id.game_info)).setText(String.format("%s/%s", Integer.valueOf(i9), Integer.valueOf(i10)));
    }

    @Override // d9.g
    public void M0(String str) {
        this.mInputArea.setVisibility(0);
        if (TextUtils.isEmpty(str)) {
            SoftKeyBoardUtils.openSoftKeyBoardNow(this.mEditText);
        } else {
            this.B.postDelayed(new j0(), 300L);
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mEditText.setText(str);
        this.mEditText.setSelection(str.length());
    }

    @Override // d9.g
    public /* synthetic */ void M1() {
        d9.f.f(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void M3(LiveInfoResult liveInfoResult, boolean z10) {
        LiveMusicActivityView liveMusicActivityView;
        if (!TextUtils.isEmpty(liveInfoResult.getOnlineNum())) {
            try {
                getCurrentLiveRoom().setOnlineNum(Integer.parseInt(liveInfoResult.getOnlineNum()));
            } catch (Exception unused) {
            }
        }
        c8.b.k().w(liveInfoResult.getFullScreenActivityGiftList());
        if (c8.b.k().m() && (liveMusicActivityView = this.f18502j) != null) {
            liveMusicActivityView.v(liveInfoResult.getServerTime());
        }
    }

    public boolean N2() {
        return this.f18526v || getCurrentLiveRoom().isInPkMode() || this.C4 != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void N3(String str, boolean z10, int i9) {
        if (i9 == 10) {
            onLiveFinish(10, "push failed after 30 seconds...");
        }
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(getActivity(), new t0(i9, z10));
        if (i9 != 10) {
            eVar.j();
            if (TextUtils.isEmpty(str)) {
                str = getString(R.string.live_launch_server_error);
            }
            eVar.f(str);
        } else {
            eVar.f(getString(R.string.push_stream_error));
        }
        eVar.show();
        if (i9 == 10) {
            eVar.e(getString(R.string.to_net_dia));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void O3() {
        LiveUserInfoFragment liveUserInfoFragment = this.f18534z;
        if (liveUserInfoFragment == null || !liveUserInfoFragment.isAdded() || this.f18534z.getActivity() == null) {
            return;
        }
        this.f18534z.showLocationAnimator(new u.g() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.g
            @Override // com.guochao.faceshow.aaspring.modulars.live.common.u.g
            public final void a() {
                BaseLiveRoomFragment.this.R2();
            }
        });
    }

    public void P3() {
        this.D5 = PkRecordDialogFragment.R1(getChildFragmentManager());
    }

    public void Q3(int i9) {
        this.C5 = PkSelectFriendsDialogFragment.b2(getChildFragmentManager(), getCurrentLiveRoom(), i9);
    }

    public void R3() {
        Long l10 = (Long) com.guochao.faceshow.aaspring.manager.b.a("live", "ShowFirstRecharge", Long.class);
        boolean z10 = (System.currentTimeMillis() + com.guochao.faceshow.aaspring.manager.i.u().s().getServerTimeDiff()) - (l10 == null ? 0L : l10.longValue()) > 86400000;
        FirstRechargeDownTimeUtils firstRechargeDownTimeUtils = FirstRechargeDownTimeUtils.INSTANCE;
        boolean z11 = (System.currentTimeMillis() + com.guochao.faceshow.aaspring.manager.i.u().s().getServerTimeDiff()) - firstRechargeDownTimeUtils.getLastLoginTime() < 86400000;
        if (getCurrentUser().getRecharged() == 0 && z10 && ((firstRechargeDownTimeUtils.getShowIcon() || z11) && FirstRechargeManager.INSTANCE.shouldShowFirstRecharge() && !getCurrentLiveRoom().isInPkMode())) {
            if (getCurrentLiveRoom().isVoiceRoom()) {
                this.firstRechargeLayVoice.setVisibility(0);
                this.firstRechargeLayVoice.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.b
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        BaseLiveRoomFragment.this.S2(view);
                    }
                });
            } else {
                ViewGroup viewGroup = this.firstRechargeLay;
                if (viewGroup != null) {
                    viewGroup.setVisibility(0);
                    this.firstRechargeLay.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.f
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            BaseLiveRoomFragment.this.T2(view);
                        }
                    });
                }
            }
            V3();
            i4();
        } else {
            ViewGroup viewGroup2 = this.firstRechargeLay;
            if (viewGroup2 != null) {
                viewGroup2.setVisibility(8);
            }
        }
        h0 h0Var = new h0();
        ImageView imageView = this.firstRechargeClose;
        if (imageView != null) {
            imageView.setOnClickListener(h0Var);
        }
        if (this.firstRechargeCloseVoice != null) {
            this.firstRechargeClose.setOnClickListener(h0Var);
        }
    }

    public void S3() {
        if (getView() != null && (this instanceof BroadCastFragment)) {
            x2();
        }
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.a.g
    public void T(String str, V2TIMGroupMemberInfo v2TIMGroupMemberInfo) {
        if (str == null || !str.equals(getCurrentLiveRoom().getChatGroupId())) {
            return;
        }
        C2(new LiveMessageModel<>("LOCAL_GROUP_DISSMISS", new GroupDismissMessage(str)));
    }

    public void T3() {
        if (getActivity() == null || getCurrentUser().getRegType() == 2 || this.f18497g5.size() == 0) {
            return;
        }
        G2();
        BaseLiveMessage baseLiveMessage = this.f18497g5.get(0);
        if (baseLiveMessage instanceof RunwayMessage.LuckyGiftRunwayMessage) {
            this.f18495f5 = baseLiveMessage;
            baseLiveMessage.setType("0");
            this.f18504k.clear();
            this.f18504k.add(baseLiveMessage);
            com.guochao.faceshow.aaspring.modulars.live.common.u.i(this.mRunwayMessageViewArea, this.rcvGift, -1);
            this.f18496g.notifyDataSetChanged();
            if (this.mRunwayMessageViewArea == null || q2()) {
                return;
            }
            H3(baseLiveMessage);
        } else if (baseLiveMessage instanceof RunwayMessage.BigGiftBean) {
            com.guochao.faceshow.aaspring.modulars.live.common.u.i(this.mRunwayMessageViewArea, this.rcvGift, R.drawable.icon_paodao_bj);
            com.bumptech.glide.c.x(getActivity()).c().b0(R.mipmap.ic_launcher).Z0(((RunwayMessage.BigGiftBean) baseLiveMessage).getGiftPicture()).M0(new j(baseLiveMessage));
        } else if (baseLiveMessage instanceof LiveLuckyRunwayMessage) {
            com.guochao.faceshow.aaspring.modulars.live.common.u.i(this.mRunwayMessageViewArea, this.rcvGift, R.drawable.icon_paodao_bj);
            this.f18495f5 = baseLiveMessage;
            baseLiveMessage.setType("0");
            this.f18504k.clear();
            this.f18504k.add(baseLiveMessage);
            this.f18496g.notifyDataSetChanged();
            if (this.mRunwayMessageViewArea == null || q2()) {
                return;
            }
            H3(baseLiveMessage);
        }
    }

    @Override // d9.g
    public void U0(LivePeopleInfoCardFragment livePeopleInfoCardFragment, String str) {
        livePeopleInfoCardFragment.dismiss();
        String str2 = str.equals(getCurrentLiveRoom().getBroadCasterUserId()) ? "2" : "5";
        if (getCurrentLiveRoom().isPrivateLiveRoom()) {
            ReportDetailActivity.start(getActivity(), str, getCurrentLiveRoom().getLiveRoomId(), str2);
        } else if (this instanceof WatcherLiveRoomFragment) {
            ReportController.report(getActivity(), str, getCurrentLiveRoom().getLiveRoomId(), str2, !LivePlayerProvider.player().isCompatMode(), ((RoomItemData) getCurrentLiveRoom()).getScreenShotSwitch());
        } else {
            ReportController.report(getActivity(), str, getCurrentLiveRoom().getLiveRoomId(), str2, true);
        }
    }

    public void U2(boolean z10) {
        if (this.f18515p5 == z10) {
            return;
        }
        this.f18515p5 = z10;
        this.Q = z10;
        c3(z10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void V2() {
        if (getCurrentUser().getRegType() == 2) {
            return;
        }
        get("tokens/live/treasure/list").v("scene", Integer.valueOf(getCurrentLiveRoom().isVoiceRoom() ? 1 : 0)).v("liveId", getCurrentLiveRoom().getLiveRoomId()).M(new d(System.currentTimeMillis()));
    }

    public void W3() {
        if (this.L != null) {
            return;
        }
        if (this instanceof BroadCastFragment) {
            this.Q = true;
        }
        this.B.removeCallbacks(this.f18523t5);
        this.B.postDelayed(this.f18523t5, 10000L);
    }

    @Override // d9.g
    public void X(String str) {
        this.E4 = false;
        sendLiveMessage(LiveMessageModelFactory.createAcceptLinkMicModel(str), (e.a<Boolean>) null);
        if (!getCurrentLiveRoom().isBroadCaster() || getCurrentLiveRoom().isMultiLiveRoom()) {
            return;
        }
        this.f18532y.setPkBtnVisibility(false);
    }

    public void X2(int i9, int i10, int i11) {
    }

    public void X3() {
        LiveRoomModel liveRoomModel;
        com.guochao.faceshow.aaspring.modulars.live.game.f fVar = this.P4;
        if (fVar != null && (this instanceof BroadCastFragment)) {
            fVar.C(this, getCurrentLiveRoom());
        }
        if (getActivity() instanceof BaseActivity) {
            ((BaseActivity) getActivity()).setOnBackButtonPressedHandler(this);
        }
        if (!(this instanceof BroadCastFragment) && ((liveRoomModel = this.f18506l) == null || TextUtils.isEmpty(liveRoomModel.getBroadCasterUserId()) || TextUtils.isEmpty(this.f18506l.getStatus()) || getCurrentLiveRoom().isVoiceRoom())) {
            o2();
        } else {
            f3();
        }
        this.mTextViewFaceCastId.setVisibility(4);
        com.guochao.faceshow.aaspring.modulars.live.common.a.m().v(this);
    }

    public void Y2(int i9) {
        LiveChatFragment liveChatFragment = this.f18532y;
        if (liveChatFragment != null) {
            liveChatFragment.giftOnclick(i9);
        }
    }

    public void Y3() {
        this.B.postDelayed(this.f18499h5, 50L);
    }

    public void Z2(int i9) {
        LittlePlayerFragment littlePlayerFragment = this.f18525u5;
        if (littlePlayerFragment == null || littlePlayerFragment.getView() == null) {
            return;
        }
        View view = (View) this.f18525u5.getView().getParent();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        marginLayoutParams.bottomMargin = DensityUtil.dp2px(75.0f);
        view.setLayoutParams(marginLayoutParams);
    }

    public void Z3(int i9) {
        UserGuideTouchView userGuideTouchView;
        Fragment fragment = this.A.get(i9);
        if (fragment != null && fragment.isAdded()) {
            getChildFragmentManager().beginTransaction().remove(fragment).commitAllowingStateLoss();
        }
        if (i9 == R.id.big_gift_box_area && (userGuideTouchView = this.f18494f) != null) {
            userGuideTouchView.setTouchEnabled(false);
        }
        this.A.remove(i9);
    }

    @Override // d9.g
    public void a() {
        if ((this instanceof BroadCastFragment) && z1()) {
            alert(getString(R.string.stop_link_mic_and_start_pk), null, new d0(), false);
        } else {
            this.B5 = PkTypeSelectDialogFragment.R1(getChildFragmentManager(), getCurrentLiveRoom());
        }
    }

    /* JADX WARN: Type inference failed for: r10v1, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    public void a3(LiveMessageModel<?> liveMessageModel) {
        b3(liveMessageModel != null && liveMessageModel.getData().getFromUserId().equalsIgnoreCase(getCurrentLiveRoom().getBroadCasterUserId()), liveMessageModel != null && liveMessageModel.getData().getUserVipMsg().getVipLevel() == 2, liveMessageModel != null && liveMessageModel.getData().getUserType() == 3, false, false);
    }

    @Override // d9.g
    public void addFBNumber(LiveMessageModel liveMessageModel) {
        LiveUserInfoFragment liveUserInfoFragment = this.f18534z;
        if (liveUserInfoFragment != null) {
            liveUserInfoFragment.addFBNumber(liveMessageModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b3(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        LiveRoomModel liveRoomModel = this.f18506l;
        if (liveRoomModel != null) {
            liveRoomModel.setKickedOut(true);
        }
        if (getActivity() != null) {
            Intent W2 = W2(getActivity(), z10, z11, z12, z13);
            W2.putExtra("voice", getCurrentLiveRoom().isVoiceRoom());
            W2.putExtra("privateVoice", z14);
            getActivity().setResult(-1, W2);
            getActivity().startActivity(W2);
            getActivity().finish();
            getActivity().overridePendingTransition(0, 0);
        }
    }

    public void b4(LinkMicInfoMessage linkMicInfoMessage) {
        List<LiveInfoMatchBean> matchList;
        if (linkMicInfoMessage == null || (matchList = linkMicInfoMessage.getMatchList()) == null || this.f18527v5 > linkMicInfoMessage.getServerTime()) {
            return;
        }
        this.f18527v5 = linkMicInfoMessage.getServerTime();
        int i9 = 0;
        boolean z10 = false;
        for (int i10 = 0; i10 < matchList.size(); i10++) {
            if (matchList.get(i10).getUserId().equals(getCurrentUser().getUserId())) {
                z10 = true;
            }
        }
        boolean z11 = z10 && (linkMicInfoMessage.getMatchList().size() > 1) && !this.f18506l.isMute();
        this.J.clear();
        while (i9 < linkMicInfoMessage.getMatchList().size()) {
            int i11 = i9 + 1;
            linkMicInfoMessage.getMatchList().get(i9).setPosition(i11);
            BottomInteractionDialogFragment bottomInteractionDialogFragment = this.A5;
            if (bottomInteractionDialogFragment != null && bottomInteractionDialogFragment.c2() != null && this.A5.getUserId().equals(linkMicInfoMessage.getMatchList().get(i9).getUserId())) {
                this.A5.f2(linkMicInfoMessage.getMatchList().get(i9).getVoiceStatus());
                this.A5.e2(linkMicInfoMessage.getMatchList().get(i9).getMatchType());
                LogUtils.e("AnchorForceMatchTyp+update", "setAnchorForceMatchType==" + linkMicInfoMessage.getMatchList().get(i9).isAnchorForceMatchType());
                this.A5.g2(linkMicInfoMessage.getMatchList().get(i9).isAnchorForceMatchType());
                this.A5.h2(linkMicInfoMessage.getMatchList().get(i9).isAnchorForceVoiceStatus());
            }
            i9 = i11;
        }
        this.J.addAll(linkMicInfoMessage.getMatchList());
        if (!z10) {
            l2();
            LiveMicApplyResult liveMicApplyResult = com.guochao.faceshow.aaspring.modulars.live.common.a.m().f18998h;
            if (liveMicApplyResult != null) {
                c0(liveMicApplyResult.getStreamId(), b8.e.g().getUserId());
                return;
            }
            return;
        }
        this.R = z11;
        U2(z11);
        LivePlayMaskAdapter livePlayMaskAdapter = this.Y4;
        if (livePlayMaskAdapter != null) {
            livePlayMaskAdapter.x(z11);
        }
        LiveLinkMicPlayAdapter liveLinkMicPlayAdapter = this.X4;
        if (liveLinkMicPlayAdapter != null) {
            liveLinkMicPlayAdapter.x(z11);
        }
        r3(linkMicInfoMessage);
        this.Q = z11;
        if (!z11) {
            l2();
            x3();
        } else if (getCurrentLiveRoom().isMultiLiveRoom()) {
            LiveLinkMicPlayAdapter liveLinkMicPlayAdapter2 = this.X4;
            if (liveLinkMicPlayAdapter2 != null) {
                liveLinkMicPlayAdapter2.C(linkMicInfoMessage);
            }
            LivePlayMaskAdapter livePlayMaskAdapter2 = this.Y4;
            if (livePlayMaskAdapter2 != null) {
                livePlayMaskAdapter2.C(linkMicInfoMessage);
            }
            LiveVideoAudioMaskAdapter liveVideoAudioMaskAdapter = this.Z4;
            if (liveVideoAudioMaskAdapter != null) {
                liveVideoAudioMaskAdapter.C(linkMicInfoMessage);
            }
        } else if (!getCurrentLiveRoom().isBroadCaster()) {
            for (LiveInfoMatchBean liveInfoMatchBean : matchList) {
                if (TextUtils.isEmpty(this.f18517q5) && liveInfoMatchBean.getUserId().equals(getCurrentLiveRoom().getBroadCasterUserId())) {
                    this.f18517q5 = liveInfoMatchBean.getJsUrl();
                    D0().startPlayAcc(liveInfoMatchBean.getJsUrl(), liveInfoMatchBean.getStreamId(), this.mTXCloudVideoViewAcc);
                    return;
                }
            }
        } else {
            for (LiveInfoMatchBean liveInfoMatchBean2 : matchList) {
                if (!liveInfoMatchBean2.getUserId().equals(getCurrentLiveRoom().getBroadCasterUserId())) {
                    if (this.f18525u5 != null || TextUtils.isEmpty(liveInfoMatchBean2.getJsUrl())) {
                        return;
                    }
                    LittlePlayerFragment P1 = LittlePlayerFragment.P1(liveInfoMatchBean2);
                    this.f18525u5 = P1;
                    u3(R.id.little_pusher_area, P1);
                    t3(true);
                }
            }
        }
    }

    public void c(int i9, String str, String str2, String str3, String str4, boolean z10, boolean z11) {
        if (this.f18532y != null) {
            if (TextUtils.isEmpty(str3)) {
                str3 = String.valueOf(this.N);
            }
            getCurrentLiveRoom().setInPkMode(false);
            getCurrentLiveRoom().setInPkPunishmentTime(true);
            com.guochao.faceshow.aaspring.modulars.live.common.x.n().D(0);
            if (System.currentTimeMillis() - this.F5 > 3000) {
                this.f18532y.onReceiveLiveMessage(LiveMessageModelFactory.createPkResultMessageModel(i9, str3, str4, z11));
                this.F5 = System.currentTimeMillis();
            }
        }
    }

    public void c0(String str, String str2) {
        LiveChatFragment liveChatFragment = this.f18532y;
        if (liveChatFragment != null) {
            liveChatFragment.setPkBtnVisibility(true);
        }
    }

    @Override // d9.g
    public void c1(@NonNull LiveGameBean liveGameBean, @NonNull d9.k kVar, @NonNull LiveGameExtras liveGameExtras, boolean z10) {
        View view = this.smallMiniGameLay;
        if (view == null) {
            return;
        }
        if (z10) {
            view.setVisibility(8);
            if (getView() != null && getView().findViewById(R.id.live_game_area) != null) {
                getView().findViewById(R.id.live_game_area).setVisibility(0);
            }
            r2();
        } else {
            view.setVisibility(0);
            if (getView() != null && getView().findViewById(R.id.live_game_area) != null) {
                getView().findViewById(R.id.live_game_area).setVisibility(8);
            }
        }
        ImageView imageView = (ImageView) this.smallMiniGameLay.findViewById(R.id.game_icon);
        ImageView d42 = d4();
        if (d42 != null) {
            d42.setOnClickListener(new x(liveGameExtras));
        }
        hc.a.h(imageView, liveGameBean.getIcon(), -1);
        ((TextView) this.smallMiniGameLay.findViewById(R.id.game_info)).setText(String.format("%s/%s", Integer.valueOf(liveGameExtras.getCurrentCount()), Integer.valueOf(liveGameExtras.getTotalCount())));
        i4();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c3(boolean z10) {
        boolean z11 = false;
        if (isAdded() && getActivity() != null && !isDetached() && (getActivity() == null || !getActivity().isFinishing())) {
            UserStateHolder.setIsLivingInMic(z10);
            ApplyConversationListDialogFragment applyConversationListDialogFragment = this.C;
            if (applyConversationListDialogFragment != null) {
                applyConversationListDialogFragment.e2();
            }
            onLinkMicStatusChanged(getCurrentLiveRoom().canRequestLinkMic());
            MultiLivePlayView multiLivePlayView = this.mVideoRecyclerView;
            if (multiLivePlayView != null) {
                multiLivePlayView.setLinkMicing(z10 || (this instanceof BroadCastFragment));
            }
            MultiLivePlayView multiLivePlayView2 = this.mMaskRecyclerView;
            if (multiLivePlayView2 != null) {
                multiLivePlayView2.setLinkMicing(z10 || (this instanceof BroadCastFragment));
            }
            MultiLivePlayView multiLivePlayView3 = this.mMaskVideoRecyclerView;
            if (multiLivePlayView3 != null) {
                multiLivePlayView3.setLinkMicing((z10 || (this instanceof BroadCastFragment)) ? true : true);
                return;
            }
            return;
        }
        UserStateHolder.setIsLivingInMic(false);
    }

    public void c4(long j10) {
        this.f18512o = j10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void cancelLocationAnimator() {
        this.f18529w5 = false;
        LiveUserInfoFragment liveUserInfoFragment = this.f18534z;
        if (liveUserInfoFragment != null) {
            liveUserInfoFragment.cancelLocationAnimator();
        }
    }

    @OnClick
    @Optional
    public void clickLittlePlayer(View view) {
        if (TextUtils.isEmpty(this.f18511n5)) {
            return;
        }
        LivePeopleInfoCardFragment.showPeopleInfo(getChildFragmentManager(), this.f18511n5, this.f18513o5);
    }

    public void d3(List<LiveInfoMatchBean> list, long j10) {
        MultiLivePlayView multiLivePlayView;
        if (list == null) {
            list = new ArrayList<>();
        }
        if (!this.Q) {
            f4(list, j10);
            this.J.clear();
            int i9 = 0;
            while (i9 < list.size()) {
                i9++;
                list.get(i9).setPosition(i9);
            }
            this.J.addAll(list);
            LinkMicInfoMessage linkMicInfoMessage = new LinkMicInfoMessage();
            linkMicInfoMessage.setMatchList(list);
            r3(linkMicInfoMessage);
        }
        if (!getCurrentLiveRoom().isMultiLiveRoom() || (multiLivePlayView = this.mMaskRecyclerView) == null || multiLivePlayView.getVisibility() == 0) {
            return;
        }
        this.mMaskRecyclerView.setVisibility(0);
    }

    public ImageView d4() {
        View view = this.smallMiniGameLay;
        if (view != null) {
            ImageView imageView = (ImageView) view.findViewById(R.id.small_mini_game_close);
            imageView.setImageResource((c9.a.i().k() || !getCurrentLiveRoom().isBroadCaster()) ? R.mipmap.icon_mini_game_open : R.mipmap.live_close_ad);
            return imageView;
        }
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.im_messages.dispatcher.GCIMMessageDispatcher
    public boolean dispatchGCIMMessage(o7.a aVar) {
        return false;
    }

    public void e3() {
    }

    public void e4(long j10) {
        this.f18510n = j10;
    }

    public void f3() {
        this.I = false;
        if (getCurrentLiveRoom().isMultiLiveRoom()) {
            this.mMaskRecyclerView.setVisibility(0);
            if (this instanceof BroadCastFragment) {
                I2();
            }
        } else {
            View view = this.mLiveViewMaskContainer;
            if (view != null) {
                view.setVisibility(8);
            }
        }
        if (this instanceof WatcherLiveRoomFragment) {
            I2();
        }
        onLinkMicStatusChanged(getCurrentLiveRoom().canRequestLinkMic());
        TextView textView = this.mTextViewFaceCastId;
        textView.setText("BC ID:" + this.f18506l.getBroadCasterUserId());
        if (this instanceof BroadCastFragment) {
            g2();
        }
        i2();
        h2();
        if (getCurrentLiveRoom().isVoiceRoom()) {
            this.mLiveScrollToClearScreenView.setTouchEnabled(false);
        } else {
            this.mLiveScrollToClearScreenView.setTouchEnabled(true);
        }
        LivePlayGiftFragment livePlayGiftFragment = this.T4;
        if (livePlayGiftFragment == null || !livePlayGiftFragment.isAdded()) {
            return;
        }
        this.T4.reset();
    }

    public void g2() {
        if (getCurrentLiveRoom().isVoiceRoom()) {
            VoiceRoomLiveChatFragment voiceRoomLiveChatFragment = new VoiceRoomLiveChatFragment();
            this.f18532y = voiceRoomLiveChatFragment;
            u3(R.id.chat_fragment, voiceRoomLiveChatFragment);
            return;
        }
        if (this.f18532y instanceof VoiceRoomLiveChatFragment) {
            this.f18532y = null;
        }
        LiveChatFragment liveChatFragment = this.f18532y;
        if (liveChatFragment == null) {
            LiveChatFragment liveChatFragment2 = new LiveChatFragment();
            this.f18532y = liveChatFragment2;
            u3(R.id.chat_fragment, liveChatFragment2);
        } else if (liveChatFragment.isAdded()) {
            this.f18532y.reset();
        }
    }

    abstract void g3(LiveMessageModel<PkFCoinMessage> liveMessageModel);

    public void g4(long j10) {
        this.f18508m = j10;
    }

    @Override // d9.g, com.guochao.component.liveroomcommon.interfaces.GCLiveRoomModelProvider
    public /* synthetic */ GCLiveRoomModel getCurrentGCLiveRoomModel() {
        return d9.f.b(this);
    }

    public LiveRoomModel getCurrentLiveRoom() {
        LiveRoomModel liveRoomModel = this.f18506l;
        return liveRoomModel == null ? new RoomItemData() : liveRoomModel;
    }

    @Subscribe
    public void giftRunwayScrollEnd(GiftRunwayScrollEndEvent giftRunwayScrollEndEvent) {
        com.guochao.faceshow.aaspring.modulars.live.common.u.d(this.mRunwayMessageViewArea, this.rcvGift, this.B, new u0(this, null));
    }

    @Override // d9.g
    public void h(String str, String str2, String str3) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        baseLiveMessage.setToUserId(str);
        baseLiveMessage.setToUserNickName(str2);
        baseLiveMessage.setOperatedUserImg(str3);
        baseLiveMessage.setType(BaseLiveMessage.TYPE_REMOVE_USER);
        LiveMessageModel liveMessageModel = new LiveMessageModel("LIVE_REMOVE_USER", baseLiveMessage);
        sendLiveMessage(liveMessageModel, (e.a<Boolean>) null);
        onReceiveLiveMessage(liveMessageModel);
    }

    public void h3(BaseLiveMessage baseLiveMessage) {
        List<RunwayMessage.BigGiftBean> runways;
        if (baseLiveMessage instanceof RunwayMessage) {
            if (q2() || (runways = ((RunwayMessage) baseLiveMessage).getRunways()) == null || runways.isEmpty()) {
                return;
            }
            if (this.f18497g5.size() > 0) {
                this.f18497g5.addAll(runways);
                return;
            }
            this.f18497g5.addAll(runways);
            T3();
        } else if (baseLiveMessage instanceof ILuckyRunwayMessage) {
            ILuckyRunwayMessage iLuckyRunwayMessage = (ILuckyRunwayMessage) baseLiveMessage;
            List<RunwayMessage.LuckyGiftRunwayMessage> runwayMessages = iLuckyRunwayMessage.getRunwayMessages();
            for (int i9 = 0; i9 < runwayMessages.size(); i9++) {
                runwayMessages.get(i9).setDiamonds(iLuckyRunwayMessage.getDiamonds());
            }
            if (this.f18497g5.size() > 0) {
                this.f18497g5.addAll(runwayMessages);
                return;
            }
            this.f18497g5.addAll(runwayMessages);
            T3();
        } else if (baseLiveMessage instanceof RunwayMessage.BigGiftBean) {
            if (this.f18497g5.size() > 0) {
                this.f18497g5.add(baseLiveMessage);
                return;
            }
            this.f18497g5.add(baseLiveMessage);
            T3();
        } else if (baseLiveMessage instanceof LiveLuckyRunwayMessage) {
            if (this.f18497g5.size() > 0) {
                this.f18497g5.add(baseLiveMessage);
                return;
            }
            this.f18497g5.add(baseLiveMessage);
            T3();
        }
    }

    public void h4(long j10) {
        this.f18516q = j10;
    }

    public void i3(TreasureMessage treasureMessage) {
        List<TreasureMessage.BigGiftBox> bigGiftBoxes = treasureMessage.getBigGiftBoxes();
        if (bigGiftBoxes == null || bigGiftBoxes.size() == 0) {
            return;
        }
        for (int i9 = 0; i9 < bigGiftBoxes.size(); i9++) {
            bigGiftBoxes.get(i9).getPhoneEndTime();
        }
        HashSet hashSet = new HashSet(bigGiftBoxes);
        hashSet.addAll(this.D);
        this.D.clear();
        this.D.addAll(hashSet);
        U3();
        q3();
    }

    public void i4() {
        View view;
        if (getCurrentLiveRoom().isMultiLiveRoom() || (view = this.mRequestLink) == null || view.getParent() == null || isDetached() || !isAdded()) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) ((ViewGroup) this.mRequestLink.getParent()).getLayoutParams();
        marginLayoutParams.width = -2;
        ((LinearLayout.LayoutParams) this.smallMiniGameLay.getLayoutParams()).gravity = GravityCompat.END;
        ((LinearLayout.LayoutParams) this.firstRechargeLay.getLayoutParams()).gravity = GravityCompat.END;
        int i9 = getResources().getDisplayMetrics().heightPixels;
        if ((this.smallMiniGameLay.getVisibility() == 0 || this.firstRechargeLay.getVisibility() == 0) && this.mRequestLink.getVisibility() == 8) {
            if (!this.Q && !this.f18526v) {
                marginLayoutParams.bottomMargin = i9 - ((int) (i9 * 0.6458333f));
                p2(marginLayoutParams, true);
            } else if (this.f18526v) {
                marginLayoutParams.bottomMargin = DensityUtil.dp2px(50.0f);
                p2(marginLayoutParams, false);
            } else {
                marginLayoutParams.bottomMargin = i9 - ((int) (i9 * 0.6458333f));
                p2(marginLayoutParams, true);
            }
        } else if ((this.smallMiniGameLay.getVisibility() == 0 || this.firstRechargeLay.getVisibility() == 0) && this.mRequestLink.getVisibility() == 0) {
            marginLayoutParams.bottomMargin = i9 - ((int) (i9 * 0.6458333f));
            p2(marginLayoutParams, true);
        } else if (this.smallMiniGameLay.getVisibility() == 8 || this.firstRechargeLay.getVisibility() == 8) {
            marginLayoutParams.bottomMargin = i9 - ((int) (i9 * 0.6458333f));
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        LiveRoomModel liveRoomModel;
        this.f18482a = (VideoCallDuringLivingViewModel) new ViewModelProvider(this).get(VideoCallDuringLivingViewModel.class);
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        H2();
        if (this.I4 == null) {
            this.I4 = new LiveDanmuHelper(this, this.mIDanmakuView);
        }
        this.f18486b = new GiftAnimator((ViewGroup) view.findViewById(R.id.gift_anim_container), this.mMaskVideoRecyclerView);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.findViewById(R.id.closeLL).getLayoutParams();
        marginLayoutParams.topMargin = StatusBarHelper.getStatusbarHeight(getActivity()) + DensityUtil.dp2px(4.0f);
        marginLayoutParams.setMarginEnd(DensityUtil.dp2px(getContext(), 6.0f));
        sa.c cVar = new sa.c(getActivity(), getChildFragmentManager(), (ViewGroup) view.findViewById(R.id.live_join_middle_tips_ly));
        this.f18528w = cVar;
        cVar.z(new v());
        boolean z10 = this instanceof BroadCastFragment;
        if (z10 || ((liveRoomModel = this.f18506l) != null && !TextUtils.isEmpty(liveRoomModel.getStatus()))) {
            I2();
            G2();
        }
        this.mTextViewFaceCastId.setVisibility(4);
        LiveActivityView liveActivityView = (LiveActivityView) view.findViewById(R.id.live_activity_view);
        if (liveActivityView != null && z10) {
            liveActivityView.setVisibility(8);
        }
        this.mViewGiftBox.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BaseLiveRoomFragment.this.P2(view2);
            }
        });
        this.mLiveScrollToClearScreenView.d(view.findViewById(R.id.little_pusher_info_area));
        this.mLiveScrollToClearScreenView.d(view.findViewById(R.id.chat_fragment));
        this.mLiveScrollToClearScreenView.d(view.findViewById(R.id.gift_area));
        this.mLiveScrollToClearScreenView.d(view.findViewById(R.id.pk_info_area));
        this.mLiveScrollToClearScreenView.d(view.findViewById(R.id.live_join_middle_tips_ly));
        this.mLiveScrollToClearScreenView.d(this.mPeriscopeLayout);
        this.mLiveScrollToClearScreenView.d(this.mRunwayMessageViewArea);
        this.mLiveScrollToClearScreenView.d(this.dishWheelView);
        this.mLiveScrollToClearScreenView.d(view.findViewById(R.id.live_game_area));
        this.mLiveScrollToClearScreenView.d(view.findViewById(R.id.web_live_game_area));
        this.mLiveScrollToClearScreenView.d(view.findViewById(R.id.live_float_chat));
        this.mLiveScrollToClearScreenView.setOnSwipeListener(this);
        TextView textView = this.mTextViewLinkMicUserName;
        if (textView != null) {
            this.mLiveScrollToClearScreenView.d(textView);
            z3();
        }
        com.guochao.faceshow.aaspring.modulars.live.game.f fVar = new com.guochao.faceshow.aaspring.modulars.live.game.f(this.dishWheelView);
        this.P4 = fVar;
        fVar.setOnListener(new g0());
        this.smallMiniGameLay.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BaseLiveRoomFragment.this.Q2(view2);
            }
        });
        if (liveActivityView != null) {
            liveActivityView.q(this.P4);
        }
        c9.a.i().b(this);
        if (getActivity() != null) {
            getActivity().registerReceiver(this.V3, new IntentFilter(d9.c.f37999d0));
        }
        LivePlayGiftFragment livePlayGiftFragment = new LivePlayGiftFragment();
        this.T4 = livePlayGiftFragment;
        u3(R.id.gift_area, livePlayGiftFragment);
    }

    public void j2() {
        if (getCurrentLiveRoom().isMultiLiveRoom()) {
            return;
        }
        LiveUserInfoFragment liveUserInfoFragment = this.f18534z;
        if (liveUserInfoFragment != null) {
            liveUserInfoFragment.addZanCount();
        }
        AddZanHeartView addZanHeartView = this.mPeriscopeLayout;
        if (addZanHeartView != null) {
            addZanHeartView.g(bb.a.e().f());
        }
    }

    public void j3(int i9) {
        LittlePlayerFragment littlePlayerFragment = this.f18525u5;
        if (littlePlayerFragment == null || littlePlayerFragment.getView() == null) {
            return;
        }
        View view = (View) this.f18525u5.getView().getParent();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        marginLayoutParams.bottomMargin = DensityUtil.dp2px(75.0f) + i9;
        view.setLayoutParams(marginLayoutParams);
    }

    public void k2(View view) {
        int fillDp2px;
        int i9;
        if (getActivity() == null || getCurrentLiveRoom() == null || view == null) {
            return;
        }
        if (this.f18485a5 == 0) {
            this.f18485a5 = getResources().getDisplayMetrics().widthPixels;
        }
        if (this.f18487b5 == 0) {
            this.f18487b5 = view.getMeasuredHeight();
        }
        this.f18487b5 = view.getMeasuredHeight();
        String simpleName = getClass().getSimpleName();
        LogUtils.i(simpleName, "totalHeight:" + view.getMeasuredHeight());
        String simpleName2 = getClass().getSimpleName();
        LogUtils.i(simpleName2, "etResources().getDisplayMetrics().heightPixels:" + getResources().getDisplayMetrics().heightPixels);
        float statusbarHeight = (((float) (this.f18487b5 + StatusBarHelper.getStatusbarHeight(getActivity()))) * 1.0f) / ((float) this.f18485a5);
        boolean z10 = N2() || getCurrentLiveRoom().isPkModeWhenFloatWindow();
        if (!getCurrentLiveRoom().isMultiLiveRoom() && !z10) {
            view.setBackground(null);
            ic.a.b(BaseApplication.getInstance()).f(view);
            i9 = -1;
            fillDp2px = 0;
        } else {
            fillDp2px = (int) ((DensityUtil.fillDp2px(getActivity(), 105.0f) * statusbarHeight) / 1.7777778f);
            if (z10) {
                i9 = (int) ((this.f18485a5 * 16) / 18.0f);
            } else {
                i9 = (int) (this.f18485a5 * 1.0f);
            }
            ic.a.b(BaseApplication.getInstance()).p(Integer.valueOf((int) R.mipmap.zhibojian_bg)).Z(Integer.MIN_VALUE).M0(new b(view));
        }
        ((ViewGroup.MarginLayoutParams) this.mPkInfoAreaView.getLayoutParams()).topMargin = (int) ((DensityUtil.fillDp2px(getActivity(), 105.0f) * statusbarHeight) / 1.7777778f);
        ViewGroup viewGroup = this.mLiveViewContainer;
        if (viewGroup != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewGroup.getLayoutParams();
            marginLayoutParams.topMargin = fillDp2px;
            marginLayoutParams.width = this.f18485a5;
            marginLayoutParams.height = i9;
            this.mLiveViewContainer.setLayoutParams(marginLayoutParams);
        }
        View view2 = this.mLiveViewMaskContainer;
        if (view2 != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
            marginLayoutParams2.topMargin = fillDp2px;
            marginLayoutParams2.width = this.f18485a5;
            marginLayoutParams2.height = i9;
            this.mLiveViewMaskContainer.setLayoutParams(marginLayoutParams2);
        }
        if (getCurrentLiveRoom().isMultiLiveRoom()) {
            ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) this.mRunwayMessageViewArea.getLayoutParams();
            marginLayoutParams3.topMargin = fillDp2px;
            this.mRunwayMessageViewArea.setLayoutParams(marginLayoutParams3);
        }
        this.K4 = (ViewGroup.MarginLayoutParams) view.findViewById(R.id.live_join_middle_tips_ly).getLayoutParams();
        View findViewById = view.findViewById(R.id.chat_fragment);
        ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
        if (i9 == -1) {
            LogUtils.e("LiveRoomLayout", "普通直播间布局");
            layoutParams.height = DensityUtil.fillDp2px(getActivity(), 260.0f);
        } else if (z10) {
            layoutParams.height = ((this.f18487b5 - i9) - fillDp2px) - DensityUtil.fillDp2px(getActivity(), 44.0f);
            LogUtils.e("LiveRoomLayout", "PK直播间布局");
        } else {
            layoutParams.height = ((this.f18487b5 - i9) - fillDp2px) - DensityUtil.fillDp2px(getActivity(), 4.0f);
            LogUtils.e("LiveRoomLayout", "多人直播间布局");
        }
        this.J4 = layoutParams.height;
        findViewById.setLayoutParams(layoutParams);
        if (findViewById.findViewById(R.id.live_btns) != null) {
            t3(false);
        }
        this.B.post(new c());
        X2(this.f18485a5, i9, fillDp2px);
    }

    public void k3(String str, String str2) {
        BottomInteractionDialogFragment bottomInteractionDialogFragment = this.A5;
        if (bottomInteractionDialogFragment != null) {
            bottomInteractionDialogFragment.b2();
        }
        RichListDialogFragment.T1(getFragmentManager(), str2, str);
    }

    @Subscribe
    public void keyboardHeight(y7.j jVar) {
        if (jVar.f60142c == 0) {
            if (jVar.f60141b <= 0) {
                this.mInputArea.setVisibility(8);
            } else if (G3()) {
                if (this instanceof BroadCastFragment) {
                    if (((BroadCastFragment) this).f18334l6) {
                        this.mInputArea.setVisibility(0);
                    }
                } else {
                    this.mInputArea.setVisibility(0);
                }
            }
        } else if (this.mInputArea.getVisibility() == 0) {
            this.mEditText.requestFocus();
        }
        View view = this.mInputArea;
        if (view != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            marginLayoutParams.bottomMargin = Math.max(0, jVar.f60141b);
            view.setLayoutParams(marginLayoutParams);
        }
    }

    @Override // com.guochao.faceshow.aaspring.views.LiveScrollToClearScreenView.b
    public void l0(LiveScrollToClearScreenView liveScrollToClearScreenView) {
        if (getView() != null && getView().findViewById(R.id.live_game_area) != null && c9.a.i().j()) {
            getView().findViewById(R.id.live_game_area).setVisibility(8);
        }
        UserGuideTouchView userGuideTouchView = this.f18494f;
        if (userGuideTouchView != null && userGuideTouchView.getVisibility() == 0) {
            this.f18494f.setVisibility(8);
        }
        if (getActivity() instanceof WatchLiveRoomActivity) {
            ((WatchLiveRoomActivity) getActivity()).f18076m = false;
        }
        ja.a.b().e("KEY_SWIPE_TO_DISMISS_LIVE_CHAT");
        if (ja.a.b().f("KEY_SWIPE_TO_SHOW_LIVE_CHAT")) {
            this.B.postDelayed(this.G5, 2000L);
            F3(false);
        }
        r2();
        if (getView() != null) {
            getView().findViewById(R.id.live_join_middle_tips_ly).setVisibility(8);
        }
        com.guochao.faceshow.aaspring.modulars.live.game.f fVar = this.P4;
        if (fVar != null) {
            fVar.l0();
        }
        FrameLayout frameLayout = this.mRunwayMessageViewArea;
        if (frameLayout != null) {
            frameLayout.clearAnimation();
            this.mRunwayMessageViewArea.setVisibility(8);
            this.B.removeCallbacks(this.f18499h5);
            this.B.removeCallbacks(this.f18505k5);
        }
        this.f18497g5.clear();
    }

    public void l2() {
        this.B.removeCallbacks(this.f18523t5);
        com.guochao.faceshow.aaspring.modulars.live.common.a.m().f();
        PostRequest postRequest = this.L;
        if (postRequest != null) {
            postRequest.cancel();
            this.L = null;
        }
    }

    public void l3(String str) {
        LiveLinkMicPlayAdapter liveLinkMicPlayAdapter;
        if (this.Q || (this instanceof BroadCastFragment)) {
            LiveLinkMicPlayAdapter liveLinkMicPlayAdapter2 = this.X4;
            if (liveLinkMicPlayAdapter2 != null) {
                liveLinkMicPlayAdapter2.s(str);
            }
            LivePlayMaskAdapter livePlayMaskAdapter = this.Y4;
            if (livePlayMaskAdapter != null) {
                livePlayMaskAdapter.s(str);
            }
            LiveVideoAudioMaskAdapter liveVideoAudioMaskAdapter = this.Z4;
            if (liveVideoAudioMaskAdapter != null) {
                liveVideoAudioMaskAdapter.s(str);
            }
        }
        boolean z10 = this instanceof BroadCastFragment;
        int i9 = 0;
        if (z10 && getCurrentLiveRoom().isMultiLiveRoom() && (liveLinkMicPlayAdapter = this.X4) != null) {
            List<LiveRoomModel> list = liveLinkMicPlayAdapter.f18157e;
            boolean z11 = true;
            this.Q = (list == null || list.size() <= 1) ? false : false;
        }
        if (str.equals(getCurrentUser().getUserId())) {
            com.guochao.faceshow.aaspring.modulars.live.common.a.m().v(this);
        }
        if (!getCurrentLiveRoom().isMultiLiveRoom()) {
            z3();
            if (str.equals(getCurrentUser().getUserId()) || z10) {
                x3();
                this.Q = false;
                this.R = false;
                c3(false);
                this.f18515p5 = false;
            }
        } else if (str.equals(getCurrentUser().getUserId())) {
            l2();
            this.Q = false;
            this.R = false;
            c3(false);
            this.f18515p5 = false;
        }
        Iterator<LiveInfoMatchBean> it = this.J.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (Objects.equals(it.next().getUserId(), str)) {
                it.remove();
                break;
            }
        }
        while (i9 < this.J.size()) {
            i9++;
            this.J.get(i9).setPosition(i9);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    public void m2(LiveMessageModel<?> liveMessageModel) {
        if (this.f18507l5 || this.I || !this.f18484a2) {
            return;
        }
        if (liveMessageModel.getData().getShowDanmu() == 1 || liveMessageModel.getData().mvpDanmu == 1) {
            this.I4.addDamus(liveMessageModel);
        }
    }

    public void m3(ResourceListItemBean resourceListItemBean, String str, sa.a aVar) {
        if (getCurrentLiveRoom().isBroadCaster() || this.Q) {
            if (getCurrentLiveRoom().isPrivateLiveRoom() && getCurrentLiveRoom().isBroadCaster() && this.L4 != null) {
                return;
            }
            if ((!getCurrentLiveRoom().isPrivateLiveRoom() || getCurrentLiveRoom().isBroadCaster() || this.M4 == null) && getCurrentUser().getUserId().equals(str) && GiftLiveMessage.isFaceGift(resourceListItemBean) && !TextUtils.isEmpty(resourceListItemBean.getAndroidFaceEffectUrlV2()) && !TextUtils.isEmpty(resourceListItemBean.getAndroidFaceMd5V2())) {
                ResourceCategoryItem resourceCategoryItem = new ResourceCategoryItem();
                resourceCategoryItem.setGifList(new ArrayList());
                resourceCategoryItem.getGifList().add(resourceListItemBean);
                com.guochao.faceshow.aaspring.manager.a.g().k(resourceCategoryItem, resourceListItemBean, 10002, new h(aVar));
            }
        }
    }

    public void n2(@NonNull LiveMessageModel<? extends BaseLiveMessage> liveMessageModel, GiftLiveMessage giftLiveMessage) {
        if (!getCurrentLiveRoom().isMultiLiveRoom() || this.Y4 == null || this.J.size() <= 0 || TextUtils.isEmpty(liveMessageModel.getData().getToUserId())) {
            return;
        }
        if (giftLiveMessage.getIsGiftAllSend() == 1) {
            int size = giftLiveMessage.getGiftSendList().size();
            for (int i9 = 0; i9 < size; i9++) {
                String str = giftLiveMessage.getGiftSendList().get(i9).f17819a;
                Iterator<LiveInfoMatchBean> it = this.J.iterator();
                while (true) {
                    if (it.hasNext()) {
                        LiveInfoMatchBean next = it.next();
                        if (next.getUserId().equals(str)) {
                            int parseInt = Integer.parseInt(next.getFcoin());
                            if (giftLiveMessage.getLuckyGiftResults() != null) {
                                next.setFcoin(String.valueOf(parseInt + giftLiveMessage.getRewardForUser(str)));
                            } else {
                                next.setFcoin(String.valueOf(parseInt + giftLiveMessage.getGiftBCoinValue()));
                            }
                        }
                    }
                }
            }
        } else {
            Iterator<LiveInfoMatchBean> it2 = this.J.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                LiveInfoMatchBean next2 = it2.next();
                if (next2.getUserId().equals(liveMessageModel.getData().getToUserId())) {
                    int parseInt2 = Integer.parseInt(next2.getFcoin());
                    if (giftLiveMessage.getLuckyGiftResults() != null) {
                        next2.setFcoin(String.valueOf(parseInt2 + giftLiveMessage.getRewardForUser(liveMessageModel.getData().getToUserId())));
                    } else {
                        next2.setFcoin(String.valueOf(parseInt2 + giftLiveMessage.getGiftBCoinValue()));
                    }
                }
            }
        }
        this.Y4.I(this.J);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends BaseLiveMessage> void n3(LiveMessageModel<T> liveMessageModel) {
        BaseLiveMessage data = liveMessageModel.getData();
        if (data == null) {
            data = new BaseLiveMessage();
            liveMessageModel.setData(data);
        }
        LiveRoomModel liveRoomModel = this.f18506l;
        if (liveRoomModel != null) {
            data.setUserType(liveRoomModel.getUserType());
            data.setRoomId(this.f18506l.getChatGroupId());
        }
        if (TextUtils.isEmpty(data.getFromUserId())) {
            data.setFromUserNickName(getCurrentUser().nickName);
            data.setFromUserId(getCurrentUser().getUserId());
        }
        if (TextUtils.isEmpty(data.getFromUserAvatar())) {
            if (!TextUtils.isEmpty(getCurrentUser().getSmallImg())) {
                data.setFromUserAvatar(getCurrentUser().getSmallImg());
            } else {
                data.setFromUserAvatar(getCurrentUser().getAvatar());
            }
        }
        if (TextUtils.isEmpty(data.getFromUserCountryFlag())) {
            data.setFromUserCountryFlag(getCurrentUser().getCountryFlag());
        }
        if (TextUtils.isEmpty(data.getFromUserPendant())) {
            data.setFromUserPendant(getCurrentUser().avatar);
        }
        data.setVersion(2);
        if (TextUtils.isEmpty(data.getToUserId())) {
            data.setToUserId(getCurrentLiveRoom().getBroadCasterUserId());
        }
        UserVipData userVipMsg = getCurrentUser().getUserVipMsg();
        UserBean.UserMvpInfo userMvpInfo = getCurrentUser().getUserMvpInfo();
        if (userMvpInfo != null) {
            data.setMvpLevel(userMvpInfo.getMvpLevel());
            data.setMvpUrl(userMvpInfo.mvpUrl);
        }
        if (userVipMsg != null) {
            data.setUserVipMsg(userVipMsg);
        }
        data.setIsNewer(getCurrentUser().getIsNewUser());
        data.setSendTime(TimeUtil.getServerTime());
        data.setLevelId(getCurrentUser().levelId);
    }

    protected void o2() {
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onApplyPKCountdown(ApplyPkCountdown applyPkCountdown) {
        if (applyPkCountdown.getTime() == -100) {
            this.B.removeCallbacks(this.f18509m5);
        }
        if (com.guochao.faceshow.aaspring.modulars.live.common.x.n().p() == 1) {
            getCurrentLiveRoom().setApplyPkState(true);
            LiveChatFragment liveChatFragment = this.f18532y;
            if (liveChatFragment != null) {
                liveChatFragment.refreshPkBtn();
            }
        }
    }

    @Override // d9.e
    public void onAtSomebody(String str, String str2) {
        List<d9.e> list = getList();
        for (int i9 = 0; i9 < list.size(); i9++) {
            list.get(i9).onAtSomebody(str, str2);
        }
    }

    public boolean onBack() {
        ViewStub viewStub;
        LiveRoomView liveRoomView;
        for (Fragment fragment : getActivity().getSupportFragmentManager().getFragments()) {
            if ((fragment instanceof LiveSignCenterDialog) && fragment.isAdded() && !fragment.isDetached()) {
                ((LiveSignCenterDialog) fragment).dismissAllowingStateLoss();
                return true;
            }
        }
        BigGiftBoxFragment bigGiftBoxFragment = this.H;
        if (bigGiftBoxFragment != null && bigGiftBoxFragment.isAdded()) {
            Z3(R.id.big_gift_box_area);
            this.H = null;
            q3();
            return true;
        } else if (getCurrentLiveRoom().isBroadCaster() || ((getActivity() instanceof WatchLiveRoomActivity) && (liveRoomView = ((WatchLiveRoomActivity) getActivity()).mViewPager2) != null && liveRoomView.getAdapter() != null && liveRoomView.getCurrentItem() >= liveRoomView.getAdapter().getItemCount() - 1)) {
            return false;
        } else {
            View view = this.f18492e;
            if (view == null || view.getVisibility() != 0) {
                UserGuideTouchView userGuideTouchView = this.f18494f;
                if ((userGuideTouchView == null || userGuideTouchView.getVisibility() != 0) && ja.a.b().f("KEY_SLIDE_TO_SEE_MORE_LIVE") && getView() != null && (viewStub = (ViewStub) getView().findViewById(R.id.user_guide_stub)) != null) {
                    View inflate = viewStub.inflate();
                    this.f18492e = inflate;
                    SvgaImageViewUtils.getParser().decodeFromInputStream(getResources().openRawResource(R.raw.user_guide_slide_to_see_more_live_room), "slide_to_see_more", new y((SVGAImageView) inflate.findViewById(R.id.svga)), true);
                    ((TextView) this.f18492e.findViewById(R.id.text)).setText(R.string.user_guide_slide_to_see_more);
                    this.f18492e.setVisibility(0);
                    this.mLiveScrollToClearScreenView.setTouchEnabled(false);
                    if (getActivity() instanceof v0) {
                        ((v0) getActivity()).w(this.f18506l);
                    }
                    this.f18492e.setOnClickListener(new z());
                    return true;
                }
                return false;
            }
            return false;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onCancelPkMessage(CancelPkData cancelPkData) {
        if (cancelPkData.getToUserId().equals(getCurrentLiveRoom().getBroadCasterUserId()) && getCurrentLiveRoom().isBroadCaster()) {
            this.B.removeCallbacks(this.f18509m5);
            if (com.guochao.faceshow.aaspring.modulars.live.common.x.n().u()) {
                return;
            }
            getCurrentLiveRoom().setInPkMode(false);
            getCurrentLiveRoom().setApplyPkState(false);
            getCurrentLiveRoom().setPkWaiting(false);
            LiveChatFragment liveChatFragment = this.f18532y;
            if (liveChatFragment != null) {
                liveChatFragment.setPkState(true);
                ToastUtils.debugToast(getContext(), "对方取消PK 恢复按钮");
                this.f18532y.refreshPkBtn();
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getActivity() instanceof d9.a) {
            this.B3 = (d9.a) getActivity();
        }
        if (this instanceof BroadCastFragment) {
            this.f18484a2 = true;
        }
        c8.b.k().registerChangeListener(this);
        p9.a.g().c(this);
    }

    @Override // p9.a.e
    public /* synthetic */ void onCrystalsChanged(int i9) {
        p9.b.a(this, i9);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        a4();
        this.f18528w.x();
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
        if (y2(false) != null && y2(false).isPushing()) {
            y2(false).stopAll();
        }
        c8.b.k().unRegisterChangeListener(this);
        p9.a.g().r(this);
        this.J5.cancel();
    }

    @Override // p9.a.e
    public void onDiamondsChanged(int i9) {
        if (getCurrentUser().getRecharged() == 1) {
            ViewGroup viewGroup = this.firstRechargeLay;
            if (viewGroup != null) {
                viewGroup.setVisibility(8);
            }
            ViewGroup viewGroup2 = this.firstRechargeLayVoice;
            if (viewGroup2 != null) {
                viewGroup2.setVisibility(8);
            }
        }
    }

    @Override // com.guochao.faceshow.utils.Foreground.OnForegroundStateChangedListener
    public void onEnterBackground() {
        UserStateHolder.setIsLiveOnHome(true);
        LiveLinkMicPlayAdapter liveLinkMicPlayAdapter = this.X4;
        if (liveLinkMicPlayAdapter != null) {
            liveLinkMicPlayAdapter.onEnterBackground();
        }
    }

    @Override // com.guochao.faceshow.utils.Foreground.OnForegroundStateChangedListener
    public void onEnterForeground() {
        LiveLinkMicPlayAdapter liveLinkMicPlayAdapter = this.X4;
        if (liveLinkMicPlayAdapter != null) {
            liveLinkMicPlayAdapter.onEnterForeground();
        }
    }

    public void onEnterRoom(String str) {
        this.f18524u = str;
        v3(c9.a.i());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onGiftMessageRefresh(GiftMessageRefresh giftMessageRefresh) {
        List<LiveMessageModel<BaseLiveMessage>> list = this.f18501i5;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (LiveMessageModel<BaseLiveMessage> liveMessageModel : this.f18501i5) {
            sendLiveMessage(liveMessageModel, (e.a<Boolean>) null);
        }
        this.f18501i5.clear();
    }

    public void onLinkMicStatusChanged(boolean z10) {
        getCurrentLiveRoom().setRequestLinkMicEnabled(z10);
        List<d9.e> list = getList();
        for (int i9 = 0; i9 < list.size(); i9++) {
            list.get(i9).onLinkMicStatusChanged(z10);
        }
    }

    public void onLiveFinish(int i9, String str) {
        List<PromotionData.ResultItem> fullScreenLive;
        getCurrentLiveRoom().setStatus("1");
        BigGiftBoxFragment bigGiftBoxFragment = this.H;
        if (bigGiftBoxFragment != null && bigGiftBoxFragment.isAdded()) {
            getChildFragmentManager().beginTransaction().remove(this.H).commitNowAllowingStateLoss();
        }
        com.guochao.faceshow.views.g gVar = this.F;
        if (gVar != null) {
            gVar.cancel();
            this.F = null;
        }
        List<d9.e> list = getList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            list.get(i10).onLiveFinish(i9, str);
        }
        LiveUserInfoFragment liveUserInfoFragment = this.f18534z;
        if (liveUserInfoFragment != null) {
            liveUserInfoFragment.onLiveFinish();
        }
        DanmuView danmuView = this.mIDanmakuView;
        if (danmuView != null) {
            danmuView.i();
        }
        if (this.f18502j != null && c8.b.k().m() && (fullScreenLive = c8.b.k().j().result.getFullScreenLive()) != null) {
            for (PromotionData.ResultItem resultItem : fullScreenLive) {
                this.f18502j.s(resultItem.f26120id, false);
            }
        }
        if (getActivity() instanceof BaseLiveActivity) {
            ((BaseLiveActivity) getActivity()).n0(getCurrentLiveRoom());
        }
        List<d9.m> list2 = this.S4;
        if (list2 != null) {
            for (d9.m mVar : list2) {
                if (mVar != null) {
                    mVar.F0(this, i9, str);
                }
            }
        }
    }

    @Override // d9.e
    public void onNetworkLose(int i9) {
        List<d9.e> list = getList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            list.get(i10).onNetworkLose(i9);
        }
    }

    public void onNetworkResume(int i9) {
        List<d9.e> list = getList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            list.get(i10).onNetworkResume(i9);
        }
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.d.a
    public void onNewMessage(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        if (this.f18506l == null || getActivity() == null || !isAdded()) {
            return;
        }
        if ((aVar.getConversationType() != 2 || Objects.equals(aVar.getConversationId(), getCurrentLiveRoom().getChatGroupId())) && (aVar instanceof LiveMessage)) {
            C2(((LiveMessage) aVar).m354getWrappedMessage());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPictureInPictureModeChanged(boolean z10) {
        super.onPictureInPictureModeChanged(z10);
        this.U4 = z10;
    }

    @Override // d9.e
    public /* synthetic */ void onPlayMusicAnim(String str, String str2, int i9) {
        d9.d.a(this, str, str2, i9);
    }

    @Override // d9.e
    public void onPlaySuccess() {
        List<d9.e> list = getList();
        for (int i9 = 0; i9 < list.size(); i9++) {
            list.get(i9).onPlaySuccess();
        }
    }

    public void onQuitLiveRoom(boolean z10, boolean z11) {
        View findViewById;
        if (this.f18507l5) {
            if (!(this.f18506l instanceof RoomItemData) || z8.c.o().w((RoomItemData) this.f18506l)) {
                return;
            }
            TXIMUtils.quitGroup(this.f18506l.getChatGroupId(), new m());
            return;
        }
        HourRankAnimHelper.checkRelease((ViewGroup) getView());
        this.f18486b.reset();
        this.f18507l5 = true;
        this.f18518r = false;
        LiveMusicActivityView liveMusicActivityView = this.f18502j;
        if (liveMusicActivityView != null) {
            liveMusicActivityView.x(false, false);
        }
        sa.c cVar = this.f18528w;
        if (cVar != null) {
            cVar.x();
        }
        EditText editText = this.mEditText;
        if (editText != null) {
            editText.setText("");
        }
        a4();
        z3();
        if (getView() != null && (findViewById = getView().findViewById(R.id.live_game_area)) != null) {
            findViewById.setVisibility(8);
        }
        AddZanHeartView addZanHeartView = this.mPeriscopeLayout;
        if (addZanHeartView != null) {
            addZanHeartView.h();
        }
        View view = this.smallMiniGameLay;
        if (view != null) {
            view.setVisibility(8);
        }
        l2();
        for (d9.e eVar : getList()) {
            eVar.onQuitLiveRoom(false, false);
        }
        o3(z10);
        LiveLinkMicPlayAdapter liveLinkMicPlayAdapter = this.X4;
        if (liveLinkMicPlayAdapter != null) {
            liveLinkMicPlayAdapter.g(z10);
        }
        LivePlayMaskAdapter livePlayMaskAdapter = this.Y4;
        if (livePlayMaskAdapter != null) {
            livePlayMaskAdapter.g(z10);
        }
        LiveVideoAudioMaskAdapter liveVideoAudioMaskAdapter = this.Z4;
        if (liveVideoAudioMaskAdapter != null) {
            liveVideoAudioMaskAdapter.g(z10);
        }
        FrameLayout frameLayout = this.mRunwayMessageViewArea;
        if (frameLayout != null) {
            frameLayout.clearAnimation();
            this.mRunwayMessageViewArea.setVisibility(8);
        }
        this.f18497g5.clear();
        this.B.removeMessages(0);
        com.guochao.faceshow.views.g gVar = this.F;
        if (gVar != null) {
            gVar.cancel();
            this.F = null;
        }
        this.D.clear();
        this.E.clear();
        Z3(R.id.big_gift_box_area);
        Z3(R.id.live_game_area);
        Z3(R.id.web_live_game_area);
        this.H = null;
        com.guochao.faceshow.aaspring.modulars.live.common.a.m().q();
        this.C = null;
        this.Q = false;
        UserStateHolder.setIsLivingInMic(false);
        View view2 = this.giftAndAdsView;
        if (view2 != null) {
            view2.setVisibility(4);
        }
        this.f18484a2 = false;
        this.f18520s = false;
        com.guochao.faceshow.aaspring.modulars.live.common.a.m().i();
        View view3 = this.f18492e;
        if (view3 != null && view3.getVisibility() == 0) {
            this.f18492e.setVisibility(8);
        }
        r2();
        DanmuView danmuView = this.mIDanmakuView;
        if (danmuView != null) {
            danmuView.i();
        }
        com.guochao.faceshow.aaspring.modulars.live.game.f fVar = this.P4;
        if (fVar != null) {
            fVar.s();
        }
        c9.a.i().u();
        b9.a.a().d();
        List<d9.m> list = this.S4;
        if (list != null) {
            for (d9.m mVar : list) {
                mVar.N0(this, z10, z11);
            }
        }
        ViewGroup viewGroup = this.firstRechargeLay;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
            ((LinearLayout.LayoutParams) this.firstRechargeLay.getLayoutParams()).gravity = GravityCompat.END;
        }
    }

    @Override // d9.e
    public void onReceiveFaceGift(GiftLiveMessage giftLiveMessage) {
        List<d9.e> list = getList();
        for (int i9 = 0; i9 < list.size(); i9++) {
            list.get(i9).onReceiveFaceGift(giftLiveMessage);
        }
        LiveMusicActivityView liveMusicActivityView = this.f18502j;
        if (liveMusicActivityView != null) {
            liveMusicActivityView.r(giftLiveMessage);
        }
        if (getCurrentLiveRoom().isMultiLiveRoom()) {
            this.f18486b.anim(giftLiveMessage);
        }
    }

    @Override // d9.e
    public void onReceiveHugeGift(LiveMessageModel liveMessageModel) {
        if (!(this instanceof WatcherLiveRoomFragment) || this.Q4) {
            List<d9.e> list = getList();
            for (int i9 = 0; i9 < list.size(); i9++) {
                list.get(i9).onReceiveHugeGift(liveMessageModel);
            }
            LiveMusicActivityView liveMusicActivityView = this.f18502j;
            if (liveMusicActivityView != null) {
                liveMusicActivityView.r(liveMessageModel.getData());
            }
            if (getCurrentLiveRoom().isMultiLiveRoom()) {
                this.f18486b.anim((GiftLiveMessage) liveMessageModel.getData());
            }
        }
    }

    @Override // d9.e
    public <T extends BaseLiveMessage> void onReceiveLiveMessage(LiveMessageModel<T> liveMessageModel) {
        List<d9.e> list = getList();
        for (int i9 = 0; i9 < list.size(); i9++) {
            list.get(i9).onReceiveLiveMessage(liveMessageModel);
        }
        if ("LIVE_SEND_GIFT".equals(liveMessageModel.getCmd())) {
            GiftLiveMessage giftLiveMessage = (GiftLiveMessage) liveMessageModel.getData();
            if (giftLiveMessage.getIsGiftAllSend() == 1) {
                this.B.post(new s(giftLiveMessage));
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.d.a
    public /* synthetic */ void onRecvMessageRevoked(String str) {
        a8.b.a(this, str);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        LivePlayGiftFragment livePlayGiftFragment = this.T4;
        if (livePlayGiftFragment != null) {
            livePlayGiftFragment.T1();
        }
        sa.c cVar = this.f18528w;
        if (cVar != null) {
            cVar.s();
        }
        UserStateHolder.setIsLiveOnHome(false);
        if (getView() != null && getView().findViewById(R.id.live_activity_view) != null) {
            ((LiveActivityView) getView().findViewById(R.id.live_activity_view)).I();
        }
        AddZanHeartView addZanHeartView = this.mPeriscopeLayout;
        if (addZanHeartView != null) {
            addZanHeartView.l();
        }
    }

    @Override // d9.e
    public void onSelfMute(boolean z10) {
        getCurrentLiveRoom().setMute(z10);
        for (d9.e eVar : getList()) {
            eVar.onSelfMute(z10);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.manager.i.InterfaceC0154i
    public void onServerConfigChanged(ServerConfig serverConfig, ServerConfig serverConfig2) {
        super.onServerConfigChanged(serverConfig, serverConfig2);
        LiveChatFragment liveChatFragment = this.f18532y;
        if (liveChatFragment == null || !liveChatFragment.isAdded()) {
            return;
        }
        this.f18532y.onServerConfigChanged(serverConfig, serverConfig2);
    }

    @Override // com.guochao.pusher.base.ILivePusher.PushSoundLevelListener
    public void onSoundLevel(float f10) {
        if (this.f18531x5 || this.f18533y5 || f10 <= 15.0f) {
            return;
        }
        LiveMessageModel<VolumeMessage> createVolumeModel = LiveMessageModelFactory.createVolumeModel(f10);
        sendLiveMessage(createVolumeModel, (e.a<Boolean>) null);
        this.Z4.F(createVolumeModel.getData());
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        AddZanHeartView addZanHeartView = this.mPeriscopeLayout;
        if (addZanHeartView != null) {
            addZanHeartView.k();
        }
        if (this.mInputArea == null || getActivity() == null || getActivity().isFinishing()) {
            return;
        }
        Z2(0);
        y7.j jVar = new y7.j();
        jVar.f60141b = 0;
        keyboardHeight(jVar);
        LiveChatFragment liveChatFragment = this.f18532y;
        if (liveChatFragment != null && liveChatFragment.isAdded()) {
            this.f18532y.keyboardHeight(jVar);
        }
        SoftKeyBoardUtils.closeSoftKeyBoardNow(getActivity(), this.mEditText);
    }

    @Override // d9.e
    public void onUserTypeChanged(int i9) {
        getCurrentLiveRoom().setUserType(i9);
        List<d9.e> list = getList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            list.get(i10).onUserTypeChanged(i9);
        }
    }

    @OnClick
    public void openDanmu(View view) {
        if (getActivity() == null) {
            return;
        }
        boolean z10 = getCurrentUser().getUserMvpInfo() != null && getCurrentUser().getUserMvpInfo().dmSwitch == 1;
        boolean z11 = getCurrentUser().getVipLevel() == 2;
        if (!z10 && !z11) {
            this.I5 = BuyVipContainerDialogFragment.P1(3, getParentFragmentManager());
            ja.a.b().e("KEY_LIVE_DANMU");
            this.mGuideDanmu.setVisibility(8);
            return;
        }
        view.setSelected(!view.isSelected());
        Context context = getContext();
        SpUtils.setBool(context, getCurrentUser().getCurrentUserId() + "showDanmu", view.isSelected());
        if (view.isSelected() && z10) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.mvp_bullet_chat_click, "1");
        } else if (z10) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.mvp_bullet_chat_click, "0");
        }
        this.mGuideDanmu.setVisibility(8);
        ja.a.b().e("KEY_LIVE_DANMU");
    }

    @Override // d9.g
    public void p(String str) {
        sendLiveMessage(LiveMessageModelFactory.createRejectLinkMicModel(str), (e.a<Boolean>) null);
    }

    @Override // d9.g
    public void p1(boolean z10, @Nullable String str, String str2, d9.h hVar) {
        if (str == null) {
            str = getCurrentUser().userId;
        }
        boolean z11 = (this instanceof BroadCastFragment) && getCurrentUser().getUserId().equals(str);
        f fVar = new f(z10, str, str2, hVar, z11);
        if (z11) {
            post("tokens/live/newLive/updateLiveInfo").v("liveId", getCurrentLiveRoom().getLiveRoomId()).v("matchType", z10 ? "2" : "1").I(3).M(fVar);
        } else {
            post("tokens/live/microphone/updateVoiceStatusOrLiveType").v("matchType", z10 ? "2" : "1").v("audienceId", str).v("liveId", getCurrentLiveRoom().getLiveRoomId()).v("ifUpdateAudience", Integer.valueOf(!getCurrentLiveRoom().isBroadCaster())).I(3).M(fVar);
        }
    }

    public void p3() {
        if (getCurrentLiveRoom().getApplyPkState()) {
            com.guochao.faceshow.aaspring.modulars.live.common.x.n().e();
            com.guochao.faceshow.aaspring.modulars.live.common.x.n().d();
        }
        getCurrentLiveRoom().setInPkMode(false);
        getCurrentLiveRoom().setApplyPkState(false);
        getCurrentLiveRoom().setPkWaiting(false);
        LiveChatFragment liveChatFragment = this.f18532y;
        if (liveChatFragment != null) {
            liveChatFragment.setPkState(true);
        }
    }

    public boolean q2() {
        LiveScrollToClearScreenView liveScrollToClearScreenView = this.mLiveScrollToClearScreenView;
        if (liveScrollToClearScreenView == null || !liveScrollToClearScreenView.f23817c) {
            return false;
        }
        this.f18497g5.clear();
        return true;
    }

    public void q3() {
        ViewGroup viewGroup;
        if (getCurrentUser().getRegType() == 2) {
            return;
        }
        if (this.F == null) {
            k kVar = new k(2147483647L, 1000L);
            this.F = kVar;
            kVar.start();
        }
        int size = this.D.size();
        if (size > 0) {
            String timeToString = TimeUtil.timeToString(this.D.get(0).getPhoneEndTime() - System.currentTimeMillis(), false);
            TextView textView = this.mTextViewBigGiftBoxCount;
            if (textView != null) {
                textView.setText(size + "");
            }
            TextView textView2 = this.mTextViewCountDownGift;
            if (textView2 != null) {
                textView2.setText(timeToString);
            }
        }
        if (this.E.size() > 0 && this.H == null) {
            TreasureMessage.BigGiftBox remove = this.E.remove(0);
            if (this.I) {
                return;
            }
            BigGiftBoxFragment W1 = BigGiftBoxFragment.W1(remove);
            this.H = W1;
            u3(R.id.big_gift_box_area, W1);
            return;
        }
        if (size <= 0) {
            TextView textView3 = this.mTextViewBigGiftBoxCount;
            if (textView3 != null) {
                textView3.setVisibility(8);
            }
        } else {
            TextView textView4 = this.mTextViewBigGiftBoxCount;
            if (textView4 != null) {
                textView4.setVisibility(0);
            }
        }
        if (size > 0) {
            View view = this.mViewGiftBox;
            if (view != null) {
                view.setVisibility(0);
            }
            if (getCurrentLiveRoom().isVoiceRoom() && getView().findViewById(R.id.chat_fragment).getLayoutParams().height < DensityUtil.dp2px(60.0f) + DensityUtil.dp2px(75.0f) + DensityUtil.dp2px(70.0f) + DensityUtil.dp2px(30.0f) && (viewGroup = this.firstRechargeLayVoice) != null) {
                viewGroup.setVisibility(8);
            }
        } else {
            View view2 = this.mViewGiftBox;
            if (view2 != null) {
                view2.setVisibility(8);
            }
            R3();
        }
        TextView textView5 = this.mTextViewBigGiftBoxCount;
        if (textView5 != null) {
            textView5.setText(size + "");
        }
        if (size > 0) {
            TreasureMessage.BigGiftBox bigGiftBox = this.D.get(0);
            this.iconBigBox.setImageResource(bigGiftBox.getBoxType() == 1 ? R.mipmap.icon_happy_close_box : R.mipmap.icon_zb_close_box);
            this.mViewGiftBox.setTag(Integer.valueOf(bigGiftBox.getBoxType()));
            long phoneEndTime = bigGiftBox.getPhoneEndTime();
            String timeToString2 = TimeUtil.timeToString(phoneEndTime - System.currentTimeMillis(), false);
            TextView textView6 = this.mTextViewCountDownGift;
            if (textView6 != null) {
                textView6.setText(timeToString2);
            }
            if (phoneEndTime < System.currentTimeMillis()) {
                this.D.remove(0);
                q3();
            } else if (phoneEndTime - 6000 < System.currentTimeMillis()) {
                TreasureMessage.BigGiftBox bigGiftBox2 = this.D.get(0);
                BigGiftBoxFragment bigGiftBoxFragment = this.H;
                if (bigGiftBoxFragment != null && bigGiftBoxFragment.isAdded()) {
                    TreasureMessage.BigGiftBox bigGiftBox3 = this.H.f19953d;
                    if ((bigGiftBox3 == null || !bigGiftBox3.getTreasureId().equals(bigGiftBox2.getTreasureId())) && !this.E.contains(bigGiftBox2)) {
                        this.E.add(bigGiftBox2);
                        return;
                    }
                    return;
                }
                if (!this.I) {
                    BigGiftBoxFragment W12 = BigGiftBoxFragment.W1(bigGiftBox2);
                    this.H = W12;
                    u3(R.id.big_gift_box_area, W12);
                }
                if (this.W4 != phoneEndTime) {
                    this.W4 = phoneEndTime;
                    q3();
                }
            }
        }
    }

    @Override // d9.g
    public void r(LiveMicApplyResult liveMicApplyResult) {
        sendLiveMessage(LiveMessageModelFactory.createApplyLinkMicModel(liveMicApplyResult), (e.a<Boolean>) null);
    }

    @Override // com.guochao.faceshow.aaspring.views.LiveScrollToClearScreenView.b
    public void r0(LiveScrollToClearScreenView liveScrollToClearScreenView) {
        if (getView() != null && getView().findViewById(R.id.live_game_area) != null && c9.a.i().j()) {
            getView().findViewById(R.id.live_game_area).setVisibility(0);
        }
        this.B.removeCallbacks(this.G5);
        F3(true);
        ja.a.b().e("KEY_SWIPE_TO_SHOW_LIVE_CHAT");
        UserGuideTouchView userGuideTouchView = this.f18494f;
        if (userGuideTouchView != null && userGuideTouchView.getVisibility() == 0) {
            this.f18494f.setVisibility(8);
        }
        if (getView() != null) {
            getView().findViewById(R.id.live_join_middle_tips_ly).setVisibility(0);
        }
        com.guochao.faceshow.aaspring.modulars.live.game.f fVar = this.P4;
        if (fVar != null) {
            fVar.m0();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void r2() {
        try {
            PopupWindow popupWindow = this.H5;
            if (popupWindow == null || !popupWindow.isShowing()) {
                return;
            }
            this.H5.dismiss();
            this.H5 = null;
        } catch (Exception unused) {
        }
    }

    public /* synthetic */ void s() {
        d9.f.g(this);
    }

    public void s2(FragmentManager fragmentManager) {
        if (fragmentManager == null) {
            return;
        }
        for (Fragment fragment : fragmentManager.getFragments()) {
            if (fragment != null) {
                s2(fragment.getChildFragmentManager());
                if (fragment instanceof BaseDialogFragment) {
                    BaseDialogFragment baseDialogFragment = (BaseDialogFragment) fragment;
                    if (baseDialogFragment.getDialog() != null && baseDialogFragment.getDialog().isShowing()) {
                        try {
                            baseDialogFragment.dismissAllowingStateLoss();
                        } catch (Exception e10) {
                            LogUtils.e("LiveRoom", "dismissAllDialog: ", e10);
                        }
                    }
                } else if (fragment instanceof GCCoreFragment) {
                    GCCoreFragment gCCoreFragment = (GCCoreFragment) fragment;
                    if (gCCoreFragment.getShowsDialog()) {
                        gCCoreFragment.dismissAllowingStateLoss();
                    }
                }
            }
        }
    }

    public void s3(int i9) {
        if (this.mRequestLinkCountTextView != null && getCurrentLiveRoom().isBroadCaster()) {
            if (i9 < 0) {
                i9 = 0;
            }
            this.G = i9;
            TextView textView = this.mRequestLinkCountTextView;
            textView.setText(i9 + "");
            if (this.G <= 0) {
                this.mRequestLinkCountTextView.setVisibility(4);
            } else {
                this.mRequestLinkCountTextView.setVisibility(0);
            }
        }
    }

    @OnClick
    public void send(View view) {
        C3(true);
    }

    @Override // d9.e
    public <T extends BaseLiveMessage> void sendC2CLiveMessage(@NonNull String str, @NonNull LiveMessageModel<T> liveMessageModel, @Nullable e.a<Boolean> aVar) {
        if (liveMessageModel.getData() != null) {
            liveMessageModel.getData().setToUserId(str);
        }
        n3(liveMessageModel);
        SendMessageHandle.sendOnlineMessage(str, "", liveMessageModel.buildMessage(), liveMessageModel.getPriority(), new r(aVar));
    }

    @Override // d9.e
    public <T extends BaseLiveMessage> void sendLiveMessage(LiveMessageModel<T> liveMessageModel, e.a<Boolean> aVar) {
        LiveChatFragment liveChatFragment;
        if (this.f18524u == null) {
            if (aVar != null) {
                aVar.a(1, "尚未加入到群组", Boolean.FALSE);
            }
            print("LiveRoom", "尚未加入群组");
            return;
        }
        n3(liveMessageModel);
        if ("LIVE_FOLLOW_ANCHOR".equals(liveMessageModel.getCmd()) && (liveChatFragment = this.f18532y) != null) {
            liveChatFragment.onReceiveLiveMessage(liveMessageModel);
        }
        if ("LIVE_SHARE".equals(liveMessageModel.getCmd()) && this.f18532y != null) {
            liveMessageModel.getData().setType(BaseLiveMessage.TYPE_SHARE);
            this.f18532y.onReceiveLiveMessage(liveMessageModel);
        }
        if ("LIVE_SEND_GIFT".equals(liveMessageModel.getCmd()) && getCurrentLiveRoom().isInPkMode()) {
            long giftBCoinValue = this.N + ((GiftLiveMessage) liveMessageModel.getData()).getGiftBCoinValue();
            this.N = giftBCoinValue;
            y1(giftBCoinValue);
        }
        if (this.H4) {
            String content = liveMessageModel.getData().getContent();
            if ("LIVE_CUSTOM_MSG".equals(liveMessageModel.getCmd()) && !TextUtils.isEmpty(content)) {
                String[] strArr = L5;
                if (content.equals(strArr[0]) && content.equals(strArr[1])) {
                    return;
                }
                strArr[0] = strArr[1];
                strArr[1] = content;
            }
            SendMessageHandle.sendMessage("", this.f18524u, liveMessageModel.buildMessage(), liveMessageModel.getPriority(), new o(liveMessageModel, aVar));
        }
    }

    @Override // d9.e
    public void sendLiveMessageCmd(@NonNull String str, e.a<Boolean> aVar) {
        sendLiveMessage(LiveMessageModel.getBaseModel(str, this.f18506l), aVar);
    }

    @OnClick
    @Optional
    public void showLinkMic(View view) {
        if (FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing()) {
            showToast(R.string.one_v_one_is_matching);
        } else if ((this instanceof WatcherLiveRoomFragment) && com.guochao.faceshow.aaspring.manager.i.u().s().getUserLiveBanned() != 0 && com.guochao.faceshow.aaspring.manager.i.u().s().getLiveOperationVo() != null) {
            String reasonMsgLang = com.guochao.faceshow.aaspring.manager.i.u().s().getLiveOperationVo().getReasonMsgLang();
            if (TextUtils.isEmpty(reasonMsgLang)) {
                reasonMsgLang = com.guochao.faceshow.aaspring.manager.i.u().s().getLiveOperationVo().getReasonMsg();
            }
            com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(getActivity());
            eVar.j();
            if (TextUtils.isEmpty(reasonMsgLang)) {
                reasonMsgLang = "";
            }
            eVar.f(reasonMsgLang);
            eVar.show();
        } else if (getCurrentLiveRoom().isFreeLinkMic()) {
            if (MicroPhoneLevelHelper.INSTANCE.checkMicroPhoneLevel(getCurrentLiveRoom().isMultiLiveRoom()) || com.guochao.faceshow.aaspring.modulars.live.common.a.m().o()) {
                return;
            }
            new com.tbruyelle.rxpermissions2.a(this).p(MainMenuDialogFragment.f20736c).subscribe(new s0());
        } else {
            ApplyConversationListDialogFragment applyConversationListDialogFragment = this.C;
            if (applyConversationListDialogFragment != null && applyConversationListDialogFragment.getDialog() != null) {
                this.C.e2();
            }
            if (this.C == null) {
                this.C = new ApplyConversationListDialogFragment();
            }
            if (this.C.getDialog() == null || !this.C.getDialog().isShowing()) {
                this.C.show(getChildFragmentManager(), "apply");
            }
        }
    }

    @Override // d9.g
    public void t(String str, String str2) {
        if (this.f18534z != null && !TextUtils.isEmpty(str) && Objects.equals(str2, getCurrentLiveRoom().getBroadCasterUserId())) {
            this.f18534z.onFocusState(str);
        }
        PKLiveInfoFragment pKLiveInfoFragment = this.C4;
        if (pKLiveInfoFragment != null) {
            pKLiveInfoFragment.t(str, str2);
        }
    }

    public void t2() {
        InviteThePkDialogFragment inviteThePkDialogFragment = this.E5;
        if (inviteThePkDialogFragment != null) {
            inviteThePkDialogFragment.dismissAllowingStateLoss();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void t3(boolean z10) {
        ViewGroup viewGroup;
        MultiLivePlayView multiLivePlayView = this.mVideoRecyclerView;
        if (multiLivePlayView == null || this.mRequestLink == null || (viewGroup = (ViewGroup) multiLivePlayView.getParent()) == null) {
            return;
        }
        int measuredHeight = viewGroup.getMeasuredHeight();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) ((ViewGroup) this.mRequestLink.getParent()).getLayoutParams();
        if (getCurrentLiveRoom() != null) {
            if (getCurrentLiveRoom().isMultiLiveRoom()) {
                marginLayoutParams.bottomMargin = DensityUtil.dp2px(70.0f);
            } else {
                if (getView() != null) {
                    measuredHeight = getView().getMeasuredHeight();
                }
                marginLayoutParams.bottomMargin = measuredHeight - ((int) (measuredHeight * 0.6458333f));
                if (this.firstRechargeLay.getVisibility() == 0) {
                    i4();
                }
            }
        }
        ((ViewGroup) this.mRequestLink.getParent()).setLayoutParams(marginLayoutParams);
        LiveChatFragment liveChatFragment = this.f18532y;
        if (liveChatFragment != null) {
            boolean z11 = this.Q;
            LiveMusicActivityView liveMusicActivityView = this.f18502j;
            liveChatFragment.refreshChatMargin(z10, z11, liveMusicActivityView != null && liveMusicActivityView.n());
        }
    }

    public /* synthetic */ void u1(long j10, int i9) {
        d9.f.e(this, j10, i9);
    }

    public void u2() {
        PkRecordDialogFragment pkRecordDialogFragment = this.D5;
        if (pkRecordDialogFragment != null) {
            pkRecordDialogFragment.dismissAllowingStateLoss();
        }
    }

    public void u3(int i9, Fragment fragment) {
        UserGuideTouchView userGuideTouchView;
        Fragment fragment2;
        if (isAdded()) {
            if (i9 == R.id.pk_info_area && (fragment2 = this.A.get(R.id.pk_info_area)) != null) {
                this.A.remove(R.id.pk_info_area);
                getChildFragmentManager().beginTransaction().remove(fragment2).commitNowAllowingStateLoss();
            }
            this.A.put(i9, fragment);
            getChildFragmentManager().beginTransaction().replace(i9, fragment).commitNowAllowingStateLoss();
            if (i9 != R.id.big_gift_box_area || (userGuideTouchView = this.f18494f) == null) {
                return;
            }
            userGuideTouchView.setTouchEnabled(true);
        }
    }

    public void v2() {
        PkSelectFriendsDialogFragment pkSelectFriendsDialogFragment = this.C5;
        if (pkSelectFriendsDialogFragment != null) {
            pkSelectFriendsDialogFragment.dismissAllowingStateLoss();
        }
    }

    public void v3(d9.m mVar) {
        if (this.S4 == null) {
            this.S4 = new ArrayList();
        }
        this.S4.add(mVar);
    }

    @Override // c8.b.c
    public void w() {
        LiveMusicActivityView liveMusicActivityView = this.f18502j;
        if (liveMusicActivityView != null && liveMusicActivityView.k() != null) {
            this.f18502j.k().setVisibility(8);
        }
        A3(false);
    }

    public void w2() {
        PkTypeSelectDialogFragment pkTypeSelectDialogFragment = this.B5;
        if (pkTypeSelectDialogFragment != null) {
            pkTypeSelectDialogFragment.dismissAllowingStateLoss();
        }
    }

    public void w3() {
    }

    @Override // d9.g
    public /* synthetic */ boolean x0() {
        return d9.f.d(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void x2() {
        if (getCurrentLiveRoom().isVoiceRoom() || !ja.a.b().f("KEY_SWIPE_TO_DISMISS_LIVE_CHAT") || this.I) {
            return;
        }
        if (this.H4 || !(this instanceof WatcherLiveRoomFragment)) {
            if (this.f18494f == null && getView() != null) {
                UserGuideTouchView userGuideTouchView = (UserGuideTouchView) ((ViewStub) getView().findViewById(R.id.user_guide_swipe_to_dismiss_stub)).inflate();
                this.f18494f = userGuideTouchView;
                userGuideTouchView.setLiveScrollToClearScreenView(this.mLiveScrollToClearScreenView);
                this.f18494f.setOnClickListener(new a0());
                this.f18494f.setTouchEnabled(this.H == null);
            }
            SvgaImageViewUtils.getParser().decodeFromInputStream(getResources().openRawResource(Language.ARABIC.equalsIgnoreCase(q7.a.e().c()) ? R.raw.user_guide_swipe_to_show : R.raw.user_guide_swipe_to_dismiss), "swipe_to_dismiss", new b0((SVGAImageView) this.f18494f.findViewById(R.id.svga)), true);
            ((TextView) this.f18494f.findViewById(R.id.text)).setText(R.string.user_guide_swipe_to_dismiss);
            this.f18494f.setVisibility(0);
            this.G4 = "KEY_SWIPE_TO_DISMISS_LIVE_CHAT";
            F3(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void x3() {
        y3(false);
    }

    public GCLivePusher y2(boolean z10) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void y3(boolean z10) {
        this.E4 = true;
        if (isAdded() && getActivity() != null) {
            FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
            LittlePusherFragment littlePusherFragment = this.P;
            if (littlePusherFragment != null && littlePusherFragment.isAdded()) {
                beginTransaction.remove(this.P);
                this.P = null;
            }
            LittlePlayerFragment littlePlayerFragment = this.f18525u5;
            if (littlePlayerFragment != null && littlePlayerFragment.isAdded()) {
                beginTransaction.remove(this.f18525u5);
                this.f18525u5 = null;
            }
            LittleLinkMicInfoFragment littleLinkMicInfoFragment = this.M;
            if (littleLinkMicInfoFragment != null && littleLinkMicInfoFragment.isAdded()) {
                beginTransaction.remove(this.M);
                this.M = null;
            }
            z3();
            beginTransaction.commitNowAllowingStateLoss();
            l2();
            t3(false);
        }
    }

    @Override // d9.g
    public void z0(int i9, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, String str, String str2) {
        if (c8.b.k().m()) {
            for (PromotionData.ResultItem resultItem : c8.b.k().j().result.getFullScreenLive()) {
                for (PromotionData.ActivityGiftEntity activityGiftEntity : resultItem.appActivityGiftEntityList) {
                    if (activityGiftEntity != null && activityGiftEntity.getGiftId() == resourceListItemBean.getId()) {
                        activityGiftEntity.setSendCount(activityGiftEntity.getSendCount() + i9);
                    }
                }
            }
            LiveMusicActivityView liveMusicActivityView = this.f18502j;
            if (liveMusicActivityView != null) {
                liveMusicActivityView.u();
            }
        }
    }

    @Override // d9.g
    public boolean z1() {
        return this.Q;
    }

    public List<LiveInfoMatchBean> z2() {
        return this.J;
    }

    @Override // d9.e
    public void sendLiveMessage(@NonNull String str, e.a<Boolean> aVar) {
        LiveMessageModel<BaseLiveMessage> baseModel = LiveMessageModel.getBaseModel("LIVE_CUSTOM_MSG", this.f18506l);
        baseModel.getData().setContent(str);
        sendLiveMessage(baseModel, aVar);
    }
}
