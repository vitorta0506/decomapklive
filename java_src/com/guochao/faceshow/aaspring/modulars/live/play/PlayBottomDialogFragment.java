package com.guochao.faceshow.aaspring.modulars.live.play;

import android.app.Dialog;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.BroadCastFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.game.DishWheelWinDialog;
import com.guochao.faceshow.aaspring.modulars.live.game.MiniGameDataManager;
import com.guochao.faceshow.aaspring.modulars.live.game.PkIconLayoutGameHolder;
import com.guochao.faceshow.aaspring.modulars.live.game.f;
import com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.LuckyNumberFragment;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.live.play.PlayBottomDialogFragment;
import com.guochao.faceshow.aaspring.modulars.live.play.PlayRotateOpenSetting;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.signin.dialog.LiveSignCenterDialog;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.web.WebViewActivity;
import d9.e;
import d9.g;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public class PlayBottomDialogFragment extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private LiveRoomModel f19771a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f19772b;

    /* renamed from: c  reason: collision with root package name */
    private PkIconLayoutGameHolder f19773c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f19774d;

    /* renamed from: e  reason: collision with root package name */
    private List<LiveGameBean> f19775e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private g f19776f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f19777g;

    /* loaded from: classes3.dex */
    class a implements Observer<List<LiveGameBean>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecyclerView f19778a;

        a(RecyclerView recyclerView) {
            this.f19778a = recyclerView;
        }

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void onChanged(List<LiveGameBean> list) {
            PlayBottomDialogFragment.this.b2(this.f19778a, list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

        /* loaded from: classes3.dex */
        class a extends RecyclerView.ViewHolder {
            a(View view) {
                super(view);
            }
        }

        /* renamed from: com.guochao.faceshow.aaspring.modulars.live.play.PlayBottomDialogFragment$b$b  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0190b extends RecyclerView.ViewHolder {
            C0190b(View view) {
                super(view);
            }
        }

        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(View view) {
            if (!DisableDoubleClickUtils.canClick(view) || PlayBottomDialogFragment.this.f19771a == null || PlayBottomDialogFragment.this.getActivity() == null || PlayBottomDialogFragment.this.getActivity().isDestroyed() || PlayBottomDialogFragment.this.getActivity().isFinishing() || !(PlayBottomDialogFragment.this.f19776f instanceof BaseLiveRoomFragment) || !(view.getTag() instanceof LiveGameBean)) {
                return;
            }
            PlayBottomDialogFragment.this.c2(view, (LiveGameBean) view.getTag());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(View view) {
            PlayBottomDialogFragment.this.dismissAllowingStateLoss();
            if (view.getTag() instanceof String) {
                WebViewActivity.createBuilder().m((String) view.getTag()).a(view.getContext());
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return PlayBottomDialogFragment.this.f19775e.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i9) {
            if (PlayBottomDialogFragment.this.f19775e.get(i9) == null) {
                return 1001;
            }
            return super.getItemViewType(i9);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i9) {
            if (PlayBottomDialogFragment.this.f19775e.get(i9) == null) {
                PlayBottomDialogFragment.this.d2(viewHolder.itemView);
                return;
            }
            PlayBottomDialogFragment playBottomDialogFragment = PlayBottomDialogFragment.this;
            playBottomDialogFragment.X1(viewHolder.itemView, (LiveGameBean) playBottomDialogFragment.f19775e.get(i9));
            View findViewById = viewHolder.itemView.findViewById(R.id.mini_game_helper);
            findViewById.setTag(((LiveGameBean) PlayBottomDialogFragment.this.f19775e.get(i9)).getH5Url());
            if (((LiveGameBean) PlayBottomDialogFragment.this.f19775e.get(i9)).getGameCode() != 1 && ((LiveGameBean) PlayBottomDialogFragment.this.f19775e.get(i9)).getGameCode() != 4) {
                findViewById.setVisibility(8);
            } else {
                findViewById.setVisibility(0);
            }
            viewHolder.itemView.findViewById(R.id.play_rotate).setTag(PlayBottomDialogFragment.this.f19775e.get(i9));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            if (i9 == 1001) {
                return new a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_play_bottom_pk_holder, viewGroup, false));
            }
            C0190b c0190b = new C0190b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_play_bottom_game_holder, viewGroup, false));
            c0190b.itemView.findViewById(R.id.play_rotate).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.play.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PlayBottomDialogFragment.b.this.c(view);
                }
            });
            c0190b.itemView.findViewById(R.id.mini_game_helper).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.play.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PlayBottomDialogFragment.b.this.d(view);
                }
            });
            return c0190b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements PlayRotateOpenSetting.h {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.play.PlayRotateOpenSetting.h
        public void a(PlayRotateOpenSetting playRotateOpenSetting) {
            PlayBottomDialogFragment.this.dismissAllowingStateLoss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements PkIconLayoutGameHolder.d {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.PkIconLayoutGameHolder.d
        public void a() {
            if (PlayBottomDialogFragment.this.getParentFragment() instanceof g) {
                ((g) PlayBottomDialogFragment.this.getParentFragment()).a();
                PlayBottomDialogFragment.this.dismissAllowingStateLoss();
            }
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.PkIconLayoutGameHolder.d
        public void c(int i9, String str, String str2, String str3, String str4, boolean z10, boolean z11) {
            if (PlayBottomDialogFragment.this.getParentFragment() instanceof g) {
                ((g) PlayBottomDialogFragment.this.getParentFragment()).c(2, str, str2, "", "", false, false);
                ((g) PlayBottomDialogFragment.this.getParentFragment()).d(2, true);
            }
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.PkIconLayoutGameHolder.d
        public void d(int i9, boolean z10) {
            if (PlayBottomDialogFragment.this.getParentFragment() instanceof g) {
                ((g) PlayBottomDialogFragment.this.getParentFragment()).d(2, true);
            }
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.PkIconLayoutGameHolder.d
        public void e(long j10) {
            if (PlayBottomDialogFragment.this.getParentFragment() instanceof BaseLiveRoomFragment) {
                ((BaseLiveRoomFragment) PlayBottomDialogFragment.this.getParentFragment()).e4(j10);
            }
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.PkIconLayoutGameHolder.d
        public void f() {
            if (PlayBottomDialogFragment.this.f19771a.isBroadCaster() && PlayBottomDialogFragment.this.getActivity() != null && PlayBottomDialogFragment.this.f19771a.getApplyPkState() && (PlayBottomDialogFragment.this.getParentFragment() instanceof BroadCastFragment)) {
                ((BroadCastFragment) PlayBottomDialogFragment.this.getParentFragment()).L3();
            }
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.PkIconLayoutGameHolder.d
        public <T extends BaseLiveMessage> void sendC2CLiveMessage(@NonNull String str, @NonNull LiveMessageModel<T> liveMessageModel, @Nullable e.a<Boolean> aVar) {
            if (PlayBottomDialogFragment.this.getParentFragment() instanceof BaseLiveInfoFragment) {
                ((BaseLiveInfoFragment) PlayBottomDialogFragment.this.getParentFragment()).sendC2CLiveMessage(str, liveMessageModel, null);
            } else if (PlayBottomDialogFragment.this.getParentFragment() instanceof BroadCastFragment) {
                ((BroadCastFragment) PlayBottomDialogFragment.this.getParentFragment()).sendC2CLiveMessage(str, liveMessageModel, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X1(View view, LiveGameBean liveGameBean) {
        hc.a.j((ImageView) view.findViewById(R.id.game_icon), liveGameBean.getIcon());
        ((TextView) view.findViewById(R.id.game_name)).setText(liveGameBean.getName());
    }

    private boolean Y1() {
        ViewStub viewStub;
        g gVar = this.f19776f;
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
            f fVar = baseLiveRoomFragment.P4;
            return (fVar == null || (viewStub = fVar.f19479a) == null || viewStub.getVisibility() != 0) ? false : true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a2(View view) {
        if (!DisableDoubleClickUtils.canClick(view) || getActivity() == null || getActivity().isFinishing()) {
            return;
        }
        LiveSignCenterDialog.showDialog(getActivity());
        dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b2(RecyclerView recyclerView, List<LiveGameBean> list) {
        this.f19775e.clear();
        if (this.f19771a.isBroadCaster() && !this.f19774d) {
            this.f19775e.add(null);
        }
        this.f19775e.addAll(list);
        recyclerView.setAdapter(new b());
        if (recyclerView.getAdapter() != null) {
            recyclerView.getAdapter().notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c2(View view, LiveGameBean liveGameBean) {
        if (getActivity() == null) {
            return;
        }
        boolean isBroadCaster = this.f19776f.getCurrentLiveRoom().isBroadCaster();
        if (liveGameBean.getIsH5Page() == 1) {
            if (liveGameBean.getOpenRoleType() != 1 && (liveGameBean.getOpenRoleType() != 0 || !isBroadCaster)) {
                ToastUtils.debugToast(BaseApplication.getInstance(), "没有权限玩这个游戏");
            } else if (TextUtils.isEmpty(this.f19776f.getCurrentLiveRoom().getLiveRoomId())) {
            } else {
                c9.a.i().s(this.f19776f, liveGameBean);
                dismissAllowingStateLoss();
            }
        } else if (Y1()) {
        } else {
            f fVar = ((BaseLiveRoomFragment) this.f19776f).P4;
            if (fVar != null && fVar.m() >= 0) {
                if ((liveGameBean.getGameCode() == 1 && fVar.j() == 0) || (liveGameBean.getGameCode() == 4 && fVar.j() == 1)) {
                    View view2 = fVar.f19480b;
                    if (view2 != null && view2.getVisibility() == 0) {
                        fVar.Z();
                    } else {
                        View view3 = fVar.I;
                        if (view3 != null) {
                            view3.callOnClick();
                        }
                    }
                } else if (isBroadCaster) {
                    showToast(R.string.live_game_other_gaming_going_on);
                } else {
                    showToast(getString(R.string.minigame_start_limit));
                }
                dismissAllowingStateLoss();
            } else if (c9.a.i().g() != null && c9.a.i().g().p0() != null) {
                if (Objects.equals(Long.valueOf(liveGameBean.getGameInfoId()), Long.valueOf(c9.a.i().g().p0().getGameInfoId()))) {
                    c9.a.i().t();
                } else if (isBroadCaster) {
                    showToast(R.string.live_game_other_gaming_going_on);
                } else {
                    showToast(getString(R.string.minigame_start_limit));
                }
                dismissAllowingStateLoss();
            } else if (this.f19776f.getCurrentLiveRoom().isBroadCaster()) {
                PlayRotateOpenSetting l22 = PlayRotateOpenSetting.l2(getActivity().getSupportFragmentManager(), this.f19771a, liveGameBean);
                l22.k2(this.f19776f);
                l22.setStartListener(new c());
            } else {
                showToast(getString(R.string.minigame_start_limit));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d2(View view) {
        View findViewById = view.findViewById(R.id.pk_layout);
        TextView textView = (TextView) view.findViewById(R.id.pk_text);
        findViewById.getLayoutParams().width = DensityUtil.dp2px(46.0f);
        findViewById.getLayoutParams().height = DensityUtil.dp2px(46.0f);
        if (this.f19773c == null) {
            this.f19773c = new PkIconLayoutGameHolder(findViewById, textView);
        }
        this.f19773c.p(this.f19771a);
        this.f19773c.s(this.f19772b);
        if (this.f19773c.i() == null) {
            this.f19773c.setOnResultListener(new d());
        }
    }

    public static PlayBottomDialogFragment e2(FragmentManager fragmentManager, LiveRoomModel liveRoomModel, g gVar, boolean z10, boolean z11) {
        PlayBottomDialogFragment playBottomDialogFragment = new PlayBottomDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable(BaseConfig.LIVEROOMMODEL, liveRoomModel);
        bundle.putBoolean("PKstate", z10);
        bundle.putBoolean("pkHide", z11);
        MemoryCache.getInstance().put("ILiveRoomManager", gVar);
        playBottomDialogFragment.setArguments(bundle);
        playBottomDialogFragment.show(fragmentManager, PlayBottomDialogFragment.class.getSimpleName());
        return playBottomDialogFragment;
    }

    public boolean Z1() {
        return this.f19777g;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismissAllowingStateLoss() {
        super.dismissAllowingStateLoss();
        this.f19777g = false;
        PkIconLayoutGameHolder pkIconLayoutGameHolder = this.f19773c;
        if (pkIconLayoutGameHolder != null) {
            pkIconLayoutGameHolder.m();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_play_bottom;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (getArguments() != null) {
            this.f19771a = (LiveRoomModel) getArguments().getParcelable(BaseConfig.LIVEROOMMODEL);
            this.f19772b = getArguments().getBoolean("PKstate", false);
            this.f19774d = getArguments().getBoolean("pkHide", false);
        }
        g gVar = (g) MemoryCache.getInstance().remove("ILiveRoomManager");
        this.f19776f = gVar;
        if (this.f19771a != null && gVar != null) {
            RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.recycler_view);
            recyclerView.setLayoutManager(new GridLayoutManager(getContext(), 4, 1, false));
            MiniGameDataManager.getInstance().getGameLiveData().observe(this, new a(recyclerView));
            view.findViewById(R.id.sign_center_lay).setOnClickListener(new View.OnClickListener() { // from class: e9.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    PlayBottomDialogFragment.this.a2(view2);
                }
            });
            if (this.f19771a.isBroadCaster()) {
                view.findViewById(R.id.first_title).setVisibility(8);
                view.findViewById(R.id.second_title).setVisibility(8);
                view.findViewById(R.id.second_content).setVisibility(8);
                return;
            }
            return;
        }
        dismissAllowingStateLoss();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return createBottomDialog();
    }

    public void refreshPkBtn() {
        PkIconLayoutGameHolder pkIconLayoutGameHolder = this.f19773c;
        if (pkIconLayoutGameHolder == null || !pkIconLayoutGameHolder.j()) {
            return;
        }
        this.f19773c.l();
    }

    public void setPkBtnVisibility(boolean z10) {
        PkIconLayoutGameHolder pkIconLayoutGameHolder = this.f19773c;
        if (pkIconLayoutGameHolder == null || !pkIconLayoutGameHolder.j()) {
            return;
        }
        this.f19773c.q(z10);
    }

    public void setPkLoadingState(boolean z10) {
        PkIconLayoutGameHolder pkIconLayoutGameHolder = this.f19773c;
        if (pkIconLayoutGameHolder == null || !pkIconLayoutGameHolder.j()) {
            return;
        }
        this.f19773c.r(z10);
    }

    public void setPkState(boolean z10) {
        PkIconLayoutGameHolder pkIconLayoutGameHolder = this.f19773c;
        if (pkIconLayoutGameHolder == null || !pkIconLayoutGameHolder.j()) {
            return;
        }
        this.f19773c.s(z10);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
        this.f19777g = true;
    }
}
