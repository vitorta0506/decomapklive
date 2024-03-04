package com.guochao.faceshow.aaspring.modulars.main;

import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Lifecycle;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.facebook.AccessToken;
import com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.beans.LivePkInvite;
import com.guochao.faceshow.aaspring.beans.LiveRoomPageData;
import com.guochao.faceshow.aaspring.beans.More;
import com.guochao.faceshow.aaspring.beans.PushBean;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.beans.ShareContentBean;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import com.guochao.faceshow.aaspring.beans.SplashInfoData;
import com.guochao.faceshow.aaspring.config.ServerConfig;
import com.guochao.faceshow.aaspring.manager.ResourceDownloadManager;
import com.guochao.faceshow.aaspring.manager.user.UserModelUtils;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayerProvider;
import com.guochao.faceshow.aaspring.modulars.live.fragment.LiveViewPagerFragment;
import com.guochao.faceshow.aaspring.modulars.login.activity.ChooseLoginTypeActivity;
import com.guochao.faceshow.aaspring.modulars.login.activity.ForcedUpdateActivity;
import com.guochao.faceshow.aaspring.modulars.main.fragment.MainMenuDialogFragment;
import com.guochao.faceshow.aaspring.modulars.massage.ThirdPushTokenMgr;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.MusicVideoActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.VideoTopicsActivity;
import com.guochao.faceshow.aaspring.modulars.user.bind.BindPhoneV2Activity;
import com.guochao.faceshow.aaspring.utils.Constants;
import com.guochao.faceshow.aaspring.utils.CustomNameCacheUtils;
import com.guochao.faceshow.aaspring.utils.DelayIniter;
import com.guochao.faceshow.aaspring.utils.EmptyUtils;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.FragmentUtil;
import com.guochao.faceshow.aaspring.utils.GCEventUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.NewYearEventUtils;
import com.guochao.faceshow.aaspring.utils.NotificationsUtils;
import com.guochao.faceshow.aaspring.utils.PhoneUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UrlUtils;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.activity.VideoPlayActivity;
import com.guochao.faceshow.bean.ShareActivityBean;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.service.AppBackgroundService;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.signin.SigninManager;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.ActivityTypeDialog;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.Foreground;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.LOCAL_EVENT_MSG;
import com.guochao.faceshow.utils.LiveInfoUtils;
import com.guochao.faceshow.utils.LiveRandomGo;
import com.guochao.faceshow.utils.PushUtils;
import com.guochao.faceshow.utils.ShareVideoHelper;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.faceshow.utils.Tool;
import com.guochao.faceshow.views.e;
import com.guochao.faceshow.web.WebViewActivity;
import com.guochao.pusher.beauty.FilterItem;
import com.guochao.pusher.beauty.XMagicBeautyManager;
import com.huawei.hms.aaid.HmsInstanceId;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.push.HmsMessaging;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import org.json.JSONObject;
import org.light.utils.FileUtils;
import vh.o;
import y7.a;
/* loaded from: classes3.dex */
public abstract class BaseMainActivity extends BaseActivity implements a.InterfaceC0697a, LiveRandomGo.GoRandomLiveListener {

    /* renamed from: d  reason: collision with root package name */
    private m f20598d;

    /* renamed from: f  reason: collision with root package name */
    Dialog f20600f;

    /* renamed from: g  reason: collision with root package name */
    private ImageView f20601g;

    /* renamed from: h  reason: collision with root package name */
    private PopupWindow f20602h;

    /* renamed from: i  reason: collision with root package name */
    private TextView f20603i;

    /* renamed from: j  reason: collision with root package name */
    private PopupWindow f20604j;

    /* renamed from: k  reason: collision with root package name */
    private View f20605k;

    /* renamed from: l  reason: collision with root package name */
    private com.guochao.faceshow.views.e f20606l;

    /* renamed from: m  reason: collision with root package name */
    protected boolean f20607m;

    /* renamed from: a  reason: collision with root package name */
    private Handler f20595a = new Handler();

    /* renamed from: b  reason: collision with root package name */
    HashMap<String, String> f20596b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    protected boolean f20597c = false;

    /* renamed from: e  reason: collision with root package name */
    private Runnable f20599e = new g();

