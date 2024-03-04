package com.google.android.material.timepicker;

import android.view.accessibility.AccessibilityManager;
import androidx.core.content.ContextCompat;
import com.google.android.material.R;
import com.google.android.material.timepicker.ClockHandView;
import com.google.android.material.timepicker.TimePickerView;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.faceshow.aaspring.modulars.chat.models.CustomMessage;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.utils.ReportController;
/* loaded from: classes2.dex */
class TimePickerClockPresenter implements ClockHandView.OnRotateListener, TimePickerView.OnSelectionChange, TimePickerView.OnPeriodChangeListener, ClockHandView.OnActionUpListener, TimePickerPresenter {
    private static final int DEGREES_PER_HOUR = 30;
    private static final int DEGREES_PER_MINUTE = 6;
    private boolean broadcasting = false;
    private float hourRotation;
    private float minuteRotation;
    private TimeModel time;
    private TimePickerView timePickerView;
    private static final String[] HOUR_CLOCK_VALUES = {"12", "1", "2", "3", "4", "5", MVPActivity.FROM_BAG_BADGE, "7", ReportController.REPORT_TYPE_ONE_V_ONE, "9", ThirdPushHelper.TYPE_XIAOMI_CHINA, ThirdPushHelper.TYPE_XIAOMI_INTERNATIONAL};
    private static final String[] HOUR_CLOCK_24_VALUES = {"00", "2", "4", MVPActivity.FROM_BAG_BADGE, ReportController.REPORT_TYPE_ONE_V_ONE, ThirdPushHelper.TYPE_XIAOMI_CHINA, "12", CustomMessage.TYPE_TYPING, ReportController.REPORT_TYPE_TRTC, "18", ThirdPushHelper.TYPE_HUAWEI, "22"};
    private static final String[] MINUTE_CLOCK_VALUES = {"00", "5", ThirdPushHelper.TYPE_XIAOMI_CHINA, "15", ThirdPushHelper.TYPE_HUAWEI, "25", ThirdPushHelper.TYPE_OPPO, "35", ThirdPushHelper.TYPE_VIVO, "45", "50", "55"};

    public TimePickerClockPresenter(TimePickerView timePickerView, TimeModel timeModel) {
        this.timePickerView = timePickerView;
        this.time = timeModel;
        initialize();
    }

    private int getDegreesPerHour() {
        return this.time.format == 1 ? 15 : 30;
    }

    private String[] getHourClockValues() {
        return this.time.format == 1 ? HOUR_CLOCK_24_VALUES : HOUR_CLOCK_VALUES;
    }

    private void performHapticFeedback(int i9, int i10) {
        TimeModel timeModel = this.time;
        if (timeModel.minute == i10 && timeModel.hour == i9) {
            return;
        }
        this.timePickerView.performHapticFeedback(4);
    }

    private void updateTime() {
        TimePickerView timePickerView = this.timePickerView;
        TimeModel timeModel = this.time;
        timePickerView.updateTime(timeModel.period, timeModel.getHourForDisplay(), this.time.minute);
    }

    private void updateValues() {
        updateValues(HOUR_CLOCK_VALUES, TimeModel.NUMBER_FORMAT);
        updateValues(HOUR_CLOCK_24_VALUES, TimeModel.NUMBER_FORMAT);
        updateValues(MINUTE_CLOCK_VALUES, TimeModel.ZERO_LEADING_NUMBER_FORMAT);
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void hide() {
        this.timePickerView.setVisibility(8);
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void initialize() {
        if (this.time.format == 0) {
            this.timePickerView.showToggle();
        }
        this.timePickerView.addOnRotateListener(this);
        this.timePickerView.setOnSelectionChangeListener(this);
        this.timePickerView.setOnPeriodChangeListener(this);
        this.timePickerView.setOnActionUpListener(this);
        updateValues();
        invalidate();
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void invalidate() {
        this.hourRotation = this.time.getHourForDisplay() * getDegreesPerHour();
        TimeModel timeModel = this.time;
        this.minuteRotation = timeModel.minute * 6;
        setSelection(timeModel.selection, false);
        updateTime();
    }

    @Override // com.google.android.material.timepicker.ClockHandView.OnActionUpListener
    public void onActionUp(float f10, boolean z10) {
        this.broadcasting = true;
        TimeModel timeModel = this.time;
        int i9 = timeModel.minute;
        int i10 = timeModel.hour;
        if (timeModel.selection == 10) {
            this.timePickerView.setHandRotation(this.hourRotation, false);
            if (!((AccessibilityManager) ContextCompat.getSystemService(this.timePickerView.getContext(), AccessibilityManager.class)).isTouchExplorationEnabled()) {
                setSelection(12, true);
            }
        } else {
            int round = Math.round(f10);
            if (!z10) {
                this.time.setMinute(((round + 15) / 30) * 5);
                this.minuteRotation = this.time.minute * 6;
            }
            this.timePickerView.setHandRotation(this.minuteRotation, z10);
        }
        this.broadcasting = false;
        updateTime();
        performHapticFeedback(i10, i9);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.OnPeriodChangeListener
    public void onPeriodChange(int i9) {
        this.time.setPeriod(i9);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.OnRotateListener
    public void onRotate(float f10, boolean z10) {
        if (this.broadcasting) {
            return;
        }
        TimeModel timeModel = this.time;
        int i9 = timeModel.hour;
        int i10 = timeModel.minute;
        int round = Math.round(f10);
        TimeModel timeModel2 = this.time;
        if (timeModel2.selection == 12) {
            timeModel2.setMinute((round + 3) / 6);
            this.minuteRotation = (float) Math.floor(this.time.minute * 6);
        } else {
            this.time.setHour((round + (getDegreesPerHour() / 2)) / getDegreesPerHour());
            this.hourRotation = this.time.getHourForDisplay() * getDegreesPerHour();
        }
        if (z10) {
            return;
        }
        updateTime();
        performHapticFeedback(i9, i10);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.OnSelectionChange
    public void onSelectionChanged(int i9) {
        setSelection(i9, true);
    }

    void setSelection(int i9, boolean z10) {
        boolean z11 = i9 == 12;
        this.timePickerView.setAnimateOnTouchUp(z11);
        this.time.selection = i9;
        this.timePickerView.setValues(z11 ? MINUTE_CLOCK_VALUES : getHourClockValues(), z11 ? R.string.material_minute_suffix : R.string.material_hour_suffix);
        this.timePickerView.setHandRotation(z11 ? this.minuteRotation : this.hourRotation, z10);
        this.timePickerView.setActiveSelection(i9);
        this.timePickerView.setMinuteHourDelegate(new ClickActionDelegate(this.timePickerView.getContext(), R.string.material_hour_selection));
        this.timePickerView.setHourClickDelegate(new ClickActionDelegate(this.timePickerView.getContext(), R.string.material_minute_selection));
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void show() {
        this.timePickerView.setVisibility(0);
    }

    private void updateValues(String[] strArr, String str) {
        for (int i9 = 0; i9 < strArr.length; i9++) {
            strArr[i9] = TimeModel.formatText(this.timePickerView.getResources(), strArr[i9], str);
        }
    }
}
