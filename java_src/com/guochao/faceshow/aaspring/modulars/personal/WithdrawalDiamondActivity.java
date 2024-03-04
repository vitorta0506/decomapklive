package com.guochao.faceshow.aaspring.modulars.personal;

import android.app.Dialog;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.utils.PhoneUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.mine.model.MyWalletBean;
import com.guochao.faceshow.mine.model.WithdrawalBean;
import com.guochao.faceshow.mine.view.BindCellPhoneActivity;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.views.e;
import com.guochao.faceshow.views.n;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class WithdrawalDiamondActivity extends BaseRecyclerViewActivity<WithdrawalBean, BaseViewHolder> {

    /* renamed from: c  reason: collision with root package name */
    private View f21341c;

    /* renamed from: e  reason: collision with root package name */
    private boolean f21343e;

    /* renamed from: f  reason: collision with root package name */
    private WithdrawalMoneyHead f21344f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f21345g;

    /* renamed from: a  reason: collision with root package name */
    List<WithdrawalBean> f21339a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    List<WithdrawalBean> f21340b = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private boolean f21342d = false;

    /* loaded from: classes3.dex */
    class a extends RecyclerView.OnScrollListener {

        /* renamed from: a  reason: collision with root package name */
        private int f21346a;

        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i9, int i10) {
            super.onScrolled(recyclerView, i9, i10);
            this.f21346a += i10;
            ImageView imageView = (ImageView) WithdrawalDiamondActivity.this.findViewById(R.id.iv_title_bar);
            if (this.f21346a > 10) {
                imageView.setAlpha(1.0f);
            } else {
                imageView.setAlpha(0.0f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WithdrawalBean f21348a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ LinearLayout f21349b;

        /* loaded from: classes3.dex */
        class a implements e.a {
            a() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (z10) {
                    if (!TextUtils.isEmpty(SpUtils.getStr(WithdrawalDiamondActivity.this.getActivity(), "phone"))) {
                        SetLoginPasswordActivity.k0(WithdrawalDiamondActivity.this.getActivity(), 1, 1);
                    } else {
                        BindPhoneToSetPayPasswordActivity.l0(WithdrawalDiamondActivity.this.getActivity(), 1);
                    }
                    dialog.dismiss();
                }
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.aaspring.modulars.personal.WithdrawalDiamondActivity$b$b  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0209b implements n.b {

            /* renamed from: com.guochao.faceshow.aaspring.modulars.personal.WithdrawalDiamondActivity$b$b$a */
            /* loaded from: classes3.dex */
            class a extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
                a() {
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onFailure(@NonNull g7.a<String> aVar) {
                    if (aVar.a() == -1) {
                        WithdrawalDiamondActivity.this.showDialog();
                    } else if (aVar.a() == 0) {
                        ToastUtils.showToast(WithdrawalDiamondActivity.this.getActivity(), WithdrawalDiamondActivity.this.getResources().getString(R.string.password_wrong));
                        b.this.f21349b.performClick();
                    } else {
                        ToastUtils.showToast(WithdrawalDiamondActivity.this.getActivity(), aVar.c());
                    }
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
                    b bVar = b.this;
                    WithdrawalDiamondActivity.this.i0(bVar.f21348a);
                }
            }

            C0209b() {
            }

            @Override // com.guochao.faceshow.views.n.b
            public void onClose(Dialog dialog, boolean z10) {
            }

            @Override // com.guochao.faceshow.views.n.b
            public void onConfirm(Dialog dialog, boolean z10, String str) {
                WithdrawalDiamondActivity.this.post(Contants.MATCH_OLD_PAY_PASSWORD).D(Contants.USER_ID, SpUtils.getStr(WithdrawalDiamondActivity.this.getActivity(), Contants.USER_ID)).D("pasword", str).M(new a());
                dialog.dismiss();
            }
        }

        b(WithdrawalBean withdrawalBean, LinearLayout linearLayout) {
            this.f21348a = withdrawalBean;
            this.f21349b = linearLayout;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SpUtils.getInt(WithdrawalDiamondActivity.this.getActivity(), Contants.FB) >= this.f21348a.getF()) {
                String str = SpUtils.getStr(WithdrawalDiamondActivity.this.getActivity(), Contants.payPassword);
                if (str.equals("0")) {
                    new com.guochao.faceshow.views.e(WithdrawalDiamondActivity.this.getActivity(), R.style.commonDialog, WithdrawalDiamondActivity.this.getResources().getString(R.string.payment_password_no), new a()).k(WithdrawalDiamondActivity.this.getResources().getString(R.string.payment_password_setting)).show();
                    return;
                } else if (str.equals("1")) {
                    new n(WithdrawalDiamondActivity.this.getActivity(), R.style.commonDialog, WithdrawalDiamondActivity.this.getResources().getString(R.string.setting_enter_payment_password), new C0209b()).show();
                    return;
                } else {
                    return;
                }
            }
            ToastUtils.showToast(WithdrawalDiamondActivity.this.getActivity(), WithdrawalDiamondActivity.this.getResources().getString(R.string.fb_not_enough));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<MyWalletBean> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable MyWalletBean myWalletBean, @NonNull FaceCastBaseResponse<MyWalletBean> faceCastBaseResponse) {
            if (myWalletBean == null) {
                return;
            }
            try {
                WithdrawalDiamondActivity.this.f21344f.b((int) myWalletBean.getAvailableBalance());
                p9.a.g().t(myWalletBean);
            } catch (Exception unused) {
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<MyWalletBean> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<List<WithdrawalBean>> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<WithdrawalBean>> aVar) {
            WithdrawalDiamondActivity.this.m0();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<WithdrawalBean> list, @NonNull FaceCastBaseResponse<List<WithdrawalBean>> faceCastBaseResponse) {
            if (list != null && list.size() > 0) {
                WithdrawalDiamondActivity.this.setDatas(list);
                WithdrawalDiamondActivity.this.notifyDataLoaded(false);
                return;
            }
            WithdrawalDiamondActivity.this.m0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
            if (aVar.a() == 100007) {
                GCCoreActivity activity = WithdrawalDiamondActivity.this.getActivity();
                ToastUtils.showToast(activity, WithdrawalDiamondActivity.this.getString(R.string.unavailable) + ": " + WithdrawalDiamondActivity.this.getString(R.string.payoneer_notice_tip2));
                return;
            }
            ToastUtils.showToast(WithdrawalDiamondActivity.this.getActivity(), aVar.c());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            ToastUtils.showToast(WithdrawalDiamondActivity.this.getActivity(), WithdrawalDiamondActivity.this.getResources().getString(R.string.common_do_success));
            WithdrawalDiamondActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements e.a {
        f() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                Intent intent = new Intent(WithdrawalDiamondActivity.this.getActivity(), BindCellPhoneActivity.class);
                intent.putExtra("from", 3);
                WithdrawalDiamondActivity.this.getActivity().startActivity(intent);
            }
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0(WithdrawalBean withdrawalBean) {
        post(Contants.TRANSFORMATION_DIAMOND).D(Contants.USER_ID, SpUtils.getStr(getActivity(), Contants.USER_ID)).D("withdrawId", String.valueOf(withdrawalBean.getWithdraw_id())).M(new e());
    }

    private void initData() {
        post(Contants.MY_WALLET_DATA).M(new c());
        this.f21342d = PhoneUtils.isLocalChina();
        k0();
    }

    private void k0() {
        post(Contants.WITHDRAWAL_DIAMOND).M(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDialog() {
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(getActivity(), new f());
        eVar.m(ContextCompat.getColor(getActivity(), R.color.color_common_dialog_confirm));
        eVar.d(ContextCompat.getColor(getActivity(), R.color.color_common_dialog_cancel));
        eVar.f(getActivity().getString(R.string.withdrawal_pwd_lock));
        eVar.show();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: g0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, WithdrawalBean withdrawalBean) {
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_money_number);
        TextView textView2 = (TextView) baseViewHolder.getView(R.id.tv_f_number);
        LinearLayout linearLayout = (LinearLayout) baseViewHolder.getView(R.id.ll_f);
        Drawable drawable = ContextCompat.getDrawable(getActivity(), R.mipmap.gold_zuanshi);
        drawable.setBounds(0, 0, DensityUtil.dp2px(25.0f), DensityUtil.dp2px(25.0f));
        textView.setCompoundDrawables(drawable, null, null, null);
        if (this.f21342d) {
            textView.setText(String.valueOf(withdrawalBean.getPrice_China()));
        } else {
            textView.setText(StringUtils.getPriceString(String.valueOf(withdrawalBean.getPrice_America())));
        }
        textView2.setText(String.valueOf(withdrawalBean.getF()));
        linearLayout.setOnClickListener(new b(withdrawalBean, linearLayout));
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
        setTitle(R.string.live_withdrawal_diamond);
        this.f21345g = getIntent().getBooleanExtra("isFreeze", false);
        hideFooterView();
        WithdrawalMoneyHead withdrawalMoneyHead = new WithdrawalMoneyHead(LayoutInflater.from(this).inflate(R.layout.header_withdrawal_money, (ViewGroup) getRecyclerView(), false));
        this.f21344f = withdrawalMoneyHead;
        withdrawalMoneyHead.c(this.f21345g);
        addHeaderView(this.f21344f.a(), -101);
        View inflate = LayoutInflater.from(this).inflate(R.layout.layout_empty_view, (ViewGroup) getRecyclerView(), false);
        this.f21341c = inflate;
        inflate.findViewById(R.id.empty_text).setVisibility(8);
        ((ViewGroup.MarginLayoutParams) this.f21341c.getLayoutParams()).height = ScreenTools.getScreenHeight() - DensityUtil.dp2px(257.0f);
        getRecyclerView().addOnScrollListener(new a());
        v vVar = this.mTitleBarHelper;
        if (vVar == null || !(vVar.d() instanceof ImageButton)) {
            return;
        }
        ((ImageButton) this.mTitleBarHelper.d()).setImageResource(R.drawable.icon_left_back_sign_center);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: l0 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, WithdrawalBean withdrawalBean) {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
    }

    public void m0() {
        if (this.f21343e) {
            return;
        }
        View view = this.f21341c;
        if (view != null) {
            addHeaderView(view, -102);
        }
        getRefreshableLayout().f(true);
        this.f21343e = true;
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
