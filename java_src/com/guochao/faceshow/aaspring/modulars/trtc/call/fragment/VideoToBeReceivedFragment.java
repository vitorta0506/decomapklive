package com.guochao.faceshow.aaspring.modulars.trtc.call.fragment;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
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
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser;
import com.guochao.faceshow.aaspring.beans.TrtcStartResponseBean;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayerProvider;
import com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog;
import com.guochao.faceshow.aaspring.modulars.trtc.call.CallingActivity;
import com.guochao.faceshow.aaspring.modulars.trtc.model.CallModel;
import com.guochao.faceshow.aaspring.modulars.user.view.UserCenterSexLevel;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.HandlerGetter;
/* loaded from: classes3.dex */
public class VideoToBeReceivedFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    private TrtcFaceCastUser f22044a;

    /* renamed from: b  reason: collision with root package name */
    private CallModel f22045b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f22046c = new Handler(Looper.getMainLooper());
    @BindView
    View hangUpIcon;
    @BindView
    HeadPortraitView userAvatarView;
    @BindView
    View userCenterAgeLevel;
    @BindView
    View userInfo;
    @BindView
    TextView userName;

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View view;
            if (VideoToBeReceivedFragment.this.getActivity() == null || VideoToBeReceivedFragment.this.getActivity().isFinishing() || VideoToBeReceivedFragment.this.getActivity().isDestroyed() || (view = VideoToBeReceivedFragment.this.hangUpIcon) == null) {
                return;
            }
            view.setClickable(true);
        }
    }

    /* loaded from: classes3.dex */
    class b extends com.guochao.faceshow.aaspring.base.http.callback.c<TrtcStartResponseBean> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<TrtcStartResponseBean> aVar) {
            if (com.guochao.faceshow.aaspring.modulars.trtc.call.a.f21900k) {
                FragmentActivity activity = VideoToBeReceivedFragment.this.getActivity();
                ToastUtils.debugToast(activity, "请求失败，e = " + GsonGetter.getGson().toJson(aVar));
                CallModel callModel = VideoToBeReceivedFragment.this.f22045b;
                callModel.matchLogId = e.g().getUserId() + "_" + System.currentTimeMillis();
            } else if (!VideoToBeReceivedFragment.this.isAdded() || !VideoToBeReceivedFragment.this.isVisible() || VideoToBeReceivedFragment.this.isDetached() || VideoToBeReceivedFragment.this.getActivity() == null || VideoToBeReceivedFragment.this.getActivity().isFinishing() || VideoToBeReceivedFragment.this.getActivity().isDestroyed()) {
            } else {
                VideoToBeReceivedFragment videoToBeReceivedFragment = VideoToBeReceivedFragment.this;
                if (videoToBeReceivedFragment.hangUpIcon == null) {
                    return;
                }
                videoToBeReceivedFragment.showToast(videoToBeReceivedFragment.getString(R.string.trtc_network_anomalies_unable_to_call));
                if (VideoToBeReceivedFragment.this.getActivity() != null) {
                    VideoToBeReceivedFragment.this.getActivity().finish();
                }
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable TrtcStartResponseBean trtcStartResponseBean, @NonNull FaceCastBaseResponse<TrtcStartResponseBean> faceCastBaseResponse) {
            if (trtcStartResponseBean == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            VideoToBeReceivedFragment.this.f22045b.matchLogId = trtcStartResponseBean.getMatchLogId();
            if (trtcStartResponseBean.getAppointResult() != null) {
                if (4006 == trtcStartResponseBean.getAppointResult().intValue()) {
                    VideoToBeReceivedFragment.this.showToast(R.string.trtc_im_call_version_intercept);
                    com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().R(VideoToBeReceivedFragment.this.f22045b);
                    if (VideoToBeReceivedFragment.this.getActivity() != null) {
                        VideoToBeReceivedFragment.this.getActivity().finish();
                    }
                    com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().o();
                } else if (4000 == trtcStartResponseBean.getAppointResult().intValue() || !(VideoToBeReceivedFragment.this.getActivity() instanceof CallingActivity)) {
                } else {
                    ((CallingActivity) VideoToBeReceivedFragment.this.getActivity()).K0(VideoToBeReceivedFragment.this.f22045b.inviteId, VideoToBeReceivedFragment.this.f22045b.invitedList.get(0), VideoToBeReceivedFragment.this.f22045b);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements PendantDialog.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PendantDialog f22049a;

        c(PendantDialog pendantDialog) {
            this.f22049a = pendantDialog;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog.c
        public void a() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog.c
        public void b(String str, ResourceListItemBean resourceListItemBean) {
            if (VideoToBeReceivedFragment.this.getActivity() == null || VideoToBeReceivedFragment.this.isDetached() || !VideoToBeReceivedFragment.this.isAdded() || com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().p() == null || TextUtils.isEmpty(str)) {
                return;
            }
            LivePlayerProvider.beautyManager().setMotionTmpl(str);
            this.f22049a.W1(resourceListItemBean.getId(), 5, 2);
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
            if (VideoToBeReceivedFragment.this.isDetached() || VideoToBeReceivedFragment.this.getActivity() == null || VideoToBeReceivedFragment.this.getActivity().isFinishing() || VideoToBeReceivedFragment.this.getActivity().isDestroyed() || (view = VideoToBeReceivedFragment.this.hangUpIcon) == null) {
                return;
            }
            view.callOnClick();
        }
    }

    public static VideoToBeReceivedFragment Q1(TrtcFaceCastUser trtcFaceCastUser) {
        VideoToBeReceivedFragment videoToBeReceivedFragment = new VideoToBeReceivedFragment();
        Bundle bundle = new Bundle();
        MemoryCache.getInstance().put("userData", trtcFaceCastUser);
        videoToBeReceivedFragment.setArguments(bundle);
        return videoToBeReceivedFragment;
    }

    public void R1(CallModel callModel) {
        if (getActivity() instanceof CallingActivity) {
            ((CallingActivity) getActivity()).l0();
        }
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().s(callModel, false);
    }

    public void S1() {
        View view = this.userInfo;
        if (view != null) {
            view.setVisibility(8);
        }
        W1();
        this.f22046c.postDelayed(new d(), 30000L);
    }

    public void T1(Context context) {
        w9.a.a().c(context);
    }

    public void U1() {
        W1();
    }

    public void V1() {
        Handler handler = this.f22046c;
        if (handler != null) {
            handler.removeMessages(0);
        }
    }

    public void W1() {
        w9.a.a().b();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_video_tobe_received;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (getActivity() == null || getActivity().isFinishing() || getActivity().isDestroyed() || getArguments() == null) {
            return;
        }
        if ((getActivity() instanceof CallingActivity) && !((CallingActivity) getActivity()).p0().isFromLiveRoom()) {
            T1(getContext());
        }
        ((ViewGroup.MarginLayoutParams) view.findViewById(R.id.status_wight).getLayoutParams()).topMargin += StatusBarHelper.getStatusbarHeight(getActivity());
        this.f22044a = (TrtcFaceCastUser) MemoryCache.getInstance().remove("userData");
        if (getActivity() instanceof CallingActivity) {
            this.f22045b = ((CallingActivity) getActivity()).p0();
        }
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().p().startLocalPreview(true, ((CallingActivity) getActivity()).o0());
        UserCenterSexLevel userCenterSexLevel = new UserCenterSexLevel(this.userCenterAgeLevel);
        userCenterSexLevel.b();
        userCenterSexLevel.d(this.f22044a);
        this.userAvatarView.d(this.f22044a);
        this.userName.setText(this.f22044a.getUserName());
        this.hangUpIcon.setClickable(false);
        HandlerGetter.getMainHandler().postDelayed(new a(), 3000L);
        if ((getActivity() instanceof CallingActivity) && ((CallingActivity) getActivity()).p0().isFromLiveRoom()) {
            return;
        }
        post("tokens/appoint/startAppoint").y("pushParams", this.f22045b).y(Contants.USER_ID, getCurrentUser().getUserId()).y("accountId", this.f22044a.getCurrentUserId()).y("matchType", 3002).I(3).M(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 != R.id.beauty_icon) {
            if (id2 != R.id.hang_up_icon) {
                return;
            }
            if (getActivity() != null) {
                getActivity().finish();
            }
            com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().k(this.f22045b);
            com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().o();
            return;
        }
        PendantDialog pendantDialog = new PendantDialog();
        Bundle bundle = new Bundle();
        bundle.putBoolean("isTrtc", true);
        pendantDialog.setArguments(bundle);
        pendantDialog.setType(5);
        pendantDialog.setOnItemClickListener(new c(pendantDialog));
        pendantDialog.show(getChildFragmentManager(), "beauty");
    }
}
