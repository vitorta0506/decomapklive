package com.guochao.faceshow.aaspring.modulars.personal.record;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.exifinterface.media.ExifInterface;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.material.timepicker.TimeModel;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.NewRecordBeans;
import com.guochao.faceshow.aaspring.beans.SumByType;
import com.guochao.faceshow.aaspring.modulars.personal.WithdrawalDatePickerDialog;
import com.guochao.faceshow.aaspring.utils.DateUtils;
import com.guochao.faceshow.aaspring.utils.RecordUtils;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.views.SelectRecordTypeFragmentDialog;
import com.guochao.faceshow.mine.model.TransactionType;
import com.guochao.faceshow.utils.ScreenTools;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.light.utils.FileUtils;
/* loaded from: classes3.dex */
public class NewRecordActivity extends BaseRecyclerViewActivity<NewRecordBeans.NewRecordBean, RecordViewHolder> implements WithdrawalDatePickerDialog.c {

    /* renamed from: a  reason: collision with root package name */
    private int f21573a;

    /* renamed from: b  reason: collision with root package name */
    private WithdrawalDatePickerDialog f21574b;

    /* renamed from: d  reason: collision with root package name */
    private int f21576d;

    /* renamed from: e  reason: collision with root package name */
    private int f21577e;

    /* renamed from: f  reason: collision with root package name */
    private String f21578f;

    /* renamed from: g  reason: collision with root package name */
    private Calendar f21579g;

    /* renamed from: h  reason: collision with root package name */
    private List<TransactionType> f21580h;

    /* renamed from: j  reason: collision with root package name */
    private int f21582j;

    /* renamed from: k  reason: collision with root package name */
    List<Integer> f21583k;

    /* renamed from: l  reason: collision with root package name */
    SelectRecordTypeFragmentDialog f21584l;
    @BindView
    View topLL;
    @BindView
    TextView tvDate;
    @BindView
    TextView tvIncome;
    @BindView
    TextView tvMore;
    @BindView
    TextView tvSpending;

    /* renamed from: c  reason: collision with root package name */
    private String f21575c = "";

    /* renamed from: i  reason: collision with root package name */
    private int f21581i = -1;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<NewRecordBeans> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f21585a;

