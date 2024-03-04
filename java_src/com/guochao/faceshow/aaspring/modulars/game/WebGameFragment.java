package com.guochao.faceshow.aaspring.modulars.game;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.WebViewFragment;
import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.utils.SoundPoolManager;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.aaspring.utils.UrlUtils;
import com.guochao.faceshow.aaspring.views.WebGameLayout;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.TXIMUtils;
import com.guochao.faceshow.web.jsinterface.GameJsAction;
import com.guochao.faceshow.web.jsinterface.HalloweenJSAction;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import com.tencent.imsdk.v2.V2TIMAdvancedMsgListener;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import d9.g;
import java.io.Closeable;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Objects;
import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
import org.json.JSONObject;
import p9.a;
/* loaded from: classes3.dex */
public class WebGameFragment extends WebViewFragment implements a.e, HalloweenJSAction.OnCallBack, Closeable {

    /* renamed from: a  reason: collision with root package name */
    public LiveGameBean f17765a;

    /* renamed from: b  reason: collision with root package name */
    private eb.b f17766b;

    /* renamed from: c  reason: collision with root package name */
    LiveInfo f17767c;

    /* renamed from: d  reason: collision with root package name */
    private e f17768d;

    /* renamed from: e  reason: collision with root package name */
    private float f17769e;

    /* renamed from: f  reason: collision with root package name */
    SVGAImageView f17770f;
    @BindView
    ViewGroup mViewGroup;
    @BindView
    WebGameLayout mWebGameLayout;

    /* loaded from: classes3.dex */
    public static class LiveInfo implements Parcelable {
        public static final Parcelable.Creator<LiveInfo> CREATOR = new a();
        private String liveId;
        private String nickName;
        private String userId;

        /* loaded from: classes3.dex */
        class a implements Parcelable.Creator<LiveInfo> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public LiveInfo createFromParcel(Parcel parcel) {
                return new LiveInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public LiveInfo[] newArray(int i9) {
                return new LiveInfo[i9];
            }
        }

        public LiveInfo() {
        }

        public static LiveInfo a(LiveRoomModel liveRoomModel) {
            LiveInfo liveInfo = new LiveInfo();
            liveInfo.liveId = liveRoomModel.getLiveRoomId();
            liveInfo.nickName = liveRoomModel.getUserNickName();
            liveInfo.userId = liveRoomModel.getBroadCasterUserId();
            return liveInfo;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeString(this.liveId);
            parcel.writeString(this.userId);
            parcel.writeString(this.nickName);
        }

        protected LiveInfo(Parcel parcel) {
            this.liveId = parcel.readString();
            this.userId = parcel.readString();
            this.nickName = parcel.readString();
        }
    }

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g gVar;
            if (WebGameFragment.this.getActivity() == null || (gVar = (g) WebGameFragment.this.getParentFragment()) == null) {
                return;
            }
            WebGameFragment.this.f17766b.F(WebGameFragment.this.getActivity().getWindow().getDecorView(), WebGameFragment.this.getString(R.string.live_game_share_title), WebGameFragment.this.getString(R.string.live_game_hare_text), null, UrlUtils.appendInviter(WebGameFragment.this.f17765a.getShareUrl(), String.valueOf(WebGameFragment.this.f17765a.getGameCode())), gVar.getCurrentLiveRoom().getLiveRoomId());
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        float f17772a;

        /* renamed from: b  reason: collision with root package name */
        float f17773b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f17774c;

