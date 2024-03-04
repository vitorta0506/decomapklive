package com.guochao.faceshow.aaspring.modulars.trtc.call.fragment;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.AppointEndResponse;
import com.guochao.faceshow.aaspring.beans.AppointHeartBean;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser;
import com.guochao.faceshow.aaspring.beans.TrtcMeetResponse;
import com.guochao.faceshow.aaspring.modulars.date.fragment.TrtcChatFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayerProvider;
import com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog;
import com.guochao.faceshow.aaspring.modulars.trtc.call.CallingActivity;
import com.guochao.faceshow.aaspring.modulars.trtc.model.CallModel;
import com.guochao.faceshow.aaspring.utils.FontUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.LiveScrollToClearScreenView;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.ReportController;
import com.guochao.faceshow.utils.TimeUtil;
import com.tencent.trtc.TRTCCloud;
import java.util.Objects;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class VideoCallFragment extends BaseCallFragment {

    /* renamed from: c  reason: collision with root package name */
    private int f22002c;
    @BindView
    TextView callTime;

    /* renamed from: d  reason: collision with root package name */
    private PostRequest f22003d;

    /* renamed from: e  reason: collision with root package name */
    private TrtcFaceCastUser f22004e;

    /* renamed from: f  reason: collision with root package name */
    private CallModel f22005f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f22006g;

    /* renamed from: h  reason: collision with root package name */
    private int f22007h;

    /* renamed from: i  reason: collision with root package name */
    private int f22008i;

    /* renamed from: j  reason: collision with root package name */
    private com.guochao.faceshow.views.g f22009j = new f(2147483647L, 1000);

    /* renamed from: k  reason: collision with root package name */
    private boolean f22010k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f22011l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f22012m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f22013n;

    /* renamed from: o  reason: collision with root package name */
    private int f22014o;
    @BindView
    LiveScrollToClearScreenView scrollLayout;
    @BindView
    View trtcMic;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<TrtcMeetResponse> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable TrtcMeetResponse trtcMeetResponse, @NonNull FaceCastBaseResponse<TrtcMeetResponse> faceCastBaseResponse) {
            if (VideoCallFragment.this.getActivity() == null || VideoCallFragment.this.getActivity().isFinishing() || VideoCallFragment.this.getActivity().isDestroyed()) {
                return;
            }
            if (trtcMeetResponse == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
            } else if (trtcMeetResponse.getAppointState() == 1) {
                VideoCallFragment.this.showToast(R.string.trtc_im_cancel_other);
                onFailure(new g7.a<>(new Exception(""), -1));
            } else {
                VideoCallFragment.this.s2();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<TrtcMeetResponse> aVar) {
            if (com.guochao.faceshow.aaspring.modulars.trtc.call.a.f21900k) {
                VideoCallFragment.this.s2();
            } else if (VideoCallFragment.this.getActivity() == null || VideoCallFragment.this.getActivity().isFinishing() || VideoCallFragment.this.getActivity().isDestroyed()) {
            } else {
                VideoCallFragment.this.getActivity().finish();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<AppointEndResponse> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            VideoCallFragment.this.m2();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<AppointEndResponse> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable AppointEndResponse appointEndResponse, @NonNull FaceCastBaseResponse<AppointEndResponse> faceCastBaseResponse) {
            if (appointEndResponse != null) {
                VideoCallFragment.this.p2(appointEndResponse.getAppointDuration());
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (VideoCallFragment.this.getActivity() instanceof CallingActivity) {
                ((CallingActivity) VideoCallFragment.this.getActivity()).m0();
            }
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if ((VideoCallFragment.this.getActivity() instanceof CallingActivity) && ((CallingActivity) VideoCallFragment.this.getActivity()).p0().isFromLiveRoom() && !VideoCallFragment.this.getCurrentTrtcUser().getCurrentUserId().equals(VideoCallFragment.this.getCurrentUser().getUserId())) {
                VideoCallFragment videoCallFragment = VideoCallFragment.this;
                videoCallFragment.L0(videoCallFragment.getCurrentTrtcUser().getCurrentUserId(), -1, -1, -1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements TrtcChatFragment.OnBeautyClickListener {

        /* loaded from: classes3.dex */
        class a implements PendantDialog.c {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ PendantDialog f22020a;

            a(PendantDialog pendantDialog) {
                this.f22020a = pendantDialog;
            }

            @Override // com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog.c
            public void a() {
            }

            @Override // com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog.c
            public void b(String str, ResourceListItemBean resourceListItemBean) {
                if (com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().p() == null || TextUtils.isEmpty(str)) {
                    return;
                }
                LivePlayerProvider.beautyManager().setMotionTmpl(str);
                this.f22020a.W1(resourceListItemBean.getId(), 5, 2);
            }
        }

        e() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.date.fragment.TrtcChatFragment.OnBeautyClickListener
        public void onBeautyClick(@NotNull View view) {
            PendantDialog pendantDialog = new PendantDialog();
            Bundle bundle = new Bundle();
            bundle.putBoolean("isTrtc", true);
            pendantDialog.setArguments(bundle);
            pendantDialog.setType(5);
            pendantDialog.setOnItemClickListener(new a(pendantDialog));
            pendantDialog.show(VideoCallFragment.this.getChildFragmentManager(), "beauty");
        }
    }

    /* loaded from: classes3.dex */
    class f extends com.guochao.faceshow.views.g {
        f(long j10, long j11) {
            super(j10, j11);
        }

        @Override // com.guochao.faceshow.views.g
        public void onFinish() {
        }

        @Override // com.guochao.faceshow.views.g
        public void onTick(long j10) {
            if (VideoCallFragment.this.f22009j.isCancel() || VideoCallFragment.this.f22012m) {
                return;
            }
            if (b8.e.g().getUserId().equals(VideoCallFragment.this.f22005f.getCurrentUserId()) && !p9.a.g().l() && VideoCallFragment.this.f22008i == 0 && VideoCallFragment.this.f22007h > 0) {
                VideoCallFragment.this.j2();
                return;
            }
            long j11 = (2147483647L - j10) / 1000;
            VideoCallFragment.this.f22007h = (int) j11;
            VideoCallFragment.this.f22008i = (int) (j11 % 60);
            if (VideoCallFragment.this.f22008i == 30 || VideoCallFragment.this.f22008i == 40 || VideoCallFragment.this.f22008i == 50) {
                VideoCallFragment.this.e2();
            }
            VideoCallFragment.this.callTime.setText(TimeUtil.getStringCallTime(j11));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!VideoCallFragment.this.isDetached() && VideoCallFragment.this.isAdded() && (VideoCallFragment.this.getActivity() instanceof CallingActivity)) {
                ((CallingActivity) VideoCallFragment.this.getActivity()).y0(0);
                ((CallingActivity) VideoCallFragment.this.getActivity()).m0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends com.guochao.faceshow.aaspring.base.http.callback.c<AppointEndResponse> {
        h() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            VideoCallFragment.this.l2();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<AppointEndResponse> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable AppointEndResponse appointEndResponse, @NonNull FaceCastBaseResponse<AppointEndResponse> faceCastBaseResponse) {
            if (appointEndResponse != null) {
                VideoCallFragment.this.p2(appointEndResponse.getAppointDuration());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
            if (currTopActivity instanceof FragmentActivity) {
                com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().B((FragmentActivity) currTopActivity, BaseApplication.getInstance().getString(R.string.trtc_money_no_enough));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j extends com.guochao.faceshow.aaspring.base.http.callback.c<AppointHeartBean> {
        j() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable AppointHeartBean appointHeartBean, @NonNull FaceCastBaseResponse<AppointHeartBean> faceCastBaseResponse) {
            if (VideoCallFragment.this.f22012m) {
                return;
            }
            if (appointHeartBean == null) {
                onFailure(new g7.a<>(new Exception(""), faceCastBaseResponse.getCode()));
                return;
            }
            if (b8.e.g().getUserId().equals(VideoCallFragment.this.f22005f.getCurrentUserId())) {
                p9.a.g().B(appointHeartBean.getCurrentUserDiamond());
            }
            if (appointHeartBean.getUserAccountState() == 2 && b8.e.g().getUserId().equals(VideoCallFragment.this.f22005f.getCurrentUserId())) {
                VideoCallFragment.this.j2();
            } else if ((appointHeartBean.getAccountUserState() == 0 && b8.e.g().getUserId().equals(VideoCallFragment.this.f22005f.getCurrentUserId())) || (appointHeartBean.getUserAccountState() == 0 && !b8.e.g().getUserId().equals(VideoCallFragment.this.f22005f.getCurrentUserId()))) {
                VideoCallFragment.this.o2();
            } else if (((appointHeartBean.getAccountUserState() != 0 || b8.e.g().getUserId().equals(VideoCallFragment.this.f22005f.getCurrentUserId())) && !(appointHeartBean.getUserAccountState() == 0 && b8.e.g().getUserId().equals(VideoCallFragment.this.f22005f.getCurrentUserId()))) || VideoCallFragment.this.getActivity() == null) {
            } else {
                VideoCallFragment.this.getActivity().finish();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<AppointHeartBean> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements BaseFaceCastRequest.b<PostRequest> {
        k() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest.b
        /* renamed from: b */
        public void a(PostRequest postRequest) {
            postRequest.y("matchLogId", VideoCallFragment.this.f22005f.matchLogId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e2() {
        if (!b8.e.g().getUserId().equals(this.f22005f.getCurrentUserId()) || p9.a.g().l()) {
            return;
        }
        showToast(R.string.trtc_money_no_enough);
    }

    public static VideoCallFragment h2(TrtcFaceCastUser trtcFaceCastUser, int i9) {
        VideoCallFragment videoCallFragment = new VideoCallFragment();
        Bundle bundle = new Bundle();
        MemoryCache.getInstance().put("userData", trtcFaceCastUser);
        bundle.putInt("type", i9);
        videoCallFragment.setArguments(bundle);
        return videoCallFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j2() {
        this.f22009j.cancel();
        this.f22003d.cancel();
        this.f22005f.hangupType = 4008;
        i2();
        ToastUtils.showToast(getContext(), (int) R.string.trtc_money_no_enough);
        this.f22006g = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l2() {
        if (this.f22004e != null && !this.f22012m) {
            this.f22005f.hangupTime = String.valueOf(System.currentTimeMillis());
            CallModel callModel = this.f22005f;
            if (callModel.callTime == 0) {
                int i9 = this.f22007h;
                if (i9 == 0) {
                    i9 = 1;
                }
                callModel.callTime = i9;
            }
            com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().s(this.f22005f, this.f22013n);
            this.f22013n = true;
            if (getActivity() != null) {
                g2();
            }
        } else if (getActivity() != null) {
            g2();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m2() {
        if (this.f22012m || getActivity() == null || getActivity().isFinishing() || getActivity().isDestroyed()) {
            return;
        }
        g2();
        CallModel callModel = this.f22005f;
        if (callModel.callTime == 0) {
            int i9 = this.f22007h;
            if (i9 == 0) {
                i9 = 1;
            }
            callModel.callTime = i9;
        }
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().F(this.f22005f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o2() {
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().m("4005", this.f22005f, new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p2(long j10) {
        this.f22005f.callTime = (int) Math.ceil(j10 / 1000.0d);
    }

    private void q2() {
        this.f22003d = post("tokens/appoint/ping").y("matchLogId", this.f22005f.matchLogId).y("streamId", Integer.valueOf(this.f22005f.roomId)).y("matchType", 3002).A(new k()).G(5000, new j());
    }

    private void r2() {
        if (this.f22002c == 1) {
            post("tokens/appoint/hangOnAppoint").y("matchLogId", this.f22005f.matchLogId).y("streamId", Integer.valueOf(this.f22005f.roomId)).I(3).M(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s2() {
        if (getActivity() == null || getActivity().isDestroyed() || getActivity().isFinishing()) {
            return;
        }
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().p().startLocalPreview(true, ((CallingActivity) getActivity()).o0());
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().n(Integer.parseInt(this.f22004e.getCurrentUserId()), 2);
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().p().startRemoteView(this.f22004e.getCurrentUserId(), 0, ((CallingActivity) getActivity()).q0());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void I(String str, String str2, CallModel callModel) {
        g2();
        if (b8.e.g().getUserId().equals(callModel.getCurrentUserId()) && !this.f22013n) {
            int i9 = this.f22007h;
            if (i9 == 0) {
                i9 = 1;
            }
            callModel.callTime = i9;
            callModel.hangupTime = String.valueOf(System.currentTimeMillis());
            com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().H(this.f22004e.getCurrentUserId(), 2, 5, callModel);
        }
        showToast(R.string.trtc_call_end);
        this.f22013n = true;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.call.fragment.BaseCallFragment, com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void L0(String str, int i9, int i10, int i11) {
        if (getView() == null || isDetached() || !isAdded() || TextUtils.isEmpty(str) || this.f22011l) {
            return;
        }
        this.f22011l = true;
        getView().post(new g());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.call.fragment.BaseCallFragment
    public void P1() {
        super.P1();
        this.f22000b.setOnBeautyClickListener(new e());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.call.fragment.BaseCallFragment, com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void R0(String str, boolean z10) {
        if (getActivity() == null || getActivity().isFinishing() || getActivity().isDestroyed() || !z10 || this.f22002c != 1 || this.f22010k) {
            return;
        }
        this.f22010k = true;
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().w(this.f22005f);
    }

    public void f2() {
        if (this.f22014o != 0 || this.f22009j.isCancel()) {
            return;
        }
        int i9 = this.trtcMic.isSelected() ? 1 : 2;
        this.f22014o = i9;
        if (i9 == 2) {
            this.trtcMic.callOnClick();
        }
    }

    public void g2() {
        if (this.f22012m) {
            return;
        }
        if (this.f22006g) {
            HandlerGetter.getMainHandler().postDelayed(new i(), 500L);
        }
        this.f22012m = true;
        if (!this.f22005f.invitedList.isEmpty()) {
            com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().p().muteRemoteVideoStream(this.f22005f.invitedList.get(0), true);
            com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().p().muteRemoteAudio(this.f22005f.invitedList.get(0), true);
        }
        PostRequest postRequest = this.f22003d;
        if (postRequest != null) {
            postRequest.cancel();
        }
        this.f22009j.cancel();
        if (getActivity() != null) {
            ((CallingActivity) getActivity()).l0();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.date.fragment.TrtcChatFragment.TrtcUserProvider
    @NotNull
    public TrtcFaceCastUser getCurrentTrtcUser() {
        if (Objects.equals(getCurrentUser().getUserId(), this.f22005f.getCurrentUserId())) {
            return this.f22004e;
        }
        return this.f22005f;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_video_call;
    }

    public void i2() {
        PostRequest postRequest = this.f22003d;
        if (postRequest != null) {
            postRequest.cancel();
        }
        CallModel callModel = this.f22005f;
        if (callModel.callType == 0) {
            if (callModel.getCurrentUserId().equals(getCurrentUser().getUserId())) {
                this.f22005f.callType = 4009;
            } else {
                this.f22005f.callType = 4010;
            }
        }
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().m(String.valueOf(this.f22005f.callType), this.f22005f, new h());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.call.fragment.BaseCallFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        Bundle arguments;
        super.initView(view);
        if (getActivity() == null || getActivity().isFinishing() || getActivity().isDestroyed() || (arguments = getArguments()) == null) {
            return;
        }
        this.f22004e = (TrtcFaceCastUser) MemoryCache.getInstance().remove("userData");
        if (getActivity() instanceof CallingActivity) {
            this.f22005f = ((CallingActivity) getActivity()).p0();
        }
        if (this.f22004e != null && this.f22005f != null) {
            this.f22002c = arguments.getInt("type", 1);
            com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a().c(this);
            TRTCCloud p10 = com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().p();
            p10.muteLocalAudio(false);
            p10.setAudioRoute(0);
            P1();
            if (this.f22002c == 2) {
                com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().M(this.f22005f);
                this.f22009j.start();
                q2();
            }
            r2();
            FontUtils.setFont(this.callTime, 3);
            this.scrollLayout.d(view.findViewById(R.id.status_wight));
            this.scrollLayout.d(view.findViewById(R.id.chat_area));
            ((ViewGroup.MarginLayoutParams) view.findViewById(R.id.small_video_mask_lay).getLayoutParams()).topMargin += StatusBarHelper.getStatusbarHeight(getContext());
            ((ViewGroup.MarginLayoutParams) view.findViewById(R.id.trtc_hang_up).getLayoutParams()).topMargin += StatusBarHelper.getStatusbarHeight(getContext());
            this.scrollLayout.j(view.findViewById(R.id.small_video_mask), new c());
            view.post(new d());
            return;
        }
        getActivity().finish();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.call.fragment.BaseCallFragment, com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void j1(CallModel callModel) {
        showToast(getString(R.string.live_im_screen_shot, this.f22004e.getUserName()));
    }

    public void k2() {
        if (this.f22014o == 2) {
            this.trtcMic.callOnClick();
        }
        this.f22014o = 0;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    public void n2() {
        PostRequest postRequest = this.f22003d;
        if (postRequest != null) {
            postRequest.cancel();
        }
        this.f22009j.cancel();
        com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a().d(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void o(CallModel callModel) {
        if (!this.f22013n && !this.f22012m) {
            this.f22009j.start();
        }
        q2();
    }

    @OnClick
    public void onViewClicked(View view) {
        if (getActivity() == null || getActivity().isFinishing() || getActivity().isDestroyed() || this.f22012m) {
            return;
        }
        switch (view.getId()) {
            case R.id.trtc_hang_up /* 2131364851 */:
                view.setClickable(false);
                i2();
                return;
            case R.id.trtc_mic /* 2131364852 */:
                view.setSelected(!view.isSelected());
                com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().p().setAudioRoute(view.isSelected() ? 1 : 0);
                ((CallingActivity) getActivity()).f21870a = view.isSelected();
                return;
            case R.id.trtc_report /* 2131364853 */:
                getActivity().getWindow().clearFlags(8192);
                ReportController.report(getActivity(), this.f22004e.getCurrentUserId() + "", this.f22004e.getCurrentUserId() + "", ReportController.REPORT_TYPE_TRTC, true);
                return;
            case R.id.trtc_switch_camera /* 2131364854 */:
                com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().p().getDeviceManager().switchCamera(view.isSelected());
                view.setSelected(!view.isSelected());
                return;
            case R.id.trtc_voice /* 2131364855 */:
                view.setSelected(!view.isSelected());
                com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().p().muteLocalAudio(view.isSelected());
                return;
            default:
                return;
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.call.fragment.BaseCallFragment, com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void s1(CallModel callModel) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.call.fragment.BaseCallFragment, com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void w1(String str, boolean z10) {
    }
}
