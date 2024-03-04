package com.guochao.faceshow.aaspring.modulars.personal;

import android.app.Dialog;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.views.WithdrawalDatePickerView;
import java.util.Calendar;
/* loaded from: classes3.dex */
public class WithdrawalDatePickerDialog extends BaseDialogFragment implements WithdrawalDatePickerView.e {

    /* renamed from: a  reason: collision with root package name */
    String f21326a;

    /* renamed from: b  reason: collision with root package name */
    String f21327b;

    /* renamed from: c  reason: collision with root package name */
    Calendar f21328c;

    /* renamed from: d  reason: collision with root package name */
    boolean f21329d;

    /* renamed from: e  reason: collision with root package name */
    private c f21330e;
    @BindView
    TextView mCancel;
    @BindView
    TextView mConfirm;
    @BindView
    WithdrawalDatePickerView mDatePickerView;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (WithdrawalDatePickerDialog.this.f21330e != null) {
                WithdrawalDatePickerDialog.this.f21330e.b(WithdrawalDatePickerDialog.this.getDialog());
            } else {
                WithdrawalDatePickerDialog.this.dismiss();
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TextUtils.isEmpty(WithdrawalDatePickerDialog.this.f21327b)) {
                WithdrawalDatePickerDialog withdrawalDatePickerDialog = WithdrawalDatePickerDialog.this;
                withdrawalDatePickerDialog.f21327b = withdrawalDatePickerDialog.getString(R.string.all);
            }
            c cVar = WithdrawalDatePickerDialog.this.f21330e;
            Dialog dialog = WithdrawalDatePickerDialog.this.getDialog();
            WithdrawalDatePickerDialog withdrawalDatePickerDialog2 = WithdrawalDatePickerDialog.this;
            cVar.u(dialog, withdrawalDatePickerDialog2.f21328c, withdrawalDatePickerDialog2.f21327b, withdrawalDatePickerDialog2.f21326a);
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void b(Dialog dialog);

        void u(Dialog dialog, Calendar calendar, String str, String str2);
    }

    public static WithdrawalDatePickerDialog Q1(Calendar calendar, boolean z10) {
        WithdrawalDatePickerDialog withdrawalDatePickerDialog = new WithdrawalDatePickerDialog();
        Bundle bundle = new Bundle();
        bundle.putSerializable("date", calendar);
        bundle.putBoolean("showAll", z10);
        withdrawalDatePickerDialog.setArguments(bundle);
        return withdrawalDatePickerDialog;
    }

    private String R1() {
        String string = getContext().getString(R.string.january);
        if (getContext() != null) {
            int i9 = this.f21328c.get(2) + 1;
            if (i9 == 1) {
                return getContext().getString(R.string.january);
            }
            if (i9 == 2) {
                return getContext().getString(R.string.february);
            }
            if (i9 == 3) {
                return getContext().getString(R.string.march);
            }
            if (i9 == 4) {
                return getContext().getString(R.string.april);
            }
            if (i9 == 5) {
                return getContext().getString(R.string.may);
            }
            if (i9 == 6) {
                return getContext().getString(R.string.june);
            }
            if (i9 == 7) {
                return getContext().getString(R.string.july);
            }
            if (i9 == 8) {
                return getContext().getString(R.string.august);
            }
            if (i9 == 9) {
                return getContext().getString(R.string.september);
            }
            if (i9 == 10) {
                return getContext().getString(R.string.october);
            }
            if (i9 == 11) {
                return getContext().getString(R.string.november);
            }
            if (i9 == 12) {
                return getContext().getString(R.string.december);
            }
            return getContext().getString(R.string.january);
        }
        return string;
    }

    @Override // com.guochao.faceshow.aaspring.views.WithdrawalDatePickerView.e
    public void A0(Calendar calendar, String str, String str2) {
        TextView textView = this.mConfirm;
        if (textView != null) {
            textView.setEnabled(true);
        }
        if (calendar != null) {
            this.f21328c = (Calendar) calendar.clone();
        }
        this.f21326a = str2;
        this.f21327b = str;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_withdrawal_date_picker;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (getArguments() != null) {
            boolean z10 = getArguments().getBoolean("showAll");
            this.f21329d = z10;
            this.mDatePickerView.setShowAll(z10);
            this.mDatePickerView.setDefaultDate((Calendar) getArguments().getSerializable("date"));
            Calendar calendar = (Calendar) getArguments().getSerializable("date");
            this.f21328c = calendar;
            if (calendar != null) {
                if (Language.SIMPLE_CHINESE.equalsIgnoreCase(q7.a.e().c())) {
                    this.f21327b = String.format(getContext().getString(R.string.year), Integer.valueOf(this.f21328c.get(1)));
                } else {
                    this.f21327b = String.valueOf(this.f21328c.get(1));
                }
                this.f21326a = R1();
            }
        }
        this.mDatePickerView.setOnDateChangedListener(this);
        this.mCancel.setOnClickListener(new a());
        this.mConfirm.setOnClickListener(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.BottomDialog_FullScreen);
        createBottomDialog.getWindow().setDimAmount(0.6f);
        createBottomDialog.setCanceledOnTouchOutside(true);
        return createBottomDialog;
    }

    public void setOnDatePickListener(c cVar) {
        this.f21330e = cVar;
    }
}
