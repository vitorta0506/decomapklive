package com.guochao.faceshow.mine.view;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.mine.model.MyWalletBean;
import com.guochao.faceshow.mine.model.WithdrawalBean;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.views.MeasureListView;
import com.meizu.cloud.pushsdk.notification.model.AdvanceSetting;
import java.util.List;
/* loaded from: classes4.dex */
public class WithdrawalDiamondActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    List<WithdrawalBean> f25957a;

    /* renamed from: b  reason: collision with root package name */
    boolean f25958b = false;

    /* renamed from: c  reason: collision with root package name */
    wa.c f25959c;
    @BindView
    MeasureListView lvWithdrawalList;
    @BindView
    LinearLayout topLayout;
    @BindView
    TextView tvAgreement;
    @BindView
    TextView tvDiamondCount;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<MyWalletBean> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable MyWalletBean myWalletBean, @NonNull FaceCastBaseResponse<MyWalletBean> faceCastBaseResponse) {
            if (myWalletBean == null) {
                return;
            }
            try {
                WithdrawalDiamondActivity.this.tvDiamondCount.setText(String.valueOf(myWalletBean.getF()));
                p9.a.g().t(myWalletBean);
            } catch (Exception unused) {
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<MyWalletBean> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<List<WithdrawalBean>> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<WithdrawalBean>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<WithdrawalBean> list, @NonNull FaceCastBaseResponse<List<WithdrawalBean>> faceCastBaseResponse) {
            if (list == null) {
                return;
            }
            try {
                WithdrawalDiamondActivity withdrawalDiamondActivity = WithdrawalDiamondActivity.this;
                withdrawalDiamondActivity.f25957a = list;
                WithdrawalDiamondActivity withdrawalDiamondActivity2 = WithdrawalDiamondActivity.this;
                withdrawalDiamondActivity.f25959c = new wa.c(withdrawalDiamondActivity2, withdrawalDiamondActivity2.f25957a, withdrawalDiamondActivity2.f25958b);
                WithdrawalDiamondActivity withdrawalDiamondActivity3 = WithdrawalDiamondActivity.this;
                withdrawalDiamondActivity3.lvWithdrawalList.setAdapter((ListAdapter) withdrawalDiamondActivity3.f25959c);
            } catch (Exception unused) {
            }
        }
    }

    private void b0() {
        post(Contants.WITHDRAWAL_DIAMOND).M(new c());
    }

    private void d0() {
        this.tvAgreement.setOnClickListener(new a());
    }

    private void initData() {
        post(Contants.MY_WALLET_DATA).M(new b());
        if (SpUtils.getStr(this, Contants.CURRENT_COUNTRY_CODING).equalsIgnoreCase(AdvanceSetting.CLEAR_NOTIFICATION)) {
            this.f25958b = true;
        } else {
            this.f25958b = false;
        }
        b0();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_withdrawal_diamond;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.lvWithdrawalList.setEmptyView(LayoutInflater.from(this).inflate(R.layout.sl_list_nodata, (ViewGroup) null));
        v vVar = this.mTitleBarHelper;
        if (vVar == null || !(vVar.d() instanceof ImageButton)) {
            return;
        }
        ((ImageButton) this.mTitleBarHelper.d()).setImageResource(R.drawable.icon_left_back_sign_center);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.live_withdrawal_diamond);
        d0();
        initData();
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        initData();
    }
}
