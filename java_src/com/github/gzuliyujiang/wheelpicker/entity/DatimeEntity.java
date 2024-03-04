package com.github.gzuliyujiang.wheelpicker.entity;

import androidx.annotation.NonNull;
import java.io.Serializable;
/* loaded from: classes.dex */
public class DatimeEntity implements Serializable {
    private DateEntity date;
    private TimeEntity time;

    public static DatimeEntity dayOnFuture(int i9) {
        DatimeEntity now = now();
        now.setDate(DateEntity.dayOnFuture(i9));
        return now;
    }

    public static DatimeEntity hourOnFuture(int i9) {
        DatimeEntity now = now();
        now.setTime(TimeEntity.hourOnFuture(i9));
        return now;
    }

    public static DatimeEntity minuteOnFuture(int i9) {
        DatimeEntity now = now();
        now.setTime(TimeEntity.minuteOnFuture(i9));
        return now;
    }

    public static DatimeEntity monthOnFuture(int i9) {
        DatimeEntity now = now();
        now.setDate(DateEntity.monthOnFuture(i9));
        return now;
    }

    public static DatimeEntity now() {
        DatimeEntity datimeEntity = new DatimeEntity();
        datimeEntity.setDate(DateEntity.today());
        datimeEntity.setTime(TimeEntity.now());
        return datimeEntity;
    }

    public static DatimeEntity yearOnFuture(int i9) {
        DatimeEntity now = now();
        now.setDate(DateEntity.yearOnFuture(i9));
        return now;
    }

    public DateEntity getDate() {
        return this.date;
    }

    public TimeEntity getTime() {
        return this.time;
    }

    public void setDate(DateEntity dateEntity) {
        this.date = dateEntity;
    }

    public void setTime(TimeEntity timeEntity) {
        this.time = timeEntity;
    }

    @NonNull
    public String toString() {
        return this.date.toString() + " " + this.time.toString();
    }
}
