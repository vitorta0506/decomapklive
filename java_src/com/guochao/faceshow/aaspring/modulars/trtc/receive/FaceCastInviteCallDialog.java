package com.guochao.faceshow.aaspring.modulars.trtc.receive;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import b8.d;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.BlackResponse;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.date.activity.DateSettingActivity;
import com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager;
import com.guochao.faceshow.aaspring.modulars.trtc.model.CallModel;
import com.guochao.faceshow.aaspring.modulars.user.view.UserCenterSexLevel;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.LOCAL_EVENT_MSG;
import java.text.MessageFormat;
import org.greenrobot.eventbus.EventBus;
/* loaded from: classes3.dex */
public class FaceCastInviteCallDialog extends BaseDialogFragment implements d.a {

    /* renamed from: a  reason: collision with root package name */
    private CallModel f22074a;
    @BindView
    HeadPortraitView avatarUser;

    /* renamed from: b  reason: collision with root package name */
    private boolean f22075b = false;

    /* renamed from: c  reason: collision with root package name */
    private c f22076c;
    @BindView
    ImageView inviteType;
    @BindView
    TextView tvInviteName;
    @BindView
    TextView tvNickName;
    @BindView
    TextView tvTrtcPrice;
    @BindView
    View userAgeLevel;

    /* loaded from: classes3.dex */
    class a implements DialogInterface.OnKeyListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i9, KeyEvent keyEvent) {
            return i9 == 4;
        }
    }

    /* loaded from: classes3.dex */
    class b extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            try {
                BlackResponse blackResponse = (BlackResponse) GsonGetter.getGson().fromJson(str, (Class<Object>) BlackResponse.class);
                if (blackResponse.getErrorCode() != 0 || blackResponse.getResultItem() == null || blackResponse.getResultItem().isEmpty() || blackResponse.getResultItem().get(0).getResultCode() != 0) {
                    return;
                }
                EventBus.getDefault().post(new Intent(LOCAL_EVENT_MSG.BLACK_NAME_ADD_OTHER));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a(CallModel callModel);

        void b(CallModel callModel);

        void c(CallModel callModel);
    }

    private void P1() {
        CallModel callModel = this.f22074a;
        if (callModel == null) {
            return;
        }
        c cVar = this.f22076c;
        if (cVar != null) {
            cVar.c(callModel);
        }
        EventBus.getDefault().post(new y7.d());
        dismissAllowingStateLoss();
    }

    private void Q1() {
        String format;
        CallModel callModel = this.f22074a;
        String str = callModel.matchPrice;
        if (callModel.callType == 1) {
            if (TextUtils.isEmpty(str)) {
                str = String.valueOf(i.u().s().getAudioDiamond());
            }
            String format2 = String.format("%s/min", str);
            if (q7.a.e().j()) {
                format = MessageFormat.format(getString(R.string.trtc_price_tip), "placeholder", format2);
            } else {
                format = String.format(getString(R.string.trtc_price_tip), "placeholder", format2);
            }
        } else {
            if (TextUtils.isEmpty(str)) {
                str = String.valueOf(i.u().s().getVideoDiamond());
            }
            String format3 = String.format("%s/min", str);
            if (q7.a.e().j()) {
                format = MessageFormat.format(getString(R.string.trtc_price_tip), "placeholder", format3);
            } else {
                format = String.format(getString(R.string.trtc_price_tip), "placeholder", format3);
            }
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(format);
        Drawable drawable = ContextCompat.getDrawable(getActivity(), R.mipmap.pk_record_fb);
        drawable.setBounds(0, 0, DensityUtil.dp2px(16.0f), DensityUtil.dp2px(16.0f));
        int indexOf = format.indexOf("placeholder");
        if (indexOf > 0) {
            spannableStringBuilder.setSpan(new com.guochao.faceshow.aaspring.modulars.live.adapter.a(drawable), indexOf, indexOf + 11, 33);
        }
        this.tvTrtcPrice.setText(spannableStringBuilder);
        this.avatarUser.d(this.f22074a);
        new UserCenterSexLevel(this.userAgeLevel).d(this.f22074a);
        this.tvNickName.setText(this.f22074a.getUserName());
        TextView textView = this.tvInviteName;
        CallModel callModel2 = this.f22074a;
        textView.setText(getString(callModel2.callType == 1 ? R.string.trtc_voice_message : R.string.trtc_video_message, callModel2.getUserName()));
    }

    private void R1() {
        c cVar;
        CallModel callModel = this.f22074a;
        if (callModel == null || (cVar = this.f22076c) == null) {
            return;
        }
        cVar.a(callModel);
    }

    private void S1() {
        startActivity(new Intent(getActivity(), DateSettingActivity.class));
    }

    public static FaceCastInviteCallDialog T1(CallModel callModel) {
        FaceCastInviteCallDialog faceCastInviteCallDialog = new FaceCastInviteCallDialog();
        Bundle bundle = new Bundle();
        bundle.putParcelable("callModel", callModel);
        faceCastInviteCallDialog.setArguments(bundle);
        return faceCastInviteCallDialog;
    }

    private void V1() {
        CallModel callModel = this.f22074a;
        if (callModel == null) {
            return;
        }
        c cVar = this.f22076c;
        if (cVar != null) {
            cVar.b(callModel);
        }
        dismissAllowingStateLoss();
    }

    public boolean U1() {
        return this.f22075b;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismissAllowingStateLoss() {
        super.dismissAllowingStateLoss();
        this.f22075b = true;
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().O();
        com.guochao.faceshow.aaspring.modulars.trtc.receive.c.g().d();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_call_invite_card;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (getDialog() != null && getDialog().getWindow() != null) {
            getDialog().getWindow().getDecorView().setSystemUiVisibility(5376);
        }
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().z(getContext());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
        if (getArguments() != null) {
            this.f22074a = (CallModel) getArguments().getParcelable("callModel");
        }
        if (this.f22074a == null) {
            return;
        }
        Q1();
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.NormalDialog);
        createBottomDialog.setCanceledOnTouchOutside(false);
        createBottomDialog.getWindow().setDimAmount(0.3f);
        createBottomDialog.setOnKeyListener(new a());
        return createBottomDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f22076c = null;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f22075b = true;
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().O();
    }

    @Override // b8.d.a
    public void onLogout() {
        dismissAllowingStateLoss();
    }

    @Override // b8.d.a
    public void onUserChanged(UserBean userBean, UserBean userBean2) {
    }

    @Override // b8.d.a
    public /* synthetic */ void onUserChanged(UserBean userBean, UserBean userBean2, boolean z10, boolean z11, boolean z12) {
        b8.c.a(this, userBean, userBean2, z10, z11, z12);
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.black_this /* 2131362123 */:
                if (this.f22074a == null) {
                    return;
                }
                V1();
                new PostRequest(Contants.BLACL_LIST_ADD).D("From_Account", getCurrentUser().getUserId()).D("To_Account", this.f22074a.getCurrentUserId()).M(new b());
                return;
            case R.id.btn_agree /* 2131362174 */:
                if (FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing()) {
                    ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.one_v_one_is_matching);
                    return;
                } else {
                    P1();
                    return;
                }
            case R.id.btn_refuse /* 2131362199 */:
                V1();
                return;
            case R.id.chat_icon /* 2131362277 */:
                V1();
                R1();
                return;
            case R.id.invite_type /* 2131363172 */:
                S1();
                return;
            default:
                return;
        }
    }

    public void setOnResultListener(c cVar) {
        this.f22076c = cVar;
    }
}
