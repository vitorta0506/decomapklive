package com.guochao.faceshow.aaspring.modulars.personal;

import android.app.Dialog;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.material.timepicker.TimeModel;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.WithDrawalRecordData;
import com.guochao.faceshow.aaspring.beans.WithdrawalRecord;
import com.guochao.faceshow.aaspring.modulars.personal.WithdrawalDatePickerDialog;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.utils.TimeUtil;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.text.MessageFormat;
import java.util.Calendar;
/* loaded from: classes3.dex */
public class WithdrawalRecordActivity extends BaseRecyclerViewActivity<WithdrawalRecord, BaseViewHolder> implements WithdrawalDatePickerDialog.c {

    /* renamed from: a  reason: collision with root package name */
    private int f21442a;

    /* renamed from: b  reason: collision with root package name */
    private int f21443b;

    /* renamed from: c  reason: collision with root package name */
    private WithdrawalDatePickerDialog f21444c;

    /* renamed from: d  reason: collision with root package name */
    private int f21445d;

    /* renamed from: e  reason: collision with root package name */
    private int f21446e;
    @BindView
    LinearLayout llTitleContent;
    @BindView
    TextView tvAllRmb;
    @BindView
    TextView tvAllUsd;
    @BindView
    TextView tvSelectInterval;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<WithDrawalRecordData> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f21447a;

