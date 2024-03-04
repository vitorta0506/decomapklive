package com.guochao.faceshow.aaspring.modulars.trtc.call.fragment;

import android.app.Activity;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
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
import com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser;
import com.guochao.faceshow.aaspring.beans.TrtcMeetResponse;
import com.guochao.faceshow.aaspring.modulars.trtc.call.CallingActivity;
import com.guochao.faceshow.aaspring.modulars.trtc.model.CallModel;
import com.guochao.faceshow.aaspring.modulars.user.view.UserCenterSexLevel;
import com.guochao.faceshow.aaspring.utils.FontUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.LiveScrollToClearScreenView;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.ReportController;
import com.guochao.faceshow.utils.TimeUtil;
import java.util.Objects;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class AudioCallFragment extends BaseCallFragment {
    @BindView
    View bgBlurImage;
    @BindView
    ImageView blurImage;

    /* renamed from: c  reason: collision with root package name */
    private int f21949c;
    @BindView
    TextView callTime;

    /* renamed from: d  reason: collision with root package name */
    private TrtcFaceCastUser f21950d;

    /* renamed from: e  reason: collision with root package name */
    private CallModel f21951e;

    /* renamed from: f  reason: collision with root package name */
    private PostRequest f21952f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f21953g;

    /* renamed from: h  reason: collision with root package name */
    private int f21954h;

    /* renamed from: i  reason: collision with root package name */
    private int f21955i;

    /* renamed from: j  reason: collision with root package name */
    private com.guochao.faceshow.views.g f21956j = new a(2147483647L, 1000);

    /* renamed from: k  reason: collision with root package name */
    private boolean f21957k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f21958l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f21959m;

    /* renamed from: n  reason: collision with root package name */
    private int f21960n;
    @BindView
    LiveScrollToClearScreenView scrollLayout;
    @BindView
    View trtcMic;
    @BindView
    View trtcSwitchCamera;
    @BindView
    HeadPortraitView userAvatarView;
    @BindView
    View userCenterAgeLevel;
    @BindView
    TextView userName;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.views.g {
        a(long j10, long j11) {
            super(j10, j11);
        }

        @Override // com.guochao.faceshow.views.g
        public void onFinish() {
        }

        @Override // com.guochao.faceshow.views.g
        public void onTick(long j10) {
            if (AudioCallFragment.this.f21956j.isCancel() || AudioCallFragment.this.f21957k) {
                return;
            }
            if (b8.e.g().getUserId().equals(AudioCallFragment.this.f21951e.getCurrentUserId()) && !p9.a.g().j() && AudioCallFragment.this.f21955i == 0 && AudioCallFragment.this.f21954h > 0) {
                AudioCallFragment.this.j2();
                return;
            }
            long j11 = (2147483647L - j10) / 1000;
            AudioCallFragment.this.f21954h = (int) j11;
            AudioCallFragment.this.f21955i = (int) (j11 % 60);
            if (AudioCallFragment.this.f21955i == 30 || AudioCallFragment.this.f21955i == 40 || AudioCallFragment.this.f21955i == 50) {
                AudioCallFragment.this.e2();
            }
            AudioCallFragment.this.callTime.setText(TimeUtil.getStringCallTime(j11));
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
            AudioCallFragment.this.l2();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<AppointEndResponse> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable AppointEndResponse appointEndResponse, @NonNull FaceCastBaseResponse<AppointEndResponse> faceCastBaseResponse) {
            if (appointEndResponse != null) {
                AudioCallFragment.this.q2(appointEndResponse.getAppointDuration());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Runnable {
        c() {
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
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<TrtcMeetResponse> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable TrtcMeetResponse trtcMeetResponse, @NonNull FaceCastBaseResponse<TrtcMeetResponse> faceCastBaseResponse) {
            if (trtcMeetResponse == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
            } else if (trtcMeetResponse.getAppointState() == 1) {
                AudioCallFragment.this.showToast(R.string.trtc_im_cancel_other);
                onFailure(new g7.a<>(new Exception(""), -1));
            } else {
                com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().n(Integer.parseInt(AudioCallFragment.this.f21950d.getCurrentUserId()), 1);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<TrtcMeetResponse> aVar) {
            if (com.guochao.faceshow.aaspring.modulars.trtc.call.a.f21900k) {
                com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().n(Integer.parseInt(AudioCallFragment.this.f21950d.getCurrentUserId()), 1);
            } else if (AudioCallFragment.this.getActivity() == null || AudioCallFragment.this.getActivity().isFinishing() || AudioCallFragment.this.getActivity().isDestroyed()) {
            } else {
                AudioCallFragment.this.getActivity().finish();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<AppointEndResponse> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            AudioCallFragment.this.m2();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<AppointEndResponse> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable AppointEndResponse appointEndResponse, @NonNull FaceCastBaseResponse<AppointEndResponse> faceCastBaseResponse) {
            if (appointEndResponse != null) {
                AudioCallFragment.this.q2(appointEndResponse.getAppointDuration());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<AppointHeartBean> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable AppointHeartBean appointHeartBean, @NonNull FaceCastBaseResponse<AppointHeartBean> faceCastBaseResponse) {
            if (AudioCallFragment.this.f21957k) {
                return;
            }
            if (appointHeartBean == null) {
                onFailure(new g7.a<>(new Exception(""), faceCastBaseResponse.getCode()));
                return;
            }
            if (b8.e.g().getUserId().equals(AudioCallFragment.this.f21951e.getCurrentUserId())) {
                p9.a.g().B(appointHeartBean.getCurrentUserDiamond());
            }
            if (appointHeartBean.getUserAccountState() == 2 && b8.e.g().getUserId().equals(AudioCallFragment.this.f21951e.getCurrentUserId())) {
                AudioCallFragment.this.j2();
            } else if ((appointHeartBean.getAccountUserState() == 0 && b8.e.g().getUserId().equals(AudioCallFragment.this.f21951e.getCurrentUserId())) || (appointHeartBean.getUserAccountState() == 0 && !b8.e.g().getUserId().equals(AudioCallFragment.this.f21951e.getCurrentUserId()))) {
                AudioCallFragment.this.o2();
            } else if (((appointHeartBean.getAccountUserState() != 0 || b8.e.g().getUserId().equals(AudioCallFragment.this.f21951e.getCurrentUserId())) && !(appointHeartBean.getUserAccountState() == 0 && b8.e.g().getUserId().equals(AudioCallFragment.this.f21951e.getCurrentUserId()))) || AudioCallFragment.this.getActivity() == null) {
            } else {
                AudioCallFragment.this.getActivity().finish();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<AppointHeartBean> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements BaseFaceCastRequest.b<PostRequest> {
        g() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest.b
        /* renamed from: b */
        public void a(PostRequest postRequest) {
            postRequest.y("matchLogId", AudioCallFragment.this.f21951e.matchLogId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e2() {
        if (!b8.e.g().getUserId().equals(this.f21951e.getCurrentUserId()) || p9.a.g().j()) {
            return;
        }
        showToast(R.string.trtc_money_no_enough);
    }

    public static AudioCallFragment h2(TrtcFaceCastUser trtcFaceCastUser, int i9) {
        AudioCallFragment audioCallFragment = new AudioCallFragment();
        Bundle bundle = new Bundle();
        MemoryCache.getInstance().put("userData", trtcFaceCastUser);
        bundle.putInt("type", i9);
        audioCallFragment.setArguments(bundle);
        return audioCallFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j2() {
        this.f21956j.cancel();
        this.f21952f.cancel();
        this.f21951e.hangupType = 4008;
        i2();
        ToastUtils.showToast(getContext(), (int) R.string.trtc_money_no_enough);
        this.f21953g = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l2() {
        if (this.f21950d != null && !this.f21957k) {
            this.f21951e.hangupTime = String.valueOf(System.currentTimeMillis());
            CallModel callModel = this.f21951e;
            if (callModel.callTime == 0) {
                int i9 = this.f21954h;
                if (i9 == 0) {
                    i9 = 1;
                }
                callModel.callTime = i9;
            }
            com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().s(this.f21951e, this.f21958l);
            this.f21958l = true;
            if (getActivity() != null) {
                g2();
            }
        } else if (getActivity() != null) {
            g2();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m2() {
        if (this.f21957k || getActivity() == null || getActivity().isFinishing() || getActivity().isDestroyed()) {
            return;
        }
        g2();
        CallModel callModel = this.f21951e;
        if (callModel.callTime == 0) {
            int i9 = this.f21954h;
            if (i9 == 0) {
                i9 = 1;
            }
            callModel.callTime = i9;
        }
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().F(this.f21951e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o2() {
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().m("4005", this.f21951e, new e());
    }

    private void p2(View view) {
        ((ImageView) view.findViewById(R.id.trtc_hang_up)).setImageResource(R.mipmap.trtc_appointment_share_audio);
        ((ImageView) view.findViewById(R.id.trtc_mic)).setImageResource(R.drawable.trtc_appointment_mic_audio_selector);
        ((ImageView) view.findViewById(R.id.trtc_voice)).setImageResource(R.drawable.trtc_appointment_voice_audio_selector);
        ((ImageView) view.findViewById(R.id.trtc_report)).setImageResource(R.mipmap.trtc_appointment_report_audio);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q2(long j10) {
        this.f21951e.callTime = (int) Math.ceil(j10 / 1000.0d);
    }

    private void r2() {
        this.f21952f = post("tokens/appoint/ping").y("matchLogId", this.f21951e.matchLogId).y("streamId", Integer.valueOf(this.f21951e.roomId)).y("matchType", 3001).A(new g()).G(5000, new f());
    }

    private void s2() {
        if (this.f21949c == 3) {
            post("tokens/appoint/hangOnAppoint").y("matchLogId", this.f21951e.matchLogId).y("streamId", Integer.valueOf(this.f21951e.roomId)).I(3).M(new d());
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void I(String str, String str2, CallModel callModel) {
        CallModel callModel2 = this.f21951e;
        if (callModel2 == null || !callModel2.equals(callModel)) {
            return;
        }
        g2();
        if (b8.e.g().getUserId().equals(callModel.getCurrentUserId()) && !this.f21958l) {
            int i9 = this.f21954h;
            if (i9 == 0) {
                i9 = 1;
            }
            callModel.callTime = i9;
            callModel.hangupTime = String.valueOf(System.currentTimeMillis());
            com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().H(this.f21950d.getCurrentUserId(), 1, 5, callModel);
        }
        showToast(R.string.trtc_call_end);
        this.f21958l = true;
    }

    public void f2() {
        if (this.f21960n != 0 || this.f21956j.isCancel()) {
            return;
        }
        int i9 = this.trtcMic.isSelected() ? 1 : 2;
        this.f21960n = i9;
        if (i9 == 2) {
            this.trtcMic.callOnClick();
        }
    }

    public void g2() {
        if (this.f21957k) {
            return;
        }
        if (this.f21953g) {
            HandlerGetter.getMainHandler().postDelayed(new c(), 500L);
        }
        this.f21957k = true;
        PostRequest postRequest = this.f21952f;
        if (postRequest != null) {
            postRequest.cancel();
        }
        this.f21956j.cancel();
        if (getActivity() != null) {
            ((CallingActivity) getActivity()).l0();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.date.fragment.TrtcChatFragment.TrtcUserProvider
    @NotNull
    public TrtcFaceCastUser getCurrentTrtcUser() {
        if (Objects.equals(getCurrentUser().getCurrentUserId(), this.f21951e.getCurrentUserId())) {
            return this.f21950d;
        }
        return this.f21951e;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_audio_call;
    }

    public void i2() {
        PostRequest postRequest = this.f21952f;
        if (postRequest != null) {
            postRequest.cancel();
        }
        CallModel callModel = this.f21951e;
        if (callModel.callType == 0) {
            if (callModel.getCurrentUserId().equals(getCurrentUser().getUserId())) {
                this.f21951e.callType = 4009;
            } else {
                this.f21951e.callType = 4010;
            }
        }
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().m(String.valueOf(this.f21951e.callType), this.f21951e, new b());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.call.fragment.BaseCallFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        Bundle arguments;
        super.initView(view);
        if (getActivity() == null || getActivity().isFinishing() || getActivity().isDestroyed() || (arguments = getArguments()) == null) {
            return;
        }
        this.f21950d = (TrtcFaceCastUser) MemoryCache.getInstance().remove("userData");
        if (getActivity() instanceof CallingActivity) {
            this.f21951e = ((CallingActivity) getActivity()).p0();
        }
        if (this.f21950d != null && this.f21951e != null) {
            com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a().c(this);
            this.f21949c = arguments.getInt("type", 1);
            String str = null;
            if (!"https://mp4.facecast.xyz/storage1/M02/7D/DF/aPODCl-P9NWAO6qXAABpdbMquME412.png".equals(this.f21950d.getAvatarUrl()) && !"http://mp4.gchao.com/group2/M00/00/DB/a6cmOF-JmV-ABG-AAABpdbMquME365.png".equals(this.f21950d.getAvatarUrl())) {
                str = this.f21950d.getAvatarUrl();
            }
            if (TextUtils.isEmpty(str)) {
                this.bgBlurImage.setBackgroundColor(Color.parseColor("#90000000"));
            }
            hc.a.i(this.blurImage, str, R.mipmap.trtc_appointment_bj, new jc.f(25, 2, Color.parseColor("#90000000")));
            this.userAvatarView.d(this.f21950d);
            this.userName.setText(this.f21950d.getUserName());
            UserCenterSexLevel userCenterSexLevel = new UserCenterSexLevel(this.userCenterAgeLevel);
            userCenterSexLevel.b();
            userCenterSexLevel.d(this.f21950d);
            this.trtcSwitchCamera.setVisibility(8);
            P1();
            this.trtcMic.setClickable(false);
            com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().p().muteLocalAudio(false);
            com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().p().setAudioRoute(0);
            if (this.f21949c == 4) {
                this.trtcMic.setClickable(true);
                com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().M(this.f21951e);
                this.f21956j.start();
                r2();
            }
            s2();
            p2(view);
            FontUtils.setFont(this.callTime, 3);
            this.scrollLayout.d(view.findViewById(R.id.status_wight));
            this.scrollLayout.d(view.findViewById(R.id.chat_area));
            ((ViewGroup.MarginLayoutParams) view.findViewById(R.id.trtc_hang_up).getLayoutParams()).topMargin += StatusBarHelper.getStatusbarHeight(getContext());
            return;
        }
        getActivity().finish();
    }

    public void k2() {
        if (this.f21960n == 2) {
            this.trtcMic.callOnClick();
        }
        this.f21960n = 0;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    public void n2() {
        PostRequest postRequest = this.f21952f;
        if (postRequest != null) {
            postRequest.cancel();
        }
        this.f21956j.cancel();
        com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a().d(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void o(CallModel callModel) {
        if (!this.f21958l && !this.f21957k) {
            this.f21956j.start();
            this.trtcMic.setClickable(true);
            if (getActivity() instanceof CallingActivity) {
                ((CallingActivity) getActivity()).f21870a = true;
            }
        }
        r2();
    }

    @OnClick
    public void onViewClicked(View view) {
        if (getActivity() == null || getActivity().isFinishing() || getActivity().isDestroyed() || this.f21957k) {
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
                ReportController.report(getActivity(), this.f21950d.getCurrentUserId() + "", this.f21950d.getCurrentUserId() + "", ReportController.REPORT_TYPE_TRTC);
                return;
            case R.id.trtc_switch_camera /* 2131364854 */:
            default:
                return;
            case R.id.trtc_voice /* 2131364855 */:
                view.setSelected(!view.isSelected());
                com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().p().muteLocalAudio(view.isSelected());
                return;
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.call.fragment.BaseCallFragment, com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void w1(String str, boolean z10) {
        if (getActivity() == null || getActivity().isFinishing() || getActivity().isDestroyed() || !z10 || this.f21949c != 3 || this.f21959m) {
            return;
        }
        this.f21959m = true;
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().w(this.f21951e);
    }
}
