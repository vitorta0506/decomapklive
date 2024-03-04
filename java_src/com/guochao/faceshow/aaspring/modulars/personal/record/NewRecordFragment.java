package com.guochao.faceshow.aaspring.modulars.personal.record;

import android.app.Dialog;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.exifinterface.media.ExifInterface;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.material.timepicker.TimeModel;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.SumByType;
import com.guochao.faceshow.aaspring.modulars.personal.WithdrawalDatePickerDialog;
import com.guochao.faceshow.aaspring.utils.DateUtils;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import java.util.Calendar;
import java.util.Collections;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.light.utils.FileUtils;
/* loaded from: classes3.dex */
public class NewRecordFragment extends BaseFragment implements com.guochao.faceshow.mine.view.fragment.a {

    /* renamed from: b  reason: collision with root package name */
    private int f21600b;

    /* renamed from: c  reason: collision with root package name */
    private int f21601c;

    /* renamed from: e  reason: collision with root package name */
    private WithdrawalDatePickerDialog f21603e;

    /* renamed from: f  reason: collision with root package name */
    private WithdrawalDatePickerDialog f21604f;
    @BindView
    LinearLayoutCompat llDiamod;
    @BindView
    LinearLayoutCompat llF;
    @BindView
    TextView tvDiamondDate;
    @BindView
    TextView tvDiamondIncome;
    @BindView
    TextView tvDiamondSpending;
    @BindView
    TextView tvFDate;
    @BindView
    TextView tvFIncome;
    @BindView
    TextView tvFSpending;
    @BindView
    TextView tvGDate;
    @BindView
    TextView tvGIncome;
    @BindView
    TextView tvGSpending;

    /* renamed from: a  reason: collision with root package name */
    private String f21599a = "";