        a(int i9) {
            this.f21585a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable @org.jetbrains.annotations.Nullable NewRecordBeans newRecordBeans, @NonNull @NotNull FaceCastBaseResponse<NewRecordBeans> faceCastBaseResponse) {
            NewRecordActivity.this.k0();
            if (newRecordBeans != null && newRecordBeans.getList() != null) {
                if (this.f21585a == 1) {
                    if (newRecordBeans.getList().size() == 0) {
                        NewRecordActivity.this.clearAll();
                        NewRecordActivity.this.showEmptyView();
                        return;
                    }
                    NewRecordActivity.this.setDatas(newRecordBeans.getList());
                } else {
                    NewRecordActivity.this.addDatas(newRecordBeans.getList());
                }
                NewRecordActivity.this.notifyDataLoaded(newRecordBeans.getList().size() > 0);
                if (newRecordBeans.getList().size() > 0) {
                    NewRecordActivity.this.setFooterView(8);
                    return;
                } else {
                    NewRecordActivity.this.setFooterView(0);
                    return;
                }
            }
            onFailure(new g7.a<>());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull @NotNull g7.a<NewRecordBeans> aVar) {
            NewRecordActivity.this.k0();
            if (this.f21585a == 1) {
                NewRecordActivity.this.clearAll();
                NewRecordActivity.this.showEmptyView();
                return;
            }
            NewRecordActivity.this.notifyDataLoaded(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements SelectRecordTypeFragmentDialog.c {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.views.SelectRecordTypeFragmentDialog.c
        public void a(Dialog dialog, String str, int i9) {
            NewRecordActivity.this.tvMore.setText(str);
            NewRecordActivity newRecordActivity = NewRecordActivity.this;
            newRecordActivity.f21581i = ((TransactionType) newRecordActivity.f21580h.get(i9)).getId();
            NewRecordActivity newRecordActivity2 = NewRecordActivity.this;
            newRecordActivity2.f21582j = ((TransactionType) newRecordActivity2.f21580h.get(i9)).getChildId();
            dialog.dismiss();
            NewRecordActivity.this.reload();
        }

        @Override // com.guochao.faceshow.aaspring.views.SelectRecordTypeFragmentDialog.c
        public void b(Dialog dialog) {
            dialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<SumByType> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable @org.jetbrains.annotations.Nullable SumByType sumByType, @NonNull @NotNull FaceCastBaseResponse<SumByType> faceCastBaseResponse) {
            if (sumByType == null) {
                NewRecordActivity.this.tvIncome.setText("0");
                NewRecordActivity.this.tvSpending.setText("0");
                return;
            }
            if (!TextUtils.isEmpty(sumByType.getInTotalMoney())) {
                NewRecordActivity.this.tvIncome.setText(sumByType.getInTotalMoney());
            }
            if (TextUtils.isEmpty(sumByType.getOutTotalMoney())) {
                return;
            }
            NewRecordActivity.this.tvSpending.setText(sumByType.getOutTotalMoney());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull @NotNull g7.a<SumByType> aVar) {
            NewRecordActivity.this.tvIncome.setText("0");
            NewRecordActivity.this.tvSpending.setText("0");
            NewRecordActivity.this.showToast(aVar.c());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0() {
        if (this.f21583k == null) {
            this.f21583k = new ArrayList();
        }
        this.f21583k.clear();
        int i9 = this.f21581i;
        if (i9 == 15 && this.f21573a != 0) {
            this.f21583k.add(Integer.valueOf(i9));
            this.f21583k.add(2);
            this.f21583k.add(20);
        } else {
            this.f21583k.add(Integer.valueOf(i9));
            if (this.f21581i == 3 && BaseApplication.getInstance().getString(R.string.trading_send_gift).equalsIgnoreCase(this.tvMore.getText().toString())) {
                this.f21583k.add(5);
            }
        }
        int i10 = this.f21573a;
        String str = "Z";
        if (i10 != 0) {
            if (i10 == 1) {
                str = "F";
            } else if (i10 == 2) {
                str = ExifInterface.LATITUDE_SOUTH;
            }
        }
        ArrayList arrayList = new ArrayList();
        int i11 = this.f21582j;
        if (i11 > 0) {
            arrayList.add(Integer.valueOf(i11));
        }
        post("tokens/orderSum/querySumByType").y("type", str).y("dealTypes", arrayList).y("parentTypes", this.f21583k).y("dealDateStart", StringUtils.convertNumberToNormalNumber(DateUtils.getFirstDay(this.tvDate.getText().toString()))).y("dealDateEnd", StringUtils.convertNumberToNormalNumber(DateUtils.getLastDay(this.tvDate.getText().toString()))).M(new c());
    }

    private void l0() {
        int i9 = this.f21579g.get(1);
        int i10 = this.f21579g.get(2) + 1;
        if (i10 < 10) {
            this.f21575c = i9 + "-0" + i10;
        } else {
            this.f21575c = i9 + "-" + i10;
        }
        this.tvDate.setText(this.f21575c);
    }

    private void o0() {
        if (this.f21584l == null) {
            ArrayList arrayList = new ArrayList();
            for (TransactionType transactionType : this.f21580h) {
                arrayList.add(transactionType.getName());
            }
            SelectRecordTypeFragmentDialog S1 = SelectRecordTypeFragmentDialog.S1(arrayList, this.tvMore.getText().toString());
            this.f21584l = S1;
            S1.setOnSelectItemListener(new b());
        }
        this.f21584l.show(getSupportFragmentManager(), "SelectRecordType");
    }

    private void p0() {
        if (this.f21574b == null) {
            WithdrawalDatePickerDialog Q1 = WithdrawalDatePickerDialog.Q1(this.f21579g, false);
            this.f21574b = Q1;
            Q1.setOnDatePickListener(this);
        }
        if (this.f21574b.isAdded()) {
            this.f21574b.dismiss();
        } else {
            this.f21574b.show(getSupportFragmentManager(), "DatePick");
        }
    }

    public static void q0(Context context, int i9, String str) {
        Intent intent = new Intent(context, NewRecordActivity.class);
        intent.putExtra("recordType", i9);
        intent.putExtra("date", str);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.personal.WithdrawalDatePickerDialog.c
    public void b(Dialog dialog) {
        this.f21574b.dismiss();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        a.C0147a c0147a = new a.C0147a(this);
        c0147a.b(true);
        return c0147a.a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_new_record;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: i0 */
    public void convertItem(RecordViewHolder recordViewHolder, int i9, NewRecordBeans.NewRecordBean newRecordBean) {
        recordViewHolder.c(getActivity(), i9, newRecordBean, this.f21573a);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setStatusBarTextBlack(true);
        this.f21573a = getIntent().getIntExtra("recordType", 0);
        this.f21578f = getIntent().getStringExtra("date");
        int i9 = this.f21573a;
        if (i9 == 0) {
            setTitle(getString(R.string.trading_diamond_record));
            this.topLL.setBackgroundResource(R.mipmap.bg_new_record_z);
        } else if (i9 == 1) {
            setTitle(getString(R.string.trading_f_record));
            this.topLL.setBackgroundResource(R.mipmap.bg_new_record_f);
        } else {
            setTitle(getString(R.string.trading_g_record));
            this.topLL.setBackgroundResource(R.mipmap.bg_new_record_g);
        }
        this.f21579g = Calendar.getInstance();
        if (TextUtils.isEmpty(this.f21578f)) {
            l0();
        } else {
            String replace = this.f21578f.replace(FileUtils.RES_PREFIX_STORAGE, "-");
            this.f21578f = replace;
            String[] split = replace.split("-");
            this.f21579g.set(1, Integer.parseInt(split[0]));
            this.f21579g.set(2, Integer.parseInt(split[1]) - 1);
            this.tvDate.setText(this.f21578f);
        }
        this.f21580h = RecordUtils.getRecordTypeList(this, this.f21573a);
        View emptyView = getEmptyView();
        emptyView.setBackgroundColor(ContextCompat.getColor(this, R.color.white));
        emptyView.setPadding(0, ScreenTools.dip2px(150.0f), 0, 0);
        emptyView.findViewById(R.id.empty_text).setVisibility(8);
        setLeftBackIcon(R.mipmap.icon_little_back);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        if (this.f21583k == null) {
            this.f21583k = new ArrayList();
        }
        this.f21583k.clear();
        int i10 = this.f21581i;
        if (i10 == 15 && this.f21573a != 0) {
            this.f21583k.add(Integer.valueOf(i10));
            this.f21583k.add(2);
            this.f21583k.add(20);
        } else if (i10 == 14) {
            this.f21583k.add(Integer.valueOf(i10));
            this.f21583k.add(21);
        } else {
            this.f21583k.add(Integer.valueOf(i10));
            if (this.f21581i == 3 && BaseApplication.getInstance().getString(R.string.trading_send_gift).equalsIgnoreCase(this.tvMore.getText().toString())) {
                this.f21583k.add(5);
            }
        }
        int i11 = this.f21573a;
        String str = i11 == 0 ? "Z" : i11 == 1 ? "F" : ExifInterface.LATITUDE_SOUTH;
        ArrayList arrayList = new ArrayList();
        int i12 = this.f21582j;
        if (i12 > 0) {
            arrayList.add(Integer.valueOf(i12));
        }
        post("tokens/order/pageListByType").y("type", str).y("parentTypes", this.f21583k).y("dealTypes", arrayList).y("dealDateStart", StringUtils.convertNumberToNormalNumber(DateUtils.getFirstDay(this.tvDate.getText().toString()))).y("dealDateEnd", StringUtils.convertNumberToNormalNumber(DateUtils.getLastDay(this.tvDate.getText().toString()))).y("page", Integer.valueOf(i9)).y("pageSize", 20).M(new a(i9));
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    @NotNull
    /* renamed from: m0 */
    public RecordViewHolder onCreateViewHolder(@NonNull @NotNull ViewGroup viewGroup, int i9) {
        return new RecordViewHolder(getLayoutInflater().inflate(R.layout.item_new_record, viewGroup, false));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: n0 */
    public void onItemClick(RecordViewHolder recordViewHolder, int i9, NewRecordBeans.NewRecordBean newRecordBean) {
    }

    @OnClick
    public void onClick(View view) {
        int id2 = view.getId();
        if (id2 == R.id.ll_more) {
            o0();
        } else if (id2 == R.id.tv_date) {
            p0();
        } else if (id2 != R.id.tv_time_zone) {
        } else {
            startActivity(RecordTimeZoneTipActivity.class);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.personal.WithdrawalDatePickerDialog.c
    public void u(Dialog dialog, Calendar calendar, String str, String str2) {
        int parseInt = Integer.parseInt(str.replace(getString(R.string.year).replace(TimeModel.NUMBER_FORMAT, "").trim(), "").trim());
        this.f21576d = parseInt;
        int monthOfYear = DateUtils.getMonthOfYear(getActivity(), str2);
        this.f21577e = monthOfYear;
        if (monthOfYear < 10) {
            this.tvDate.setText(String.format("%d-0%d", Integer.valueOf(parseInt), Integer.valueOf(DateUtils.getMonthOfYear(getActivity(), str2))));
        } else {
            this.tvDate.setText(String.format("%d-%d", Integer.valueOf(parseInt), Integer.valueOf(DateUtils.getMonthOfYear(getActivity(), str2))));
        }
        this.f21574b.dismiss();
        reload();
    }
}
