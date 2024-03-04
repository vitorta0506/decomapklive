package com.guochao.faceshow.aaspring.views;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.wheelview.WheelView;
/* loaded from: classes3.dex */
public class DatePickerView_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private DatePickerView f23547b;

    @UiThread
    public DatePickerView_ViewBinding(DatePickerView datePickerView, View view) {
        this.f23547b = datePickerView;
        datePickerView.mWheelViewYear = (WheelView) butterknife.internal.c.d(view, R.id.wv_birth_year, "field 'mWheelViewYear'", WheelView.class);
        datePickerView.mWheelViewMonth = (WheelView) butterknife.internal.c.d(view, R.id.wv_birth_month, "field 'mWheelViewMonth'", WheelView.class);
        datePickerView.mWheelViewDay = (WheelView) butterknife.internal.c.d(view, R.id.wv_birth_day, "field 'mWheelViewDay'", WheelView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DatePickerView datePickerView = this.f23547b;
        if (datePickerView != null) {
            this.f23547b = null;
            datePickerView.mWheelViewYear = null;
            datePickerView.mWheelViewMonth = null;
            datePickerView.mWheelViewDay = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