    /* renamed from: d  reason: collision with root package name */
    List<Integer> f21602d = Collections.singletonList(-1);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<SumByType> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable @org.jetbrains.annotations.Nullable SumByType sumByType, @NonNull @NotNull FaceCastBaseResponse<SumByType> faceCastBaseResponse) {
            if (sumByType == null) {
                NewRecordFragment.this.tvDiamondIncome.setText("0");
                NewRecordFragment.this.tvDiamondSpending.setText("0");
                return;
            }
            if (!TextUtils.isEmpty(sumByType.getInTotalMoney())) {
                NewRecordFragment.this.tvDiamondIncome.setText(sumByType.getInTotalMoney());
            }
            if (TextUtils.isEmpty(sumByType.getOutTotalMoney())) {
                return;
            }
            NewRecordFragment.this.tvDiamondSpending.setText(sumByType.getOutTotalMoney());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull @NotNull g7.a<SumByType> aVar) {
            NewRecordFragment.this.tvDiamondIncome.setText("0");
            NewRecordFragment.this.tvDiamondSpending.setText("0");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<SumByType> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable @org.jetbrains.annotations.Nullable SumByType sumByType, @NonNull @NotNull FaceCastBaseResponse<SumByType> faceCastBaseResponse) {
            if (sumByType == null) {
                NewRecordFragment.this.tvFIncome.setText("0");
                NewRecordFragment.this.tvFSpending.setText("0");
                return;
            }
            if (!TextUtils.isEmpty(sumByType.getInTotalMoney())) {
                NewRecordFragment.this.tvFIncome.setText(sumByType.getInTotalMoney());
            }
            if (TextUtils.isEmpty(sumByType.getOutTotalMoney())) {
                return;
            }
            NewRecordFragment.this.tvFSpending.setText(sumByType.getOutTotalMoney());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull @NotNull g7.a<SumByType> aVar) {
            NewRecordFragment.this.tvFIncome.setText("0");
            NewRecordFragment.this.tvFSpending.setText("0");
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
                NewRecordFragment.this.tvGIncome.setText("0");
                NewRecordFragment.this.tvGSpending.setText("0");
                return;
            }
            if (!TextUtils.isEmpty(sumByType.getInTotalMoney())) {
                NewRecordFragment.this.tvGIncome.setText(sumByType.getInTotalMoney());
            }
            if (TextUtils.isEmpty(sumByType.getOutTotalMoney())) {
                return;
            }
            NewRecordFragment.this.tvGSpending.setText(sumByType.getOutTotalMoney());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull @NotNull g7.a<SumByType> aVar) {
            NewRecordFragment.this.tvGIncome.setText("0");
            NewRecordFragment.this.tvGSpending.setText("0");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements WithdrawalDatePickerDialog.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TextView f21608a;

        d(TextView textView) {
            this.f21608a = textView;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.personal.WithdrawalDatePickerDialog.c
        public void b(Dialog dialog) {
            NewRecordFragment.this.f21603e.dismiss();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.personal.WithdrawalDatePickerDialog.c
        public void u(Dialog dialog, Calendar calendar, String str, String str2) {
            int parseInt = Integer.parseInt(str.replace(NewRecordFragment.this.getString(R.string.year).replace(TimeModel.NUMBER_FORMAT, "").trim(), "").trim());
            NewRecordFragment.this.f21600b = parseInt;
            NewRecordFragment newRecordFragment = NewRecordFragment.this;
            newRecordFragment.f21601c = DateUtils.getMonthOfYear(newRecordFragment.getActivity(), str2);
            if (NewRecordFragment.this.f21601c < 10) {
                this.f21608a.setText(String.format("%d/0%d", Integer.valueOf(parseInt), Integer.valueOf(DateUtils.getMonthOfYear(NewRecordFragment.this.getActivity(), str2))));
            } else {
                this.f21608a.setText(String.format("%d/%d", Integer.valueOf(parseInt), Integer.valueOf(DateUtils.getMonthOfYear(NewRecordFragment.this.getActivity(), str2))));
            }
            if (this.f21608a.getId() == R.id.tv_diamond_date) {
                NewRecordFragment.this.X1(this.f21608a.getText().toString());
            } else if (this.f21608a.getId() == R.id.tv_f_date) {
                NewRecordFragment.this.Y1(this.f21608a.getText().toString());
            } else {
                NewRecordFragment.this.Z1(this.f21608a.getText().toString());
            }
            NewRecordFragment.this.f21603e.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements WithdrawalDatePickerDialog.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TextView f21610a;

        e(TextView textView) {
            this.f21610a = textView;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.personal.WithdrawalDatePickerDialog.c
        public void b(Dialog dialog) {
            NewRecordFragment.this.f21604f.dismiss();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.personal.WithdrawalDatePickerDialog.c
        public void u(Dialog dialog, Calendar calendar, String str, String str2) {
            int parseInt = Integer.parseInt(str.replace(NewRecordFragment.this.getString(R.string.year).replace(TimeModel.NUMBER_FORMAT, "").trim(), "").trim());
            NewRecordFragment.this.f21600b = parseInt;
            NewRecordFragment newRecordFragment = NewRecordFragment.this;
            newRecordFragment.f21601c = DateUtils.getMonthOfYear(newRecordFragment.getActivity(), str2);
            if (NewRecordFragment.this.f21601c < 10) {
                this.f21610a.setText(String.format("%d/0%d", Integer.valueOf(parseInt), Integer.valueOf(DateUtils.getMonthOfYear(NewRecordFragment.this.getActivity(), str2))));
            } else {
                this.f21610a.setText(String.format("%d/%d", Integer.valueOf(parseInt), Integer.valueOf(DateUtils.getMonthOfYear(NewRecordFragment.this.getActivity(), str2))));
            }
            if (this.f21610a.getId() == R.id.tv_diamond_date) {
                NewRecordFragment.this.X1(this.f21610a.getText().toString());
            } else if (this.f21610a.getId() == R.id.tv_f_date) {
                NewRecordFragment.this.Y1(this.f21610a.getText().toString());
            } else {
                NewRecordFragment.this.Z1(this.f21610a.getText().toString());
            }
            NewRecordFragment.this.f21604f.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X1(String str) {
        post("tokens/orderSum/querySumByType").y("type", "Z").y("dealDateStart", StringUtils.convertNumberToNormalNumber(DateUtils.getFirstDay(str.replace(FileUtils.RES_PREFIX_STORAGE, "-")))).y("dealDateEnd", StringUtils.convertNumberToNormalNumber(DateUtils.getLastDay(str.replace(FileUtils.RES_PREFIX_STORAGE, "-")))).y("parentTypes", this.f21602d).M(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y1(String str) {
        post("tokens/orderSum/querySumByType").y("type", "F").y("dealDateStart", StringUtils.convertNumberToNormalNumber(DateUtils.getFirstDay(str.replace(FileUtils.RES_PREFIX_STORAGE, "-")))).y("dealDateEnd", StringUtils.convertNumberToNormalNumber(DateUtils.getLastDay(str.replace(FileUtils.RES_PREFIX_STORAGE, "-")))).y("parentTypes", this.f21602d).M(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z1(String str) {
        post("tokens/orderSum/querySumByType").y("type", ExifInterface.LATITUDE_SOUTH).y("dealDateStart", StringUtils.convertNumberToNormalNumber(DateUtils.getFirstDay(str.replace(FileUtils.RES_PREFIX_STORAGE, "-")))).y("dealDateEnd", StringUtils.convertNumberToNormalNumber(DateUtils.getLastDay(str.replace(FileUtils.RES_PREFIX_STORAGE, "-")))).y("parentTypes", this.f21602d).M(new c());
    }

    private void a2(TextView textView) {
        Calendar calendar = Calendar.getInstance();
        String[] split = textView.getText().toString().split(FileUtils.RES_PREFIX_STORAGE);
        calendar.set(1, Integer.parseInt(split[0]));
        calendar.set(2, Integer.parseInt(split[1]) - 1);
        if (this.f21603e == null) {
            WithdrawalDatePickerDialog Q1 = WithdrawalDatePickerDialog.Q1(calendar, false);
            this.f21603e = Q1;
            Q1.setOnDatePickListener(new d(textView));
        }
        if (this.f21603e.isAdded()) {
            this.f21603e.dismiss();
        } else {
            this.f21603e.show(getParentFragmentManager(), "DatePick");
        }
    }

    private void b2(TextView textView) {
        Calendar calendar = Calendar.getInstance();
        String[] split = textView.getText().toString().split(FileUtils.RES_PREFIX_STORAGE);
        calendar.set(1, Integer.parseInt(split[0]));
        calendar.set(2, Integer.parseInt(split[1]) - 1);
        if (this.f21604f == null) {
            WithdrawalDatePickerDialog Q1 = WithdrawalDatePickerDialog.Q1(calendar, false);
            this.f21604f = Q1;
            Q1.setOnDatePickListener(new e(textView));
        }
        if (this.f21604f.isAdded()) {
            this.f21604f.dismiss();
        } else {
            this.f21604f.show(getParentFragmentManager(), "DatePick");
        }
    }

    @Override // com.guochao.faceshow.mine.view.fragment.a
    public void E0() {
        i0();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_record_new;
    }

    @Override // com.guochao.faceshow.mine.view.fragment.a
    public void i0() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        Calendar calendar = Calendar.getInstance();
        int i9 = calendar.get(1);
        int i10 = calendar.get(2) + 1;
        if (i10 < 10) {
            this.f21599a = String.format("%d/0%d", Integer.valueOf(i9), Integer.valueOf(i10));
        } else {
            this.f21599a = String.format("%d/%d", Integer.valueOf(i9), Integer.valueOf(i10));
        }
        this.tvDiamondDate.setText(this.f21599a);
        this.tvFDate.setText(this.f21599a);
        this.tvGDate.setText(this.f21599a);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
        X1(this.f21599a);
        Y1(this.f21599a);
        Z1(this.f21599a);
    }

    @OnClick
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.ll_diamond /* 2131363529 */:
                NewRecordActivity.q0(getActivity(), 0, this.tvDiamondDate.getText().toString());
                return;
            case R.id.ll_f /* 2131363531 */:
                NewRecordActivity.q0(getActivity(), 1, this.tvFDate.getText().toString());
                return;
            case R.id.ll_g /* 2131363538 */:
                NewRecordActivity.q0(getActivity(), 2, this.tvGDate.getText().toString());
                return;
            case R.id.tv_diamond_date /* 2131364975 */:
                a2(this.tvDiamondDate);
                return;
            case R.id.tv_f_date /* 2131364993 */:
                b2(this.tvFDate);
                return;
            case R.id.tv_g_date /* 2131365010 */:
                b2(this.tvGDate);
                return;
            default:
                return;
        }
    }
}
