package com.guochao.faceshow.aaspring.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.views.DatePickerView;
import java.util.Calendar;
/* loaded from: classes3.dex */
public class DatePickerDialog extends BaseDialogFragment implements DatePickerView.f {

    /* renamed from: a  reason: collision with root package name */
    int f16418a;

    /* renamed from: b  reason: collision with root package name */
    int f16419b;

    /* renamed from: c  reason: collision with root package name */
    int f16420c;
    @BindView
    ImageView closeIV;

    /* renamed from: d  reason: collision with root package name */
    Calendar f16421d;

    /* renamed from: e  reason: collision with root package name */
    Unbinder f16422e;

    /* renamed from: f  reason: collision with root package name */
    private d f16423f;
    @BindView
    TextView mCancel;
    @BindView
    TextView mConfirm;
    @BindView
    DatePickerView mDatePickerView;
    @BindView
    TextView mTitle;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DatePickerDialog.this.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DatePickerDialog.this.f16423f != null) {
                DatePickerDialog.this.f16423f.b(DatePickerDialog.this.getDialog());
            } else {
                DatePickerDialog.this.dismiss();
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DatePickerDialog.this.f16423f != null) {
                d dVar = DatePickerDialog.this.f16423f;
                Dialog dialog = DatePickerDialog.this.getDialog();
                DatePickerDialog datePickerDialog = DatePickerDialog.this;
                dVar.c(dialog, datePickerDialog.f16421d, datePickerDialog.f16420c, datePickerDialog.f16419b, datePickerDialog.f16418a);
                return;
            }
            DatePickerDialog.this.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void b(Dialog dialog);

        void c(Dialog dialog, Calendar calendar, int i9, int i10, int i11);
    }

    public static DatePickerDialog Q1(Calendar calendar) {
        DatePickerDialog datePickerDialog = new DatePickerDialog();
        Bundle bundle = new Bundle();
        bundle.putSerializable("date", calendar);
        datePickerDialog.setArguments(bundle);
        return datePickerDialog;
    }

    public static DatePickerDialog R1(FragmentActivity fragmentActivity, Calendar calendar, d dVar) {
        DatePickerDialog Q1 = Q1(calendar);
        Q1.setOnDatePickListener(dVar);
        Q1.show(fragmentActivity.getSupportFragmentManager(), "DatePick");
        return Q1;
    }

    @Override // com.guochao.faceshow.aaspring.views.DatePickerView.f
    public void I1(Calendar calendar, int i9, int i10, int i11) {
        TextView textView = this.mConfirm;
        if (textView != null) {
            textView.setEnabled(true);
        }
        this.f16421d = (Calendar) calendar.clone();
        this.f16418a = i11;
        this.f16419b = i10;
        this.f16420c = i9;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_date_picker;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (getArguments() != null) {
            this.mDatePickerView.setDefaultDate((Calendar) getArguments().getSerializable("date"));
        }
        this.mTitle.setText(R.string.Birthday);
        this.closeIV.setOnClickListener(new a());
        this.mDatePickerView.setOnDateChangedListener(this);
        this.mCancel.setOnClickListener(new b());
        this.mConfirm.setOnClickListener(new c());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, R.style.BottomDialog_FullScreen);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog onCreateDialog = super.onCreateDialog(bundle);
        Window window = onCreateDialog.getWindow();
        if (window != null) {
            window.requestFeature(1);
        }
        onCreateDialog.setCanceledOnTouchOutside(false);
        return onCreateDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f16422e = ButterKnife.c(this, onCreateView);
        return onCreateView;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f16422e.unbind();
    }

    @OnClick
    public void onViewClicked() {
        dismiss();
    }

    public void setOnDatePickListener(d dVar) {
        this.f16423f = dVar;
    }
}
