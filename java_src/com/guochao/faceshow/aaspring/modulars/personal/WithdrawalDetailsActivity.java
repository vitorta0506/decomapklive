package com.guochao.faceshow.aaspring.modulars.personal;

import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.Progress;
import com.guochao.faceshow.aaspring.beans.WithdrawalDetails;
import com.guochao.faceshow.aaspring.beans.WithdrawalRecord;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.personal.adapter.ProgressAdapter;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.utils.Contants;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class WithdrawalDetailsActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private ProgressAdapter f21334a;

    /* renamed from: b  reason: collision with root package name */
    private List<Progress> f21335b;

    /* renamed from: c  reason: collision with root package name */
    private int f21336c;
    @BindView
    LinearLayout llCause;
    @BindView
    LinearLayout llModeBank;
    @BindView
    LinearLayout llModeUsdt;
    @BindView
    LinearLayout llModeZfb;
    @BindView
    LinearLayout llName;
    @BindView
    RecyclerView rcvProgress;
    @BindView
    TextView tvAccount;
    @BindView
    TextView tvAccountHolder;
    @BindView
    TextView tvAccountMode;
    @BindView
    TextView tvAccountTip;
    @BindView
    TextView tvBankAddress;
    @BindView
    TextView tvBankCode;
    @BindView
    TextView tvBankName;
    @BindView
    TextView tvCause;
    @BindView
    TextView tvDeductFb;
    @BindView
    TextView tvName;
    @BindView
    TextView tvUSDT;
    @BindView
    TextView tvWithdrawalMoney;
    @BindView
    TextView tvWithdrawalState;
    @BindView
    TextView tvWithdrawalTip;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<WithdrawalDetails> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable WithdrawalDetails withdrawalDetails, @NonNull FaceCastBaseResponse<WithdrawalDetails> faceCastBaseResponse) {
            if (withdrawalDetails != null) {
                WithdrawalDetailsActivity.this.d0(withdrawalDetails);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<WithdrawalDetails> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d0(WithdrawalDetails withdrawalDetails) {
        boolean z10 = false;
        for (int i9 = 0; i9 < withdrawalDetails.getAuditProces().size(); i9++) {
            if ((withdrawalDetails.getAuditProces().get(i9).getSpeed() == 4 || withdrawalDetails.getAuditProces().get(i9).getSpeed() == 5) && withdrawalDetails.getAuditProces().size() >= 2) {
                withdrawalDetails.getAuditProces().get(i9 - 1).setDownColor(1);
            }
            if (withdrawalDetails.getAuditProces().get(i9).getSpeed() == 2) {
                z10 = true;
            }
        }
        this.f21335b.addAll(withdrawalDetails.getAuditProces());
        if (withdrawalDetails.getAuditProces().size() == 2 && z10) {
            Progress progress = new Progress();
            progress.setSpeed(6);
            this.f21335b.add(progress);
            withdrawalDetails.setSpeed(6);
        }
        this.f21334a.notifyDataSetChanged();
        if (withdrawalDetails.getAmount_type() == 1) {
            if (Language.ARABIC.equalsIgnoreCase(q7.a.e().c())) {
                this.tvWithdrawalMoney.setText(MessageFormat.format("{0}￥", withdrawalDetails.getMoney()));
            } else {
                this.tvWithdrawalMoney.setText(MessageFormat.format("￥{0}", withdrawalDetails.getMoney()));
            }
        } else if (Language.ARABIC.equalsIgnoreCase(q7.a.e().c())) {
            this.tvWithdrawalMoney.setText(MessageFormat.format("{0} US$", withdrawalDetails.getMoney()));
        } else {
            this.tvWithdrawalMoney.setText(MessageFormat.format("US$ {0}", withdrawalDetails.getMoney()));
        }
        if (withdrawalDetails.getSpeed() == 0) {
            this.tvWithdrawalState.setTextColor(ContextCompat.getColor(this, R.color.color_ugc_text_level_1));
            this.tvWithdrawalState.setText(getString(R.string.submit_applications));
            this.tvWithdrawalTip.setText(getString(R.string.withdrawal_of));
        } else if (withdrawalDetails.getSpeed() == 1) {
            this.tvWithdrawalState.setTextColor(ContextCompat.getColor(this, R.color.color_ugc_text_level_1));
            this.tvWithdrawalState.setText(getString(R.string.review));
            this.tvWithdrawalTip.setText(getString(R.string.withdrawal_of));
        } else if (withdrawalDetails.getSpeed() == 2) {
            this.tvWithdrawalState.setTextColor(ContextCompat.getColor(this, R.color.color_ugc_text_level_1));
            this.tvWithdrawalState.setText(getString(R.string.approved));
            this.tvWithdrawalTip.setText(getString(R.string.withdrawal_of));
        } else if (withdrawalDetails.getSpeed() == 3) {
            this.tvWithdrawalState.setTextColor(ContextCompat.getColor(this, R.color.color_ugc_text_level_1));
            this.tvWithdrawalState.setText(getString(R.string.withdrawal_success));
            this.tvWithdrawalTip.setText(getString(R.string.withdrawal_deduct));
        } else if (withdrawalDetails.getSpeed() == 4) {
            this.tvWithdrawalState.setTextColor(ContextCompat.getColor(this, R.color.withdrawal_err));
            this.tvWithdrawalState.setText(getString(R.string.withdrawal_faile));
            this.tvWithdrawalTip.setText(getString(R.string.withdrawal_back_account));
        } else if (withdrawalDetails.getSpeed() == 5) {
            this.tvWithdrawalState.setTextColor(ContextCompat.getColor(this, R.color.withdrawal_err));
            this.tvWithdrawalState.setText(getString(R.string.unapprove));
            this.tvWithdrawalTip.setText(getString(R.string.withdrawal_back_account));
        } else {
            this.tvWithdrawalState.setTextColor(ContextCompat.getColor(this, R.color.color_ugc_text_level_1));
            this.tvWithdrawalState.setText(getString(R.string.withdrawal_of));
            this.tvWithdrawalTip.setText(getString(R.string.withdrawal_of));
        }
        this.tvDeductFb.setText(withdrawalDetails.getDeduction());
        this.tvAccountMode.setText(withdrawalDetails.getPayTypeName());
        if (withdrawalDetails.getPay_type() == 4) {
            this.llModeZfb.setVisibility(8);
            this.llModeUsdt.setVisibility(8);
            this.llModeBank.setVisibility(0);
            this.tvBankCode.setText(withdrawalDetails.getAccount());
            this.tvAccountHolder.setText(withdrawalDetails.getRealName());
            this.tvBankName.setText(withdrawalDetails.getBankName());
            this.tvBankAddress.setText(withdrawalDetails.getBankAddress());
        } else if (withdrawalDetails.getPay_type() == 1) {
            this.llModeUsdt.setVisibility(8);
            this.llModeZfb.setVisibility(0);
            this.llModeBank.setVisibility(8);
            this.tvAccount.setText(withdrawalDetails.getAccount());
            this.tvName.setText(withdrawalDetails.getRealName());
        } else if (withdrawalDetails.getPay_type() != 9 && withdrawalDetails.getPay_type() != 11) {
            if (withdrawalDetails.getPay_type() == 10) {
                this.llModeUsdt.setVisibility(0);
                this.llName.setVisibility(8);
                this.llModeBank.setVisibility(8);
                this.llModeZfb.setVisibility(8);
                this.tvUSDT.setText(withdrawalDetails.getAccount());
            } else {
                this.llModeZfb.setVisibility(0);
                this.llModeBank.setVisibility(8);
                this.tvAccount.setText(withdrawalDetails.getAccount());
                this.tvName.setText(withdrawalDetails.getRealName());
            }
        } else {
            this.llModeUsdt.setVisibility(8);
            this.llName.setVisibility(8);
            this.llModeBank.setVisibility(8);
            if (i.u().s().getPayoneerSwitchV2() == 1) {
                this.tvAccountTip.setText(getString(R.string.withdrawal_account));
            } else {
                this.tvAccountTip.setText(getString(R.string.withdrawal_payoneer_id));
            }
            this.tvAccount.setText(withdrawalDetails.getAccount());
        }
        if (TextUtils.isEmpty(withdrawalDetails.getFailReason())) {
            this.llCause.setVisibility(8);
            return;
        }
        this.llCause.setVisibility(0);
        this.tvCause.setText(withdrawalDetails.getFailReason());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_withdrawal_details;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.withdrawal_details);
        WithdrawalRecord withdrawalRecord = (WithdrawalRecord) getIntent().getParcelableExtra("WithdrawalRecord");
        if (withdrawalRecord != null) {
            this.f21336c = withdrawalRecord.getAid();
        }
        this.f21335b = new ArrayList();
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(1);
        this.rcvProgress.setLayoutManager(linearLayoutManager);
        ProgressAdapter progressAdapter = new ProgressAdapter(this, this.f21335b);
        this.f21334a = progressAdapter;
        this.rcvProgress.setAdapter(progressAdapter);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        post("tokens/user/trade/info/queryWithdrawalInfo").v("aId", Integer.valueOf(this.f21336c)).v(Contants.USER_ID, getCurrentUser().getCurrentUserId()).M(new a());
    }
}
