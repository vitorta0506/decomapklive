package com.google.android.material.timepicker;

import androidx.annotation.IntRange;
import androidx.annotation.StringRes;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2.dex */
interface TimePickerControls {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface ActiveSelection {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface ClockPeriod {
    }

    void setActiveSelection(int i9);

    void setHandRotation(float f10);

    void setValues(String[] strArr, @StringRes int i9);

    void updateTime(int i9, int i10, @IntRange(from = 0) int i11);
}
