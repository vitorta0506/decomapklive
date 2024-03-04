package com.guochao.faceshow.aaspring.modulars.date.fragment;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.provider.FontsContractCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.TRTCPermissionResponse;
import com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
/* loaded from: classes3.dex */
public class ChatBottomFragment extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private c f17576a;
    @BindView
    TextView audioPrice;

    /* renamed from: b  reason: collision with root package name */
    private TrtcFaceCastUser f17577b;

    /* renamed from: c  reason: collision with root package name */
    private TRTCPermissionResponse f17578c;

    /* renamed from: d  reason: collision with root package name */
    private int f17579d;

    /* renamed from: e  reason: collision with root package name */
    private int f17580e;
    @BindView
    LinearLayout llClose;
    @BindView
    LinearLayout llVideo;
    @BindView
    LinearLayout llVoice;
    @BindView
    TextView tvClose;
    @BindView
    TextView tvVideo;
    @BindView
    TextView tvVoice;
    @BindView
    TextView videoPrice;
    @BindView
    View viewLine;

    /* loaded from: classes3.dex */
    class a implements DialogInterface.OnCancelListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            ChatBottomFragment.this.f17576a.onCancel(ChatBottomFragment.this.getDialog(), ChatBottomFragment.this);
        }
    }

    /* loaded from: classes3.dex */
    class b extends com.guochao.faceshow.aaspring.base.http.callback.c<TRTCPermissionResponse> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable TRTCPermissionResponse tRTCPermissionResponse, @NonNull FaceCastBaseResponse<TRTCPermissionResponse> faceCastBaseResponse) {
            if (tRTCPermissionResponse == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            ChatBottomFragment.this.f17578c = tRTCPermissionResponse;
            i.u().s().setAudioDiamond(tRTCPermissionResponse.getAudioDiamond());
            i.u().s().setVideoDiamond(tRTCPermissionResponse.getVideoDiamond());
            p9.a.g().B(tRTCPermissionResponse.getUserCurrentDiamond());
            ChatBottomFragment.this.S1();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<TRTCPermissionResponse> aVar) {
            String str = "url = tokens/appoint/appointAuth, e = " + GsonGetter.getGson().toJson(aVar);
            LogUtils.i("zune：", str);
            ToastUtils.debugToast(ChatBottomFragment.this.getActivity(), str);
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void onCancel(Dialog dialog, DialogFragment dialogFragment);

        void onVideoClick(Dialog dialog, DialogFragment dialogFragment);

        void onVoiceClick(Dialog dialog, DialogFragment dialogFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S1() {
        if (q7.a.e().j()) {
            this.videoPrice.setText(String.format("min/%s", Integer.valueOf(i.u().s().getVideoDiamond())));
            this.audioPrice.setText(String.format("min/%s", Integer.valueOf(i.u().s().getAudioDiamond())));
            return;
        }
        this.videoPrice.setText(String.format("%s/min", Integer.valueOf(i.u().s().getVideoDiamond())));
        this.audioPrice.setText(String.format("%s/min", Integer.valueOf(i.u().s().getAudioDiamond())));
    }

    public static void T1(FragmentManager fragmentManager, int i9, int i10, TrtcFaceCastUser trtcFaceCastUser, c cVar) {
        ChatBottomFragment chatBottomFragment = new ChatBottomFragment();
        MemoryCache.getInstance().put("user", trtcFaceCastUser);
        Bundle bundle = new Bundle();
        bundle.putInt("audioSwitch", i9);
        bundle.putInt("videoSwitch", i10);
        chatBottomFragment.setArguments(bundle);
        chatBottomFragment.setOnChatBottomClickListener(cVar);
        chatBottomFragment.show(fragmentManager, "chatBottomMenu");
    }

    public static void U1(FragmentManager fragmentManager, TrtcFaceCastUser trtcFaceCastUser, c cVar) {
        ChatBottomFragment chatBottomFragment = new ChatBottomFragment();
        MemoryCache.getInstance().put("user", trtcFaceCastUser);
        chatBottomFragment.setOnChatBottomClickListener(cVar);
        chatBottomFragment.show(fragmentManager, "chatBottomMenu");
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.chat_trtc_menu;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        S1();
        this.f17577b = (TrtcFaceCastUser) MemoryCache.getInstance().remove("user");
        if (getArguments() != null) {
            this.f17579d = getArguments().getInt("audioSwitch");
            int i9 = getArguments().getInt("videoSwitch");
            this.f17580e = i9;
            int i10 = this.f17579d;
            if (i10 == 1 && i9 == 1) {
                this.viewLine.setVisibility(0);
                this.llVideo.setVisibility(0);
                this.llVoice.setVisibility(0);
            } else if (i10 == 1 && i9 == 0) {
                this.viewLine.setVisibility(8);
                this.llVideo.setVisibility(8);
                this.llVoice.setVisibility(0);
            } else if (i10 == 0 && i9 == 1) {
                this.viewLine.setVisibility(8);
                this.llVideo.setVisibility(0);
                this.llVoice.setVisibility(8);
            } else {
                this.viewLine.setVisibility(8);
                this.llVideo.setVisibility(8);
                this.llVoice.setVisibility(8);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
        if (this.f17577b == null) {
            return;
        }
        post("tokens/appoint/appointAuth").y(Contants.USER_ID, b8.e.g().getUserId()).y("accountId", this.f17577b.getCurrentUserId()).M(new b());
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        if (getActivity() == null) {
            return null;
        }
        Dialog dialog = new Dialog(getActivity(), R.style.BottomDialog);
        dialog.requestWindowFeature(1);
        dialog.setCanceledOnTouchOutside(true);
        Window window = dialog.getWindow();
        if (window == null) {
            return null;
        }
        window.setBackgroundDrawable(new ColorDrawable(0));
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.gravity = 80;
        attributes.width = -1;
        window.setAttributes(attributes);
        if (this.f17576a != null) {
            dialog.setOnCancelListener(new a());
        }
        return dialog;
    }

    @OnClick
    public void onViewClicked(View view) {
        c cVar;
        c cVar2;
        int id2 = view.getId();
        if (id2 == R.id.ll_close) {
            c cVar3 = this.f17576a;
            if (cVar3 != null) {
                cVar3.onCancel(getDialog(), this);
            }
        } else if (id2 == R.id.ll_video) {
            if (FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing()) {
                showToast(R.string.one_v_one_is_matching);
            } else if (com.guochao.faceshow.aaspring.modulars.trtc.call.a.f21900k) {
                c cVar4 = this.f17576a;
                if (cVar4 != null) {
                    cVar4.onVideoClick(getDialog(), this);
                }
            } else if (this.f17578c == null) {
            } else {
                new Bundle().putInt(FontsContractCompat.Columns.RESULT_CODE, this.f17578c.getAppointResult());
                EventTrackingUtils.getInstance().track(EventTrackingUtils.UGC_DATING_VIDEO_CLICK);
                if (4011 == this.f17578c.getAppointResult()) {
                    showToast(R.string.trtc_other_only_friends_call);
                } else if (4012 == this.f17578c.getAppointResult()) {
                    showToast(R.string.trtc_other_only_fans_call);
                } else if (4013 != this.f17578c.getAppointResult() && 4014 != this.f17578c.getAppointResult()) {
                    if (4015 == this.f17578c.getAppointResult()) {
                        showToast(R.string.trtc_im_reject_me);
                    } else if (4000 != this.f17578c.getAppointResult() || (cVar = this.f17576a) == null) {
                    } else {
                        cVar.onVideoClick(getDialog(), this);
                    }
                } else {
                    showToast(R.string.trtc_other_off_the_phone);
                }
            }
        } else if (id2 != R.id.ll_voice) {
        } else {
            if (FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing()) {
                showToast(R.string.one_v_one_is_matching);
            } else if (com.guochao.faceshow.aaspring.modulars.trtc.call.a.f21900k) {
                c cVar5 = this.f17576a;
                if (cVar5 != null) {
                    cVar5.onVoiceClick(getDialog(), this);
                }
            } else if (this.f17578c == null) {
            } else {
                new Bundle().putInt(FontsContractCompat.Columns.RESULT_CODE, this.f17578c.getAppointResult());
                EventTrackingUtils.getInstance().track(EventTrackingUtils.UGC_DATING_AUDIO_CLICK);
                if (4011 == this.f17578c.getAppointResult()) {
                    ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.trtc_other_only_friends_call);
                } else if (4012 == this.f17578c.getAppointResult()) {
                    ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.trtc_other_only_fans_call);
                } else if (4013 != this.f17578c.getAppointResult() && 4014 != this.f17578c.getAppointResult()) {
                    if (4015 == this.f17578c.getAppointResult()) {
                        showToast(R.string.trtc_im_reject_me);
                    } else if (4000 != this.f17578c.getAppointResult() || (cVar2 = this.f17576a) == null) {
                    } else {
                        cVar2.onVoiceClick(getDialog(), this);
                    }
                } else {
                    ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.trtc_other_off_the_phone);
                }
            }
        }
    }

    public void setOnChatBottomClickListener(c cVar) {
        this.f17576a = cVar;
    }
}
