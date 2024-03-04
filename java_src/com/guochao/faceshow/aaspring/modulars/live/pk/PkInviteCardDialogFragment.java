package com.guochao.faceshow.aaspring.modulars.live.pk;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.gson.Gson;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.beans.LivePeopleInfoBean;
import com.guochao.faceshow.aaspring.beans.LivePkInvite;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager;
import com.guochao.faceshow.aaspring.modulars.user.view.UserCenterSexLevel;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes3.dex */
public class PkInviteCardDialogFragment extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private LivePkInvite f19692a;
    @BindView
    HeadPortraitView avatarUser;

    /* renamed from: b  reason: collision with root package name */
    private UserCenterSexLevel f19693b;
    @BindView
    ImageButton btnAgree;
    @BindView
    ImageButton btnRefuse;

    /* renamed from: c  reason: collision with root package name */
    private boolean f19694c = false;

    /* renamed from: d  reason: collision with root package name */
    private b f19695d;
    @BindView
    ImageView ivSelectState;
    @BindView
    TextView tvInviteName;
    @BindView
    TextView tvNickName;
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
    public interface b {
        void a(PkInviteCardDialogFragment pkInviteCardDialogFragment);

        void b(PkInviteCardDialogFragment pkInviteCardDialogFragment);

        void c(PkInviteCardDialogFragment pkInviteCardDialogFragment);
    }

    public static PkInviteCardDialogFragment Q1(LivePkInvite livePkInvite) {
        PkInviteCardDialogFragment pkInviteCardDialogFragment = new PkInviteCardDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("data", livePkInvite);
        pkInviteCardDialogFragment.setArguments(bundle);
        return pkInviteCardDialogFragment;
    }

    public boolean P1() {
        return this.ivSelectState.isSelected();
    }

    public LivePkInvite R1() {
        return this.f19692a;
    }

    public boolean S1() {
        return this.f19694c;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismissAllowingStateLoss() {
        super.dismissAllowingStateLoss();
        this.f19694c = false;
        b bVar = this.f19695d;
        if (bVar != null) {
            bVar.a(this);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_pk_invite_card;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (getDialog() == null || getDialog().getWindow() == null) {
            return;
        }
        getDialog().getWindow().getDecorView().setSystemUiVisibility(5376);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f19692a = (LivePkInvite) arguments.getParcelable("data");
        }
        LivePeopleInfoBean livePeopleInfoBean = new LivePeopleInfoBean();
        LivePkInvite livePkInvite = this.f19692a;
        if (livePkInvite != null) {
            livePeopleInfoBean.setUserId(livePkInvite.getCurrentUserId());
            livePeopleInfoBean.setSex(Integer.parseInt(this.f19692a.getSex()));
            livePeopleInfoBean.setImg(this.f19692a.getAvatarUrl());
            livePeopleInfoBean.setAge(this.f19692a.getAge());
            livePeopleInfoBean.setCountryLog(this.f19692a.getCountryFlag());
            if (!TextUtils.isEmpty(this.f19692a.getUserVipMsg())) {
                livePeopleInfoBean.setUserVipMsg((UserVipData) new Gson().fromJson(this.f19692a.getUserVipMsg(), (Class<Object>) UserVipData.class));
            }
        }
        this.avatarUser.d(livePeopleInfoBean);
        this.tvNickName.setText(this.f19692a.getNick_name());
        this.tvInviteName.setText(getString(R.string.pk_invite_name, this.f19692a.getNick_name()));
        UserCenterSexLevel userCenterSexLevel = new UserCenterSexLevel(this.userAgeLevel);
        this.f19693b = userCenterSexLevel;
        userCenterSexLevel.d(livePeopleInfoBean);
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

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.btn_agree) {
            if (FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing()) {
                ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.one_v_one_is_matching);
            } else if (this.f19695d != null) {
                this.ivSelectState.setSelected(false);
                this.ivSelectState.setImageResource(R.mipmap.pk_choice_gray);
                x.n().D(2);
                this.f19695d.c(this);
            }
        } else if (id2 == R.id.btn_refuse) {
            b bVar = this.f19695d;
            if (bVar != null) {
                bVar.b(this);
            }
        } else if (id2 != R.id.lay_select_state) {
        } else {
            ImageView imageView = this.ivSelectState;
            imageView.setSelected(!imageView.isSelected());
            if (this.ivSelectState.isSelected()) {
                this.ivSelectState.setImageResource(R.mipmap.pk_choice_blue);
            } else {
                this.ivSelectState.setImageResource(R.mipmap.pk_choice_gray);
            }
        }
    }

    public void setOnResultListener(b bVar) {
        this.f19695d = bVar;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
        this.f19694c = true;
    }
}
