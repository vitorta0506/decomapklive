package com.guochao.faceshow.aaspring.dialog;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.DatePickerView;
/* loaded from: classes3.dex */
public class DatePickerDialog_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private DatePickerDialog f16427b;

    /* renamed from: c  reason: collision with root package name */
    private View f16428c;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DatePickerDialog f16429a;

        a(DatePickerDialog datePickerDialog) {
            this.f16429a = datePickerDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16429a.onViewClicked();
        }
    }

    @UiThread
    public DatePickerDialog_ViewBinding(DatePickerDialog datePickerDialog, View view) {
        this.f16427b = datePickerDialog;
        datePickerDialog.mConfirm = (TextView) c.d(view, R.id.common_dialog_submit, "field 'mConfirm'", TextView.class);
        datePickerDialog.mCancel = (TextView) c.d(view, R.id.common_dialog_cancel, "field 'mCancel'", TextView.class);
        datePickerDialog.mTitle = (TextView) c.d(view, R.id.tv_title, "field 'mTitle'", TextView.class);
        datePickerDialog.closeIV = (ImageView) c.d(view, R.id.close, "field 'closeIV'", ImageView.class);
        datePickerDialog.mDatePickerView = (DatePickerView) c.d(view, R.id.date_picker, "field 'mDatePickerView'", DatePickerView.class);
        View c10 = c.c(view, R.id.bg_view, "method 'onViewClicked'");
        this.f16428c = c10;
        c10.setOnClickListener(new a(datePickerDialog));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DatePickerDialog datePickerDialog = this.f16427b;
        if (datePickerDialog != null) {
            this.f16427b = null;
            datePickerDialog.mConfirm = null;
            datePickerDialog.mCancel = null;
            datePickerDialog.mTitle = null;
            datePickerDialog.closeIV = null;
            datePickerDialog.mDatePickerView = null;
            this.f16428c.setOnClickListener(null);
            this.f16428c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
