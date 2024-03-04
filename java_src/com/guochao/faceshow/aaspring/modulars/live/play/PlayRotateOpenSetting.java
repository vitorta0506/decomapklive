package com.guochao.faceshow.aaspring.modulars.live.play;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import butterknife.OnClick;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.dialog.FaceCastDialog;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.aaspring.beans.LiveGameCreateResponse;
import com.guochao.faceshow.aaspring.beans.LiveLaunchResponse;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.game.DishWheelWinDialog;
import com.guochao.faceshow.aaspring.modulars.live.game.JoinGameDialog;
import com.guochao.faceshow.aaspring.modulars.live.game.LiveGameConfig;
import com.guochao.faceshow.aaspring.modulars.live.game.MiniGameDataManager;
import com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.LuckyNumberFragment;
import com.guochao.faceshow.aaspring.modulars.live.game.r;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.mine.view.MyWalletActivity;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p9.a;
/* loaded from: classes3.dex */
public class PlayRotateOpenSetting extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private TextView f19785a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f19786b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f19787c;

    /* renamed from: d  reason: collision with root package name */
    private ImageView f19788d;

    /* renamed from: e  reason: collision with root package name */
    private ImageView f19789e;

    /* renamed from: f  reason: collision with root package name */
    private View f19790f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private d9.g f19791g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private h f19792h;

    /* renamed from: i  reason: collision with root package name */
    private int f19793i;

    /* renamed from: j  reason: collision with root package name */
    private int f19794j;

    /* renamed from: k  reason: collision with root package name */
    private LiveRoomModel f19795k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f19796l;

    /* renamed from: m  reason: collision with root package name */
    private LiveGameBean f19797m;

    /* renamed from: n  reason: collision with root package name */
    private List<Integer> f19798n = new ArrayList();

    /* renamed from: o  reason: collision with root package name */
    private List<Integer> f19799o = new ArrayList();

    /* loaded from: classes3.dex */
    class a implements JoinGameDialog.a {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.JoinGameDialog.a
        public void onConfirm() {
            PlayRotateOpenSetting.this.i2();
        }
    }

    /* loaded from: classes3.dex */
    class b implements r.c {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.r.c
        public void a(int i9) {
            PlayRotateOpenSetting playRotateOpenSetting = PlayRotateOpenSetting.this;
            playRotateOpenSetting.f19793i = ((Integer) playRotateOpenSetting.f19798n.get(i9)).intValue();
            PlayRotateOpenSetting.this.f19785a.setText(String.format("%s%s", Integer.valueOf(PlayRotateOpenSetting.this.f19793i), ""));
        }
    }

    /* loaded from: classes3.dex */
    class c implements PopupWindow.OnDismissListener {
        c() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            PlayRotateOpenSetting.this.f19789e.setImageResource(R.mipmap.minigame_arrow_down);
        }
    }

    /* loaded from: classes3.dex */
    class d implements r.c {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.r.c
        public void a(int i9) {
            PlayRotateOpenSetting playRotateOpenSetting = PlayRotateOpenSetting.this;
            playRotateOpenSetting.f19794j = ((Integer) playRotateOpenSetting.f19799o.get(i9)).intValue();
            PlayRotateOpenSetting.this.f19787c.setText(String.format("%s%s", Integer.valueOf(PlayRotateOpenSetting.this.f19794j), ""));
            if (PlayRotateOpenSetting.this.f19796l) {
                PlayRotateOpenSetting playRotateOpenSetting2 = PlayRotateOpenSetting.this;
                playRotateOpenSetting2.h2((Integer) playRotateOpenSetting2.f19799o.get(i9));
            }
        }
    }

    /* loaded from: classes3.dex */
    class e implements PopupWindow.OnDismissListener {
        e() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            PlayRotateOpenSetting.this.f19788d.setImageResource(R.mipmap.minigame_arrow_down);
        }
    }

    /* loaded from: classes3.dex */
    class f implements a.f {

        /* loaded from: classes3.dex */
        class a implements e.a {
            a() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                dialog.dismiss();
                if (PlayRotateOpenSetting.this.getContext() == null || PlayRotateOpenSetting.this.isDetached() || PlayRotateOpenSetting.this.getActivity() == null || PlayRotateOpenSetting.this.getActivity().isFinishing() || PlayRotateOpenSetting.this.getActivity().isDestroyed() || !z10) {
                    return;
                }
                Intent e02 = MyWalletActivity.e0(PlayRotateOpenSetting.this.getActivity(), 1, com.guochao.faceshow.aaspring.modulars.googlepay.d.X(PlayRotateOpenSetting.this.f19791g.getCurrentLiveRoom().getBroadCasterUserId()));
                e02.putExtra("isToken", PlayRotateOpenSetting.this.f19797m.getFlag() == 1 ? "1" : "0");
                PlayRotateOpenSetting.this.getContext().startActivity(e02);
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        f() {
        }

        @Override // p9.a.f
        public void onCustomRecharge() {
            if (PlayRotateOpenSetting.this.getContext() == null || PlayRotateOpenSetting.this.isDetached() || PlayRotateOpenSetting.this.getActivity() == null || PlayRotateOpenSetting.this.getActivity().isFinishing() || PlayRotateOpenSetting.this.getActivity().isDestroyed()) {
                return;
            }
            if (PlayRotateOpenSetting.this.f19797m.getFlag() != 0 || PlayRotateOpenSetting.this.getActivity() == null) {
                new com.guochao.faceshow.views.e(PlayRotateOpenSetting.this.getContext(), new a()).b(PlayRotateOpenSetting.this.getContext().getString(PlayRotateOpenSetting.this.f19797m.getFlag() == 1 ? R.string.shuijing_not_enough : R.string.charge_notifi)).l().show();
            } else {
                RechargeDialog.showDialog(PlayRotateOpenSetting.this.getActivity().getSupportFragmentManager(), 1, 3);
            }
        }

        @Override // p9.a.f
        public void onResponse() {
            Integer diamond = p9.a.g().e().getDiamond();
            int tokenNum = p9.a.g().e().getTokenNum();
            boolean z10 = false;
            if (PlayRotateOpenSetting.this.f19797m.getFlag() != 1 ? !(diamond == null || diamond.intValue() < PlayRotateOpenSetting.this.f19794j) : tokenNum >= PlayRotateOpenSetting.this.f19794j) {
                z10 = true;
            }
            if (PlayRotateOpenSetting.this.f19790f.isSelected() || z10) {
                PlayRotateOpenSetting.this.f19790f.setSelected(!PlayRotateOpenSetting.this.f19790f.isSelected());
                PlayRotateOpenSetting playRotateOpenSetting = PlayRotateOpenSetting.this;
                playRotateOpenSetting.f19796l = playRotateOpenSetting.f19790f.isSelected();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends com.guochao.faceshow.aaspring.base.http.callback.c<LiveGameCreateResponse> {
        g() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LiveGameCreateResponse liveGameCreateResponse, @NonNull FaceCastBaseResponse<LiveGameCreateResponse> faceCastBaseResponse) {
            if (liveGameCreateResponse == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
            } else if (PlayRotateOpenSetting.this.getActivity() == null) {
            } else {
                liveGameCreateResponse.setFlag(PlayRotateOpenSetting.this.f19797m.getFlag());
                liveGameCreateResponse.setGameInfoId(PlayRotateOpenSetting.this.f19797m.getGameInfoId());
                PlayRotateOpenSetting.this.dismiss();
                if (PlayRotateOpenSetting.this.f19792h != null) {
                    PlayRotateOpenSetting.this.f19792h.a(PlayRotateOpenSetting.this);
                }
                LiveGameConfig liveGameConfig = new LiveGameConfig();
                liveGameConfig.g(PlayRotateOpenSetting.this.f19794j);
                liveGameConfig.h(PlayRotateOpenSetting.this.f19793i);
                liveGameConfig.j(liveGameCreateResponse.getIsJoin() == 1);
                liveGameConfig.i(liveGameCreateResponse.getRoundId());
                if (PlayRotateOpenSetting.this.f19791g != null && PlayRotateOpenSetting.this.f19797m != null) {
                    c9.a.i().r(PlayRotateOpenSetting.this.f19791g, liveGameCreateResponse, PlayRotateOpenSetting.this.f19797m, liveGameConfig, null, null, 0L);
                } else if (PlayRotateOpenSetting.this.f19791g instanceof BaseLiveRoomFragment) {
                    ((BaseLiveRoomFragment) PlayRotateOpenSetting.this.f19791g).d4();
                }
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LiveGameCreateResponse> aVar) {
            PlayRotateOpenSetting.this.showToast(R.string.minigame_create_error);
        }
    }

    /* loaded from: classes3.dex */
    public interface h {
        void a(PlayRotateOpenSetting playRotateOpenSetting);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h2(Integer num) {
        if (num == null) {
            return;
        }
        Integer diamond = p9.a.g().e().getDiamond();
        LiveGameBean liveGameBean = this.f19797m;
        if (liveGameBean != null && liveGameBean.getFlag() == 1) {
            this.f19790f.setSelected(p9.a.g().e().getTokenNum() >= num.intValue());
            return;
        }
        View view = this.f19790f;
        if (diamond != null && diamond.intValue() >= num.intValue()) {
            r2 = true;
        }
        view.setSelected(r2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i2() {
        if (this.f19797m == null) {
            return;
        }
        PostRequest y10 = post("tokens/game/v2/round/createGameRound").y("gameInfoId", Long.valueOf(this.f19797m.getGameInfoId())).y("confUserNum", Integer.valueOf(this.f19793i)).y("confDiamondNum", Integer.valueOf(this.f19794j)).y("isJoin", Integer.valueOf(this.f19790f.isSelected() ? 1 : 0)).y("isContinue", 0).y("liveId", this.f19795k.getLiveRoomId());
        LiveRoomModel liveRoomModel = this.f19795k;
        if (liveRoomModel instanceof RoomItemData) {
            y10.y("streamId", ((RoomItemData) liveRoomModel).getStream_id());
        } else if (liveRoomModel instanceof LiveLaunchResponse) {
            y10.y("streamId", ((LiveLaunchResponse) liveRoomModel).getStreamId());
        }
        y10.M(new g());
    }

    private boolean j2() {
        ViewStub viewStub;
        d9.g gVar = this.f19791g;
        if (gVar instanceof BaseLiveRoomFragment) {
            BaseLiveRoomFragment baseLiveRoomFragment = (BaseLiveRoomFragment) gVar;
            if (baseLiveRoomFragment.smallMiniGameLay.getVisibility() == 0) {
                return true;
            }
            for (Fragment fragment : baseLiveRoomFragment.getChildFragmentManager().getFragments()) {
                if ((fragment instanceof LuckyNumberFragment) && !fragment.isDetached()) {
                    return true;
                }
            }
            if (baseLiveRoomFragment.getActivity() != null) {
                for (Fragment fragment2 : baseLiveRoomFragment.getActivity().getSupportFragmentManager().getFragments()) {
                    if ((fragment2 instanceof DishWheelWinDialog) && ((DishWheelWinDialog) fragment2).P1()) {
                        return true;
                    }
                }
            }
            com.guochao.faceshow.aaspring.modulars.live.game.f fVar = baseLiveRoomFragment.P4;
            return (fVar == null || (viewStub = fVar.f19479a) == null || viewStub.getVisibility() != 0) ? false : true;
        }
        return false;
    }

    public static PlayRotateOpenSetting l2(FragmentManager fragmentManager, LiveRoomModel liveRoomModel, LiveGameBean liveGameBean) {
        PlayRotateOpenSetting playRotateOpenSetting = new PlayRotateOpenSetting();
        Bundle bundle = new Bundle();
        bundle.putParcelable(BaseConfig.LIVEROOMMODEL, liveRoomModel);
        bundle.putParcelable("liveGameBean", liveGameBean);
        playRotateOpenSetting.setArguments(bundle);
        playRotateOpenSetting.show(fragmentManager, PlayRotateOpenSetting.class.getSimpleName());
        return playRotateOpenSetting;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.play_rotate_open_seting;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.f19786b = (TextView) view.findViewById(R.id.minigame_start_tip);
        this.f19785a = (TextView) view.findViewById(R.id.participants_number);
        this.f19787c = (TextView) view.findViewById(R.id.participants_price);
        this.f19789e = (ImageView) view.findViewById(R.id.participants_number_arrow);
        this.f19788d = (ImageView) view.findViewById(R.id.participants_price_arrow);
        this.f19790f = view.findViewById(R.id.iv_select_state);
        if (getArguments() != null) {
            this.f19797m = (LiveGameBean) getArguments().getParcelable("liveGameBean");
        }
        LiveGameBean liveGameBean = this.f19797m;
        if (liveGameBean == null) {
            dismissAllowingStateLoss();
            return;
        }
        String string = getString(liveGameBean.getFlag() == 0 ? R.string.minigame_start_tip : R.string.minigame_start_tip_shuijing);
        int rate = this.f19797m.getRate();
        this.f19786b.setText(string.replaceAll("5", String.valueOf(rate)));
        if (rate == 0) {
            this.f19786b.setVisibility(8);
        }
        if (this.f19797m.getName() != null) {
            ((TextView) view.findViewById(R.id.game_name)).setText(this.f19797m.getName());
        }
        if (getArguments() != null) {
            this.f19795k = (LiveRoomModel) getArguments().getParcelable(BaseConfig.LIVEROOMMODEL);
        }
    }

    public void k2(d9.g gVar) {
        this.f19791g = gVar;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
        Iterator<LiveGameBean> it = MiniGameDataManager.getInstance().getLiveGameData().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            LiveGameBean next = it.next();
            if (this.f19797m.getGameInfoId() == next.getGameInfoId() && next.getJoinNumList() != null && next.getJoinMoneyList() != null) {
                this.f19798n.addAll(next.getJoinNumList());
                this.f19799o.addAll(next.getJoinMoneyList());
                break;
            }
        }
        if (this.f19799o.isEmpty() || this.f19798n.isEmpty()) {
            return;
        }
        TextView textView = this.f19785a;
        List<Integer> list = this.f19798n;
        textView.setText(String.format("%s%s", list.get(list.size() - 1), ""));
        List<Integer> list2 = this.f19798n;
        this.f19793i = list2.get(list2.size() - 1).intValue();
        this.f19787c.setText(String.format("%s%s", this.f19799o.get(0), ""));
        this.f19794j = this.f19799o.get(0).intValue();
        h2(this.f19799o.get(0));
        this.f19796l = this.f19790f.isSelected();
    }

    @OnClick
    public void onClick(View view) {
        int dp2px = DensityUtil.dp2px(3.0f);
        int i9 = -DensityUtil.dp2px(24.0f);
        switch (view.getId()) {
            case R.id.iv_close /* 2131363223 */:
                dismiss();
                return;
            case R.id.lay_select_state /* 2131363360 */:
                p9.a.g().q(this, this.f19794j, this.f19797m.getFlag() == 1, true, new f());
                return;
            case R.id.participants_number_lay /* 2131363932 */:
                r rVar = new r(getContext(), DensityUtil.dp2px(270.0f), DensityUtil.dp2px(95.0f));
                rVar.g(this.f19798n, getString(R.string.minigame_person));
                rVar.showAsDropDown(view, i9, dp2px);
                rVar.setOnItemClickListener(new b());
                rVar.setOnDismissListener(new c());
                this.f19789e.setImageResource(R.mipmap.minigame_arrow_up);
                return;
            case R.id.participants_price_lay /* 2131363935 */:
                r rVar2 = new r(getContext(), DensityUtil.dp2px(270.0f), DensityUtil.dp2px(95.0f));
                List<Integer> list = this.f19799o;
                LiveGameBean liveGameBean = this.f19797m;
                rVar2.g(list, getString((liveGameBean == null || liveGameBean.getFlag() == 0) ? R.string.minigame_diamond : R.string.minigame_shuijing));
                rVar2.showAsDropDown(view, i9, dp2px);
                rVar2.setOnItemClickListener(new d());
                rVar2.setOnDismissListener(new e());
                this.f19788d.setImageResource(R.mipmap.minigame_arrow_up);
                return;
            case R.id.start_game /* 2131364563 */:
                if (getContext() == null || !DisableDoubleClickUtils.canClick(view) || j2()) {
                    return;
                }
                BaseApplication baseApplication = BaseApplication.getInstance();
                if (!SpUtils.getBool(baseApplication, "NoMoreShowGamePay" + b8.e.g().getUserId(), false) && this.f19790f.isSelected()) {
                    JoinGameDialog.W1(((BaseActivity) getContext()).getSupportFragmentManager(), this.f19794j, new a(), this.f19797m.getFlag());
                    return;
                } else {
                    i2();
                    return;
                }
            default:
                return;
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        FaceCastDialog createCenterDialog = createCenterDialog();
        createCenterDialog.setCanceledOnTouchOutside(false);
        return createCenterDialog;
    }

    public void setStartListener(h hVar) {
        this.f19792h = hVar;
    }
}
