package com.guochao.faceshow.aaspring.modulars.personal;

import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.WithdrawalData;
import com.guochao.faceshow.aaspring.config.ServerConfig;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.utils.Formatter;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.mine.model.MyWalletBean;
import com.guochao.faceshow.mine.model.WithdrawalBean;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.ScreenTools;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class WithdrawalMoneyActivity extends BaseRecyclerViewActivity<WithdrawalBean, BaseViewHolder> {

    /* renamed from: c  reason: collision with root package name */
    private WithdrawalMoneyHead f21360c;

    /* renamed from: d  reason: collision with root package name */
    private View f21361d;

    /* renamed from: f  reason: collision with root package name */
    private boolean f21363f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f21364g;

    /* renamed from: a  reason: collision with root package name */
    List<WithdrawalBean> f21358a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    List<WithdrawalBean> f21359b = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private boolean f21362e = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WithdrawalBean f21365a;

        a(WithdrawalBean withdrawalBean) {
            this.f21365a = withdrawalBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SpUtils.getInt(WithdrawalMoneyActivity.this.getActivity(), Contants.FB) >= this.f21365a.getF()) {
                Intent intent = new Intent(WithdrawalMoneyActivity.this.getActivity(), WithdrawalNewActivity.class);
                intent.putExtra("money", String.valueOf(this.f21365a.price));
                intent.putExtra("payMode", this.f21365a.getWithdraw_id());
                intent.putExtra("inChina", WithdrawalMoneyActivity.this.f21362e);
                WithdrawalMoneyActivity.this.startActivity(intent);
                return;
            }
            ToastUtils.showToast(WithdrawalMoneyActivity.this.getActivity(), WithdrawalMoneyActivity.this.getResources().getString(R.string.fb_not_enough));
        }
    }

    /* loaded from: classes3.dex */
    class b extends v.d {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.d
        public void onFirstIconClick(View view) {
            WithdrawalMoneyActivity.this.startActivity(WithdrawalRecordActivity.class);
        }
    }

    /* loaded from: classes3.dex */
    class c extends RecyclerView.OnScrollListener {

        /* renamed from: a  reason: collision with root package name */
        private int f21368a;

        c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i9, int i10) {
            super.onScrolled(recyclerView, i9, i10);
            this.f21368a += i10;
            ImageView imageView = (ImageView) WithdrawalMoneyActivity.this.findViewById(R.id.iv_title_bar);
            if (this.f21368a > 10) {
                imageView.setAlpha(1.0f);
            } else {
                imageView.setAlpha(0.0f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<MyWalletBean> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable MyWalletBean myWalletBean, @NonNull FaceCastBaseResponse<MyWalletBean> faceCastBaseResponse) {
            if (myWalletBean == null) {
                return;
            }
            WithdrawalMoneyActivity.this.f21360c.b((int) myWalletBean.getAvailableBalance());
            p9.a.g().t(myWalletBean);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<MyWalletBean> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<WithdrawalData> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable WithdrawalData withdrawalData, @NonNull FaceCastBaseResponse<WithdrawalData> faceCastBaseResponse) {
            if (withdrawalData != null && withdrawalData.getNormList() != null && withdrawalData.getNormList().size() > 0) {
                WithdrawalMoneyActivity.this.f21358a.clear();
                WithdrawalMoneyActivity.this.f21359b.clear();
                WithdrawalMoneyActivity.this.f21362e = withdrawalData.getCurrency() == 0;
                if (withdrawalData.getWithDrawSwitch() != null) {
                    ServerConfig s10 = i.u().s();
                    s10.setAliPaySwitch(withdrawalData.getWithDrawSwitch().getAliPaySwitch());
                    s10.setPayoneerSwitch(withdrawalData.getWithDrawSwitch().getPayoneerSwitch());
                    s10.setPayoneerSwitchV2(withdrawalData.getWithDrawSwitch().getPayoneerSwitchV2());
                    s10.setPaypalSwitch(withdrawalData.getWithDrawSwitch().getPaypalSwitch());
                    s10.setUsdtSwitch(withdrawalData.getWithDrawSwitch().getUsdtSwitch());
                    i.u().z();
                }
                for (WithdrawalBean withdrawalBean : withdrawalData.getNormList()) {
                    if (withdrawalBean.currency == 0) {
                        WithdrawalMoneyActivity.this.f21358a.add(withdrawalBean);
                    } else {
                        WithdrawalMoneyActivity.this.f21359b.add(withdrawalBean);
                    }
                }
                if (WithdrawalMoneyActivity.this.f21362e) {
                    WithdrawalMoneyActivity withdrawalMoneyActivity = WithdrawalMoneyActivity.this;
                    withdrawalMoneyActivity.setDatas(withdrawalMoneyActivity.f21358a);
                } else {
                    WithdrawalMoneyActivity withdrawalMoneyActivity2 = WithdrawalMoneyActivity.this;
                    withdrawalMoneyActivity2.setDatas(withdrawalMoneyActivity2.f21359b);
                }
                WithdrawalMoneyActivity.this.notifyDataLoaded(false);
                return;
            }
            WithdrawalMoneyActivity.this.l0();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<WithdrawalData> aVar) {
            WithdrawalMoneyActivity.this.l0();
        }
    }

    private void i0() {
        post(Contants.WITHDRAWAL_LIST).M(new e());
    }

    private void initData() {
        post(Contants.MY_WALLET_DATA).D(Contants.USER_ID, SpUtils.getStr(this, Contants.USER_ID)).M(new d());
        i0();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: g0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, WithdrawalBean withdrawalBean) {
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_money_number);
        TextView textView2 = (TextView) baseViewHolder.getView(R.id.tv_f_number);
        LinearLayout linearLayout = (LinearLayout) baseViewHolder.getView(R.id.ll_f);
        String str = this.f21362e ? "￥ " : "US$ ";
        textView2.setText(String.valueOf(withdrawalBean.getF()));
        textView.setText(MessageFormat.format("{0}{1}", str, Formatter.formatNum(withdrawalBean.price, 2)));
        linearLayout.setOnClickListener(new a(withdrawalBean));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        a.C0147a c0147a = new a.C0147a(this);
        c0147a.b(true);
        c0147a.d(false);
        c0147a.e(false);
        return c0147a.a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_withdrawal_money_new;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(R.string.live_withdrawal_money);
        this.f21364g = getIntent().getBooleanExtra("isFreeze", false);
        setEndIcon(R.drawable.bitmap_cash_tx);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightIconClickListener(new b());
        }
        v vVar2 = this.mTitleBarHelper;
        if (vVar2 != null && (vVar2.d() instanceof ImageButton)) {
            ((ImageButton) this.mTitleBarHelper.d()).setImageResource(R.drawable.icon_left_back_sign_center);
        }
        hideFooterView();
        WithdrawalMoneyHead withdrawalMoneyHead = new WithdrawalMoneyHead(LayoutInflater.from(this).inflate(R.layout.header_withdrawal_money, (ViewGroup) getRecyclerView(), false));
        this.f21360c = withdrawalMoneyHead;
        withdrawalMoneyHead.c(this.f21364g);
        addHeaderView(this.f21360c.a(), -101);
        View inflate = LayoutInflater.from(this).inflate(R.layout.layout_empty_view, (ViewGroup) getRecyclerView(), false);
        this.f21361d = inflate;
        inflate.findViewById(R.id.empty_text).setVisibility(8);
        ((ViewGroup.MarginLayoutParams) this.f21361d.getLayoutParams()).height = ScreenTools.getScreenHeight() - DensityUtil.dp2px(257.0f);
        getRecyclerView().addOnScrollListener(new c());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: k0 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, WithdrawalBean withdrawalBean) {
    }

    public void l0() {
        if (this.f21363f) {
            return;
        }
        View view = this.f21361d;
        if (view != null) {
            addHeaderView(view, -102);
        }
        getRefreshableLayout().f(true);
        this.f21363f = true;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        initData();
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(LayoutInflater.from(this).inflate(R.layout.withdrawal_money_list_item, viewGroup, false));
    }
}
