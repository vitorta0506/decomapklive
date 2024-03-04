package com.github.gzuliyujiang.wheelpicker.entity;

import androidx.annotation.NonNull;
import com.facebook.internal.security.CertificateUtil;
import java.io.Serializable;
import java.util.Calendar;
/* loaded from: classes.dex */
public class TimeEntity implements Serializable {
    private int hour;
    private int minute;
    private int second;

    public static TimeEntity hourOnFuture(int i9) {
        TimeEntity now = now();
        now.setHour(now.getHour() + i9);
        return now;
    }

    public static TimeEntity minuteOnFuture(int i9) {
        TimeEntity now = now();
        now.setMinute(now.getMinute() + i9);
        return now;
    }

    public static TimeEntity now() {
        Calendar calendar = Calendar.getInstance();
        return target(calendar.get(11), calendar.get(12), calendar.get(13));
    }

    public static TimeEntity target(int i9, int i10, int i11) {
        TimeEntity timeEntity = new TimeEntity();
        timeEntity.setHour(i9);
        timeEntity.setMinute(i10);
        timeEntity.setSecond(i11);
        return timeEntity;
    }

    public int getHour() {
        return this.hour;
    }

    public int getMinute() {
        return this.minute;
    }

    public int getSecond() {
        return this.second;
    }

    public void setHour(int i9) {
        this.hour = i9;
    }

    public void setMinute(int i9) {
        this.minute = i9;
    }

    public void setSecond(int i9) {
        this.second = i9;
    }

    @NonNull
    public String toString() {
        return this.hour + CertificateUtil.DELIMITER + this.minute + CertificateUtil.DELIMITER + this.second;
    }
}
