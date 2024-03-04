package com.guochao.faceshow.aaspring.modulars.live.common;

import android.media.MediaPlayer;
import android.os.Handler;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.Space;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.SimpleItemAnimator;
import butterknife.BindView;
import butterknife.OnClick;
import butterknife.Optional;
import com.facebook.share.widget.ShareDialog;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.AppResource;
import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.beans.ShareContentBean;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.config.ServerConfig;
import com.guochao.faceshow.aaspring.modulars.gift.GiftSender;
import com.guochao.faceshow.aaspring.modulars.gift.SendGiftRequestModel;
import com.guochao.faceshow.aaspring.modulars.gift.SendGiftResponseModel;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.HandyGifViewHelper;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.aaspring.modulars.live.activity.LiveBroadCastActivity;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.modulars.live.adapter.AutoLiveChatAdapter;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.BroadCastFragment;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.viewmodel.VideoCallDuringLivingViewModel;
import com.guochao.faceshow.aaspring.modulars.live.game.MiniGameDataManager;
import com.guochao.faceshow.aaspring.modulars.live.game.PkIconLayoutHolder;
import com.guochao.faceshow.aaspring.modulars.live.hello.HelloStarHelp;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.GiftLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.live.play.PlayBottomDialogFragment;
import com.guochao.faceshow.aaspring.modulars.live.watcher.WatcherLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel;
import com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.aaspring.utils.RecyclerViewItemDecoration;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.aaspring.views.NoBottomEdgeRecyclerView;
import com.guochao.faceshow.component.live.fragment.LiveIMConversationFloatFragment;
import com.guochao.faceshow.component.live.utils.FloatFragmentUtils;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.gift.SendGiftCallBack;
import com.guochao.faceshow.gift.controller.LiveGiftPopController;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.SvgaImageViewV2;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import d9.e;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.light.utils.FileUtils;
/* loaded from: classes3.dex */
public class LiveChatFragment extends BaseLiveInfoFragment implements u8.b {
    private static final int TIME_TO_SHOW_FOCUS_TIP = 15000;
    private static final int TIME_TO_SHOW_LUCKY_GIFT = 180000;
    private static final int TIME_TO_SHOW_SHARE = 180000;
    private boolean PKstate;
    @Nullable
    @BindView
    SvgaImageViewV2 callingBtn;
    @BindView
    View floatImUnread;
    private LiveGiftPopController giftPopController;
    @Nullable
    @BindView
    TextView helloUnReadNum;
    public boolean isDelayed;
    public boolean isFirstCustomMsg;
    private long lastIMChatOrgiftTime;
    @BindView
    public ImageView liveChatBtn;
    @BindView
    View liveImBtn;
    @BindView
    LinearLayout llNewMsg;
    Runnable mAddFocusRunnable;
    Runnable mAddShareRunnable;
    GiftFragment mGiftFragment;
    PopupWindow mGiftIconTipPopupWindow;
    @BindView
    ImageView mGiftImageView;
    @Nullable
    @BindView
    public SvgaImageViewV2 mGiftSVGAImageView;
    @BindView
    public View mLiveBtns;
    @Nullable
    public AutoLiveChatAdapter mLiveChatAdapter;
    @BindView
    protected View mLiveMore;
    Runnable mLuckyGiftTipRunnable;
    private MediaPlayer mMediaPlayer;
    private PkIconLayoutHolder mPkHolder;
    private PlayBottomDialogFragment mPlayBottomDialogFragment;
    @BindView
    NoBottomEdgeRecyclerView mRecyclerView;
    private boolean mShowedShareGuide;
    @Nullable
    @BindView
    Space mSpace;
    @BindView
    View multiGame;
    @BindView
    FrameLayout newMessage;
    @Nullable
    @BindView
    View pkLayoutLive;
    private SVGAParser svgaParser;
    Handler mHandler = new Handler();
    private boolean isInPictureInPictureMode = false;
    private String tip = String.format(BaseApplication.getInstance().getString(R.string.user_guide_add_focus_tip), getCurrentUser().getUserName());
    SVGAParser.ParseCompletion callback = new f();

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftFragment f18639a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ResourceListItemBean f18640b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ LiveMessageModel f18641c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ SendGiftRequestModel f18642d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f18643e;