        a(int i9) {
            this.f21447a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable WithDrawalRecordData withDrawalRecordData, @NonNull FaceCastBaseResponse<WithDrawalRecordData> faceCastBaseResponse) {
            boolean z10 = true;
            if (this.f21447a == 1) {
                WithdrawalRecordActivity.this.f21442a = 0;
                WithdrawalRecordActivity.this.f21443b = 0;
                WithdrawalRecordActivity.this.getList().clear();
            }
            if (withDrawalRecordData != null && withDrawalRecordData.getTotal() != null) {
                for (WithDrawalRecordData.TotalBean totalBean : withDrawalRecordData.getTotal()) {
                    if (totalBean.getAmount_type() == 1) {
                        WithdrawalRecordActivity.this.f21442a = totalBean.getAmount();
                    } else {
                        WithdrawalRecordActivity.this.f21443b = totalBean.getAmount();
                    }
                }
            }
            if (WithdrawalRecordActivity.this.f21442a != 0) {
                WithdrawalRecordActivity.this.tvAllRmb.setVisibility(0);
                WithdrawalRecordActivity withdrawalRecordActivity = WithdrawalRecordActivity.this;
                withdrawalRecordActivity.tvAllRmb.setText(MessageFormat.format("￥{0}", Integer.valueOf(withdrawalRecordActivity.f21442a)));
            } else {
                WithdrawalRecordActivity.this.tvAllRmb.setVisibility(8);
            }
            if (WithdrawalRecordActivity.this.f21443b != 0) {
                WithdrawalRecordActivity.this.tvAllUsd.setVisibility(0);
                if (Language.ARABIC.equalsIgnoreCase(q7.a.e().c())) {
                    WithdrawalRecordActivity withdrawalRecordActivity2 = WithdrawalRecordActivity.this;
                    withdrawalRecordActivity2.tvAllUsd.setText(MessageFormat.format(" {0} US$", Integer.valueOf(withdrawalRecordActivity2.f21443b)));
                } else {
                    WithdrawalRecordActivity withdrawalRecordActivity3 = WithdrawalRecordActivity.this;
                    withdrawalRecordActivity3.tvAllUsd.setText(MessageFormat.format("US$ {0}", Integer.valueOf(withdrawalRecordActivity3.f21443b)));
                }
            } else {
                WithdrawalRecordActivity.this.tvAllUsd.setVisibility(8);
            }
            if (this.f21447a == 1) {
                if (withDrawalRecordData != null && withDrawalRecordData.getPage() != null) {
                    if (withDrawalRecordData.getPage().getList().size() >= 20) {
                        WithdrawalRecordActivity.this.setFooterView(0);
                    } else {
                        WithdrawalRecordActivity.this.setFooterView(8);
                    }
                    WithdrawalRecordActivity.this.setDatas(withDrawalRecordData.getPage().getList());
                }
            } else if (withDrawalRecordData != null && withDrawalRecordData.getPage() != null) {
                WithdrawalRecordActivity.this.addDatas(withDrawalRecordData.getPage().getList());
            }
            WithdrawalRecordActivity.this.notifyDataLoaded((withDrawalRecordData == null || withDrawalRecordData.getPage() == null || withDrawalRecordData.getPage().getList() == null || withDrawalRecordData.getPage().getList().size() <= 0) ? false : false);
            WithdrawalRecordActivity.this.showEmptyView();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<WithDrawalRecordData> aVar) {
            if (this.f21447a != 1) {
                WithdrawalRecordActivity.this.notifyDataLoaded(false);
                WithdrawalRecordActivity.this.setFooterView(8);
            }
            WithdrawalRecordActivity.this.showEmptyView();
        }
    }

    private int k0(String str) {
        if (str.equals(getString(R.string.january))) {
            return 1;
        }
        if (str.equals(getString(R.string.february))) {
            return 2;
        }
        if (str.equals(getString(R.string.march))) {
            return 3;
        }
        if (str.equals(getString(R.string.april))) {
            return 4;
        }
        if (str.equals(getString(R.string.may))) {
            return 5;
        }
        if (str.equals(getString(R.string.june))) {
            return 6;
        }
        if (str.equals(getString(R.string.july))) {
            return 7;
        }
        if (str.equals(getString(R.string.august))) {
            return 8;
        }
        if (str.equals(getString(R.string.september))) {
            return 9;
        }
        if (str.equals(getString(R.string.october))) {
            return 10;
        }
        if (str.equals(getString(R.string.november))) {
            return 11;
        }
        return str.equals(getString(R.string.december)) ? 12 : 1;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.personal.WithdrawalDatePickerDialog.c
    public void b(Dialog dialog) {
        this.f21444c.dismiss();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_withdrawal_record;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: i0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, WithdrawalRecord withdrawalRecord) {
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_withdrawal_time);
        TextView textView2 = (TextView) baseViewHolder.getView(R.id.tv_withdrawal_money);
        if (withdrawalRecord.getApplayTime() > 0) {
            textView.setText(TimeUtil.getGiftTime(this, System.currentTimeMillis() - withdrawalRecord.getApplayTime()));
        } else {
            textView.setText("");
        }
        if (withdrawalRecord.getAmount_type() == 2) {
            if (Language.ARABIC.equalsIgnoreCase(q7.a.e().c())) {
                textView2.setText(MessageFormat.format("{0} US$", withdrawalRecord.getAmount()));
            } else {
                textView2.setText(MessageFormat.format("US$ {0}", withdrawalRecord.getAmount()));
            }
        } else if (Language.ARABIC.equalsIgnoreCase(q7.a.e().c())) {
            textView2.setText(MessageFormat.format("{0}￥", withdrawalRecord.getAmount()));
        } else {
            textView2.setText(MessageFormat.format("￥{0}", withdrawalRecord.getAmount()));
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(R.string.withdrawal_record);
        View emptyView = getEmptyView();
        emptyView.setBackgroundColor(ContextCompat.getColor(this, R.color.white));
        emptyView.setPadding(0, 0, 0, ScreenTools.dip2px(150.0f));
        emptyView.findViewById(R.id.empty_text).setVisibility(8);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: l0 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, WithdrawalRecord withdrawalRecord) {
        Intent intent = new Intent(this, WithdrawalDetailsActivity.class);
        intent.putExtra("WithdrawalRecord", withdrawalRecord);
        startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        if (i9 != 1 && getList().size() >= 20) {
            setFooterView(0);
        }
        post("tokens/user/trade/info/queryTradeInfo").v(Contants.USER_ID, getCurrentUser().getCurrentUserId()).v("type", 1).v(CrashHianalyticsData.TIME, getString(R.string.all).equals(this.tvSelectInterval.getText().toString()) ? "0" : this.tvSelectInterval.getText().toString()).v("limit", 20).v("page", Integer.valueOf(i9)).M(new a(i9));
    }

    @OnClick
    public void onViewClicked() {
        Calendar calendar = !getString(R.string.all).equals(this.tvSelectInterval.getText().toString()) ? Calendar.getInstance() : null;
        if (this.f21444c == null) {
            WithdrawalDatePickerDialog Q1 = WithdrawalDatePickerDialog.Q1(calendar, true);
            this.f21444c = Q1;
            Q1.setOnDatePickListener(this);
        }
        if (this.f21444c.isAdded()) {
            this.f21444c.dismiss();
        } else {
            this.f21444c.show(getSupportFragmentManager(), "DatePick");
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.personal.WithdrawalDatePickerDialog.c
    public void u(Dialog dialog, Calendar calendar, String str, String str2) {
        int parseInt;
        if (str.equals(getString(R.string.all))) {
            this.tvSelectInterval.setText(getString(R.string.all));
        } else {
            if (Language.SIMPLE_CHINESE.equalsIgnoreCase(q7.a.e().c())) {
                parseInt = Integer.parseInt(str.replace(getString(R.string.year).replace(TimeModel.NUMBER_FORMAT, "").trim(), "").trim());
            } else {
                parseInt = Integer.parseInt(str);
            }
            this.f21445d = parseInt;
            this.f21446e = k0(str2);
            this.tvSelectInterval.setText(String.format("%d-%d", Integer.valueOf(parseInt), Integer.valueOf(k0(str2))));
        }
        this.f21444c.dismiss();
        reload();
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.list_item_withdrawal_record, viewGroup, false));
    }
}
