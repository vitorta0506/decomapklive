package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.IntRange;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class TimeModel implements Parcelable {
    public static final Parcelable.Creator<TimeModel> CREATOR = new Parcelable.Creator<TimeModel>() { // from class: com.google.android.material.timepicker.TimeModel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TimeModel createFromParcel(Parcel parcel) {
            return new TimeModel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TimeModel[] newArray(int i9) {
            return new TimeModel[i9];
        }
    };
    public static final String NUMBER_FORMAT = "%d";
    public static final String ZERO_LEADING_NUMBER_FORMAT = "%02d";
    final int format;
    int hour;
    private final MaxInputValidator hourInputValidator;
    int minute;
    private final MaxInputValidator minuteInputValidator;
    int period;
    int selection;

    public TimeModel() {
        this(0);
    }

    public static String formatText(Resources resources, CharSequence charSequence) {
        return formatText(resources, charSequence, ZERO_LEADING_NUMBER_FORMAT);
    }

    private static int getPeriod(int i9) {
        return i9 >= 12 ? 1 : 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TimeModel) {
            TimeModel timeModel = (TimeModel) obj;
            return this.hour == timeModel.hour && this.minute == timeModel.minute && this.format == timeModel.format && this.selection == timeModel.selection;
        }
        return false;
    }

    public int getHourForDisplay() {
        if (this.format == 1) {
            return this.hour % 24;
        }
        int i9 = this.hour;
        if (i9 % 12 == 0) {
            return 12;
        }
        return this.period == 1 ? i9 - 12 : i9;
    }

    public MaxInputValidator getHourInputValidator() {
        return this.hourInputValidator;
    }

    public MaxInputValidator getMinuteInputValidator() {
        return this.minuteInputValidator;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.format), Integer.valueOf(this.hour), Integer.valueOf(this.minute), Integer.valueOf(this.selection)});
    }

    public void setHour(int i9) {
        if (this.format == 1) {
            this.hour = i9;
        } else {
            this.hour = (i9 % 12) + (this.period != 1 ? 0 : 12);
        }
    }

    public void setHourOfDay(int i9) {
        this.period = getPeriod(i9);
        this.hour = i9;
    }

    public void setMinute(@IntRange(from = 0, to = 60) int i9) {
        this.minute = i9 % 60;
    }

    public void setPeriod(int i9) {
        if (i9 != this.period) {
            this.period = i9;
            int i10 = this.hour;
            if (i10 < 12 && i9 == 1) {
                this.hour = i10 + 12;
            } else if (i10 < 12 || i9 != 0) {
            } else {
                this.hour = i10 - 12;
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.hour);
        parcel.writeInt(this.minute);
        parcel.writeInt(this.selection);
        parcel.writeInt(this.format);
    }

    public TimeModel(int i9) {
        this(0, 0, 10, i9);
    }

    public static String formatText(Resources resources, CharSequence charSequence, String str) {
        return String.format(resources.getConfiguration().locale, str, Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
    }

    public TimeModel(int i9, int i10, int i11, int i12) {
        this.hour = i9;
        this.minute = i10;
        this.selection = i11;
        this.format = i12;
        this.period = getPeriod(i9);
        this.minuteInputValidator = new MaxInputValidator(59);
        this.hourInputValidator = new MaxInputValidator(i12 == 1 ? 24 : 12);
    }

    protected TimeModel(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }
}
