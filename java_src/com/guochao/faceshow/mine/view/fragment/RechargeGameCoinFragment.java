package com.guochao.faceshow.mine.view.fragment;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.ChangeShuijingBean;
import com.guochao.faceshow.aaspring.beans.GameCoinBean;
import com.guochao.faceshow.aaspring.utils.AESUtil;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.views.e;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes4.dex */
public class RechargeGameCoinFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    private View f26000a;

    /* renamed from: b  reason: collision with root package name */
    private RecyclerView f26001b;

    /* renamed from: c  reason: collision with root package name */
    private final List<GameCoinBean.GameCoin> f26002c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    GameCoinBean.GameCoin f26003d;

    /* loaded from: classes4.dex */
    class a extends GridLayoutManager {
        a(Context context, int i9, int i10, boolean z10) {
            super(context, i9, i10, z10);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean canScrollVertically() {
            return false;
        }
    }

    /* loaded from: classes4.dex */
    class b extends RecyclerView.Adapter<BaseViewHolder> {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return RechargeGameCoinFragment.this.f26002c.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i9) {
            RechargeGameCoinFragment rechargeGameCoinFragment = RechargeGameCoinFragment.this;
            rechargeGameCoinFragment.Y1(baseViewHolder, i9, (GameCoinBean.GameCoin) rechargeGameCoinFragment.f26002c.get(i9));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            return RechargeGameCoinFragment.this.onCreateViewHolder(viewGroup, i9);
        }
    }

    /* loaded from: classes4.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameCoinBean.GameCoin gameCoin = RechargeGameCoinFragment.this.f26003d;
            if (gameCoin == null) {
                return;
            }
            if (gameCoin.getDiamond() > p9.a.g().f()) {
                RechargeGameCoinFragment.this.b2();
                return;
            }
            RechargeGameCoinFragment rechargeGameCoinFragment = RechargeGameCoinFragment.this;
            rechargeGameCoinFragment.d2(rechargeGameCoinFragment.f26003d.getRuleId());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameCoinBean.GameCoin f26007a;

        d(GameCoinBean.GameCoin gameCoin) {
            this.f26007a = gameCoin;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RechargeGameCoinFragment rechargeGameCoinFragment = RechargeGameCoinFragment.this;
            rechargeGameCoinFragment.f26003d = this.f26007a;
            rechargeGameCoinFragment.f26001b.getAdapter().notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e implements e.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f26009a;

        e(int i9) {
            this.f26009a = i9;
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            dialog.dismiss();
            if (z10) {
                RechargeGameCoinFragment.this.Z1(this.f26009a);
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<ChangeShuijingBean> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable ChangeShuijingBean changeShuijingBean, @NonNull FaceCastBaseResponse<ChangeShuijingBean> faceCastBaseResponse) {
            if (changeShuijingBean != null && changeShuijingBean.getResult() == 1) {
                p9.a.g().B(changeShuijingBean.getDiamond());
                p9.a.g().e().setTokenNum(changeShuijingBean.getTokenNum());
                if (RechargeGameCoinFragment.this.isDetached() || !RechargeGameCoinFragment.this.isAdded() || RechargeGameCoinFragment.this.getActivity() == null) {
                    return;
                }
                if ((RechargeGameCoinFragment.this.getParentFragment() instanceof RechargeFragment) && ((RechargeFragment) RechargeGameCoinFragment.this.getParentFragment()).U1() != null) {
                    ((RechargeFragment) RechargeGameCoinFragment.this.getParentFragment()).U1().c();
                }
                ToastUtils.showToast(RechargeGameCoinFragment.this.getContext(), RechargeGameCoinFragment.this.getString(R.string.change_gamecoin_success));
                return;
            }
            onFailure(new g7.a<>(new Exception(""), -1));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<ChangeShuijingBean> aVar) {
            if (RechargeGameCoinFragment.this.isDetached() || !RechargeGameCoinFragment.this.isAdded() || RechargeGameCoinFragment.this.getActivity() == null) {
                return;
            }
            ToastUtils.showToast(RechargeGameCoinFragment.this.getContext(), (int) R.string.Network_Error);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class g implements e.a {

        /* loaded from: classes4.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (RechargeGameCoinFragment.this.getParentFragment() instanceof RechargeFragment) {
                    RechargeGameCoinFragment.this.dismissProgressDialog();
                    ((RechargeFragment) RechargeGameCoinFragment.this.getParentFragment()).Z1(0);
                }
            }
        }

        g() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            dialog.dismiss();
            if (z10) {
                RechargeGameCoinFragment.this.showProgressDialog("");
                HandlerGetter.getMainHandler().postDelayed(new a(), 500L);
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class h extends com.guochao.faceshow.aaspring.base.http.callback.c<GameCoinBean> {
        h() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable GameCoinBean gameCoinBean, @NonNull FaceCastBaseResponse<GameCoinBean> faceCastBaseResponse) {
            if (gameCoinBean != null && gameCoinBean.getList() != null && !gameCoinBean.getList().isEmpty()) {
                RechargeGameCoinFragment.this.f26002c.clear();
                RechargeGameCoinFragment.this.f26002c.addAll(gameCoinBean.getList());
                if (RechargeGameCoinFragment.this.f26001b.getAdapter() != null) {
                    RechargeGameCoinFragment.this.f26001b.getAdapter().notifyDataSetChanged();
                    return;
                }
                return;
            }
            onFailure(new g7.a<>(new Exception(""), -1));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            if (RechargeGameCoinFragment.this.getRefreshableLayout() != null) {
                RechargeGameCoinFragment.this.getRefreshableLayout().w();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull @NotNull g7.a<GameCoinBean> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y1(BaseViewHolder baseViewHolder, int i9, GameCoinBean.GameCoin gameCoin) {
        baseViewHolder.itemView.setOnClickListener(new d(gameCoin));
        GameCoinBean.GameCoin gameCoin2 = this.f26003d;
        if (gameCoin2 != null && gameCoin2.getRuleId() == gameCoin.getRuleId()) {
            baseViewHolder.itemView.setSelected(true);
        } else {
            baseViewHolder.itemView.setSelected(false);
        }
        ((ViewGroup.MarginLayoutParams) baseViewHolder.itemView.getLayoutParams()).setMarginStart(DensityUtil.dp2px(5.0f));
        ((ViewGroup.MarginLayoutParams) baseViewHolder.itemView.getLayoutParams()).setMarginEnd(DensityUtil.dp2px(5.0f));
        if (i9 < 3) {
            ((ViewGroup.MarginLayoutParams) baseViewHolder.itemView.getLayoutParams()).topMargin = DensityUtil.dp2px(0.0f);
        } else {
            ((ViewGroup.MarginLayoutParams) baseViewHolder.itemView.getLayoutParams()).topMargin = DensityUtil.dp2px(10.0f);
        }
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_number);
        textView.setText(String.valueOf(gameCoin.getGameCoin()));
        TextView textView2 = (TextView) baseViewHolder.getView(R.id.btnRecharge);
        textView2.setText(String.valueOf(gameCoin.getDiamond()));
        if (baseViewHolder.itemView.isSelected()) {
            textView.setTextColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), R.color.white));
            textView2.setTextColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), R.color.white));
        } else {
            textView.setTextColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), R.color.color_text_level_1));
            textView2.setTextColor(ContextCompat.getColor(baseViewHolder.itemView.getContext(), R.color.color_text_level_1));
        }
        ((ViewGroup) baseViewHolder.getView(R.id.btnRecharge).getParent()).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.mine.view.fragment.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RechargeGameCoinFragment.c2(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z1(int i9) {
        String str;
        try {
            str = AESUtil.getInstance().encrypt(String.format("{\"ruleId\":%s,\"time\":%s}", Integer.valueOf(i9), Long.valueOf(System.currentTimeMillis() + com.guochao.faceshow.aaspring.manager.i.u().s().getServerTimeDiff())), "6ZD95A833EC87EW5");
        } catch (Exception e10) {
            e10.printStackTrace();
            str = null;
        }
        post("tokens/game/tokenum/exchange").P(null).D(RemoteMessageConst.MessageBody.PARAM, str).M(new f());
    }

    public static RechargeGameCoinFragment a2() {
        return new RechargeGameCoinFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b2() {
        new com.guochao.faceshow.views.e(getContext(), new g()).b(getString(R.string.charge_notifi)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c2(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d2(int i9) {
        com.guochao.faceshow.views.e b10 = new com.guochao.faceshow.views.e(getContext(), new e(i9)).b(getString(R.string.ready_to_change_gamecoin));
        b10.k(getString(R.string.change_gamecoin));
        b10.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SmartRefreshLayout getRefreshableLayout() {
        if (getParentFragment() instanceof RechargeFragment) {
            return ((RechargeFragment) getParentFragment()).V1();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BaseViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(LayoutInflater.from(getContext()).inflate(R.layout.recharge_game_list_item, viewGroup, false));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_recharge_gamecoin;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        a aVar = new a(getActivity(), 3, 1, false);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.recycler_view);
        this.f26001b = recyclerView;
        recyclerView.setLayoutManager(aVar);
        this.f26001b.setAdapter(new b());
        View findViewById = view.findViewById(R.id.empty_view);
        this.f26000a = findViewById;
        findViewById.findViewById(R.id.empty_text).setVisibility(8);
        if (getParentFragment() instanceof RechargeFragment) {
            view.findViewById(R.id.start_buy).setOnClickListener(new c());
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
        loadData(1);
    }

    public void loadData(int i9) {
        if (getParentFragment() instanceof RechargeFragment) {
            ((RechargeFragment) getParentFragment()).W1();
        }
        get("tokens/game/tokenum/findTokenRuleList").M(new h());
    }
}
