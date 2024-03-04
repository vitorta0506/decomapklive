package com.guochao.faceshow.aaspring.modulars.live.pk;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.ApplyPkCountdown;
import com.guochao.faceshow.aaspring.beans.PkRecord;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.BroadCastFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveChatFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.aaspring.utils.SendMessageHandle;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.BaseConfig;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import com.tencent.imsdk.v2.V2TIMCallback;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class InviteThePkDialogFragment extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private LiveRoomModel f19676a;
    @BindView
    HeadPortraitView avatarUser;

    /* renamed from: b  reason: collision with root package name */
    private LiveChatFragment f19677b;
    @BindView
    ImageView btnHangup;

    /* renamed from: c  reason: collision with root package name */
    private SVGAParser f19678c;
    @BindView
    SVGAImageView pkRandomGif;
    @BindView
    TextView tvTitleName;

    /* loaded from: classes3.dex */
    class a implements SVGAParser.ParseCompletion {
        a() {
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            SVGAImageView sVGAImageView = InviteThePkDialogFragment.this.pkRandomGif;
            if (sVGAImageView != null) {
                sVGAImageView.setVisibility(0);
                InviteThePkDialogFragment.this.pkRandomGif.setVideoItem(sVGAVideoEntity);
                InviteThePkDialogFragment.this.pkRandomGif.startAnimation();
            }
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* loaded from: classes3.dex */
    class b extends com.guochao.faceshow.aaspring.base.http.callback.c<PkRecord> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable PkRecord pkRecord, @NonNull FaceCastBaseResponse<PkRecord> faceCastBaseResponse) {
            InviteThePkDialogFragment.this.Q1();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<PkRecord> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements V2TIMCallback {
        c() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q1() {
        R1();
        this.f19676a.setApplyPkState(false);
        ToastUtils.debugToast(getActivity(), "cancelPk");
        this.f19676a.setInPkMode(false);
        LiveChatFragment liveChatFragment = this.f19677b;
        if (liveChatFragment != null) {
            liveChatFragment.setPkState(true);
            ToastUtils.debugToast(getContext(), "取消PK 按钮恢复");
            this.f19677b.refreshPkBtn();
        }
        ApplyPkCountdown applyPkCountdown = new ApplyPkCountdown();
        applyPkCountdown.setTime(-100L);
        EventBus.getDefault().post(applyPkCountdown);
        dismiss();
        x.n().d();
    }

    private void R1() {
        UserBean currentUser = getCurrentUser();
        if (this.f19676a.getPkUserInfo() == null) {
            return;
        }
        String currentUserId = this.f19676a.getPkUserInfo().getCurrentUserId();
        LiveMessageModel<BaseLiveMessage> createCancelPkMessage = LiveMessageModelFactory.createCancelPkMessage(this.f19676a.getLiveRoomId(), currentUser.getUserId(), currentUser.getUserName(), this.f19676a.getPkUserInfo().getCurrentUserId(), this.f19676a.getPkUserInfo().getUserNickName());
        SendMessageHandle.sendOnlineMessage(currentUserId, "", createCancelPkMessage.buildMessage(), createCancelPkMessage.getPriority(), new c());
    }

    public static InviteThePkDialogFragment S1(FragmentManager fragmentManager, LiveRoomModel liveRoomModel) {
        InviteThePkDialogFragment inviteThePkDialogFragment = new InviteThePkDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable(BaseConfig.LIVEROOMMODEL, liveRoomModel);
        inviteThePkDialogFragment.setArguments(bundle);
        inviteThePkDialogFragment.show(fragmentManager, InviteThePkDialogFragment.class.getSimpleName());
        return inviteThePkDialogFragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_pk_invite;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (x.n().p() == 2) {
            this.tvTitleName.setText(getString(R.string.pk_invite));
            this.avatarUser.setVisibility(0);
            this.pkRandomGif.setVisibility(8);
            this.avatarUser.d(this.f19676a.getPkUserInfo());
            return;
        }
        this.tvTitleName.setText(getString(R.string.pk_in_the_match));
        this.f19678c = SvgaImageViewUtils.getParser();
        this.avatarUser.setVisibility(8);
        this.f19678c.decodeFromInputStream(getResources().openRawResource(R.raw.pk_random_match_big), "pk_random_match_btn", new a(), true);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof LiveChatFragment) {
            this.f19677b = (LiveChatFragment) getParentFragment();
        } else if (parentFragment instanceof BroadCastFragment) {
            this.f19677b = ((BroadCastFragment) parentFragment).f18532y;
        }
        if (getArguments() != null) {
            this.f19676a = (LiveRoomModel) getArguments().getParcelable(BaseConfig.LIVEROOMMODEL);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return createBottomDialog();
    }

    @OnClick
    public void onViewClicked() {
        if (x.n().p() == 1) {
            dismissAllowingStateLoss();
            x.n().d();
            x.n().g();
            Fragment parentFragment = getParentFragment();
            if (parentFragment instanceof BroadCastFragment) {
                BroadCastFragment broadCastFragment = (BroadCastFragment) parentFragment;
                broadCastFragment.getCurrentLiveRoom().setApplyPkState(false);
                broadCastFragment.p3();
            }
        } else if (this.f19677b.getApplyPkSuccess()) {
            if (this.f19676a.getPkUserInfo() == null) {
                Q1();
            } else {
                post("tokens/live/invite/cancel/arena").v("cancelUserId", this.f19676a.getPkUserInfo().getCurrentUserId()).v("liveId", this.f19676a.getLiveRoomId()).I(3).M(new b());
            }
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.avatar_user || id2 == R.id.tv_title_name) {
            UserHomePageAct.start(getContext(), this.f19676a.getPkUserInfo().getCurrentUserId(), 1);
        }
    }
}