        a(GiftFragment giftFragment, ResourceListItemBean resourceListItemBean, LiveMessageModel liveMessageModel, SendGiftRequestModel sendGiftRequestModel, int i9) {
            this.f18639a = giftFragment;
            this.f18640b = resourceListItemBean;
            this.f18641c = liveMessageModel;
            this.f18642d = sendGiftRequestModel;
            this.f18643e = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<SendGiftResponseModel> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable SendGiftResponseModel sendGiftResponseModel, @NonNull FaceCastBaseResponse<SendGiftResponseModel> faceCastBaseResponse) {
            LiveChatFragment.this.checkLuckyGiftResult(this.f18639a, this.f18640b, sendGiftResponseModel, this.f18641c, this.f18642d);
            LiveChatFragment.this.sendGiftSuccessful(this.f18643e, this.f18641c, Long.valueOf(sendGiftResponseModel != null ? sendGiftResponseModel.getServerTime() : 0L));
            GiftFragment.trackEvent(this.f18642d, this.f18640b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements e.a<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveMessageModel f18645a;

        b(LiveMessageModel liveMessageModel) {
            this.f18645a = liveMessageModel;
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
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LiveChatFragment.this.addShareMessage(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LiveChatFragment.this.addFocusMessage();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveMessageModel f18649a;

        e(LiveMessageModel liveMessageModel) {
            this.f18649a = liveMessageModel;
        }

        @Override // java.lang.Runnable
        public void run() {
            LiveChatFragment liveChatFragment = LiveChatFragment.this;
            liveChatFragment.isDelayed = false;
            AutoLiveChatAdapter autoLiveChatAdapter = liveChatFragment.mLiveChatAdapter;
            if (autoLiveChatAdapter != null) {
                autoLiveChatAdapter.g(this.f18649a, liveChatFragment.mRecyclerView.canScrollVertically(1));
            }
            LiveChatFragment.this.mHandler.removeCallbacks(this);
        }
    }

    /* loaded from: classes3.dex */
    class f implements SVGAParser.ParseCompletion {
        f() {
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            SvgaImageViewV2 svgaImageViewV2 = LiveChatFragment.this.mGiftSVGAImageView;
            if (svgaImageViewV2 != null) {
                svgaImageViewV2.setVideoItem(sVGAVideoEntity);
                LiveChatFragment.this.mGiftSVGAImageView.startAnimation();
            }
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* loaded from: classes3.dex */
    class g implements NoBottomEdgeRecyclerView.a {
        g() {
        }

        @Override // com.guochao.faceshow.aaspring.views.NoBottomEdgeRecyclerView.a
        public void a() {
            LiveChatFragment.this.newMessage.setVisibility(8);
        }
    }

    /* loaded from: classes3.dex */
    class h implements Observer<ConversationModel> {
        h() {
        }

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void onChanged(ConversationModel conversationModel) {
            if (conversationModel instanceof ConversationModel.ConversationListModel) {
                View view = LiveChatFragment.this.floatImUnread;
                if (((ConversationModel.ConversationListModel) conversationModel).getUnread() > 0) {
                    view.setVisibility(0);
                } else {
                    view.setVisibility(8);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    class i implements Observer<List<LiveGameBean>> {
        i() {
        }

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void onChanged(List<LiveGameBean> list) {
            LiveChatFragment.this.initPkIcon();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements PkIconLayoutHolder.d {
        j() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.PkIconLayoutHolder.d
        public void a() {
            if (LiveChatFragment.this.getCurrentLiveRoom().getApplyPkState()) {
                return;
            }
            LiveChatFragment.this.mILiveRoomManager.a();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.PkIconLayoutHolder.d
        public void c(int i9, String str, String str2, String str3, String str4, boolean z10, boolean z11) {
            LiveChatFragment.this.mILiveRoomManager.c(2, str, str2, "", "", false, false);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.PkIconLayoutHolder.d
        public void d(int i9, boolean z10) {
            LiveChatFragment.this.mILiveRoomManager.d(2, true);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.PkIconLayoutHolder.d
        public void e(long j10) {
            if (LiveChatFragment.this.getParentFragment() != null) {
                ((BaseLiveRoomFragment) LiveChatFragment.this.getParentFragment()).e4(j10);
            }
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.PkIconLayoutHolder.d
        public void f() {
            if (LiveChatFragment.this.getCurrentLiveRoom().isBroadCaster() && LiveChatFragment.this.getActivity() != null && LiveChatFragment.this.getCurrentLiveRoom().getApplyPkState() && (LiveChatFragment.this.getParentFragment() instanceof BroadCastFragment)) {
                ((BroadCastFragment) LiveChatFragment.this.getParentFragment()).L3();
            }
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.PkIconLayoutHolder.d
        public <T extends BaseLiveMessage> void sendC2CLiveMessage(@NonNull String str, @NonNull LiveMessageModel<T> liveMessageModel, @Nullable e.a<Boolean> aVar) {
            LiveChatFragment.this.sendC2CLiveMessage(str, liveMessageModel, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k extends com.guochao.faceshow.aaspring.base.http.callback.c<File> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ File f18656a;

        k(File file) {
            this.f18656a = file;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<File> aVar) {
            SvgaImageViewV2 svgaImageViewV2;
            if (LiveChatFragment.this.getActivity() == null || (svgaImageViewV2 = LiveChatFragment.this.mGiftSVGAImageView) == null) {
                return;
            }
            svgaImageViewV2.playRaw(R.raw.gift_new);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable File file, @NonNull FaceCastBaseResponse<File> faceCastBaseResponse) {
            SvgaImageViewV2 svgaImageViewV2;
            if (LiveChatFragment.this.getActivity() == null || (svgaImageViewV2 = LiveChatFragment.this.mGiftSVGAImageView) == null) {
                return;
            }
            svgaImageViewV2.playFile(this.f18656a.getAbsolutePath());
        }
    }

    /* loaded from: classes3.dex */
    class l implements ShareFragment.m {
        l() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment.m
        public void a(String str, ShareContentBean shareContentBean) {
            LiveChatFragment.this.sendLiveMessage(new LiveMessageModel("LIVE_SHARE", null), (e.a<Boolean>) null);
        }
    }

    /* loaded from: classes3.dex */
    class m extends com.guochao.faceshow.aaspring.base.http.callback.c<AppResource> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SendGiftCallBack f18659a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ResourceListItemBean f18660b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f18661c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ LiveMessageModel f18662d;

        m(SendGiftCallBack sendGiftCallBack, ResourceListItemBean resourceListItemBean, int i9, LiveMessageModel liveMessageModel) {
            this.f18659a = sendGiftCallBack;
            this.f18660b = resourceListItemBean;
            this.f18661c = i9;
            this.f18662d = liveMessageModel;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<AppResource> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable AppResource appResource, @NonNull FaceCastBaseResponse<AppResource> faceCastBaseResponse) {
            if (this.f18659a != null && appResource != null) {
                if (appResource.getBag() != null) {
                    this.f18659a.onSendGiftFailure(appResource);
                    return;
                }
                this.f18659a.onSendGiftSuccessful();
            }
            HelloStarHelp.INSTANCE.checkSendHelloGiftUser(this.f18660b, LiveChatFragment.this.getCurrentUser().getUserId(), LiveChatFragment.this.getCurrentLiveRoom().getBroadCasterUserId());
            LiveChatFragment.this.sendGiftSuccessful(this.f18661c, this.f18662d, Long.valueOf(appResource != null ? appResource.getNowTime().longValue() : 0L));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkLuckyGiftResult(GiftFragment giftFragment, ResourceListItemBean resourceListItemBean, SendGiftResponseModel sendGiftResponseModel, LiveMessageModel<GiftLiveMessage> liveMessageModel, SendGiftRequestModel sendGiftRequestModel) {
        if (isDetached() || !isAdded() || !resourceListItemBean.isLuckyGift() || sendGiftResponseModel == null || sendGiftResponseModel.getLuckyGiftResults() == null) {
            return;
        }
        GiftLiveMessage data = liveMessageModel.getData();
        data.setLuckyGiftResults(sendGiftResponseModel.getLuckyGiftResults());
        if (data.getCurrentReward() > 0) {
            if (data.getTotalReward() > sendGiftRequestModel.getTotalSendNumber()) {
                playRewardSound();
            }
            int totalRewardDiamonds = data.getTotalRewardDiamonds();
            if (giftFragment.isAdded() && totalRewardDiamonds > 0) {
                p9.a.g().b(totalRewardDiamonds);
            }
            this.mILiveRoomManager.onReceiveHugeGift(liveMessageModel);
        }
    }

    private void downloadSvgaIfNeed(String str) {
        File file = new File(FilePathProvider.getNXShowPath("gift_btn"), str.substring(str.lastIndexOf(FileUtils.RES_PREFIX_STORAGE)));
        if (file.exists()) {
            this.mGiftSVGAImageView.playFile(file.getAbsolutePath());
        } else {
            getHttpClient().a(null, str, file.getAbsolutePath(), new k(file));
        }
    }

    private void onShowKeyboard(y7.j jVar) {
        int i9 = jVar.f60141b;
        if (jVar.f60142c == 0) {
            if (i9 <= 0) {
                this.mLiveBtns.setVisibility(0);
            } else {
                this.mLiveBtns.setVisibility(4);
            }
        }
        if (getView() == null) {
            return;
        }
        View view = (View) getView().getParent();
        if (view != null && !getCurrentLiveRoom().isVoiceRoom()) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            marginLayoutParams.bottomMargin = Math.max(0, i9);
            view.setLayoutParams(marginLayoutParams);
        }
        if (getParentFragment() instanceof BaseLiveRoomFragment) {
            BaseLiveRoomFragment baseLiveRoomFragment = (BaseLiveRoomFragment) getParentFragment();
            if (i9 <= 0) {
                baseLiveRoomFragment.Z2(i9);
            } else {
                baseLiveRoomFragment.j3(Math.max(0, i9));
            }
        }
    }

    private void playRewardSound() {
        if (isDetached() || !isAdded()) {
            return;
        }
        stopPlay();
        MediaPlayer create = MediaPlayer.create(requireContext(), (int) R.raw.lucky_gift_reward);
        this.mMediaPlayer = create;
        create.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendGiftSuccessful(int i9, LiveMessageModel<GiftLiveMessage> liveMessageModel, Long l10) {
        GiftFragment giftFragment = this.mGiftFragment;
        if (giftFragment != null) {
            giftFragment.refreshDiamonds();
        }
        if (getActivity() instanceof WatchLiveRoomActivity) {
            ((WatchLiveRoomActivity) getActivity()).g1(i9);
        }
        liveMessageModel.getData().setServerTime(l10.longValue());
        this.mILiveRoomManager.onReceiveLiveMessage(liveMessageModel);
        d9.g gVar = this.mILiveRoomManager;
        if (gVar instanceof BaseLiveRoomFragment) {
            ((BaseLiveRoomFragment) gVar).n2(liveMessageModel, liveMessageModel.getData());
        }
        sendLiveMessage(liveMessageModel, new b(liveMessageModel));
    }

    private void showFragment(int i9) {
        if (isAdded() && getCurrentLiveRoom() != null) {
            GiftFragment giftFragment = this.mGiftFragment;
            if (giftFragment != null) {
                giftFragment.dismissAllowingStateLoss();
            }
            if (getCurrentLiveRoom().isBroadCaster()) {
                if (UserStateHolder.isLiving()) {
                    if ((getParentFragment() instanceof BaseLiveRoomFragment) && getCurrentLiveRoom().isMultiLiveRoom() && ((BaseLiveRoomFragment) getParentFragment()).z2() != null && ((BaseLiveRoomFragment) getParentFragment()).z2().size() > i9) {
                        if (!((BaseLiveRoomFragment) getParentFragment()).z2().get(i9).getUserId().equals(getCurrentUser().getUserId())) {
                            if (((BaseLiveRoomFragment) getParentFragment()).z2() != null) {
                                this.mGiftFragment = GiftFragment.getInstance(R.style.AppTheme, 1, getCurrentLiveRoom().isMultiLiveRoom(), ((BaseLiveRoomFragment) getParentFragment()).z2().get(i9).getUserId(), ((BaseLiveRoomFragment) getParentFragment()).z2(), getCurrentLiveRoom().getBroadCasterUserId(), getCurrentLiveRoom().getAvatarUrl(), (UserVipData) getCurrentLiveRoom().getVipInfo());
                            } else {
                                this.mGiftFragment = GiftFragment.getInstance(R.style.AppTheme, 1, getCurrentLiveRoom().isMultiLiveRoom(), getCurrentLiveRoom().getBroadCasterUserId(), getCurrentLiveRoom().getBroadCasterUserName(), getCurrentLiveRoom().getAvatarUrl(), (UserVipData) getCurrentLiveRoom().getVipInfo());
                            }
                            this.mGiftFragment.show(getChildFragmentManager(), "gift");
                            return;
                        }
                        showGiftPopContriller();
                        return;
                    }
                    showGiftPopContriller();
                }
            } else if (!(getParentFragment() instanceof BaseLiveRoomFragment) || ((BaseLiveRoomFragment) getParentFragment()).f18520s) {
                if ((getParentFragment() instanceof BaseLiveRoomFragment) && getCurrentLiveRoom().isMultiLiveRoom()) {
                    if (((BaseLiveRoomFragment) getParentFragment()).z2() != null && ((BaseLiveRoomFragment) getParentFragment()).z2().size() > i9) {
                        this.mGiftFragment = GiftFragment.getInstance(R.style.AppTheme, 1, getCurrentLiveRoom().isMultiLiveRoom(), ((BaseLiveRoomFragment) getParentFragment()).z2().get(i9).getUserId(), ((BaseLiveRoomFragment) getParentFragment()).z2(), getCurrentLiveRoom().getBroadCasterUserId(), getCurrentLiveRoom().getAvatarUrl(), (UserVipData) getCurrentLiveRoom().getVipInfo());
                    } else {
                        this.mGiftFragment = GiftFragment.getInstance(R.style.AppTheme, 1, getCurrentLiveRoom().isMultiLiveRoom(), getCurrentLiveRoom().getBroadCasterUserId(), getCurrentLiveRoom().getBroadCasterUserName(), getCurrentLiveRoom().getAvatarUrl(), (UserVipData) getCurrentLiveRoom().getVipInfo());
                    }
                } else {
                    this.mGiftFragment = GiftFragment.getInstance(R.style.AppTheme, 1, getCurrentLiveRoom().isMultiLiveRoom(), getCurrentLiveRoom().getBroadCasterUserId(), getCurrentLiveRoom().getBroadCasterUserName(), getCurrentLiveRoom().getAvatarUrl(), (UserVipData) getCurrentLiveRoom().getVipInfo());
                }
                this.mGiftFragment.show(getChildFragmentManager(), "gift");
            }
        }
    }

    private void showGiftPopContriller() {
        LiveGiftPopController liveGiftPopController = this.giftPopController;
        if (liveGiftPopController == null || !liveGiftPopController.isAdded()) {
            LiveGiftPopController liveGiftPopController2 = this.giftPopController;
            if (liveGiftPopController2 != null) {
                liveGiftPopController2.show(getChildFragmentManager(), "live");
                return;
            }
            LiveGiftPopController T1 = LiveGiftPopController.T1(getCurrentLiveRoom().getLiveRoomId());
            this.giftPopController = T1;
            T1.show(getChildFragmentManager(), "live");
        }
    }

    private void showInputFragment(String str) {
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof BaseLiveRoomFragment) {
            ((BaseLiveRoomFragment) parentFragment).mInputArea.setVisibility(0);
        }
        this.mLiveBtns.setVisibility(4);
        this.mILiveRoomManager.M0(str);
    }

    private void showNewMessageAnimation() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(1000L);
        this.llNewMsg.startAnimation(alphaAnimation);
    }

    private void stopPlay() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
        }
    }

    public void addFocusMessage() {
        AutoLiveChatAdapter autoLiveChatAdapter;
        RoomItemData roomItemData = (RoomItemData) getCurrentLiveRoom();
        if (roomItemData.isVoiceRoom() || !"1".equalsIgnoreCase(roomItemData.getIsAttention())) {
            BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
            baseLiveMessage.setType(BaseLiveMessage.TYPE_CUSTOM_MSG);
            if (roomItemData.isVoiceRoom()) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                spannableStringBuilder.append((CharSequence) getString(R.string.voice_room_tips_welcome, "@" + getCurrentUser().nickName));
                baseLiveMessage.setRichContent(spannableStringBuilder);
            } else {
                baseLiveMessage.setContent(getString(R.string.user_guide_add_focus_tip, getCurrentUser().nickName));
            }
            baseLiveMessage.setLevelId(getCurrentLiveRoom().getLevel());
            baseLiveMessage.setFromUserId(getCurrentLiveRoom().getBroadCasterUserId());
            baseLiveMessage.setFromUserNickName(getCurrentLiveRoom().getUserNickName());
            baseLiveMessage.setFromUserAvatar(getCurrentLiveRoom().getAvatarUrl());
            baseLiveMessage.setIsAttention(roomItemData.getIsAttention());
            baseLiveMessage.setMvpUrl(((RoomItemData) getCurrentLiveRoom()).getMvpUrl());
            UserVipData userVipMsg = ((RoomItemData) getCurrentLiveRoom()).getUserVipMsg();
            if (userVipMsg != null) {
                baseLiveMessage.setUserVipMsg(userVipMsg);
            }
            if (!roomItemData.isVoiceRoom()) {
                AutoLiveChatAdapter autoLiveChatAdapter2 = this.mLiveChatAdapter;
                if (autoLiveChatAdapter2 != null) {
                    autoLiveChatAdapter2.h(new LiveMessageModel<>("LIVE_CUSTOM_MSG", baseLiveMessage));
                    this.mLiveChatAdapter.h(new LiveMessageModel<>("LOCAL_LIVE_ADD_SHARE", new BaseLiveMessage()));
                }
            } else if (getCurrentUser().getUserId() == null || getCurrentUser().getUserId().equals(getCurrentLiveRoom().getBroadCasterUserId()) || (autoLiveChatAdapter = this.mLiveChatAdapter) == null) {
            } else {
                autoLiveChatAdapter.h(new LiveMessageModel<>("LOCAL_VOICE_ROOM_WELCOME", baseLiveMessage));
            }
        }
    }

    public void addPrivateShareMessage() {
        if (getCurrentLiveRoom().isPrivateLiveRoom() && !this.mShowedShareGuide) {
            AutoLiveChatAdapter autoLiveChatAdapter = this.mLiveChatAdapter;
            if (autoLiveChatAdapter != null) {
                autoLiveChatAdapter.h(new LiveMessageModel<>("LOCAL_LIVE_BROADCASTER_SHARE", new BaseLiveMessage()));
            }
            this.mShowedShareGuide = true;
        }
    }

    public void addShareMessage(boolean z10) {
        if ((z10 && !getCurrentLiveRoom().isBroadCaster()) || getCurrentLiveRoom().isPrivateLiveRoom() || this.mShowedShareGuide || TextUtils.isEmpty(getCurrentLiveRoom().getShareUrl())) {
            return;
        }
        AutoLiveChatAdapter autoLiveChatAdapter = this.mLiveChatAdapter;
        if (autoLiveChatAdapter != null) {
            autoLiveChatAdapter.h(new LiveMessageModel<>("LOCAL_LIVE_BROADCASTER_SHARE", new BaseLiveMessage()));
        }
        this.mShowedShareGuide = true;
    }

    public void checkHelloReadDot() {
        if (this.helloUnReadNum == null) {
            return;
        }
        if (!getCurrentLiveRoom().isPrivateLiveRoom()) {
            HelloStarHelp helloStarHelp = HelloStarHelp.INSTANCE;
            if (helloStarHelp.getHelloConfigSwitch() == 1 && helloStarHelp.getHelloConfigData().getHelloAnchorSwitch() == 1 && ja.a.b().f("KEY_LIVE_CHAT_HELLO")) {
                this.helloUnReadNum.setVisibility(0);
                return;
            }
        }
        this.helloUnReadNum.setVisibility(8);
    }

    public void dismissInvite() {
        if (getParentFragment() instanceof BroadCastFragment) {
            ((BroadCastFragment) getParentFragment()).t2();
        }
    }

    public boolean getApplyPkSuccess() {
        if (getParentFragment() != null) {
            return ((BaseLiveRoomFragment) getParentFragment()).V1;
        }
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_live_chat;
    }

    public void giftOnclick(int i9) {
        if (System.currentTimeMillis() - this.lastIMChatOrgiftTime <= 500) {
            return;
        }
        this.lastIMChatOrgiftTime = System.currentTimeMillis();
        BaseLiveActivity baseLiveActivity = (BaseLiveActivity) getActivity();
        if (baseLiveActivity != null) {
            baseLiveActivity.i0();
        }
        showFragment(i9);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void handleEvent(y7.g gVar) {
        GiftFragment giftFragment = this.mGiftFragment;
        if (giftFragment == null || giftFragment.getDialog() == null) {
            return;
        }
        if (gVar.f60136a) {
            this.mGiftFragment.getDialog().show();
        } else {
            this.mGiftFragment.getDialog().hide();
        }
    }

    public void initPkIcon() {
        this.mPkHolder = new PkIconLayoutHolder(this.pkLayoutLive, null);
        boolean z10 = com.guochao.faceshow.aaspring.manager.i.u().s().getGameSwitch() == 1;
        LiveRoomModel currentLiveRoom = getCurrentLiveRoom();
        List<LiveGameBean> liveGameData = MiniGameDataManager.getInstance().getLiveGameData();
        if (z10 && !currentLiveRoom.isBroadCaster() && (currentLiveRoom instanceof RoomItemData) && liveGameData.isEmpty()) {
            z10 = false;
        }
        if (z10 && currentLiveRoom.isBroadCaster()) {
            z10 = MiniGameDataManager.getInstance().hasEnableGame();
        }
        if (z10) {
            this.mPkHolder.r(8);
            this.multiGame.setVisibility(0);
        } else {
            if (getCurrentLiveRoom().isBroadCaster()) {
                this.mPkHolder.r(0);
            } else {
                this.mPkHolder.r(8);
            }
            this.multiGame.setVisibility(8);
        }
        this.mPkHolder.n(currentLiveRoom);
        this.mPkHolder.k();
        this.mPkHolder.setOnResultListener(new j());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        this.mRecyclerView.setNestedScrollingEnabled(false);
        this.mRecyclerView.addItemDecoration(new RecyclerViewItemDecoration(3.0f, 1));
        this.svgaParser = SvgaImageViewUtils.getParser();
        String recommendRechargeActivityLiveIcon = com.guochao.faceshow.aaspring.manager.i.u().s().getRecommendRechargeActivityLiveIcon();
        this.mGiftSVGAImageView.setVisibility(0);
        this.mGiftImageView.setVisibility(8);
        checkHelloReadDot();
        if (getCurrentLiveRoom() != null && getCurrentLiveRoom().isBroadCaster()) {
            this.mGiftSVGAImageView.playRaw(R.raw.gift_new);
            SvgaImageViewV2 svgaImageViewV2 = this.callingBtn;
            if (svgaImageViewV2 != null) {
                svgaImageViewV2.setVisibility(8);
            }
        } else {
            if (recommendRechargeActivityLiveIcon == null) {
                this.mGiftSVGAImageView.playRaw(R.raw.gift_new);
            } else if (recommendRechargeActivityLiveIcon.endsWith("svga")) {
                downloadSvgaIfNeed(recommendRechargeActivityLiveIcon);
            } else if (!recommendRechargeActivityLiveIcon.endsWith("png") && !recommendRechargeActivityLiveIcon.endsWith("jpg") && !recommendRechargeActivityLiveIcon.endsWith("gif")) {
                hc.a.h(this.mGiftImageView, recommendRechargeActivityLiveIcon, R.mipmap.ic_live_chat_gift);
                this.mGiftSVGAImageView.setVisibility(8);
                this.mGiftImageView.setVisibility(0);
            } else {
                hc.a.j(this.mGiftImageView, recommendRechargeActivityLiveIcon);
                this.mGiftSVGAImageView.setVisibility(8);
                this.mGiftImageView.setVisibility(0);
            }
            if ((getParentFragment() instanceof WatcherLiveRoomFragment) && this.callingBtn != null) {
                ((WatcherLiveRoomFragment) getParentFragment()).U5.bindCallingBtn(this, this.callingBtn);
            }
        }
        if (!getCurrentLiveRoom().isVoiceRoom()) {
            AutoLiveChatAdapter autoLiveChatAdapter = new AutoLiveChatAdapter(this.mRecyclerView, this, this.mILiveRoomManager);
            this.mLiveChatAdapter = autoLiveChatAdapter;
            this.mRecyclerView.setAdapter(autoLiveChatAdapter);
        }
        if (this.mRecyclerView.getItemAnimator() != null) {
            ((SimpleItemAnimator) this.mRecyclerView.getItemAnimator()).setSupportsChangeAnimations(false);
        }
        this.mRecyclerView.setNestedScrollingEnabled(false);
        if (getCurrentLiveRoom() != null && getCurrentLiveRoom().isMultiLiveRoom()) {
            this.mRecyclerView.setFadingEdgeLength(DensityUtil.dp2px(15.0f));
        }
        if (getActivity() instanceof BaseLiveActivity) {
            this.mRecyclerView.setRecycledViewPool(((BaseLiveActivity) getActivity()).g0(1));
        }
        oa.h.a(this.mRecyclerView, 0);
        reset();
        this.mRecyclerView.setOnBottomCallback(new g());
        ((ConversationViewModel) new ViewModelProvider(GCApplication.app()).get(ConversationViewModel.class)).bind(this, new h());
        MiniGameDataManager.getInstance().getGameLiveData().observe(this, new i());
    }

    @Subscribe
    public void keyboardHeight(y7.j jVar) {
        onShowKeyboard(jVar);
    }

    public void liveShareClicked(View view) {
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
        g22.setOnSharePlatformClickListener(new l());
        g22.show(getActivity().getSupportFragmentManager(), ShareDialog.WEB_SHARE_DIALOG);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, d9.e
    public void onAtSomebody(String str, String str2) {
        super.onAtSomebody(str, str2);
        showInputFragment("@" + StringUtils.addInvisibleCharBeforeWhiteSpace(str2) + " ");
        GiftFragment giftFragment = this.mGiftFragment;
        if (giftFragment == null || giftFragment.getDialog() == null || !this.mGiftFragment.getDialog().isShowing()) {
            return;
        }
        this.mGiftFragment.dismissAllowingStateLoss();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        AutoLiveChatAdapter autoLiveChatAdapter = this.mLiveChatAdapter;
        if (autoLiveChatAdapter != null) {
            autoLiveChatAdapter.J();
        }
        this.mHandler.removeMessages(0);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        PopupWindow popupWindow = this.mGiftIconTipPopupWindow;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
        this.mHandler.removeCallbacksAndMessages(null);
        stopPlay();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, d9.e
    public void onLiveFinish(int i9, String str) {
        super.onLiveFinish(i9, str);
    }

    public void onLiveFinished() {
        PlayBottomDialogFragment playBottomDialogFragment = this.mPlayBottomDialogFragment;
        if (playBottomDialogFragment == null || !playBottomDialogFragment.Z1()) {
            return;
        }
        this.mPlayBottomDialogFragment.dismissAllowingStateLoss();
    }

    @OnClick
    public void onNewMessageClick(View view) {
        NoBottomEdgeRecyclerView noBottomEdgeRecyclerView = this.mRecyclerView;
        if (noBottomEdgeRecyclerView != null) {
            noBottomEdgeRecyclerView.smoothScrollToPosition(noBottomEdgeRecyclerView.getAdapter().getItemCount() - 1);
            this.newMessage.setVisibility(8);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPictureInPictureModeChanged(boolean z10) {
        super.onPictureInPictureModeChanged(z10);
        this.isInPictureInPictureMode = z10;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, d9.e
    public void onPlaySuccess() {
        NoBottomEdgeRecyclerView noBottomEdgeRecyclerView = this.mRecyclerView;
        if (noBottomEdgeRecyclerView != null) {
            noBottomEdgeRecyclerView.setVisibility(0);
        }
        KotlinBridge.checkLiveFloatIM(this, this.liveImBtn);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, d9.e
    public <T extends BaseLiveMessage> void onReceiveLiveMessage(LiveMessageModel<T> liveMessageModel) {
        super.onReceiveLiveMessage(liveMessageModel);
        if (liveMessageModel.getData() != null) {
            if (BaseLiveMessage.TYPE_ADD_GROUP.equals(liveMessageModel.getData().getType()) && Objects.equals(liveMessageModel.getData().getFromUserId(), getCurrentUser().getUserId())) {
                return;
            }
            if (BaseLiveMessage.TYPE_CUSTOM_MSG.equals(liveMessageModel.getData().getType()) && !Objects.equals(liveMessageModel.getData().getFromUserId(), getCurrentUser().getUserId()) && this.mRecyclerView.canScrollVertically(1)) {
                if (this.newMessage.getVisibility() == 0) {
                    showNewMessageAnimation();
                } else {
                    this.newMessage.setVisibility(0);
                }
            }
            if (!this.isFirstCustomMsg && !TextUtils.isEmpty(liveMessageModel.getData().getContent()) && !liveMessageModel.getData().getContent().equals(this.tip) && liveMessageModel.getCmd().equals("LIVE_CUSTOM_MSG") && !TextViewUtils.containsAllEmoji(liveMessageModel.getData().getContent()) && !Objects.equals(liveMessageModel.getData().getFromUserId(), getCurrentUser().getUserId())) {
                this.isDelayed = true;
                this.isFirstCustomMsg = true;
                AutoLiveChatAdapter autoLiveChatAdapter = this.mLiveChatAdapter;
                if (autoLiveChatAdapter != null) {
                    autoLiveChatAdapter.g(liveMessageModel, this.mRecyclerView.canScrollVertically(1));
                }
            } else if (this.isDelayed) {
                this.mHandler.postDelayed(new e(liveMessageModel), 500L);
            } else {
                AutoLiveChatAdapter autoLiveChatAdapter2 = this.mLiveChatAdapter;
                if (autoLiveChatAdapter2 == null) {
                    return;
                }
                autoLiveChatAdapter2.g(liveMessageModel, this.mRecyclerView.canScrollVertically(1));
                HelloStarHelp.INSTANCE.checkHelloStarMessage(this.mLiveChatAdapter, this.mRecyclerView, liveMessageModel, getCurrentUser().getUserId());
            }
        }
    }

    @Override // u8.b
    public /* synthetic */ void onSelectGift(ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, List list, int i9, boolean z10, SendGiftCallBack sendGiftCallBack) {
        u8.a.b(this, resourceCategoryItem, resourceListItemBean, list, i9, z10, sendGiftCallBack);
    }

    @Override // u8.b
    public void onSelectGift(GiftFragment giftFragment, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, List<GiftFragment.r> list, int i9, boolean z10, int i10, SendGiftCallBack sendGiftCallBack) {
        int i11;
        LiveMessageModel<GiftLiveMessage> createGiftMessageModel;
        HandyGifViewHelper handyGifViewHelper;
        HandyGifViewHelper handyGifViewHelper2;
        boolean z11 = false;
        if (this.mILiveRoomManager instanceof d9.c) {
            for (int i12 = 0; i12 < list.size(); i12++) {
                this.mILiveRoomManager.z0(i9, resourceCategoryItem, resourceListItemBean, list.get(i12).f17819a, list.get(i12).f17820b);
            }
        }
        SendGiftRequestModel sendGiftRequestModel = new SendGiftRequestModel(String.valueOf(resourceListItemBean.getId()), resourceListItemBean.isLuckyGift());
        sendGiftRequestModel.setVoiceRoom(getCurrentLiveRoom().isVoiceRoom());
        sendGiftRequestModel.setComboId(i10);
        if (getCurrentLiveRoom().isVoiceRoom()) {
            HashMap<Integer, String> hashMap = new HashMap<>();
            for (int i13 = 0; i13 < list.size(); i13++) {
                hashMap.put(Integer.valueOf(list.get(i13).f17819a), list.get(i13).f17823e);
            }
            sendGiftRequestModel.setVoiceIds(hashMap);
        }
        ArrayList arrayList = new ArrayList();
        boolean isMultiLiveRoom = getCurrentLiveRoom().isMultiLiveRoom();
        boolean isVoiceRoom = getCurrentLiveRoom().isVoiceRoom();
        int i14 = resourceListItemBean.getId() == HelloStarHelp.INSTANCE.getHelloStarGift().getGiftId() ? 1 : 0;
        if (isVoiceRoom) {
            if (list.isEmpty()) {
                return;
            }
            i11 = 61;
            for (int i15 = 0; i15 < list.size(); i15++) {
                arrayList.add(list.get(i15).f17819a);
            }
        } else if (!isMultiLiveRoom) {
            i11 = 2;
            arrayList.add(getCurrentLiveRoom().getBroadCasterUserId());
            z11 = true;
        } else {
            for (int i16 = 0; i16 < list.size(); i16++) {
                arrayList.add(list.get(i16).f17819a);
            }
            if (list.size() == 1 && Objects.equals(list.get(0).f17819a, getCurrentLiveRoom().getBroadCasterUserId())) {
                z11 = true;
            }
            i11 = 15;
        }
        sendGiftRequestModel.setSendType(i11);
        if (!this.mILiveRoomManager.getCurrentLiveRoom().isVoiceRoom() && !this.mILiveRoomManager.getCurrentLiveRoom().isMultiLiveRoom()) {
            arrayList = new ArrayList();
            arrayList.add(this.mILiveRoomManager.getCurrentLiveRoom().getBroadCasterUserId());
        }
        sendGiftRequestModel.setToUserIds(arrayList);
        sendGiftRequestModel.setBusinessId(getCurrentLiveRoom().getLiveRoomId());
        if (z10) {
            sendGiftRequestModel.setUseDiamonds("1");
        } else {
            sendGiftRequestModel.setUseDiamonds("0");
        }
        sendGiftRequestModel.setSinglePrice(resourceListItemBean.getPrice());
        sendGiftRequestModel.setSendNumber(i9);
        int parseInt = i9 * Integer.parseInt(resourceListItemBean.getPrice());
        if (GiftLiveMessage.isFaceGift(resourceListItemBean)) {
            createGiftMessageModel = LiveMessageModelFactory.createGiftMessageModel(resourceListItemBean, list, sendGiftRequestModel, isMultiLiveRoom, i14);
            if (resourceListItemBean.isHandyGift() && (handyGifViewHelper2 = giftFragment.mHandyGifViewHelper) != null) {
                handyGifViewHelper2.checkLiveMessageModel(createGiftMessageModel);
            }
            createGiftMessageModel.getData().setSelfSend(true);
            if (this.mILiveRoomManager.getCurrentLiveRoom().isVoiceRoom()) {
                createGiftMessageModel.getData().setGiftSendList(list);
            }
            this.mILiveRoomManager.onReceiveFaceGift(createGiftMessageModel.getData());
            if (z11) {
                this.mILiveRoomManager.addFBNumber(createGiftMessageModel);
            }
        } else {
            createGiftMessageModel = LiveMessageModelFactory.createGiftMessageModel(resourceListItemBean, list, sendGiftRequestModel, isMultiLiveRoom, i14);
            if (resourceListItemBean.isHandyGift() && (handyGifViewHelper = giftFragment.mHandyGifViewHelper) != null) {
                handyGifViewHelper.checkLiveMessageModel(createGiftMessageModel);
            }
            createGiftMessageModel.getData().setSelfSend(true);
            if (this.mILiveRoomManager.getCurrentLiveRoom().isVoiceRoom()) {
                createGiftMessageModel.getData().setGiftSendList(list);
            }
            this.mILiveRoomManager.onReceiveHugeGift(createGiftMessageModel);
            if (z11) {
                this.mILiveRoomManager.addFBNumber(createGiftMessageModel);
            }
        }
        LiveMessageModel<GiftLiveMessage> liveMessageModel = createGiftMessageModel;
        GiftSender.checkSendGiftType(this, resourceListItemBean.getItemType(), sendGiftRequestModel, new m(sendGiftCallBack, resourceListItemBean, parseInt, liveMessageModel), new a(giftFragment, resourceListItemBean, liveMessageModel, sendGiftRequestModel, parseInt));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.manager.i.InterfaceC0154i
    public void onServerConfigChanged(ServerConfig serverConfig, ServerConfig serverConfig2) {
        super.onServerConfigChanged(serverConfig, serverConfig2);
        if (serverConfig2 == null || serverConfig == null || serverConfig2.getGameSwitch() == serverConfig.getGameSwitch()) {
            return;
        }
        initPkIcon();
    }

    @OnClick
    public void onViewClick(View view) {
        this.mPlayBottomDialogFragment = PlayBottomDialogFragment.e2(getParentFragmentManager(), getCurrentLiveRoom(), this.mILiveRoomManager, this.PKstate, !getCurrentLiveRoom().isBroadCaster() || getCurrentLiveRoom().isMultiLiveRoom() || getCurrentLiveRoom().isPrivateLiveRoom() || com.guochao.faceshow.aaspring.manager.i.u().s().getPkEnableFlag() == 0);
    }

    @OnClick
    public void onViewClicked(View view) {
        showInputFragment(null);
        c9.a.i().f();
    }

    public void refreshChatMargin(boolean z10, boolean z11, boolean z12) {
        if (getActivity() == null || getView() == null) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mRecyclerView.getLayoutParams();
        if (z10) {
            Space space = this.mSpace;
            if (space != null) {
                space.setVisibility(8);
            }
            if (getCurrentLiveRoom().isBroadCaster()) {
                marginLayoutParams.rightMargin = getResources().getDimensionPixelOffset(R.dimen.little_video_width) + DensityUtil.dp2px(14.0f);
            } else {
                marginLayoutParams.rightMargin = getResources().getDimensionPixelOffset(R.dimen.little_video_width) + (z11 ? DensityUtil.dp2px(7.0f) : DensityUtil.dp2px(40.0f));
            }
        } else if (z12) {
            Space space2 = this.mSpace;
            if (space2 != null) {
                space2.setVisibility(8);
            }
            marginLayoutParams.rightMargin = getResources().getDimensionPixelOffset(R.dimen.dp_full_activity_float_width) + DensityUtil.dp2px(7.0f);
        } else {
            marginLayoutParams.rightMargin = 0;
            marginLayoutParams.setMarginEnd(0);
            marginLayoutParams.setMarginStart(0);
            Space space3 = this.mSpace;
            if (space3 != null) {
                space3.setVisibility(0);
            }
        }
        if (z12) {
            Space space4 = this.mSpace;
            if (space4 != null) {
                space4.setVisibility(8);
            }
            marginLayoutParams.rightMargin = 0;
            marginLayoutParams.setMarginEnd(getResources().getDimensionPixelOffset(R.dimen.dp_full_activity_float_width) + DensityUtil.dp2px(15.0f));
        }
        this.mRecyclerView.setLayoutParams(marginLayoutParams);
        AutoLiveChatAdapter autoLiveChatAdapter = this.mLiveChatAdapter;
        if (autoLiveChatAdapter != null) {
            autoLiveChatAdapter.notifyDataSetChanged();
        }
    }

    public void refreshPkBtn() {
        PkIconLayoutHolder pkIconLayoutHolder = this.mPkHolder;
        if (pkIconLayoutHolder != null && pkIconLayoutHolder.i()) {
            this.mPkHolder.k();
        }
        PlayBottomDialogFragment playBottomDialogFragment = this.mPlayBottomDialogFragment;
        if (playBottomDialogFragment != null) {
            playBottomDialogFragment.refreshPkBtn();
        }
    }

    public void removeFocusRunnable() {
        Runnable runnable = this.mAddFocusRunnable;
        if (runnable != null) {
            this.mHandler.removeCallbacks(runnable);
        }
    }

    public void reset() {
        this.mHandler.removeMessages(0);
        if (getCurrentLiveRoom() != null) {
            if (getActivity() instanceof LiveBroadCastActivity) {
                KotlinBridge.checkLiveFloatIM(this, this.liveImBtn);
            } else {
                this.liveImBtn.setVisibility(8);
            }
            AutoLiveChatAdapter autoLiveChatAdapter = this.mLiveChatAdapter;
            if (autoLiveChatAdapter != null) {
                autoLiveChatAdapter.l();
                if (!getCurrentLiveRoom().isVoiceRoom()) {
                    this.mLiveChatAdapter.g(LiveMessageModelFactory.createNoticModel(getResources().getString(R.string.liveshengming)), false);
                }
                if (!getCurrentLiveRoom().isBroadCaster()) {
                    if (!getCurrentLiveRoom().isLaunchFromFloatWindow()) {
                        LiveMessageModel<BaseLiveMessage> createChatMessage = LiveMessageModelFactory.createChatMessage("LIVE_ADD_GROUP", BaseLiveMessage.TYPE_ADD_GROUP, null, getCurrentUser(), getResources().getString(R.string.joined), getCurrentLiveRoom().getUserType(), 0, null, null);
                        d9.g gVar = this.mILiveRoomManager;
                        if (gVar instanceof BaseLiveRoomFragment) {
                            ((BaseLiveRoomFragment) gVar).n3(createChatMessage);
                        }
                        this.mLiveChatAdapter.g(createChatMessage, false);
                    }
                    Handler handler = this.mHandler;
                    c cVar = new c();
                    this.mAddShareRunnable = cVar;
                    handler.postDelayed(cVar, 180000L);
                    Handler handler2 = this.mHandler;
                    d dVar = new d();
                    this.mAddFocusRunnable = dVar;
                    handler2.postDelayed(dVar, 15000L);
                } else {
                    addShareMessage(true);
                    initPkIcon();
                }
            }
            if (!getCurrentLiveRoom().isBroadCaster() && (!getCurrentLiveRoom().isVoiceRoom() || !getCurrentLiveRoom().isAdministrator())) {
                this.mLiveMore.setVisibility(8);
            } else {
                this.mLiveMore.setVisibility(0);
            }
            refreshPkBtn();
        }
        if (getParentFragment() instanceof BroadCastFragment) {
            this.mRecyclerView.setVisibility(0);
        } else {
            this.mRecyclerView.setVisibility(4);
        }
    }

    public void resetVoiceRoomChatList() {
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    public void restoreMessage(List<LiveMessageModel<?>> list) {
        for (int i9 = 0; i9 < list.size(); i9++) {
            list.get(i9).getData().setFinalResultSpannableString(null);
        }
        AutoLiveChatAdapter autoLiveChatAdapter = this.mLiveChatAdapter;
        if (autoLiveChatAdapter != null) {
            autoLiveChatAdapter.getList().clear();
            this.mLiveChatAdapter.getList().addAll(list);
            this.mLiveChatAdapter.notifyDataSetChanged();
            this.mRecyclerView.scrollToPosition(this.mLiveChatAdapter.getList().size() - 1);
        }
        this.mHandler.removeMessages(0);
    }

    public void setMoreBtn(Boolean bool) {
        if (bool.booleanValue()) {
            this.mLiveMore.setVisibility(0);
        } else {
            this.mLiveMore.setVisibility(8);
        }
    }

    public void setPkBtnVisibility(boolean z10) {
        PkIconLayoutHolder pkIconLayoutHolder = this.mPkHolder;
        if (pkIconLayoutHolder != null && pkIconLayoutHolder.i()) {
            this.mPkHolder.o(z10);
        }
        PlayBottomDialogFragment playBottomDialogFragment = this.mPlayBottomDialogFragment;
        if (playBottomDialogFragment == null || !playBottomDialogFragment.Z1()) {
            return;
        }
        this.mPlayBottomDialogFragment.setPkBtnVisibility(z10);
    }

    public void setPkLoadingState(boolean z10) {
        PkIconLayoutHolder pkIconLayoutHolder = this.mPkHolder;
        if (pkIconLayoutHolder != null && pkIconLayoutHolder.i()) {
            this.mPkHolder.p(z10);
        }
        PlayBottomDialogFragment playBottomDialogFragment = this.mPlayBottomDialogFragment;
        if (playBottomDialogFragment == null || !playBottomDialogFragment.Z1()) {
            return;
        }
        this.mPlayBottomDialogFragment.setPkLoadingState(z10);
    }

    public void setPkState(boolean z10) {
        this.PKstate = z10;
        PkIconLayoutHolder pkIconLayoutHolder = this.mPkHolder;
        if (pkIconLayoutHolder != null && pkIconLayoutHolder.i()) {
            this.mPkHolder.q(z10);
        }
        PlayBottomDialogFragment playBottomDialogFragment = this.mPlayBottomDialogFragment;
        if (playBottomDialogFragment == null || !playBottomDialogFragment.Z1()) {
            return;
        }
        this.mPlayBottomDialogFragment.setPkState(z10);
    }

    @Nullable
    @OnClick
    public void showGift(View view) {
        WatcherLiveRoomFragment watcherLiveRoomFragment;
        TextView textView;
        if (System.currentTimeMillis() - this.lastIMChatOrgiftTime <= 500) {
            return;
        }
        this.lastIMChatOrgiftTime = System.currentTimeMillis();
        c9.a.i().f();
        showFragment(0);
        if ((getParentFragment() instanceof WatcherLiveRoomFragment) && (textView = (watcherLiveRoomFragment = (WatcherLiveRoomFragment) getParentFragment()).mTextViewUserGuideGift) != null && textView.getVisibility() == 0) {
            watcherLiveRoomFragment.mTextViewUserGuideGift.setVisibility(8);
            watcherLiveRoomFragment.B.removeCallbacks(watcherLiveRoomFragment.f20005b6);
            ja.a.b().e("KEY_GIFT_ICON_CLICK_TIPS");
        }
    }

    @OnClick
    @Optional
    public void showMore(View view) {
        if (this.mILiveRoomManager instanceof d9.c) {
            TextView textView = this.helloUnReadNum;
            if (textView != null) {
                textView.setVisibility(8);
                ja.a.b().e("KEY_LIVE_CHAT_HELLO");
            }
            ((d9.c) this.mILiveRoomManager).e1();
        }
    }

    @OnClick
    @Optional
    public void startCalling(View view) {
        VideoCallDuringLivingViewModel videoCallDuringLivingViewModel;
        if (!(getParentFragment() instanceof WatcherLiveRoomFragment) || (videoCallDuringLivingViewModel = ((WatcherLiveRoomFragment) getParentFragment()).f18482a) == null) {
            return;
        }
        videoCallDuringLivingViewModel.startCalling(getActivity(), (RoomItemData) getCurrentLiveRoom());
    }

    @OnClick
    public void startIMChat(View view) {
        ViewGroup viewGroup;
        if (System.currentTimeMillis() - this.lastIMChatOrgiftTime <= 500) {
            return;
        }
        GiftFragment giftFragment = this.mGiftFragment;
        if (giftFragment == null || !giftFragment.isAdded()) {
            c9.a.i().f();
            if (getParentFragment() instanceof WatcherLiveRoomFragment) {
                ((WatcherLiveRoomFragment) getParentFragment()).r2();
            }
            this.lastIMChatOrgiftTime = System.currentTimeMillis();
            BaseLiveActivity baseLiveActivity = (BaseLiveActivity) getActivity();
            if (baseLiveActivity != null && (viewGroup = baseLiveActivity.f18053e) != null && viewGroup.getVisibility() == 8) {
                baseLiveActivity.f18053e.setVisibility(0);
                return;
            }
            EventTrackingUtils.getInstance().track(EventTrackingUtils.LIVE_IM_FLOAT_CHAT_CLICK);
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.chat_page, "0");
            FloatFragmentUtils.addFloatFragment(new LiveIMConversationFloatFragment(), (BaseLiveActivity) getActivity());
        }
    }
}