        b(int i9) {
            this.f17774c = i9;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            int action = motionEvent.getAction();
            if (action != 0) {
                if ((action == 1 || action == 3) && Math.abs(rawX - this.f17772a) <= this.f17774c && Math.abs(rawY - this.f17773b) <= this.f17774c) {
                    WebGameFragment.this.R1();
                    return false;
                }
                return false;
            }
            this.f17772a = rawX;
            this.f17773b = rawY;
            return true;
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (WebGameFragment.this.getActivity() == null || WebGameFragment.this.isDetached() || !WebGameFragment.this.isAdded()) {
                return;
            }
            WebGameFragment webGameFragment = WebGameFragment.this;
            if (webGameFragment.f17770f == null) {
                webGameFragment.f17770f = new SVGAImageView(WebGameFragment.this.getActivity());
                WebGameFragment webGameFragment2 = WebGameFragment.this;
                webGameFragment2.mViewGroup.addView(webGameFragment2.f17770f);
                WebGameFragment.this.f17770f.setClearsAfterStop(true);
            }
            SoundPoolManager.getInstance(BaseApplication.getInstance()).playRaw(R.raw.newbie_gift);
            SvgaImageViewUtils.getParser().decodeFromInputStream(WebGameFragment.this.getResources().openRawResource(R.raw.lottery_svga), "lottery", new f(WebGameFragment.this), true);
        }
    }

    /* loaded from: classes3.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private boolean f17777a = true;

        /* renamed from: b  reason: collision with root package name */
        private LiveGameBean f17778b;

        /* renamed from: c  reason: collision with root package name */
        private String f17779c;

        /* renamed from: d  reason: collision with root package name */
        private LiveInfo f17780d;

        public d a(LiveGameBean liveGameBean) {
            this.f17778b = liveGameBean;
            return this;
        }

        public WebGameFragment b() {
            Bundle bundle = new Bundle();
            bundle.putParcelable("data", this.f17778b);
            bundle.putString("url", this.f17778b.getH5PageUrl());
            bundle.putString("title", this.f17779c);
            LiveGameBean liveGameBean = this.f17778b;
            bundle.putFloat("heightRatio", liveGameBean == null ? 1.0f : liveGameBean.getPercent());
            bundle.putParcelable("liveInfo", this.f17780d);
            return WebGameFragment.S1(this.f17777a, bundle);
        }

        public d c(LiveInfo liveInfo) {
            this.f17780d = liveInfo;
            return this;
        }
    }

    /* loaded from: classes3.dex */
    private static class e extends V2TIMAdvancedMsgListener {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<WebGameFragment> f17781a;

        public e(WebGameFragment webGameFragment) {
            this.f17781a = new WeakReference<>(webGameFragment);
        }

        @Override // com.tencent.imsdk.v2.V2TIMAdvancedMsgListener
        public void onRecvNewMessage(V2TIMMessage v2TIMMessage) {
            WebGameFragment webGameFragment = this.f17781a.get();
            if (webGameFragment == null || webGameFragment.isDetached()) {
                return;
            }
            if ((Objects.equals(webGameFragment.f17765a.getGameGroupId(), v2TIMMessage.getGroupID()) || "game_admin".equals(v2TIMMessage.getUserID())) && v2TIMMessage.getCustomElem() != null) {
                String str = new String(v2TIMMessage.getCustomElem().getData());
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("message", str);
                    if (!TextUtils.isEmpty(v2TIMMessage.getGroupID())) {
                        jSONObject.put("groupId", v2TIMMessage.getGroupID());
                    }
                    jSONObject.put("timeStamp", v2TIMMessage.getTimestamp() * 1000);
                    jSONObject.put("sender", v2TIMMessage.getSender());
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
                webGameFragment.getWebView().s(String.format("onReceiveGroupMessage(%s)", jSONObject.toString()));
            }
        }
    }

    /* loaded from: classes3.dex */
    private static class f implements SVGAParser.ParseCompletion {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<WebGameFragment> f17782a;

        public f(WebGameFragment webGameFragment) {
            this.f17782a = new WeakReference<>(webGameFragment);
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            WebGameFragment webGameFragment = this.f17782a.get();
            if (webGameFragment == null || webGameFragment.getActivity() == null) {
                return;
            }
            webGameFragment.f17770f.setVideoItem(sVGAVideoEntity);
            SvgaImageViewUtils.fitScreenWidth(sVGAVideoEntity, webGameFragment.f17770f);
            webGameFragment.f17770f.startAnimation();
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static WebGameFragment S1(boolean z10, Bundle bundle) {
        WebGameFragment webGameFragment = new WebGameFragment();
        webGameFragment.setArguments(bundle);
        webGameFragment.setShowsDialog(z10);
        return webGameFragment;
    }

    public void R1() {
        if ((getActivity() == null && getParentFragment() == null) || getParentFragmentManager() == null) {
            return;
        }
        getParentFragmentManager().beginTransaction().setCustomAnimations(R.anim.pop_in_bottom_to_top, R.anim.pop_out_top_to_bottom, R.anim.pop_in_bottom_to_top, R.anim.pop_out_top_to_bottom).remove(this).commitAllowingStateLoss();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        R1();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment
    public Object getJSAction() {
        if (this.mJSAction == null) {
            GameJsAction gameJsAction = new GameJsAction(this, this.f17767c, this.f17765a);
            this.mJSAction = gameJsAction;
            gameJsAction.setOnCallBack(this);
        }
        return this.mJSAction;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_web_game;
    }

    @Override // com.guochao.faceshow.web.jsinterface.HalloweenJSAction.OnCallBack
    public /* synthetic */ void getReCaptChaToken(Object obj) {
        com.guochao.faceshow.web.jsinterface.a.a(this, obj);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        LiveGameBean liveGameBean = this.f17765a;
        if (liveGameBean != null && liveGameBean.getGameCode() == 8) {
            this.mWebGameLayout.f24142b = false;
        }
        this.f17766b = new eb.b(getActivity());
        p9.a.g().c(this);
        view.findViewById(R.id.click).setOnTouchListener(new b(ViewConfiguration.get(getContext()).getScaledEdgeSlop()));
        if (TextUtils.isEmpty(this.f17765a.getGameGroupId())) {
            return;
        }
        TXIMUtils.joinGroup(this.f17765a.getGameGroupId());
        this.f17768d = new e(this);
        V2TIMManager.getMessageManager().addAdvancedMsgListener(this.f17768d);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (getView() != null) {
            View findViewById = getView().findViewById(R.id.content_layout);
            ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
            if (this.f17769e == 0.0f) {
                this.f17769e = 1.0f;
            }
            layoutParams.height = (int) (getResources().getDisplayMetrics().widthPixels / this.f17769e);
            findViewById.setLayoutParams(layoutParams);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f17769e = getArguments().getFloat("heightRatio", 1.1f);
            this.f17765a = (LiveGameBean) getArguments().getParcelable("data");
            this.f17767c = (LiveInfo) getArguments().getParcelable("liveInfo");
        }
    }

    @Override // p9.a.e
    public void onCrystalsChanged(int i9) {
        if (this.mWebView == null || !isAdded()) {
            return;
        }
        this.mWebView.s(String.format("refreshCrystals(%s)", Integer.valueOf(i9)));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        p9.a.g().r(this);
        if (TextUtils.isEmpty(this.f17765a.getGameGroupId())) {
            return;
        }
        TXIMUtils.quitGroup(this.f17765a.getGameGroupId());
        V2TIMManager.getMessageManager().removeAdvancedMsgListener(this.f17768d);
    }

    @Override // p9.a.e
    public void onDiamondsChanged(int i9) {
        if (this.mWebView == null || !isAdded()) {
            return;
        }
        this.mWebView.s(String.format("refreshDiamonds(%s)", Integer.valueOf(i9)));
    }

    @Override // com.guochao.faceshow.web.jsinterface.HalloweenJSAction.OnCallBack
    public void onInviteClick() {
        HandlerGetter.getMainHandler().post(new a());
    }

    @Override // com.guochao.faceshow.web.jsinterface.HalloweenJSAction.OnCallBack
    public /* synthetic */ void onInviteClick(Object obj) {
        com.guochao.faceshow.web.jsinterface.a.b(this, obj);
    }

    @Override // com.guochao.faceshow.web.jsinterface.HalloweenJSAction.OnCallBack
    public void playWinAnimation() {
        if (getActivity() == null || isDetached() || !isAdded()) {
            return;
        }
        HandlerGetter.getMainHandler().post(new c());
    }
}
