package com.guochao.faceshow.aaspring.modulars.trtc.call.fragment;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.graphics.Color;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import b8.e;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser;
import com.guochao.faceshow.aaspring.beans.TrtcStartResponseBean;
import com.guochao.faceshow.aaspring.modulars.trtc.call.CallingActivity;
import com.guochao.faceshow.aaspring.modulars.trtc.model.CallModel;
import com.guochao.faceshow.aaspring.modulars.user.view.UserCenterSexLevel;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.HandlerGetter;
import jc.f;
/* loaded from: classes3.dex */
public class AudioToBeReceivedFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    private TrtcFaceCastUser f21981a;

    /* renamed from: b  reason: collision with root package name */
    private CallModel f21982b;
    @BindView
    View bgBlurImage;
    @BindView
    ImageView blurImage;

    /* renamed from: c  reason: collision with root package name */
    private Handler f21983c = new Handler(Looper.getMainLooper());
    @BindView
    TextView connectionStatus;
    @BindView
    View hangUpIcon;
    @BindView
    HeadPortraitView userAvatarView;
    @BindView
    View userCenterAgeLevel;
    @BindView
    TextView userName;

    /* loaded from: classes3.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ValueAnimator f21984a;

        a(ValueAnimator valueAnimator) {
            this.f21984a = valueAnimator;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!AudioToBeReceivedFragment.this.isDetached() && AudioToBeReceivedFragment.this.getActivity() != null && !AudioToBeReceivedFragment.this.getActivity().isDestroyed() && !AudioToBeReceivedFragment.this.getActivity().isFinishing()) {
                AudioToBeReceivedFragment audioToBeReceivedFragment = AudioToBeReceivedFragment.this;
                if (audioToBeReceivedFragment.connectionStatus != null && !audioToBeReceivedFragment.getString(R.string.trtc_is_calling).equals(AudioToBeReceivedFragment.this.connectionStatus.getText().toString())) {
                    int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    AudioToBeReceivedFragment audioToBeReceivedFragment2 = AudioToBeReceivedFragment.this;
                    audioToBeReceivedFragment2.connectionStatus.setText(audioToBeReceivedFragment2.getString(R.string.trtc_is_connectioning));
                    for (int i9 = 0; i9 < intValue; i9++) {
                        AudioToBeReceivedFragment.this.connectionStatus.append(".");
                    }
                    return;
                }
            }
            this.f21984a.cancel();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View view;
            if (AudioToBeReceivedFragment.this.getActivity() == null || AudioToBeReceivedFragment.this.getActivity().isFinishing() || AudioToBeReceivedFragment.this.getActivity().isDestroyed() || (view = AudioToBeReceivedFragment.this.hangUpIcon) == null) {
                return;
            }
            view.setClickable(true);
        }
    }

    /* loaded from: classes3.dex */
    class c extends com.guochao.faceshow.aaspring.base.http.callback.c<TrtcStartResponseBean> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<TrtcStartResponseBean> aVar) {
            if (com.guochao.faceshow.aaspring.modulars.trtc.call.a.f21900k) {
                FragmentActivity activity = AudioToBeReceivedFragment.this.getActivity();
                ToastUtils.debugToast(activity, "请求失败，e = " + GsonGetter.getGson().toJson(aVar));
                CallModel callModel = AudioToBeReceivedFragment.this.f21982b;
                callModel.matchLogId = e.g().getUserId() + "_" + System.currentTimeMillis();
            } else if (!AudioToBeReceivedFragment.this.isAdded() || AudioToBeReceivedFragment.this.isDetached() || AudioToBeReceivedFragment.this.getActivity() == null || AudioToBeReceivedFragment.this.getActivity().isFinishing() || AudioToBeReceivedFragment.this.getActivity().isDestroyed()) {
            } else {
                AudioToBeReceivedFragment audioToBeReceivedFragment = AudioToBeReceivedFragment.this;
                if (audioToBeReceivedFragment.hangUpIcon == null) {
                    return;
                }
                audioToBeReceivedFragment.showToast(audioToBeReceivedFragment.getString(R.string.trtc_network_anomalies_unable_to_call));
                if (AudioToBeReceivedFragment.this.getActivity() != null) {
                    AudioToBeReceivedFragment.this.getActivity().finish();
                }
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable TrtcStartResponseBean trtcStartResponseBean, @NonNull FaceCastBaseResponse<TrtcStartResponseBean> faceCastBaseResponse) {
            if (trtcStartResponseBean == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            AudioToBeReceivedFragment.this.f21982b.matchLogId = trtcStartResponseBean.getMatchLogId();
            if (trtcStartResponseBean.getAppointResult() != null) {
                if (4006 == trtcStartResponseBean.getAppointResult().intValue()) {
                    AudioToBeReceivedFragment.this.showToast(R.string.trtc_im_call_version_intercept);
                    com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().R(AudioToBeReceivedFragment.this.f21982b);
                    if (AudioToBeReceivedFragment.this.getActivity() != null) {
                        AudioToBeReceivedFragment.this.getActivity().finish();
                    }
                    com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().o();
                } else if (4000 == trtcStartResponseBean.getAppointResult().intValue() || !(AudioToBeReceivedFragment.this.getActivity() instanceof CallingActivity)) {
                } else {
                    ((CallingActivity) AudioToBeReceivedFragment.this.getActivity()).K0(AudioToBeReceivedFragment.this.f21982b.inviteId, AudioToBeReceivedFragment.this.f21982b.invitedList.get(0), AudioToBeReceivedFragment.this.f21982b);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View view;
            if (AudioToBeReceivedFragment.this.isDetached() || AudioToBeReceivedFragment.this.getActivity() == null || AudioToBeReceivedFragment.this.getActivity().isFinishing() || AudioToBeReceivedFragment.this.getActivity().isDestroyed() || (view = AudioToBeReceivedFragment.this.hangUpIcon) == null) {
                return;
            }
            view.callOnClick();
        }
    }

    public static AudioToBeReceivedFragment Q1(TrtcFaceCastUser trtcFaceCastUser) {
        AudioToBeReceivedFragment audioToBeReceivedFragment = new AudioToBeReceivedFragment();
        Bundle bundle = new Bundle();
        MemoryCache.getInstance().put("userData", trtcFaceCastUser);
        audioToBeReceivedFragment.setArguments(bundle);
        return audioToBeReceivedFragment;
    }

    private void V1() {
        if (getActivity() != null) {
            AudioManager audioManager = (AudioManager) getActivity().getSystemService("audio");
            audioManager.setMode(0);
            audioManager.setSpeakerphoneOn(true);
            getActivity().setVolumeControlStream(3);
        }
        w9.a.a().b();
        U1();
    }

    public void R1(CallModel callModel) {
        if (getActivity() instanceof CallingActivity) {
            ((CallingActivity) getActivity()).l0();
        }
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().s(callModel, false);
    }

    public void S1(Activity activity) {
        AudioManager audioManager = (AudioManager) activity.getSystemService("audio");
        audioManager.setSpeakerphoneOn(false);
        audioManager.setMode(3);
        activity.setVolumeControlStream(0);
        w9.a.a().c(activity);
    }

    public void T1() {
        V1();
    }

    public void U1() {
        Handler handler = this.f21983c;
        if (handler != null) {
            handler.removeMessages(0);
        }
    }

    public void W1() {
        if (isDetached() || getActivity() == null || getActivity().isFinishing() || getActivity().isDestroyed() || this.connectionStatus == null) {
            return;
        }
        V1();
        this.connectionStatus.setText(R.string.trtc_is_calling);
        this.f21983c.postDelayed(new d(), 30000L);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_audio_tobe_received;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (getActivity() == null || getActivity().isFinishing() || getActivity().isDestroyed() || getArguments() == null) {
            return;
        }
        if ((getActivity() instanceof CallingActivity) && !((CallingActivity) getActivity()).p0().isFromLiveRoom()) {
            S1(getActivity());
        }
        this.f21981a = (TrtcFaceCastUser) MemoryCache.getInstance().remove("userData");
        if (getActivity() instanceof CallingActivity) {
            this.f21982b = ((CallingActivity) getActivity()).p0();
        }
        UserCenterSexLevel userCenterSexLevel = new UserCenterSexLevel(this.userCenterAgeLevel);
        userCenterSexLevel.b();
        userCenterSexLevel.d(this.f21981a);
        this.userAvatarView.d(this.f21981a);
        this.userName.setText(this.f21981a.getUserName());
        String str = null;
        if (!"https://mp4.facecast.xyz/storage1/M02/7D/DF/aPODCl-P9NWAO6qXAABpdbMquME412.png".equals(this.f21981a.getAvatarUrl()) && !"http://mp4.gchao.com/group2/M00/00/DB/a6cmOF-JmV-ABG-AAABpdbMquME365.png".equals(this.f21981a.getAvatarUrl())) {
            str = this.f21981a.getAvatarUrl();
        }
        if (TextUtils.isEmpty(str)) {
            this.bgBlurImage.setBackgroundColor(Color.parseColor("#90000000"));
        }
        hc.a.i(this.blurImage, str, R.mipmap.trtc_appointment_bj, new f(25, 2, Color.parseColor("#90000000")));
        this.connectionStatus.setText(getString(R.string.trtc_is_connectioning));
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 6);
        ofInt.setDuration(2000L);
        ofInt.addUpdateListener(new a(ofInt));
        ofInt.setInterpolator(new LinearInterpolator());
        ofInt.setRepeatMode(1);
        ofInt.setRepeatCount(60);
        ofInt.start();
        this.hangUpIcon.setClickable(false);
        HandlerGetter.getMainHandler().postDelayed(new b(), 3000L);
        if ((getActivity() instanceof CallingActivity) && ((CallingActivity) getActivity()).p0().isFromLiveRoom()) {
            return;
        }
        post("tokens/appoint/startAppoint").y("pushParams", this.f21982b).y(Contants.USER_ID, getCurrentUser().getUserId()).y("accountId", this.f21981a.getCurrentUserId()).y("matchType", 3001).I(3).M(new c());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @OnClick
    public void onViewClicked(View view) {
        if (view.getId() != R.id.hang_up_icon) {
            return;
        }
        if (getActivity() != null) {
            getActivity().finish();
        }
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().k(this.f21982b);
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().o();
    }
}