    /* renamed from: n  reason: collision with root package name */
    private boolean f20608n = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements e.a {
        a() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                Intent intent = new Intent(BaseMainActivity.this.getActivity(), AppBackgroundService.class);
                intent.putExtra(LOCAL_EVENT_MSG.SHORT_VIDEO_UPLOAD, LOCAL_EVENT_MSG.SHORT_VIDEO_UPLOAD);
                intent.putExtra("retry", true);
                BaseMainActivity.this.startService(intent);
                dialog.dismiss();
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends CountDownTimer {
        b(long j10, long j11) {
            super(j10, j11);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            if (BaseMainActivity.this.f20604j != null) {
                BaseMainActivity.this.f20604j.dismiss();
                BaseMainActivity.this.f20604j = null;
            }
            if (BaseMainActivity.this.f20602h != null) {
                BaseMainActivity.this.f20602h.dismiss();
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j10) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<LiveRoomPageData> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f20611a;

        c(int i9) {
            this.f20611a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            BaseMainActivity.this.f20608n = false;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LiveRoomPageData> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable LiveRoomPageData liveRoomPageData, @NonNull FaceCastBaseResponse<LiveRoomPageData> faceCastBaseResponse) {
            if (liveRoomPageData == null || liveRoomPageData.getRoomList() == null || liveRoomPageData.getRoomList().isEmpty()) {
                return;
            }
            List<RoomItemData> roomList = liveRoomPageData.getRoomList();
            RoomItemData roomItemData = roomList.get(new Random().nextInt(roomList.size()));
            roomItemData.setShowGiftDialog(this.f20611a);
            LiveInfoUtils.jumpToBaseLiveRoomAct(roomItemData, BaseMainActivity.this.getActivity());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map f20613a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f20614b;

        d(Map map, boolean z10) {
            this.f20613a = map;
            this.f20614b = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            PushUtils.savePushTag(BaseMainActivity.this, this.f20613a);
            BaseMainActivity.this.u0(false, this.f20614b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f20616a;

        e(boolean z10) {
            this.f20616a = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseMainActivity.this.u0(false, this.f20616a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<UserBean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f20618a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (TextUtils.isEmpty(b8.e.g().getUserId())) {
                    return;
                }
                PushUtils.setJPushAlias(b8.e.g().getUserId());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements o<Integer, Integer> {
            b() {
            }

            @Override // vh.o
            /* renamed from: a */
            public Integer apply(Integer num) throws Exception {
                String token = HmsInstanceId.getInstance(BaseApplication.getInstance()).getToken(sb.a.d(BaseApplication.getInstance()).b("client/app_id"), HmsMessaging.DEFAULT_TOKEN_SCOPE);
                if (!TextUtils.isEmpty(token)) {
                    ThirdPushTokenMgr.c().h(BaseConfig.HW_PUSH_BUZID, token);
                    ThirdPushTokenMgr.c().g();
                }
                return 1;
            }
        }

        f(boolean z10) {
            this.f20618a = z10;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(UserBean userBean, @NonNull FaceCastBaseResponse<UserBean> faceCastBaseResponse) {
            if (userBean.del == 0) {
                BaseMainActivity.this.startActivity(new Intent(BaseMainActivity.this.getActivity(), ChooseLoginTypeActivity.class));
                BaseMainActivity.this.finish();
                return;
            }
            BaseMainActivity.v0();
            BaseApplication.getInstance().normalLogined = true;
            ToastUtils.debug("token登陆成功，10秒后开始设置极光Alias");
            HandlerGetter.getMainHandler().postDelayed(new a(), 10000L);
            userBean.token = SpUtils.getStr(BaseMainActivity.this.getActivity(), Contants.USER_TOKEN);
            b8.e.g().d(userBean, true, false, true);
            io.reactivex.k.just(1).map(new b()).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new SimpleObserver());
            if (this.f20618a) {
                return;
            }
            if (!EmptyUtils.isEmpty(userBean.getBirthdayStr()) && !EmptyUtils.isEmpty(Integer.valueOf(userBean.sex)) && userBean.sex != 2) {
                BaseMainActivity.this.Q0(BaseApplication.getInstance().getCurrTopActivity() == null ? BaseMainActivity.this : BaseApplication.getInstance().getCurrTopActivity());
                LogUtils.i("zune：", "刷新token之后，更新弹框");
                return;
            }
            BaseMainActivity.this.Y0();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<UserBean> aVar) {
            com.guochao.faceshow.aaspring.modulars.live.pk.a.o().s();
            UserBean b10 = com.guochao.faceshow.aaspring.modulars.login.utils.e.b(BaseMainActivity.this.getActivity());
            if (aVar.a() != 40001) {
                b8.e.g().a(b10, false);
            }
            if (n7.c.c()) {
                com.guochao.faceshow.aaspring.modulars.login.utils.e.d(BaseMainActivity.this.getActivity(), aVar);
                if (aVar.a() == 40003 || aVar.a() == 40007 || aVar.a() == 40010) {
                    BaseMainActivity.this.startActivity(new Intent(BaseMainActivity.this.getActivity(), ChooseLoginTypeActivity.class));
                    BaseMainActivity.this.finish();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements Runnable {

        /* loaded from: classes3.dex */
        class a extends com.guochao.faceshow.aaspring.base.http.callback.c<SparseArray<List<ResourceCategoryItem>>> {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(g7.a<SparseArray<List<ResourceCategoryItem>>> aVar) {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(SparseArray<List<ResourceCategoryItem>> sparseArray, @NonNull FaceCastBaseResponse<SparseArray<List<ResourceCategoryItem>>> faceCastBaseResponse) {
                BaseMainActivity.this.N0(sparseArray);
            }
        }

        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseMainActivity.this.I0();
            com.guochao.faceshow.aaspring.manager.a.g().s(null, new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements o<Integer, Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SparseArray f20624a;

        h(SparseArray sparseArray) {
            this.f20624a = sparseArray;
        }

        @Override // vh.o
        /* renamed from: a */
        public Integer apply(Integer num) throws Exception {
            BaseMainActivity.this.H0((List) this.f20624a.get(1));
            BaseMainActivity.this.H0((List) this.f20624a.get(9));
            BaseMainActivity.this.H0((List) this.f20624a.get(12));
            BaseMainActivity.this.H0((List) this.f20624a.get(14));
            return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends com.guochao.faceshow.aaspring.base.http.callback.d<File> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ File f20626a;

        i(File file) {
            this.f20626a = file;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<File> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.d
        public void onProgress(long j10, long j11, double d10) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public /* bridge */ /* synthetic */ void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse faceCastBaseResponse) {
            onResponse((File) obj, (FaceCastBaseResponse<File>) faceCastBaseResponse);
        }

        public void onResponse(@Nullable File file, @NonNull FaceCastBaseResponse<File> faceCastBaseResponse) {
            if (file != null) {
                file.renameTo(this.f20626a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SpUtils.setBool(BaseMainActivity.this.getActivity(), "agree_license", true);
            BaseMainActivity.this.f20600f.dismiss();
            BaseMainActivity.this.f20600f = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UrlUtils.goTermOfUse(BaseMainActivity.this.getActivity());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UrlUtils.goPrivacy(BaseMainActivity.this.getActivity());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m extends BroadcastReceiver {

        /* loaded from: classes3.dex */
        class a implements PopupWindow.OnDismissListener {
            a() {
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                v9.c.c();
            }
        }

        m() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            int intExtra = intent.getIntExtra("type", 0);
            long longExtra = intent.getLongExtra("total", 0L);
            long longExtra2 = intent.getLongExtra("current", 0L);
            int intExtra2 = intent.getIntExtra("isLottery", 0);
            String stringExtra = intent.getStringExtra("lotteryUrl");
            if (intExtra2 == 1) {
                ActivityTypeDialog.getPrizeDialog(BaseMainActivity.this.getActivity(), stringExtra);
            }
            if (intExtra != 1) {
                if (intExtra == 2) {
                    if (BaseMainActivity.this.f20602h != null) {
                        BaseMainActivity.this.f20602h.dismiss();
                        BaseMainActivity.this.f20602h = null;
                    }
                    BaseMainActivity.this.W0();
                    return;
                } else if (intExtra == 3) {
                    String stringExtra2 = intent.getStringExtra("imgPath");
                    if (BaseMainActivity.this.f20602h == null) {
                        BaseMainActivity baseMainActivity = BaseMainActivity.this;
                        baseMainActivity.f20602h = Tool.createPopWindowTopAnimInstance(baseMainActivity.f20605k);
                    }
                    BaseMainActivity baseMainActivity2 = BaseMainActivity.this;
                    baseMainActivity2.f20601g = (ImageView) baseMainActivity2.f20605k.findViewById(R.id.cover_img);
                    if (!BaseMainActivity.this.f20602h.isShowing()) {
                        if (stringExtra2 != null && !TextUtils.isEmpty(stringExtra2)) {
                            hc.a.h(BaseMainActivity.this.f20601g, stringExtra2, R.drawable.default_image);
                        }
                        BaseMainActivity.this.f20602h.showAtLocation(BaseMainActivity.this.getWindow().getDecorView().findViewById(16908290), 51, 0, 10);
                    }
                    long j10 = (longExtra2 * 100) / longExtra;
                    if (j10 >= 100) {
                        j10 = 99;
                    }
                    TextView textView = BaseMainActivity.this.f20603i;
                    textView.setText(j10 + "%");
                    return;
                } else if (intExtra != 4 || BaseMainActivity.this.f20602h == null) {
                    return;
                } else {
                    BaseMainActivity.this.f20602h.dismiss();
                    BaseMainActivity.this.f20602h = null;
                    return;
                }
            }
            BaseMainActivity.this.f20603i.setText("100%");
            if (BaseMainActivity.this.f20602h != null && BaseMainActivity.this.f20602h.isShowing()) {
                BaseMainActivity.this.f20602h.dismiss();
                BaseMainActivity.this.f20602h = null;
            }
            String stringExtra3 = intent.getStringExtra("img");
            String stringExtra4 = intent.getStringExtra("shortUrl");
            String stringExtra5 = intent.getStringExtra("prospectus");
            String stringExtra6 = intent.getStringExtra("img");
            View inflate = View.inflate(BaseMainActivity.this.getActivity(), R.layout.pop_video_share, null);
            ShareVideoHelper shareVideoHelper = new ShareVideoHelper(inflate);
            ArrayList arrayList = new ArrayList();
            arrayList.add(new SharePlatformBean(SharePlatformBean.FaceBook.NAME, R.mipmap.login_facebook_big));
            arrayList.add(new SharePlatformBean(Constants.ThirdPartyLogin.PLATFORM_TWITTER, R.mipmap.login_t));
            arrayList.add(new SharePlatformBean(SharePlatformBean.Instagram.NAME, R.mipmap.login_stagram));
            arrayList.add(new SharePlatformBean(SharePlatformBean.Youtube.NAME, R.mipmap.login_youtube));
            arrayList.add(new SharePlatformBean(More.NAME, R.mipmap.more));
            shareVideoHelper.setPlatformList(arrayList);
            ShareContentBean shareContentBean = new ShareContentBean();
            shareContentBean.setImgUrl(stringExtra3);
            shareContentBean.setShortUrl(stringExtra4);
            String format = String.format(BaseApplication.getInstance().getString(R.string.share_weichat_video_title), BaseMainActivity.this.getCurrentUser().getUserName());
            String format2 = !TextUtils.isEmpty(stringExtra5) ? String.format("%s | %s | %s", BaseMainActivity.this.getCurrentUser().getUserName(), eb.b.y(), stringExtra5) : String.format("%s | %s", BaseMainActivity.this.getCurrentUser().getUserName(), eb.b.y());
            shareContentBean.setTitle(format);
            shareContentBean.setContent(format2);
            shareVideoHelper.setShareContentBean(shareContentBean);
            BaseMainActivity.this.f20601g = (ImageView) inflate.findViewById(R.id.cover_img);
            try {
                hc.a.j(BaseMainActivity.this.f20601g, stringExtra6);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (BaseMainActivity.this.f20604j == null) {
                BaseMainActivity baseMainActivity3 = BaseMainActivity.this;
                baseMainActivity3.f20604j = Tool.creatPopWindowTopshareAnim(inflate, baseMainActivity3.getWindow().getDecorView().findViewById(16908290));
                BaseMainActivity.this.f20604j.setOnDismissListener(new a());
            }
            BaseMainActivity.this.Z0(10L);
        }
    }

    private void B0() {
        if (com.guochao.faceshow.aaspring.manager.i.u().s().getNetToday().equals(SpUtils.getStr(this, "SignInShown" + b8.e.g().getUserId()))) {
            return;
        }
        SpUtils.setStr(this, "SignInShown" + b8.e.g().getUserId(), com.guochao.faceshow.aaspring.manager.i.u().s().getNetToday());
        SigninManager signinManager = SigninManager.INSTANCE;
        signinManager.checkSignInTask(this, null);
        signinManager.setServerDiffTime(com.guochao.faceshow.aaspring.manager.i.u().s().getServerTimeDiff());
    }

    private void E0(Intent intent) {
        String stringExtra = intent.getStringExtra("roomId");
        String stringExtra2 = intent.getStringExtra("chatGroupId");
        if (TextUtils.isEmpty(stringExtra) || TextUtils.isEmpty(stringExtra)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        VoiceRoomInfoModel voiceRoomInfoModel = new VoiceRoomInfoModel();
        voiceRoomInfoModel.setRoomId(stringExtra);
        voiceRoomInfoModel.setUserId(stringExtra);
        voiceRoomInfoModel.setId(Integer.parseInt(stringExtra));
        voiceRoomInfoModel.setChatGroupId(stringExtra2);
        arrayList.add(voiceRoomInfoModel);
        VoiceRoomMiniHelper.gotoVoiceRoom(this, 0, arrayList);
    }

    private void G0(ResourceCategoryItem resourceCategoryItem, List<ResourceListItemBean> list, int i9) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            ResourceListItemBean resourceListItemBean = list.get(i10);
            if (resourceCategoryItem.getModuleCode() == 1) {
                com.guochao.faceshow.aaspring.manager.a.g().k(resourceCategoryItem, resourceListItemBean, 10002, null);
            }
            com.guochao.faceshow.aaspring.manager.a.g().l(resourceCategoryItem, resourceListItemBean, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H0(List<ResourceCategoryItem> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (int i9 = 0; i9 < list.size(); i9++) {
            ResourceCategoryItem resourceCategoryItem = list.get(i9);
            List<ResourceListItemBean> gifList = list.get(i9).getGifList();
            if (gifList != null && !gifList.isEmpty()) {
                G0(resourceCategoryItem, gifList, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I0() {
        List<FilterItem> filterItems = XMagicBeautyManager.getInstance(BaseApplication.getInstance()).getFilterItems();
        for (int i9 = 0; i9 < filterItems.size(); i9++) {
            FilterItem filterItem = filterItems.get(i9);
            File file = new File(FilePathProvider.getNXShowPath("lut") + FileUtils.RES_PREFIX_STORAGE + filterItem.getName() + FileUtils.PIC_POSTFIX_PNG);
            if (!file.exists()) {
                String url = filterItem.getUrl();
                ResourceDownloadManager.download(url, file.getAbsolutePath() + "_temp", new i(file));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N0(SparseArray<List<ResourceCategoryItem>> sparseArray) {
        io.reactivex.k.just(1).subscribeOn(di.a.b()).map(new h(sparseArray)).subscribe(new SimpleObserver());
    }

    private void S0() {
        View inflate = View.inflate(getActivity(), R.layout.pop_loading, null);
        this.f20605k = inflate;
        this.f20603i = (TextView) inflate.findViewById(R.id.loading_proess);
        this.f20601g = (ImageView) this.f20605k.findViewById(R.id.cover_img);
    }

    private void T0() {
        this.f20598d = new m();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(LOCAL_EVENT_MSG.SHORT_VIDEO_UPLOAD_STATUS);
        LocalBroadcastManager.getInstance(this).registerReceiver(this.f20598d, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W0() {
        if (this.f20606l == null) {
            com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(getActivity(), new a());
            this.f20606l = eVar;
            eVar.f(getResources().getString(R.string.upload_retry_tip));
            this.f20606l.k(getResources().getString(R.string.upload_retry_confirm));
            this.f20606l.i(getResources().getString(R.string.str_no));
            this.f20606l.g();
            this.f20606l.h(48);
        }
        this.f20606l.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z0(long j10) {
        new b(j10 * 1000, 1000L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0(boolean z10, boolean z11) {
        if (z11) {
            return;
        }
        if (getIntent().getBooleanExtra("with_token", false)) {
            FaceCastBaseResponse faceCastBaseResponse = (FaceCastBaseResponse) MemoryCache.getInstance().remove(FaceCastBaseResponse.class.getName());
            Q0(this);
            if (faceCastBaseResponse != null && (EmptyUtils.isEmpty(((UserBean) faceCastBaseResponse.getResult()).getBirthdayStr()) || EmptyUtils.isEmpty(Integer.valueOf(((UserBean) faceCastBaseResponse.getResult()).sex)) || ((UserBean) faceCastBaseResponse.getResult()).sex == 2)) {
                Y0();
            }
            v0();
            return;
        }
        post("api/sys/tokenLogin").D(JThirdPlatFormInterface.KEY_TOKEN, SpUtils.getStr(getActivity(), Contants.USER_TOKEN)).K(false).M(new f(z10));
    }

    public static void v0() {
        String selfString2 = SpUtils.getSelfString2("last_login_day");
        String format = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
        if (TextUtils.equals(selfString2, format)) {
            return;
        }
        GCEventUtils.track(GCEventUtils.USER_LOGIN);
        SpUtils.setSelfString2("last_login_day", format);
    }

    void A0() {
        this.f20595a.postDelayed(this.f20599e, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void F0(boolean z10) {
        if (ThirdPushHelper.checkWhereToGo(this, getIntent())) {
            u0(true, z10);
            return;
        }
        PushBean pushBean = (PushBean) MemoryCache.getInstance().clear(PushBean.class);
        if (pushBean == null) {
            Intent intent = getIntent();
            if (intent != null && !TextUtils.isEmpty(intent.getDataString())) {
                String dataString = intent.getDataString();
                LogUtils.i(PushUtils.KEY_FROM_PUSH, "Main OnCreate" + dataString);
                try {
                    JSONObject jSONObject = new JSONObject(dataString).getJSONObject("n_extras");
                    HashMap hashMap = new HashMap();
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String obj = keys.next().toString();
                        hashMap.put(obj, jSONObject.get(obj).toString());
                    }
                    HandlerGetter.getMainHandler().post(new d(hashMap, z10));
                    return;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    u0(false, z10);
                    return;
                }
            }
            u0(false, z10);
            E0(intent);
        } else if (pushBean.goToWelcomePage) {
            pushBean.goToWelcomePage = false;
            X0();
            HandlerGetter.getMainHandler().postDelayed(new e(z10), 300L);
        } else {
            Map<String, Object> map = pushBean.pushData;
            if (map != null) {
                PushUtils.openNotification(this, map, false);
                u0(true, z10);
            }
            Map<String, Object> map2 = pushBean.shareData;
            if (map2 != null) {
                PushUtils.openShareActivity(this, map2, false);
                u0(true, z10);
            }
            boolean z11 = pushBean.withChat;
            if (z11 || pushBean.withEmptyChat) {
                u0(z11, z10);
            }
        }
    }

    public void P0(int i9) {
        if (this.f20608n) {
            return;
        }
        this.f20608n = true;
        get("tokens/live/cache/getLiveList").v("page", "1").v("limit", 20).v("typeId", "1").M(new c(i9));
    }

    protected void Q0(Activity activity) {
        if (getCurrentUser().getBindMobileLimit() == 1 && PhoneUtils.isSouthKorea() && TextUtils.isEmpty(getCurrentUser().mobile)) {
            BindPhoneV2Activity.u0(this, 0, MainActivity.class.getSimpleName(), 1001);
            return;
        }
        try {
            if (getCurrentUser().getIsUpdate() != 0) {
                gb.c.p().u(getCurrentUser().getIsUpdate() == 1).l(activity);
            } else {
                y0();
                com.guochao.faceshow.aaspring.modulars.live.pk.a.o().s();
            }
        } catch (Exception unused) {
        }
        com.guochao.faceshow.aaspring.modulars.live.pk.a.o().s();
    }

    public void X0() {
        String str;
        String str2;
        String[] split;
        SplashInfoData.ResultData resultData = (SplashInfoData.ResultData) MemoryCache.getInstance().remove("splashInfoData");
        if (resultData == null || (str = resultData.clickAction) == null) {
            return;
        }
        String str3 = resultData.schemeUrl;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 48:
                if (str.equals("0")) {
                    c10 = 0;
                    break;
                }
                break;
            case 49:
                if (str.equals("1")) {
                    c10 = 1;
                    break;
                }
                break;
            case 50:
                if (str.equals("2")) {
                    c10 = 2;
                    break;
                }
                break;
            case 51:
                if (str.equals("3")) {
                    c10 = 3;
                    break;
                }
                break;
            case 52:
                if (str.equals("4")) {
                    c10 = 4;
                    break;
                }
                break;
            case 53:
                if (str.equals("5")) {
                    c10 = 5;
                    break;
                }
                break;
        }
        String str4 = "";
        switch (c10) {
            case 0:
                if (TextUtils.isEmpty(str3) || !str3.contains("facecast://webview?")) {
                    str2 = "";
                } else {
                    String replace = str3.replace("facecast://webview?", "");
                    if (!TextUtils.isEmpty(replace)) {
                        for (String str5 : replace.split(ContainerUtils.FIELD_DELIMITER)) {
                            String[] split2 = str5.split(ContainerUtils.KEY_VALUE_DELIMITER);
                            if (split2.length == 2) {
                                this.f20596b.put(split2[0], split2[1]);
                            } else {
                                this.f20596b.put(split2[0], str5.replace(split2[0] + ContainerUtils.KEY_VALUE_DELIMITER, ""));
                            }
                        }
                        str4 = this.f20596b.get("h5Type");
                    }
                    str2 = this.f20596b.get("h5Url");
                }
                if (TextUtils.equals("0", str4)) {
                    ShareActivityBean shareActivityBean = new ShareActivityBean();
                    String str6 = this.f20596b.get("shareUrl");
                    String str7 = this.f20596b.get("shareImg");
                    String str8 = this.f20596b.get("shareText");
                    shareActivityBean.shareImgUrl = str7;
                    shareActivityBean.webPageUrl = str6;
                    shareActivityBean.shareTextCn = str8;
                    shareActivityBean.shareTextEn = str8;
                    if (TextUtils.isEmpty(str2)) {
                        return;
                    }
                    if ("1".equals(this.f20596b.get("isShare"))) {
                        WebViewActivity.createBuilder().m(str2).g(true).i(str8).h(str7).k(str6).a(this);
                        return;
                    } else {
                        WebViewActivity.createBuilder().m(str2).a(this);
                        return;
                    }
                } else if (TextUtils.isEmpty(str2)) {
                    return;
                } else {
                    startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str2)));
                    return;
                }
            case 1:
                if (TextUtils.isEmpty(str3) || !str3.contains("facecast://live/detail?")) {
                    return;
                }
                String replace2 = str3.replace("facecast://live/detail?", "");
                if (!TextUtils.isEmpty(replace2)) {
                    for (String str9 : replace2.split(ContainerUtils.FIELD_DELIMITER)) {
                        String[] split3 = str9.split(ContainerUtils.KEY_VALUE_DELIMITER);
                        if (split3.length == 2) {
                            this.f20596b.put(split3[0], split3[1]);
                        }
                    }
                }
                String str10 = this.f20596b.get("liveId");
                if (TextUtils.isEmpty(str10)) {
                    return;
                }
                LiveInfoUtils.getLiveInfoAndJumpIfNeed(str10, BaseApplication.getInstance());
                return;
            case 2:
                if (!TextUtils.isEmpty(str3) && str3.contains("facecast://video/detail?")) {
                    String replace3 = str3.replace("facecast://video/detail?", "");
                    if (!TextUtils.isEmpty(replace3)) {
                        for (String str11 : replace3.split(ContainerUtils.FIELD_DELIMITER)) {
                            String[] split4 = str11.split(ContainerUtils.KEY_VALUE_DELIMITER);
                            this.f20596b.put(split4[0], split4[1]);
                        }
                    }
                }
                Intent intent = new Intent(this, VideoPlayActivity.class);
                intent.putExtra(TCConstants.PLAYER_VIDEO_ID, this.f20596b.get("videoId"));
                intent.putExtra("videoUrl", this.f20596b.get("videoUrl"));
                intent.putExtra("imgUrl", this.f20596b.get("videoImg"));
                intent.putExtra(AccessToken.USER_ID_KEY, this.f20596b.get(Contants.USER_ID));
                startActivity(intent);
                return;
            case 3:
                if (!TextUtils.isEmpty(str3) && str3.contains("facecast://videotopic?")) {
                    String replace4 = str3.replace("facecast://videotopic?", "");
                    if (!TextUtils.isEmpty(replace4)) {
                        for (String str12 : replace4.split(ContainerUtils.FIELD_DELIMITER)) {
                            String[] split5 = str12.split(ContainerUtils.KEY_VALUE_DELIMITER);
                            if (split5.length == 2) {
                                this.f20596b.put(split5[0], split5[1]);
                            }
                        }
                    }
                }
                Intent intent2 = new Intent(getActivity(), VideoTopicsActivity.class);
                intent2.setFlags(268435456);
                intent2.putExtra("topic_id", this.f20596b.get("topicId"));
                intent2.putExtra("titleName", "#" + this.f20596b.get("topicName"));
                startActivity(intent2);
                return;
            case 4:
                if (!TextUtils.isEmpty(str3) && str3.contains("facecast://musictopic?")) {
                    String replace5 = str3.replace("facecast://musictopic?", "");
                    if (!TextUtils.isEmpty(replace5)) {
                        for (String str13 : replace5.split(ContainerUtils.FIELD_DELIMITER)) {
                            String[] split6 = str13.split(ContainerUtils.KEY_VALUE_DELIMITER);
                            if (split6.length == 2) {
                                this.f20596b.put(split6[0], split6[1]);
                            }
                        }
                    }
                }
                Intent intent3 = new Intent(this, MusicVideoActivity.class);
                intent3.putExtra("musicId", this.f20596b.get("musicId"));
                intent3.putExtra("titleName", this.f20596b.get("musicName"));
                intent3.putExtra("musicUrl", this.f20596b.get("musicUrl"));
                startActivity(intent3);
                return;
            case 5:
                if (!TextUtils.isEmpty(str3) && str3.contains("facecast://homepage?")) {
                    String replace6 = str3.replace("facecast://homepage?", "");
                    if (!TextUtils.isEmpty(replace6)) {
                        for (String str14 : replace6.split(ContainerUtils.FIELD_DELIMITER)) {
                            String[] split7 = str14.split(ContainerUtils.KEY_VALUE_DELIMITER);
                            if (split7.length == 2) {
                                this.f20596b.put(split7[0], split7[1]);
                            }
                        }
                    }
                }
                Intent intent4 = new Intent(this, UserHomePageAct.class);
                intent4.putExtra(Contants.USER_ID, this.f20596b.get(Contants.USER_ID));
                startActivity(intent4);
                return;
            default:
                return;
        }
    }

    public void Y0() {
        Intent intent = new Intent(getActivity(), ForcedUpdateActivity.class);
        intent.putExtra("birthday", getCurrentUser().getBirthdayStr());
        intent.putExtra("sex", getCurrentUser().sex);
        startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_main;
    }

    @Override // com.guochao.faceshow.utils.LiveRandomGo.GoRandomLiveListener
    public void goRandomLive() {
        P0(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        gb.c.p().s(i9, i10);
        if (i9 == 0 && i10 == -1 && intent != null) {
            if (intent.getIntExtra("checkStartLive", 0) != 1) {
                return;
            }
            GCCoreActivity activity = getActivity();
            if (CustomNameCacheUtils.getInt(activity, CustomNameCacheUtils.MODULE_NOTIFICATION, getCurrentUser().getCurrentUserId() + "KEY_NOTIFICATION_STATE") != 1 && !NotificationsUtils.isNotificationEnabled(getActivity())) {
                return;
            }
            if (ja.a.b().f("KEY_OPEN_LIVE")) {
                Fragment findFragmentByTag = getSupportFragmentManager().findFragmentByTag(LiveViewPagerFragment.class.getName());
                if (findFragmentByTag instanceof LiveViewPagerFragment) {
                    ((LiveViewPagerFragment) findFragmentByTag).W1();
                } else {
                    this.f20597c = true;
                }
            }
        }
        if (i9 == 1001 && i10 == -1) {
            getCurrentUser().mobile = "1";
            Q0(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        UserBean c10 = com.guochao.faceshow.aaspring.modulars.login.utils.e.c(this);
        if (c10 != null) {
            UserSessionViewModel.instance().updateUserSession(UserModelUtils.INSTANCE.convert(c10));
        }
        DelayIniter.initWhenSplashOrMain();
        DelayIniter.checkNetworkToken();
        super.onCreate(bundle);
        MemoryCache.getInstance().put(MainActivity.class.getSimpleName(), Boolean.TRUE);
        S0();
        T0();
        com.guochao.faceshow.aaspring.manager.i.u().r();
        A0();
        y7.a.a().c(this);
        NewYearEventUtils.checkNewYearEvent(this, null);
        com.guochao.faceshow.aaspring.manager.im.b.l0().Z();
        LiveRandomGo.INSTANCE.registerRandomLiveListener(this);
        B0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        y7.a.a().d(this);
        if (this.f20598d != null) {
            LocalBroadcastManager.getInstance(this).unregisterReceiver(this.f20598d);
        }
        if (!isDestroyed()) {
            gb.c.p().o();
        }
        this.f20595a.removeCallbacks(this.f20599e);
        c8.a.r().z();
        Foreground.get().mRunnable.run();
        if (!WatchLiveRoomActivity.L4) {
            LivePlayerProvider.release();
        }
        z8.c.o().N(null);
        z8.c.o().J(true, false);
        LiveRandomGo.INSTANCE.unRegisterRandomLiveListener(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        F0(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.manager.i.InterfaceC0154i
    public void onServerConfigChanged(ServerConfig serverConfig, ServerConfig serverConfig2) {
        super.onServerConfigChanged(serverConfig, serverConfig2);
        NewYearEventUtils.checkNewYearEvent(this, serverConfig2);
    }

    @Override // com.guochao.faceshow.utils.LiveRandomGo.GoRandomLiveListener
    public void sendVideo() {
        if (getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            return;
        }
        FragmentUtil.showFragmentAsDialog(getSupportFragmentManager(), 16908290, new MainMenuDialogFragment(), true, "main_menu");
    }

    protected void y0() {
        Dialog dialog = this.f20600f;
        if ((dialog == null || !dialog.isShowing()) && !SpUtils.getBool(this, "agree_license", true)) {
            AlertDialog.Builder builder = new AlertDialog.Builder(BaseApplication.getInstance().getCurrTopActivity() == null ? this : BaseApplication.getInstance().getCurrTopActivity());
            View inflate = LayoutInflater.from(this).inflate(R.layout.dialog_agree_license, (ViewGroup) null);
            builder.setView(inflate);
            builder.setCancelable(false);
            this.f20600f = builder.create();
            com.guochao.faceshow.aaspring.modulars.live.pk.a.o().f19757d = this.f20600f;
            com.guochao.faceshow.aaspring.modulars.live.pk.a.o().g(new LivePkInvite(4));
            this.f20600f.getWindow().setBackgroundDrawableResource(R.color.transparent);
            inflate.findViewById(R.id.btnAgree).setOnClickListener(new j());
            inflate.findViewById(R.id.term).setOnClickListener(new k());
            inflate.findViewById(R.id.policy).setOnClickListener(new l());
        }
    }

    @Override // y7.a.InterfaceC0697a
    public void z() {
        if (BaseApplication.getInstance().getCurrTopActivity() instanceof FragmentActivity) {
            Q0((FragmentActivity) BaseApplication.getInstance().getCurrTopActivity());
        }
    }
}
