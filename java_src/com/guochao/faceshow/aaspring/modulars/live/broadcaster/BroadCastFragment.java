package com.guochao.faceshow.aaspring.modulars.live.broadcaster;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.text.BidiFormatter;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import butterknife.Optional;
import com.facebook.share.widget.ShareDialog;
import com.google.gson.internal.C$Gson$Types;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest;
import com.guochao.faceshow.aaspring.base.http.request.GetRequest;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.ArenaBean;
import com.guochao.faceshow.aaspring.beans.IM_User;
import com.guochao.faceshow.aaspring.beans.JoinGameUser;
import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.aaspring.beans.LiveGamePollDetail;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.beans.LiveInfoResult;
import com.guochao.faceshow.aaspring.beans.LiveLaunchResponse;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.beans.ShareContentBean;
import com.guochao.faceshow.aaspring.manager.BeautyItemCacheManager;
import com.guochao.faceshow.aaspring.manager.a;
import com.guochao.faceshow.aaspring.modulars.live.activity.LiveBroadCastActivity;
import com.guochao.faceshow.aaspring.modulars.live.adapter.LiveVideoAudioMaskAdapter;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.LaunchBottomSwitchHolder;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.LaunchLiveHolder;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.viewmodel.VideoCallDuringLivingViewModel;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.BasePkLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveChatFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveMoreDialogFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayerProvider;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveUserInfoFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.n;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.guochao.faceshow.aaspring.modulars.live.fragment.LittleLinkMicInfoFragment;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.AudienceListInfoMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel;
import com.guochao.faceshow.aaspring.modulars.live.model.LinkMicInfoMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LinkMicMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.live.model.PkUser;
import com.guochao.faceshow.aaspring.modulars.live.model.VolumeMessage;
import com.guochao.faceshow.aaspring.modulars.live.share.InviteDialog;
import com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveActivityView;
import com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog;
import com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.aaspring.utils.ZipUtils;
import com.guochao.faceshow.aaspring.views.LiveBroadCastScrollDownView;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.PushUtils;
import com.guochao.faceshow.utils.TimeUtil;
import com.guochao.faceshow.views.e;
import com.guochao.lib_core.feature.Feature;
import com.guochao.lib_core.feature.FeatureKt;
import com.guochao.player.base.ILivePlayer;
import com.guochao.pusher.GCLivePusher;
import com.guochao.pusher.base.ILivePusher;
import d9.e;
import java.io.File;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.functions.Function1;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class BroadCastFragment extends BasePkLiveRoomFragment implements d9.c, LaunchLiveHolder.o, PushUtils.OnPushCustomMessageHandler<String>, ILivePusher.PushEventListener, ILivePlayer.PlayEventListener {
    private GCLivePusher O5;
    Animation P5;
    private LaunchBottomSwitchHolder Q5;
    private LaunchLiveHolder R5;
    GetRequest S5;
    PostRequest T5;
    private boolean V5;
    public String W5;
    public String X5;
    private String Y5;
    private String Z5;

    /* renamed from: a6  reason: collision with root package name */
    public String f18323a6;

    /* renamed from: b6  reason: collision with root package name */
    private boolean f18324b6;
    @BindView
    View btnInvite;

    /* renamed from: c6  reason: collision with root package name */
    private int f18325c6;
    @BindView
    View closeLL;

    /* renamed from: d6  reason: collision with root package name */
    private List<String> f18326d6;
    @BindView
    View dividerView;

    /* renamed from: h6  reason: collision with root package name */
    private LiveMoreDialogFragment f18330h6;

    /* renamed from: i6  reason: collision with root package name */
    private String f18331i6;

    /* renamed from: k6  reason: collision with root package name */
    private int f18333k6;
    @BindView
    TextView mCountDownTips;
    @BindView
    ViewGroup mLaunchLiveView;
    @BindView
    LiveBroadCastScrollDownView mLiveBroadCastScrollDownView;
    @BindView
    View mLiveInfoViewContainer;
    @BindView
    View mLiveShareBtn;
    @BindView
    TextView mTextViewLinkMicTip;
    @BindView
    View touchView;
    private long U5 = 1;

    /* renamed from: e6  reason: collision with root package name */
    private boolean f18327e6 = false;

    /* renamed from: f6  reason: collision with root package name */
    com.guochao.faceshow.aaspring.base.http.callback.c<LiveInfoResult> f18328f6 = new k();

    /* renamed from: g6  reason: collision with root package name */
    private final Runnable f18329g6 = new l();

    /* renamed from: j6  reason: collision with root package name */
    private int f18332j6 = 1;

    /* renamed from: l6  reason: collision with root package name */
    public boolean f18334l6 = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements PendantDialog.c {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog.c
        public void a() {
            ((BaseLiveRoomFragment) BroadCastFragment.this).L4 = null;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog.c
        public void b(String str, ResourceListItemBean resourceListItemBean) {
            BroadCastFragment.this.o5(str, resourceListItemBean);
        }
    }

    /* loaded from: classes3.dex */
    class b implements n.h {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.common.n.h
        public void a(String str, String str2, String str3) {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.common.n.h
        public void b(String str, String str2, String str3) {
            BroadCastFragment.this.K(false, str, str2, str3);
        }
    }

    /* loaded from: classes3.dex */
    class c extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f18337a;

        c(boolean z10) {
            this.f18337a = z10;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            BroadCastFragment.this.sendLiveMessage(LiveMessageModelFactory.createLinkMicStatusChangeModel(BroadCastFragment.this.f18506l, this.f18337a), (e.a<Boolean>) null);
            BroadCastFragment.this.onLinkMicStatusChanged(this.f18337a);
            BroadCastFragment.this.f18506l.setLinkMicEnabled(this.f18337a);
            BroadCastFragment broadCastFragment = BroadCastFragment.this;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("设置连麦成功：");
            sb2.append(this.f18337a ? "已开启" : "已关闭");
            broadCastFragment.print("LiveRoom", sb2.toString());
        }
    }

    /* loaded from: classes3.dex */
    class d implements ShareFragment.m {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment.m
        public void a(String str, ShareContentBean shareContentBean) {
            BroadCastFragment.this.sendLiveMessage(new LiveMessageModel("LIVE_SHARE", null), (e.a<Boolean>) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<ArenaBean> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable ArenaBean arenaBean, @NonNull FaceCastBaseResponse<ArenaBean> faceCastBaseResponse) {
            x.n().e();
            if (arenaBean != null) {
                BroadCastFragment.this.f18326d6 = arenaBean.getIntroductionToPlay();
                BroadCastFragment.this.f18325c6 = arenaBean.getAdmitDefeatNum();
                BroadCastFragment.this.c4(arenaBean.getSelectTime());
            }
            if (!com.guochao.faceshow.aaspring.modulars.live.common.i.c(BroadCastFragment.this.getContext(), true)) {
                if (((BaseLiveRoomFragment) BroadCastFragment.this).f18498h != 2 && !BroadCastFragment.this.R5.isPersons()) {
                    BroadCastFragment broadCastFragment = BroadCastFragment.this;
                    broadCastFragment.r5(broadCastFragment.W5);
                }
                if (BroadCastFragment.this.f18324b6 && ((BaseLiveRoomFragment) BroadCastFragment.this).f18498h != 2 && !BroadCastFragment.this.R5.isPersons()) {
                    BroadCastFragment broadCastFragment2 = BroadCastFragment.this;
                    broadCastFragment2.u5(broadCastFragment2.W5);
                    return;
                }
                BroadCastFragment broadCastFragment3 = BroadCastFragment.this;
                broadCastFragment3.V5 = true ^ broadCastFragment3.f18324b6;
                return;
            }
            BroadCastFragment.this.V5 = false;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<ArenaBean> aVar) {
            BroadCastFragment.this.V5 = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements e.a<Boolean> {
        f() {
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
    public class g extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        g() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            if (BroadCastFragment.this.getCurrentLiveRoom().getPkUserInfo() != null) {
                BroadCastFragment broadCastFragment = BroadCastFragment.this;
                broadCastFragment.Y5 = broadCastFragment.getCurrentLiveRoom().getPkUserInfo().getCurrentUserId();
                BroadCastFragment broadCastFragment2 = BroadCastFragment.this;
                broadCastFragment2.Z5 = broadCastFragment2.getCurrentLiveRoom().getPkUserInfo().getUserName();
                BroadCastFragment.this.getCurrentLiveRoom().setApplyPkState(false);
                ToastUtils.debugToast(BroadCastFragment.this.getActivity(), "stopPk");
                BroadCastFragment.this.getCurrentLiveRoom().setInPkMode(false);
                x.n().D(0);
            }
            BroadCastFragment broadCastFragment3 = BroadCastFragment.this;
            broadCastFragment3.sendC2CLiveMessage(broadCastFragment3.Y5, LiveMessageModelFactory.createLeavePkMessage(BroadCastFragment.this.getCurrentUser().getUserId(), BroadCastFragment.this.getCurrentUser().getUserName(), BroadCastFragment.this.Y5, BroadCastFragment.this.Z5, BroadCastFragment.this.getCurrentLiveRoom().isInPkPunishmentTime()), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends com.guochao.faceshow.aaspring.base.http.callback.c<SparseArray<List<ResourceCategoryItem>>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f18343a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements a.k<File> {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.guochao.faceshow.aaspring.modulars.live.broadcaster.BroadCastFragment$h$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public class C0175a implements Function1<String, String> {
                C0175a() {
                }

                @Override // kotlin.jvm.functions.Function1
                /* renamed from: a */
                public String invoke(String str) {
                    BroadCastFragment.this.f18331i6 = str;
                    if (((BaseLiveRoomFragment) BroadCastFragment.this).f18493e5 == null && BroadCastFragment.this.getCurrentLiveRoom().isInPkPunishmentTime()) {
                        BroadCastFragment.this.O5.getBeautyManager().setMotionTmpl(str);
                    }
                    if (!BroadCastFragment.this.getCurrentLiveRoom().isInPkPunishmentTime()) {
                        BroadCastFragment.this.f18331i6 = "";
                    }
                    return "";
                }
            }

            a() {
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
                if ((BroadCastFragment.this.getCurrentLiveRoom() == null || !BroadCastFragment.this.getCurrentLiveRoom().isInPkMode() || BroadCastFragment.this.getCurrentLiveRoom().isInPkPunishmentTime()) && file != null) {
                    ZipUtils.safeUnZip(file.getPath(), new C0175a());
                }
            }
        }

        h(int i9) {
            this.f18343a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<SparseArray<List<ResourceCategoryItem>>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable SparseArray<List<ResourceCategoryItem>> sparseArray, @NonNull FaceCastBaseResponse<SparseArray<List<ResourceCategoryItem>>> faceCastBaseResponse) {
            if ((BroadCastFragment.this.getCurrentLiveRoom() == null || !BroadCastFragment.this.getCurrentLiveRoom().isInPkMode() || BroadCastFragment.this.getCurrentLiveRoom().isInPkPunishmentTime()) && sparseArray != null) {
                List<ResourceCategoryItem> list = sparseArray.get(12);
                if (list.isEmpty()) {
                    return;
                }
                ArrayList<ResourceListItemBean> arrayList = new ArrayList();
                for (ResourceCategoryItem resourceCategoryItem : list) {
                    arrayList.addAll(resourceCategoryItem.getGifList());
                }
                ResourceListItemBean resourceListItemBean = null;
                for (ResourceListItemBean resourceListItemBean2 : arrayList) {
                    if (resourceListItemBean != null) {
                        break;
                    }
                    int i9 = this.f18343a;
                    if (i9 != 1) {
                        if (i9 == 2 && "5".equals(resourceListItemBean2.getModule())) {
                            resourceListItemBean = resourceListItemBean2;
                        }
                    } else if ("4".equals(resourceListItemBean2.getModule())) {
                        resourceListItemBean = resourceListItemBean2;
                    }
                }
                if (resourceListItemBean != null) {
                    com.guochao.faceshow.aaspring.manager.a.g().l(list.get(0), resourceListItemBean, new a());
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    class i extends com.guochao.faceshow.aaspring.base.http.callback.c<ArenaBean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ IM_User f18347a;

        i(IM_User iM_User) {
            this.f18347a = iM_User;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable ArenaBean arenaBean, @NonNull FaceCastBaseResponse<ArenaBean> faceCastBaseResponse) {
            if (arenaBean == null) {
                return;
            }
            BroadCastFragment broadCastFragment = BroadCastFragment.this;
            broadCastFragment.V1 = true;
            broadCastFragment.c4(arenaBean.getSelectTime());
            BroadCastFragment.this.f18506l.setPkUserInfo(this.f18347a);
            BroadCastFragment.this.f18506l.setApplyPkState(true);
            BroadCastFragment broadCastFragment2 = BroadCastFragment.this;
            if (broadCastFragment2.f18532y != null) {
                ToastUtils.debugToast(broadCastFragment2.getActivity(), "发送邀成功PK按钮邀请中");
                BroadCastFragment.this.f18532y.refreshPkBtn();
            }
            BroadCastFragment.this.f18327e6 = false;
            x.n().s(BroadCastFragment.this.getActivity(), BroadCastFragment.this);
            x.n().A(true);
            x.n().F(this.f18347a.getCurrentUserId());
            BroadCastFragment.this.f18506l.setInPkPunishmentTime(false);
            x.n().D(2);
            BroadCastFragment.this.f18506l.setAdmitDefeatNum(arenaBean.getAdmitDefeatNum());
            BroadCastFragment.this.f18506l.setIntroductionToPlay(arenaBean.getIntroductionToPlay());
            BroadCastFragment.this.f18506l.setArenaDurationTime(arenaBean.getArenaDurationTime());
            BroadCastFragment.this.f18506l.setArenaPunishmentDurationTime(arenaBean.getArenaPunishmentDurationTime());
            BroadCastFragment broadCastFragment3 = BroadCastFragment.this;
            broadCastFragment3.B.postDelayed(((BaseLiveRoomFragment) broadCastFragment3).f18509m5, 180000L);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<ArenaBean> aVar) {
            BroadCastFragment.this.f18327e6 = false;
            BroadCastFragment.this.p3();
            UserStateHolder.setIsPKPrepare(false);
            if (aVar.a() == 80013 || aVar.a() == 80014) {
                return;
            }
            ToastUtils.showToast(BroadCastFragment.this.getActivity(), BaseApplication.getInstance().getString(R.string.pk_loading_finish));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements e.a {
        j() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            dialog.dismiss();
            if (z10) {
                com.guochao.faceshow.aaspring.modulars.live.game.f fVar = BroadCastFragment.this.P4;
                if (fVar != null && fVar.m() >= 0) {
                    BroadCastFragment.this.P4.f();
                } else {
                    c9.a.i().P();
                }
                if (UserStateHolder.isLiving()) {
                    UserStateHolder.setLiving(false);
                    BroadCastFragment.this.w5();
                    if (BroadCastFragment.this.getActivity() instanceof LiveBroadCastActivity) {
                        ((LiveBroadCastActivity) BroadCastFragment.this.getActivity()).f18069m = true;
                    }
                }
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* loaded from: classes3.dex */
    class k extends com.guochao.faceshow.aaspring.base.http.callback.c<LiveInfoResult> {
        k() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LiveInfoResult liveInfoResult, @NonNull FaceCastBaseResponse<LiveInfoResult> faceCastBaseResponse) {
            if (BroadCastFragment.this.isDetached() || BroadCastFragment.this.getActivity() == null || BroadCastFragment.this.getActivity().isFinishing() || BroadCastFragment.this.getActivity().isDestroyed()) {
                return;
            }
            if (liveInfoResult == null) {
                onFailure(new g7.a<>(new Exception(), -1));
                return;
            }
            BroadCastFragment broadCastFragment = BroadCastFragment.this;
            broadCastFragment.f18483a1 = true;
            View view = broadCastFragment.btnInvite;
            if (view != null && !view.isEnabled()) {
                BroadCastFragment.this.btnInvite.setEnabled(true);
                LiveChatFragment liveChatFragment = BroadCastFragment.this.f18532y;
                if (liveChatFragment != null) {
                    liveChatFragment.addPrivateShareMessage();
                }
            }
            BroadCastFragment broadCastFragment2 = BroadCastFragment.this;
            if (broadCastFragment2.f18532y != null) {
                if (broadCastFragment2.getCurrentLiveRoom().isPkWaiting()) {
                    BroadCastFragment.this.f18532y.setPkState(false);
                } else {
                    BroadCastFragment.this.f18532y.setPkState(true);
                }
            }
            LiveRoomModel liveRoomModel = BroadCastFragment.this.f18506l;
            if (liveRoomModel != null) {
                liveRoomModel.setShareUrl(liveInfoResult.getShareUrl());
                BroadCastFragment.this.f18506l.setIsFullScreenActivity(liveInfoResult.getIsMusicActivity());
            }
            LiveChatFragment liveChatFragment2 = BroadCastFragment.this.f18532y;
            if (liveChatFragment2 != null) {
                liveChatFragment2.addShareMessage(true);
            }
            com.guochao.faceshow.aaspring.manager.i.u().s().setShareUrl(liveInfoResult.getShareUrl());
            com.guochao.faceshow.aaspring.manager.i.u().z();
            if (MVPActivity.FROM_BAG_BADGE.equals(liveInfoResult.getLivePkState())) {
                if (x.n().r() == null) {
                    x.n().s(BroadCastFragment.this.getActivity(), BroadCastFragment.this);
                }
                x.n().x(0);
                x.n().I();
            }
            if (!"4".equals(liveInfoResult.getLivePkState()) && x.n().p() == 2) {
                x.n().e();
            }
            try {
                BroadCastFragment.this.d3(liveInfoResult.getMatchList(), liveInfoResult.getServerTime());
            } catch (Exception unused) {
                BroadCastFragment.this.d3(liveInfoResult.getMatchList(), TimeUtil.getServerTime());
            }
            boolean equals = "2".equals(liveInfoResult.getLivePkState());
            PkUser pk2 = liveInfoResult.getPk();
            if (pk2 != null && pk2.getRightAnchorMsg() != null && pk2.getLeftAnchorMsg() != null && pk2.getRightAnchorMsg().getCurrentUserId() != null && pk2.getLeftAnchorMsg().getCurrentUserId() != null && equals) {
                x.n().y(pk2);
                if ("0".equals(liveInfoResult.getLivePkState())) {
                    BroadCastFragment.this.d(2, true);
                } else {
                    BroadCastFragment.this.h0(pk2, liveInfoResult.getServerTime(), false);
                }
                PkUser pkUser = BroadCastFragment.this.M5;
                if (pkUser != null && pkUser.getLeftAnchorMsg() != null && !TextUtils.isEmpty(BroadCastFragment.this.M5.getLeftAnchorMsg().getPkFcoin())) {
                    BroadCastFragment broadCastFragment3 = BroadCastFragment.this;
                    ((BaseLiveRoomFragment) broadCastFragment3).N = broadCastFragment3.M5.getLeftAnchorMsg().getFCoinCount();
                }
                PkUser pkUser2 = BroadCastFragment.this.M5;
                if (pkUser2 != null && pkUser2.getRightAnchorMsg() != null) {
                    BroadCastFragment broadCastFragment4 = BroadCastFragment.this;
                    broadCastFragment4.Y5 = broadCastFragment4.M5.getRightAnchorMsg().getUserId();
                    BroadCastFragment broadCastFragment5 = BroadCastFragment.this;
                    broadCastFragment5.Z5 = broadCastFragment5.M5.getRightAnchorMsg().getUserNickName();
                }
                PkUser pkUser3 = BroadCastFragment.this.M5;
                if (pkUser3 != null && pkUser3.getLeftAnchorMsg() != null && !TextUtils.isEmpty(BroadCastFragment.this.M5.getRightAnchorMsg().getPkFcoin())) {
                    BroadCastFragment broadCastFragment6 = BroadCastFragment.this;
                    ((BaseLiveRoomFragment) broadCastFragment6).O = broadCastFragment6.M5.getRightAnchorMsg().getFCoinCount();
                }
                liveInfoResult.setPk(null);
                BroadCastFragment.this.sendLiveMessage(LiveMessageModelFactory.createPkPollMessageModel(pk2, liveInfoResult.getServerTime()), (e.a<Boolean>) null);
            }
            if (equals && pk2 == null) {
                ToastUtils.debugToast(BroadCastFragment.this.getActivity(), "P中 无PK数据恢复按钮");
            }
            if (!equals && (BroadCastFragment.this.getCurrentLiveRoom().isInPkMode() || (((BaseLiveRoomFragment) BroadCastFragment.this).C4 != null && ((BaseLiveRoomFragment) BroadCastFragment.this).C4.isAdded()))) {
                BroadCastFragment.this.d(1, true);
            }
            if (x.n().q() == 0) {
                BroadCastFragment.this.p5(liveInfoResult);
            }
            BroadCastFragment.this.sendLiveMessage(LiveMessageModelFactory.createLinkMicInfoModel(liveInfoResult.getServerTime(), liveInfoResult.getMatchList()), (e.a<Boolean>) null);
            if (liveInfoResult.getMatchList() != null && liveInfoResult.getMatchList().size() > 0) {
                int i9 = 0;
                while (i9 < liveInfoResult.getMatchList().size()) {
                    i9++;
                    liveInfoResult.getMatchList().get(i9).setPosition(i9);
                }
            }
            if (liveInfoResult.getMatchList() != null && liveInfoResult.getMatchList().size() > 0) {
                BroadCastFragment.this.f18534z.refreshBroadcasterInfo(liveInfoResult.getMatchList());
            }
            AudienceListInfoMessage audienceInfoMessage = liveInfoResult.getAudienceInfoMessage();
            if (BroadCastFragment.this.getCurrentLiveRoom().isInPkMode()) {
                audienceInfoMessage.setIsLockMicrophone("1");
            }
            BroadCastFragment.this.sendLiveMessage(LiveMessageModelFactory.createAudienceListInfoModel(audienceInfoMessage), (e.a<Boolean>) null);
            BroadCastFragment.this.sendLiveMessage(LiveMessageModelFactory.createLiveActivityModel(liveInfoResult.getLiveActivityMessage()), (e.a<Boolean>) null);
            if (liveInfoResult.getIsMusicActivity() == 1) {
                BroadCastFragment.this.sendLiveMessage(LiveMessageModelFactory.createLiveFullScreenActivityModel(liveInfoResult.getLiveFullScreenActivityMessage()), (e.a<Boolean>) null);
            }
            BroadCastFragment.this.M3(liveInfoResult, false);
            if (((BaseLiveRoomFragment) BroadCastFragment.this).f18502j == null) {
                BroadCastFragment.this.A3(false);
            }
            BroadCastFragment.this.d5(liveInfoResult.getGameInfoList());
            if (((BaseLiveRoomFragment) BroadCastFragment.this).S4 != null) {
                for (d9.m mVar : ((BaseLiveRoomFragment) BroadCastFragment.this).S4) {
                    mVar.Z0(BroadCastFragment.this, liveInfoResult);
                }
            }
            LiveUserInfoFragment liveUserInfoFragment = BroadCastFragment.this.f18534z;
            if (liveUserInfoFragment != null && liveUserInfoFragment.isAdded()) {
                BroadCastFragment.this.f18534z.checkHourRank(liveInfoResult);
                BroadCastFragment.this.sendLiveMessage(LiveMessageModelFactory.createHourRankMessage(liveInfoResult), (e.a<Boolean>) null);
            }
            if (!BroadCastFragment.this.getCurrentLiveRoom().isPrivateLiveRoom() && (!(BroadCastFragment.this.getCurrentLiveRoom() instanceof RoomItemData) || "1".equals(((RoomItemData) BroadCastFragment.this.getCurrentLiveRoom()).getPrivateType()))) {
                BroadCastFragment.this.mLiveShareBtn.setVisibility(0);
                BroadCastFragment.this.dividerView.setVisibility(0);
                return;
            }
            BroadCastFragment.this.mLiveShareBtn.setVisibility(8);
            BroadCastFragment.this.dividerView.setVisibility(8);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LiveInfoResult> aVar) {
            if (aVar.a() == 20002) {
                BroadCastFragment.this.onLiveFinish(aVar.a(), aVar.c());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements Runnable {

        /* loaded from: classes3.dex */
        class a implements BaseFaceCastRequest.b<GetRequest> {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest.b
            /* renamed from: b */
            public void a(GetRequest getRequest) {
                if (BroadCastFragment.this.R5.isErrorPush) {
                    getRequest.cancel();
                } else if (!UserStateHolder.isLiving()) {
                    getRequest.cancel();
                } else {
                    LiveUserInfoFragment liveUserInfoFragment = BroadCastFragment.this.f18534z;
                    if (liveUserInfoFragment != null && liveUserInfoFragment.isAdded()) {
                        getRequest.v("likeNum", Long.valueOf(BroadCastFragment.this.f18534z.getLikeNum()));
                    }
                    getRequest.v("indexs", Long.valueOf(BroadCastFragment.this.U5));
                    getRequest.v("pushIp", BroadCastFragment.this.getCurrentLiveRoom().getLivePushIP());
                    BroadCastFragment.u4(BroadCastFragment.this);
                }
            }
        }

        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BroadCastFragment.this.isDetached() || !BroadCastFragment.this.isAdded()) {
                return;
            }
            long j10 = 0;
            LiveUserInfoFragment liveUserInfoFragment = BroadCastFragment.this.f18534z;
            if (liveUserInfoFragment != null && liveUserInfoFragment.isAdded()) {
                j10 = BroadCastFragment.this.f18534z.getLikeNum();
            }
            BroadCastFragment broadCastFragment = BroadCastFragment.this;
            GetRequest getRequest = broadCastFragment.get("tokens/live/newLive/getLiveInfo");
            LiveUserInfoFragment liveUserInfoFragment2 = BroadCastFragment.this.f18534z;
            if (liveUserInfoFragment2 != null) {
                j10 = liveUserInfoFragment2.getLikeNum();
            }
            broadCastFragment.S5 = getRequest.v("likeNum", Long.valueOf(j10)).v("liveId", BroadCastFragment.this.getCurrentLiveRoom().getLiveRoomId()).v(Contants.USER_ID, BroadCastFragment.this.getCurrentLiveRoom().getCurrentUserId()).A(new a()).G(5000, BroadCastFragment.this.f18328f6);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map f18353a;

        m(Map map) {
            this.f18353a = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!BroadCastFragment.this.isDetached() && BroadCastFragment.this.isAdded()) {
                try {
                    String obj = this.f18353a.get(Contants.USER_ID).toString();
                    String obj2 = this.f18353a.get("liveId").toString();
                    String obj3 = this.f18353a.get("content").toString();
                    long parseLong = Long.parseLong(this.f18353a.get("startLiveTime").toString());
                    if (!Objects.equals(obj, b8.e.g().getUserId()) || !Objects.equals(obj2, BroadCastFragment.this.getCurrentLiveRoom().getLiveRoomId()) || parseLong * 1000 != Long.parseLong(BroadCastFragment.this.getCurrentLiveRoom().getLiveStartTimestamp())) {
                        return;
                    }
                    BroadCastFragment.this.alert(null, obj3);
                } catch (Exception unused) {
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    class n extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        n() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            try {
                if ("1".equals(new JSONObject(str).getJSONObject("result").getString("status"))) {
                    BroadCastFragment.this.f18324b6 = true;
                    View view = BroadCastFragment.this.btnInvite;
                    if (view != null && !view.isEnabled()) {
                        BroadCastFragment.this.btnInvite.setEnabled(true);
                        LiveChatFragment liveChatFragment = BroadCastFragment.this.f18532y;
                        if (liveChatFragment != null) {
                            liveChatFragment.addPrivateShareMessage();
                        }
                    }
                    if (BroadCastFragment.this.V5 && !TextUtils.isEmpty(BroadCastFragment.this.W5) && ((BaseLiveRoomFragment) BroadCastFragment.this).f18498h != 2 && !BroadCastFragment.this.R5.isPersons()) {
                        BroadCastFragment broadCastFragment = BroadCastFragment.this;
                        broadCastFragment.u5(broadCastFragment.W5);
                        BroadCastFragment.this.f5();
                    } else if (BroadCastFragment.this.V5) {
                        BroadCastFragment.this.f5();
                    } else {
                        BroadCastFragment broadCastFragment2 = BroadCastFragment.this;
                        if (broadCastFragment2.f18532y != null) {
                            if (broadCastFragment2.getCurrentLiveRoom().isPkWaiting()) {
                                BroadCastFragment.this.f18532y.setPkState(false);
                            } else {
                                BroadCastFragment.this.f18532y.setPkState(true);
                            }
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* loaded from: classes3.dex */
    class o extends com.guochao.faceshow.aaspring.base.http.callback.c<LinkMicInfoMessage> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f18356a;

        o(String str) {
            this.f18356a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LinkMicInfoMessage linkMicInfoMessage, @NonNull FaceCastBaseResponse<LinkMicInfoMessage> faceCastBaseResponse) {
            BroadCastFragment.this.sendLiveMessage(LiveMessageModelFactory.createHangupModel(this.f18356a), (e.a<Boolean>) null);
            BroadCastFragment.this.l3(this.f18356a);
            if (BroadCastFragment.this.getCurrentLiveRoom().isMultiLiveRoom()) {
                return;
            }
            BroadCastFragment.this.x3();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LinkMicInfoMessage> aVar) {
        }
    }

    /* loaded from: classes3.dex */
    class p extends SimpleObserver<Integer> {
        p() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(Integer num) {
            if (BroadCastFragment.this.isDetached() || BroadCastFragment.this.getActivity() == null || BroadCastFragment.this.getActivity().isFinishing() || BroadCastFragment.this.R5 == null || !BroadCastFragment.this.isResumed()) {
                return;
            }
            BroadCastFragment.this.R5.onResume();
        }
    }

    /* loaded from: classes3.dex */
    class q implements LiveBroadCastScrollDownView.a {
        q() {
        }

        @Override // com.guochao.faceshow.aaspring.views.LiveBroadCastScrollDownView.a
        public void a(LiveBroadCastScrollDownView liveBroadCastScrollDownView) {
            BroadCastFragment.this.h5();
        }

        @Override // com.guochao.faceshow.aaspring.views.LiveBroadCastScrollDownView.a
        public void b(LiveBroadCastScrollDownView liveBroadCastScrollDownView) {
            BroadCastFragment.this.s5(true);
        }
    }

    /* loaded from: classes3.dex */
    class r implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        float f18360a = 0.0f;

        /* renamed from: b  reason: collision with root package name */
        float f18361b = 0.0f;

        r() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f18360a = motionEvent.getX();
                this.f18361b = motionEvent.getY();
            } else if (action == 1) {
                float x10 = motionEvent.getX();
                if (Math.abs(motionEvent.getY() - this.f18361b) > Math.abs(x10 - this.f18360a)) {
                    return true;
                }
                if (x10 - this.f18360a > ViewConfiguration.get(BroadCastFragment.this.getContext()).getScaledTouchSlop() * 2) {
                    if (BidiFormatter.getInstance().isRtlContext()) {
                        BroadCastFragment.this.Q5.c();
                    } else {
                        BroadCastFragment.this.Q5.d();
                    }
                } else if (this.f18360a - x10 > ViewConfiguration.get(BroadCastFragment.this.getContext()).getScaledTouchSlop() * 2) {
                    if (BidiFormatter.getInstance().isRtlContext()) {
                        BroadCastFragment.this.Q5.d();
                    } else {
                        BroadCastFragment.this.Q5.c();
                    }
                }
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s implements Animation.AnimationListener {
        s() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            BroadCastFragment.this.mLiveInfoViewContainer.setVisibility(0);
            BroadCastFragment broadCastFragment = BroadCastFragment.this;
            broadCastFragment.P5 = null;
            if (broadCastFragment.getActivity() != null) {
                BroadCastFragment broadCastFragment2 = BroadCastFragment.this;
                broadCastFragment2.s2(broadCastFragment2.getActivity().getSupportFragmentManager());
            }
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
    public class t implements Animation.AnimationListener {
        t() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            BroadCastFragment.this.mLiveInfoViewContainer.setVisibility(8);
            BroadCastFragment.this.P5 = null;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* loaded from: classes3.dex */
    class u implements LiveMoreDialogFragment.g {
        u() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveMoreDialogFragment.g
        public void a() {
            LiveChatFragment liveChatFragment = BroadCastFragment.this.f18532y;
            if (liveChatFragment != null) {
                liveChatFragment.checkHelloReadDot();
            }
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveMoreDialogFragment.g
        public void onDismiss() {
            BroadCastFragment.this.f18330h6 = null;
        }
    }

    private void a5() {
        if (this.I && getActivity() != null) {
            getActivity().finish();
            Intent intent = new Intent(getActivity(), LiveBroadCastActivity.class);
            intent.putExtra("IDENTITY_TYPE_KEY", 0);
            intent.putExtra("withPkUserId", this.W5);
            intent.putExtra("withPkLiveId", this.X5);
            intent.putExtra("withPkUserName", this.f18323a6);
            getActivity().startActivity(intent);
        } else if (TextUtils.isEmpty(this.W5) || TextUtils.isEmpty(this.X5)) {
        } else {
            post("tokens/live/invite/agree/arena").v("agreeUserId", this.W5).v("streamType", "1").v("agreeLiveId", this.X5).I(3).M(new e());
        }
    }

    private void c5() {
        x.n().d();
        UserBean currentUser = getCurrentUser();
        if (this.f18506l.getPkUserInfo() == null || TextUtils.isEmpty(this.f18506l.getPkUserInfo().getCurrentUserId())) {
            return;
        }
        sendC2CLiveMessage(this.f18506l.getPkUserInfo().getCurrentUserId(), LiveMessageModelFactory.createCancelPkMessage(this.f18506l.getLiveRoomId(), currentUser.getUserId(), currentUser.getUserName(), this.f18506l.getPkUserInfo().getCurrentUserId(), this.f18506l.getPkUserInfo().getUserNickName()), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0129  */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d5(@androidx.annotation.NonNull java.util.List<com.guochao.faceshow.aaspring.beans.LiveGamePollDetail> r19) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.live.broadcaster.BroadCastFragment.d5(java.util.List):void");
    }

    @Deprecated
    private void e5(LiveGamePollDetail liveGamePollDetail) {
        if (this.P4 == null) {
            return;
        }
        List<LiveGamePollDetail.LiveGameRoundDetail> gameRoundVo = liveGamePollDetail.getGameRoundVo();
        List<JoinGameUser> n9 = this.P4.n();
        if (gameRoundVo == null || n9 == null || gameRoundVo.size() == n9.size() || this.P4.m() != 0) {
            return;
        }
        this.P4.p0(true, gameRoundVo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f5() {
        if (this.V5) {
            this.V5 = false;
            this.W5 = null;
            this.f18323a6 = null;
        }
    }

    private void hideKeyboard(IBinder iBinder) {
        InputMethodManager inputMethodManager;
        if (iBinder == null || getActivity() == null || (inputMethodManager = (InputMethodManager) getActivity().getSystemService("input_method")) == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(iBinder, 2);
    }

    private void i5() {
        GCLivePusher pusher = LivePlayerProvider.pusher();
        this.O5 = pusher;
        pusher.getBeautyManager().reInit();
        this.O5.addPushEventListener(this);
        LivePlayerProvider.player().addPlayEventListener(this);
        BeautyItemCacheManager.setBeauty(5, this.O5.getBeautyManager());
        setMirror(true);
    }

    private boolean j5(View view, MotionEvent motionEvent) {
        if (view instanceof EditText) {
            int[] iArr = {0, 0};
            view.getLocationInWindow(iArr);
            int i9 = iArr[0];
            int i10 = iArr[1];
            return motionEvent.getX() <= ((float) i9) || motionEvent.getX() >= ((float) (view.getWidth() + i9)) || motionEvent.getY() <= ((float) i10) || motionEvent.getY() >= ((float) (view.getHeight() + i10));
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l5(int i9) {
        this.f18333k6 = i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r5(String str) {
        sendC2CLiveMessage(str, LiveMessageModelFactory.createPkReplyMessageModel(getCurrentUser().getUserId(), getCurrentUser().getUserName(), this.W5, this.f18323a6, true, false), new f());
    }

    static /* synthetic */ long u4(BroadCastFragment broadCastFragment) {
        long j10 = broadCastFragment.U5;
        broadCastFragment.U5 = 1 + j10;
        return j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u5(String str) {
        v2();
        w2();
        u2();
        getCurrentLiveRoom().setAdmitDefeatNum(this.f18325c6);
        getCurrentLiveRoom().setIntroductionToPlay(this.f18326d6);
        getCurrentLiveRoom().setPkWaiting(true);
        getCurrentLiveRoom().setInPkPunishmentTime(false);
        getCurrentLiveRoom().setApplyPkState(true);
        this.f18532y.setPkState(false);
        this.f18532y.setPkLoadingState(false);
        ToastUtils.debugToast(getContext(), "同意PK按钮邀请中");
        this.f18532y.refreshPkBtn();
        q5(this.W5, this.f18323a6);
        x.n().s(getActivity(), this);
        x.n().v();
        x.n().A(false);
    }

    private void v5(boolean z10) {
        if (getCurrentLiveRoom().getApplyPkState()) {
            x.n().e();
        }
        if (getCurrentLiveRoom().isInPkMode()) {
            if (getCurrentLiveRoom().getPkUserInfo() != null) {
                this.Y5 = getCurrentLiveRoom().getPkUserInfo().getCurrentUserId();
                this.Z5 = getCurrentLiveRoom().getPkUserInfo().getUserName();
            }
            if (z10) {
                sendC2CLiveMessage(this.Y5, LiveMessageModelFactory.createLeavePkMessage(getCurrentUser().getUserId(), getCurrentUser().getUserName(), this.Y5, this.Z5, getCurrentLiveRoom().isInPkPunishmentTime()), null);
            } else {
                post("tokens/live/pk/downPkLive").I(3).M(new g());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x5(int i9, boolean z10) {
        if (i9 != 2 || FeatureKt.requireFeature(Feature.VOICE_ROOM_SWITCH).isAvailable()) {
            LaunchLiveHolder launchLiveHolder = this.R5;
            if (launchLiveHolder != null) {
                launchLiveHolder.setCurrentIndex(i9, z10);
            }
            getCurrentLiveRoom().setMultiLiveRoom(i9 == 1);
            this.X4.w(i9 == 1);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    public void B3() {
        super.B3();
        GCLivePusher A2 = A2();
        if (A2 == null) {
            return;
        }
        if (this.f18331i6 != null && getCurrentLiveRoom().isInPkPunishmentTime()) {
            A2.getBeautyManager().setMotionTmpl(this.f18331i6);
        } else if (this.L4 != null) {
            A2.getBeautyManager().setMotionTmpl(this.L4);
        } else {
            A2.getBeautyManager().setMotionTmpl("");
        }
    }

    @Override // d9.c
    public void C() {
        PendantDialog pendantDialog = new PendantDialog();
        pendantDialog.setType(5);
        pendantDialog.setOnItemClickListener(new a());
        pendantDialog.show(getChildFragmentManager(), "beauty");
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.broadcaster.LaunchLiveHolder.o
    public void D1(int i9) {
        this.f18498h = i9;
        this.f18334l6 = true;
        if (i9 == 2 || this.R5.isPersons()) {
            UserStateHolder.setIsPrivateOrMultiLiving(true);
        }
        LiveRoomModel liveRoomModel = this.f18506l;
        if (liveRoomModel != null) {
            ((BroadCasterLiveModel) liveRoomModel).setPrivateRoom(i9 == 2);
        }
        X3();
        com.guochao.faceshow.aaspring.modulars.live.common.u.j(3, 0, this.mCountDownTips);
        k2(getView());
        if (i9 == 2) {
            this.btnInvite.setVisibility(0);
        }
        if (getCurrentLiveRoom().isMultiLiveRoom()) {
            this.O5.setPauseImage("leave_bj02.png", 300, 5);
            this.O5.setSoundLevelListener(this);
        } else {
            this.O5.setPauseImage("leave_bj01.png", 300, 5);
            this.O5.setSoundLevelListener(null);
        }
        if (getView() != null && getView().findViewById(R.id.live_activity_view) != null) {
            LiveActivityView liveActivityView = (LiveActivityView) getView().findViewById(R.id.live_activity_view);
            if (liveActivityView.x()) {
                liveActivityView.setVisibility(0);
            }
        }
        View view = this.giftAndAdsView;
        if (view != null) {
            view.setVisibility(0);
            if (getCurrentLiveRoom().isInPkMode()) {
                this.mAdsAndActivityView.setVisibility(8);
                this.firstRechargeLay.setVisibility(8);
            }
        }
        if (getCurrentLiveRoom().isMultiLiveRoom()) {
            this.mMaskRecyclerView.setVisibility(0);
            View view2 = this.mLiveViewMaskContainer;
            if (view2 != null) {
                view2.setVisibility(0);
            }
        } else {
            this.mMaskRecyclerView.setVisibility(8);
            this.mMaskVideoRecyclerView.setVisibility(8);
        }
        this.mTextViewFaceCastId.setVisibility(0);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.broadcaster.LaunchLiveHolder.o
    public void G0(String str, int i9) {
        N3(str, false, i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    public void M3(LiveInfoResult liveInfoResult, boolean z10) {
        if (liveInfoResult != null) {
            LiveUserInfoFragment liveUserInfoFragment = this.f18534z;
            if (liveUserInfoFragment != null) {
                liveUserInfoFragment.setUserInfoData(liveInfoResult, z10, true);
            }
            super.M3(liveInfoResult, z10);
        }
    }

    @Override // d9.g
    public void V0(int i9) {
        LogUtils.i("LiveRoom：", "离开超过60s");
        w5();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.broadcaster.LaunchLiveHolder.o
    public void Y() {
        LaunchLiveHolder launchLiveHolder;
        if (getCurrentLiveRoom().isMultiLiveRoom()) {
            this.mRequestLink.setVisibility(0);
        } else {
            boolean equals = "0".equals(this.R5.getLastMicStatus());
            getCurrentLiveRoom().setLinkMicEnabled(equals);
            getCurrentLiveRoom().setRequestLinkMicEnabled(equals);
            if (this.R5 != null) {
                this.mRequestLink.setVisibility(equals ? 0 : 8);
            }
            t3(false);
        }
        onEnterRoom(this.f18506l.getChatGroupId());
        this.B.postDelayed(this.f18329g6, 10000L);
        if (this.f18534z != null && (launchLiveHolder = this.R5) != null && launchLiveHolder.getLiveRoomModel() != null) {
            this.f18534z.setFcoinCound(this.R5.getLiveRoomModel().getFcoin());
        }
        if (getActivity() instanceof LiveBroadCastActivity) {
            ((LiveBroadCastActivity) getActivity()).t0();
        }
        A3(false);
    }

    public void Z4(LiveInfoMatchBean liveInfoMatchBean) {
        if (this.E4) {
            return;
        }
        this.f18525u5 = LittlePlayerFragment.P1(liveInfoMatchBean);
        this.M = LittleLinkMicInfoFragment.P1(liveInfoMatchBean.getUserNickName(), liveInfoMatchBean);
        u3(R.id.little_pusher_area, this.f18525u5);
        u3(R.id.little_pusher_info_area, this.M);
        t3(true);
    }

    public void b5(IM_User iM_User) {
        this.f18506l.setPkUserInfo(iM_User);
        this.f18506l.setApplyPkState(true);
        this.f18327e6 = true;
        if (this.f18532y != null) {
            ToastUtils.debugToast(getActivity(), "发送邀请PK按钮邀请中");
            this.f18532y.refreshPkBtn();
        }
        this.V1 = false;
        UserStateHolder.setIsPKPrepare(true);
        post("tokens/live/invite/launch/arena").v("liveId", this.f18506l.getLiveRoomId()).v("streamType", "1").v("inviteUserId", iM_User.getCurrentUserId()).M(new i(iM_User));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.g
    public void c(int i9, String str, String str2, String str3, String str4, boolean z10, boolean z11) {
        super.c(i9, str, str2, str3, str4, z10, z11);
        if (i9 != 0) {
            com.guochao.faceshow.aaspring.manager.a.g().w(this, new h(i9), 12);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.g
    public void c0(String str, String str2) {
        super.c0(str, str2);
        post("tokens/live/microphone/leave").v("liveId", getCurrentLiveRoom().getLiveRoomId()).v("streamId", str).v("audienceId", str2).v("anchorId", getCurrentLiveRoom().getBroadCasterUserId()).v("quitType", 3).I(3).M(new o(str2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    public void c3(boolean z10) {
        super.c3(z10);
        if (z10) {
            return;
        }
        A2().setLiveResolution(this.f18332j6);
        x3();
    }

    @Override // d9.c
    public void e1() {
        LaunchLiveHolder launchLiveHolder = this.R5;
        if (launchLiveHolder != null && launchLiveHolder.isPersons()) {
            LiveMoreDialogFragment Z1 = LiveMoreDialogFragment.Z1(2, this.f18332j6);
            this.f18330h6 = Z1;
            Z1.show(getChildFragmentManager(), "more");
        } else {
            LiveMoreDialogFragment Z12 = LiveMoreDialogFragment.Z1(1, this.f18332j6);
            this.f18330h6 = Z12;
            Z12.show(getChildFragmentManager(), "more");
        }
        this.f18330h6.setOnDismissListener(new u());
    }

    public void g5(MotionEvent motionEvent) {
        View currentFocus;
        if (getActivity() != null && motionEvent.getAction() == 0 && (currentFocus = getActivity().getCurrentFocus()) != null && j5(currentFocus, motionEvent)) {
            hideKeyboard(currentFocus.getWindowToken());
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.e
    public LiveRoomModel getCurrentLiveRoom() {
        return super.getCurrentLiveRoom();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_multi_live;
    }

    public void h5() {
        View view;
        if (this.f18530x == null || this.P5 != null || (view = this.mLiveInfoViewContainer) == null || view.getVisibility() == 8 || this.I) {
            return;
        }
        this.P5 = AnimationUtils.loadAnimation(getActivity(), R.anim.scroll_up);
        this.mLiveInfoViewContainer.setVisibility(0);
        this.P5.setDuration(300L);
        this.P5.setAnimationListener(new t());
        this.mLiveInfoViewContainer.startAnimation(this.P5);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(View view, @Nullable Bundle bundle) {
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        PushUtils.registerCustomMessageHandler(this, "104");
        this.H4 = true;
        this.btnInvite.setEnabled(false);
        LiveChatFragment liveChatFragment = this.f18532y;
        if (liveChatFragment != null) {
            liveChatFragment.setPkState(false);
        }
        i5();
        this.f18506l = new LiveLaunchResponse(getCurrentUser());
        LaunchLiveHolder launchLiveHolder = new LaunchLiveHolder(this.mLaunchLiveView, this, bundle);
        this.R5 = launchLiveHolder;
        launchLiveHolder.setPusher(this.O5);
        this.R5.setLiveRoomModel((BroadCasterLiveModel) this.f18506l);
        super.initView(view, bundle);
        UserStateHolder.setLiving(false);
        this.f18483a1 = true;
        this.mLiveBroadCastScrollDownView.setOnScrollListener(new q());
        this.touchView.setOnTouchListener(new r());
        LaunchBottomSwitchHolder launchBottomSwitchHolder = new LaunchBottomSwitchHolder((ViewGroup) view.findViewById(R.id.bottom_switch_lay));
        this.Q5 = launchBottomSwitchHolder;
        launchBottomSwitchHolder.setOnSwitchListener(new LaunchBottomSwitchHolder.a() { // from class: com.guochao.faceshow.aaspring.modulars.live.broadcaster.a
            @Override // com.guochao.faceshow.aaspring.modulars.live.broadcaster.LaunchBottomSwitchHolder.a
            public final void a(int i9, boolean z10) {
                BroadCastFragment.this.x5(i9, z10);
            }
        });
        this.R5.setOnResultListener(this);
        this.R5.reloadNet();
        this.R5.setBottomHolder(this.Q5);
        this.mTextViewLinkMicTip.setText(R.string.live_link_mic_apply_list_title);
        if (getActivity() != null) {
            this.W5 = getActivity().getIntent().getStringExtra("withPkUserId");
            this.X5 = getActivity().getIntent().getStringExtra("withPkLiveId");
            this.f18323a6 = getActivity().getIntent().getStringExtra("withPkUserName");
            a5();
            if (TextUtils.isEmpty(this.W5)) {
                return;
            }
            this.R5.startLiveWithPk();
        }
    }

    @Override // d9.c
    public void j0() {
        if (getCurrentLiveRoom() == null || TextUtils.isEmpty(getCurrentLiveRoom().getLiveRoomId())) {
            return;
        }
        LiveRoomModel currentLiveRoom = getCurrentLiveRoom();
        com.guochao.faceshow.aaspring.modulars.live.common.n nVar = new com.guochao.faceshow.aaspring.modulars.live.common.n(getActivity(), R.style.commonDialog, currentLiveRoom.getLiveRoomId(), currentLiveRoom.getLiveRoomId());
        nVar.setonMuteListener(new b());
        nVar.setCancelable(true);
        nVar.show();
    }

    public boolean k5() {
        com.guochao.faceshow.aaspring.modulars.live.game.f fVar;
        return c9.a.i().g() != null || ((fVar = this.P4) != null && fVar.m() >= 0);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BasePkLiveRoomFragment
    public void l4(boolean z10, boolean z11) {
        super.l4(z10, z11);
        if (z10) {
            if (x.n().p() == 1) {
                UserBean currentUser = getCurrentUser();
                if (x.n().m() != null && x.n().m().getRightAnchorMsg() != null) {
                    sendLiveMessage(LiveMessageModelFactory.createPkMessageModel(currentUser.getUserId(), currentUser.getUserName(), x.n().m().getRightAnchorMsg().getUserId(), x.n().m().getRightAnchorMsg().getUserName()), (e.a<Boolean>) null);
                }
            } else if (getCurrentLiveRoom().getPkUserInfo() != null) {
                UserBean currentUser2 = getCurrentUser();
                ToastUtils.debugToast(getActivity(), "对方主播接受了PK，开始给群组观众下发开始PK消息");
                sendLiveMessage(LiveMessageModelFactory.createPkMessageModel(currentUser2.getUserId(), currentUser2.getUserName(), getCurrentLiveRoom().getPkUserInfo().getCurrentUserId(), getCurrentLiveRoom().getPkUserInfo().getNick_name()), (e.a<Boolean>) null);
            }
        } else {
            A2().setLiveResolution(this.f18332j6);
            this.f18331i6 = null;
            if (this.f18493e5 != null) {
                this.O5.getBeautyManager().setMotionTmpl(this.f18493e5);
            } else {
                this.O5.getBeautyManager().setMotionTmpl(this.L4);
            }
        }
        x3();
    }

    public void m5(@Nullable Intent intent) {
        ViewGroup viewGroup;
        if (intent != null) {
            this.W5 = intent.getStringExtra("withPkUserId");
            this.X5 = intent.getStringExtra("withPkLiveId");
            this.f18323a6 = intent.getStringExtra("withPkUserName");
            a5();
            if (TextUtils.isEmpty(this.f18323a6) || TextUtils.isEmpty(this.W5) || (viewGroup = this.mLaunchLiveView) == null || viewGroup.getParent() == null) {
                return;
            }
            this.R5.startLiveWithPk();
        }
    }

    @Override // com.guochao.faceshow.utils.PushUtils.OnPushCustomMessageHandler
    /* renamed from: n5 */
    public void onPushCustomMessage(@Nullable String str, @NonNull String str2, @NonNull @NotNull Map<String, Object> map, @Nullable @org.jetbrains.annotations.Nullable String str3) {
        if (getActivity() != null) {
            getActivity().runOnUiThread(new m(map));
        }
    }

    public void o5(String str, ResourceListItemBean resourceListItemBean) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.L4 = str;
        if (getCurrentLiveRoom().isInPkMode()) {
            if (getCurrentLiveRoom().isInPkPunishmentTime()) {
                if (x.n().o() == 0) {
                    this.O5.getBeautyManager().setMotionTmpl(str);
                    return;
                }
                return;
            }
            this.O5.getBeautyManager().setMotionTmpl(str);
        } else if (this.f18493e5 != null) {
        } else {
            this.O5.getBeautyManager().setMotionTmpl(str);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        LaunchLiveHolder launchLiveHolder = this.R5;
        if (launchLiveHolder != null) {
            launchLiveHolder.onActivityResult(i9, i10, intent);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, com.guochao.faceshow.aaspring.utils.listener.OnBackButtonPressedHandler
    public boolean onBack() {
        if (this.I) {
            return false;
        }
        if (this.f18530x != null && this.mLiveInfoViewContainer.getVisibility() == 0) {
            h5();
            return true;
        }
        return super.onBack();
    }

    @OnClick
    public void onClick(View view) {
        int id2 = view.getId();
        if (id2 == R.id.btn_invite) {
            s();
        } else if (id2 == R.id.close_live) {
            if (getActivity() == null || getActivity() == null) {
                return;
            }
            getActivity().onBackPressed();
        } else if (id2 != R.id.launch_live_beauty_filter_btn) {
        } else {
            LaunchLiveHolder launchLiveHolder = this.R5;
            if (launchLiveHolder != null) {
                launchLiveHolder.dismissPopupwindow();
            }
            C();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onCloseEvent(Object obj) {
        long j10;
        if (getActivity() == null || !UserStateHolder.isLiving()) {
            return;
        }
        if (obj instanceof y7.b) {
            y7.b bVar = (y7.b) obj;
            if (bVar.f60127f) {
                onLiveFinish(-1, "close " + bVar.toString());
                return;
            }
            try {
                j10 = Long.parseLong(getCurrentLiveRoom().getLiveStartTimestamp());
            } catch (Exception e10) {
                e10.printStackTrace();
                j10 = 0;
            }
            if (TextUtils.isEmpty(bVar.f60124c) && bVar.f60125d == j10 && getCurrentLiveRoom().getLiveRoomId().equals(bVar.f60126e)) {
                onLiveFinish(-2, "close " + bVar.toString());
                ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.Network_Error);
            } else if (TextUtils.isEmpty(bVar.f60124c)) {
            } else {
                LogUtils.i("LiveRoom：", "关播推送，tip = " + bVar.f60124c);
                long j11 = bVar.f60125d;
                if (j11 == 0 || j11 == j10) {
                    N3(bVar.f60124c, true, 2);
                    GCLivePusher gCLivePusher = this.O5;
                    if (gCLivePusher != null) {
                        gCLivePusher.stopAll();
                        this.R5.isErrorPush = true;
                        if (TextUtils.isEmpty(getCurrentLiveRoom().getLiveRoomId())) {
                            return;
                        }
                        onLiveFinish(-3, "close " + bVar.toString());
                    }
                }
            }
        } else if (obj instanceof y7.m) {
            y7.m mVar = (y7.m) obj;
            if (Objects.equals(mVar.a(), getCurrentLiveRoom().getLiveRoomId())) {
                try {
                    StringWriter stringWriter = new StringWriter();
                    StringUtils.unescapeJava(stringWriter, mVar.b().substring(1, mVar.b().length() - 1));
                    sendLiveMessage(LiveMessageModelFactory.createMixedFlowModel(mVar.c(), ((LiveInfoResult) ((FaceCastBaseResponse) BaseLiveRoomFragment.K5.fromJson(new JSONObject(stringWriter.toString()).toString(), C$Gson$Types.newParameterizedTypeWithOwner(null, FaceCastBaseResponse.class, LiveInfoResult.class))).getResult()).getMatchList()), (e.a<Boolean>) null);
                } catch (Exception e11) {
                    LogUtils.e("LiveRoom", "onCloseEvent: ", e11);
                }
            }
        }
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public /* synthetic */ void onConnectToServer(String str, ILivePlayer iLivePlayer) {
        com.guochao.player.base.a.a(this, str, iLivePlayer);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        PushUtils.unregisterCustomMessageHandler(this, "104");
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public /* synthetic */ void onDrawFirstFrame(String str, ILivePlayer iLivePlayer) {
        com.guochao.player.base.a.b(this, str, iLivePlayer);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEndPushEvent(y7.d dVar) {
        VideoCallDuringLivingViewModel videoCallDuringLivingViewModel;
        if (isDetached() || getActivity() == null || getActivity().isFinishing() || getActivity().isDestroyed() || (videoCallDuringLivingViewModel = this.f18482a) == null) {
            return;
        }
        videoCallDuringLivingViewModel.freezeLiveRoom(this);
    }

    @Override // com.guochao.pusher.base.ILivePusher.PushEventListener
    public void onGetPushIp(@Nullable String str) {
        LiveRoomModel currentLiveRoom = getCurrentLiveRoom();
        if (str == null) {
            str = "";
        }
        currentLiveRoom.setLivePushIP(str);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.e
    public void onLinkMicStatusChanged(boolean z10) {
        super.onLinkMicStatusChanged(z10);
        if (this.f18532y != null) {
            if (getCurrentLiveRoom().isInPkMode()) {
                return;
            }
            this.f18532y.setPkBtnVisibility(!z10);
        }
        View view = this.mRequestLink;
        if (view != null) {
            if (z10) {
                if (getCurrentLiveRoom().isFreeLinkMic()) {
                    this.mRequestLink.setVisibility(8);
                } else {
                    this.mRequestLink.setVisibility(0);
                }
            } else {
                view.setVisibility(8);
            }
            i4();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.e
    public void onLiveFinish(int i9, String str) {
        super.onLiveFinish(i9, str);
        if (this.I) {
            return;
        }
        this.O5.stopAll();
        f5();
        v5(true);
        LaunchLiveHolder launchLiveHolder = this.R5;
        if (launchLiveHolder != null) {
            launchLiveHolder.onLiveFinish();
        }
        v2();
        u2();
        w2();
        if (x.n().p() == 1) {
            x.n().g();
        }
        if (getCurrentLiveRoom().getApplyPkState()) {
            c5();
        }
        sendLiveMessageCmd("LIVE_CLOSE", null);
        s5(false);
        UserStateHolder.setLiving(false);
        UserStateHolder.setLocalLiving("");
        LiveBroadCasterInfoFragment liveBroadCasterInfoFragment = this.f18530x;
        if (liveBroadCasterInfoFragment != null) {
            liveBroadCasterInfoFragment.R1();
        }
        if (BaseConfig.isChinese()) {
            PostRequest postRequest = this.T5;
            if (postRequest != null) {
                postRequest.cancel();
                if (this.T5.p() != null) {
                    this.T5.p().cancel();
                }
            }
        } else {
            GetRequest getRequest = this.S5;
            if (getRequest != null) {
                getRequest.cancel();
                if (this.S5.p() != null) {
                    this.S5.p().cancel();
                }
            }
        }
        x.n().j();
        com.guochao.faceshow.aaspring.modulars.live.common.a.m().f();
        l2();
        d(1, true);
        LiveChatFragment liveChatFragment = this.f18532y;
        if (liveChatFragment != null && liveChatFragment.isAdded() && !this.f18532y.isDetached()) {
            this.f18532y.onLiveFinished();
        }
        LaunchLiveHolder launchLiveHolder2 = this.R5;
        if (launchLiveHolder2 != null) {
            launchLiveHolder2.release();
        }
        this.I = true;
        this.B.removeMessages(0);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.e
    public void onNetworkResume(int i9) {
        super.onNetworkResume(i9);
        if (com.guochao.faceshow.aaspring.modulars.live.common.i.e(BaseApplication.getInstance())) {
            LaunchLiveHolder launchLiveHolder = this.R5;
            if (launchLiveHolder != null) {
                launchLiveHolder.reloadNet();
            }
            if (BaseConfig.isChinese()) {
                PostRequest postRequest = this.T5;
                if (postRequest != null) {
                    postRequest.L();
                    return;
                }
                return;
            }
            GetRequest getRequest = this.S5;
            if (getRequest != null) {
                getRequest.L();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        LaunchLiveHolder launchLiveHolder = this.R5;
        if (launchLiveHolder != null) {
            launchLiveHolder.onPause();
        }
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public /* synthetic */ void onPlayEvent(String str, int i9, String str2, Throwable th2) {
        com.guochao.player.base.a.c(this, str, i9, str2, th2);
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public /* synthetic */ void onPlayFirstAudioFrame(String str, ILivePlayer iLivePlayer) {
        com.guochao.player.base.a.d(this, str, iLivePlayer);
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public void onPlayerVolumeUpdate(@NonNull String str, float f10) {
        LiveVideoAudioMaskAdapter liveVideoAudioMaskAdapter;
        if (getCurrentLiveRoom().isMultiLiveRoom() && f10 >= 15.0f && (liveVideoAudioMaskAdapter = this.Z4) != null) {
            List<LiveRoomModel> list = liveVideoAudioMaskAdapter.getList();
            for (int i9 = 0; i9 < list.size(); i9++) {
                LiveRoomModel liveRoomModel = list.get(i9);
                if (liveRoomModel.getStreamId().equals(str)) {
                    if ((liveRoomModel instanceof LiveInfoMatchBean) && "1".equals(((LiveInfoMatchBean) liveRoomModel).getMatchType())) {
                        LiveMessageModel<VolumeMessage> createVolumeModel = LiveMessageModelFactory.createVolumeModel(f10, list.get(i9).getCurrentUserId());
                        sendLiveMessage(createVolumeModel, (e.a<Boolean>) null);
                        this.Z4.F(createVolumeModel.getData());
                        return;
                    }
                    return;
                }
            }
        }
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public /* synthetic */ void onPublishStreamInfo(String str, List list) {
        com.guochao.player.base.a.f(this, str, list);
    }

    @Override // com.guochao.pusher.base.ILivePusher.PushEventListener
    public void onPushSuccess(@NotNull ILivePusher iLivePusher) {
        if (this.V2) {
            return;
        }
        LaunchLiveHolder launchLiveHolder = this.R5;
        if (launchLiveHolder != null) {
            launchLiveHolder.onPushSuccess();
        }
        R3();
        this.V2 = true;
        post(" tokens/live/newLive/monitoringStreamingSuccess").v("streamId", this.f18506l.getStreamId()).v("startTime", getCurrentLiveRoom().getLiveStartTimestamp()).I(3).M(new n());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BasePkLiveRoomFragment, com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.e
    public void onQuitLiveRoom(boolean z10, boolean z11) {
        super.onQuitLiveRoom(z10, z11);
        this.B.removeCallbacks(this.f18329g6);
        if (z10) {
            this.O5.reset();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        io.reactivex.k.just(1).delay(1L, TimeUnit.SECONDS).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new p());
        VideoCallDuringLivingViewModel videoCallDuringLivingViewModel = this.f18482a;
        if (videoCallDuringLivingViewModel != null) {
            videoCallDuringLivingViewModel.unfreezeLiveRoom(this);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        LaunchLiveHolder launchLiveHolder = this.R5;
        if (launchLiveHolder != null) {
            launchLiveHolder.onSaveInstantState(bundle);
        }
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public /* synthetic */ void onVideoLoading(String str, Bundle bundle) {
        com.guochao.player.base.a.g(this, str, bundle);
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public /* synthetic */ void onVideoPlaying(String str, Bundle bundle) {
        com.guochao.player.base.a.h(this, str, bundle);
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public /* synthetic */ void onVideoSizeChanged(String str, int i9, int i10) {
        com.guochao.player.base.a.i(this, str, i9, i10);
    }

    public void p5(@NotNull LiveInfoResult liveInfoResult) {
        if ("0".equals(liveInfoResult.getLivePkState())) {
            if (this.f18512o >= liveInfoResult.getServerTime() || this.f18327e6) {
                return;
            }
            if (x.n().p() != 1) {
                p3();
            } else if (x.n().f19115f == 1 || this.f18516q >= liveInfoResult.getServerTime()) {
            } else {
                p3();
            }
        } else if (!"1".equals(liveInfoResult.getLivePkState()) && !"4".equals(liveInfoResult.getLivePkState()) && !"5".equals(liveInfoResult.getLivePkState())) {
            if (!"2".equals(liveInfoResult.getLivePkState()) || this.f18510n >= liveInfoResult.getServerTime()) {
                return;
            }
            getCurrentLiveRoom().setInPkMode(true);
            getCurrentLiveRoom().setApplyPkState(false);
            getCurrentLiveRoom().setPkWaiting(false);
            this.f18532y.setPkState(true);
        } else if (!getCurrentLiveRoom().getApplyPkState() || this.f18514p >= liveInfoResult.getServerTime() || this.f18508m >= liveInfoResult.getServerTime() || getCurrentLiveRoom().isInPkMode()) {
        } else {
            getCurrentLiveRoom().setApplyPkState(true);
            getCurrentLiveRoom().setInPkMode(false);
            getCurrentLiveRoom().setInPkPunishmentTime(false);
            this.f18532y.refreshPkBtn();
        }
    }

    public void q5(String str, String str2) {
        if (this.f18532y != null) {
            UserBean currentUser = getCurrentUser();
            this.f18532y.onReceiveLiveMessage(LiveMessageModelFactory.createPkMessageModel(currentUser.getUserId(), currentUser.getUserName(), str, str2));
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.g
    public void s() {
        if (UserStateHolder.isLiving()) {
            InviteDialog T1 = InviteDialog.T1(getCurrentLiveRoom(), this.f18333k6, 0);
            T1.setOnDismissListener(new InviteDialog.g() { // from class: com.guochao.faceshow.aaspring.modulars.live.broadcaster.b
                @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteDialog.g
                public final void a(int i9) {
                    BroadCastFragment.this.l5(i9);
                }
            });
            T1.show(getChildFragmentManager(), InviteDialog.class.getSimpleName());
        }
    }

    public void s5(boolean z10) {
        View view;
        if (this.f18530x == null || (view = this.mLiveInfoViewContainer) == null) {
            return;
        }
        Animation animation = this.P5;
        if (animation != null) {
            if (z10) {
                return;
            }
            animation.cancel();
            this.mLiveInfoViewContainer.setVisibility(0);
        } else if (view.getVisibility() == 0) {
        } else {
            if (!z10) {
                this.mLiveInfoViewContainer.setVisibility(0);
                return;
            }
            this.P5 = AnimationUtils.loadAnimation(BaseApplication.getInstance(), R.anim.scroll_down);
            this.mLiveInfoViewContainer.setVisibility(0);
            this.P5.setDuration(300L);
            this.f18530x.P1();
            this.P5.setAnimationListener(new s());
            this.mLiveInfoViewContainer.startAnimation(this.P5);
        }
    }

    @Override // d9.c
    public void setFreeLinkMic(boolean z10) {
        getCurrentLiveRoom().setFreeLinkMic(z10);
        onLinkMicStatusChanged(getCurrentLiveRoom().canRequestLinkMic());
        LinkMicMessage linkMicMessage = new LinkMicMessage();
        linkMicMessage.action = z10;
        sendLiveMessage(new LiveMessageModel("LIVE_LINKMIC_MICMODE", linkMicMessage), (e.a<Boolean>) null);
    }

    @Override // d9.c
    public void setLinkMicEnabled(boolean z10) {
        if (getCurrentLiveRoom() == null || TextUtils.isEmpty(getCurrentLiveRoom().getLiveRoomId())) {
            return;
        }
        post("tokens/live/newLive/updateLiveInfo").v("liveId", getCurrentLiveRoom().getLiveRoomId()).v("isLockMicrophone", Integer.valueOf(!z10 ? 1 : 0)).I(3).M(new c(z10));
    }

    @Override // d9.c
    public void setLiveResolution(int i9) {
        this.f18332j6 = i9;
        this.O5.setLiveResolution(i9);
    }

    @Override // d9.c
    public void setMirror(boolean z10) {
        this.O5.setMirror(z10);
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
        g22.setOnSharePlatformClickListener(new d());
        g22.show(getActivity().getSupportFragmentManager(), ShareDialog.WEB_SHARE_DIALOG);
    }

    @Override // d9.g
    public void switchCamera() {
        LaunchLiveHolder launchLiveHolder;
        LiveMoreDialogFragment.f[] fVarArr;
        RecyclerView recyclerView;
        GCLivePusher gCLivePusher = this.O5;
        if (gCLivePusher != null) {
            gCLivePusher.switchCamera();
            this.R5.isFontCamera = !launchLiveHolder.isFontCamera;
            for (LiveMoreDialogFragment.f fVar : LiveMoreDialogFragment.f18736i) {
                if (R.string.mirror == fVar.f18759c) {
                    fVar.f18760d = this.R5.isFontCamera;
                    LiveMoreDialogFragment liveMoreDialogFragment = this.f18330h6;
                    if (liveMoreDialogFragment == null || !liveMoreDialogFragment.isAdded() || (recyclerView = this.f18330h6.mRecyclerView) == null || recyclerView.getAdapter() == null) {
                        return;
                    }
                    this.f18330h6.mRecyclerView.getAdapter().notifyDataSetChanged();
                    return;
                }
            }
        }
    }

    public void t5() {
        if (getActivity() == null || getActivity().isDestroyed() || getActivity().isFinishing()) {
            return;
        }
        int i9 = 0;
        if (c9.a.i().g() != null) {
            LiveGameBean p02 = c9.a.i().g().p0();
            if (p02 != null) {
                i9 = p02.getFlag();
            }
        } else {
            com.guochao.faceshow.aaspring.modulars.live.game.f fVar = this.P4;
            if (fVar != null && fVar.m() >= 0) {
                i9 = this.P4.j();
            }
        }
        new com.guochao.faceshow.views.e(getActivity(), new j()).b(getActivity().getString(i9 == 1 ? R.string.minigame_close_broadcast_shuijing : R.string.minigame_close_broadcast)).k(getActivity().getString(R.string.minigame_close_ensure)).show();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.g
    public void u1(long j10, int i9) {
        super.u1(j10, i9);
    }

    @Override // d9.c
    public void w0(String str, String str2, String str3, boolean z10) {
        LiveMessageModel<BaseLiveMessage> createAdminModel = LiveMessageModelFactory.createAdminModel(str, str2, z10, str3);
        sendLiveMessage(createAdminModel, (e.a<Boolean>) null);
        onReceiveLiveMessage(createAdminModel);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    public void w3() {
        super.w3();
        f5();
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
        GCLivePusher gCLivePusher = this.O5;
        if (gCLivePusher != null) {
            gCLivePusher.stopAll();
        }
        LaunchLiveHolder launchLiveHolder = this.R5;
        if (launchLiveHolder != null) {
            launchLiveHolder.release();
        }
        this.B.removeMessages(0);
        TextView textView = this.mCountDownTips;
        if (textView != null) {
            textView.clearAnimation();
        }
        this.O5.removePushEventListener(this);
        LivePlayerProvider.player().removePlayEventListener(this);
    }

    public void w5() {
        this.O5.stopAll();
        onLiveFinish(0, "closed");
    }
}
