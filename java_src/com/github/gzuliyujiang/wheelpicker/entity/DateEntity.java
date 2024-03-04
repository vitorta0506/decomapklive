package com.github.gzuliyujiang.wheelpicker.entity;

import androidx.annotation.NonNull;
import java.io.Serializable;
import java.util.Calendar;
import java.util.Objects;
/* loaded from: classes.dex */
public class DateEntity implements Serializable {
    private int day;
    private int month;
    private int year;

    public static DateEntity dayOnFuture(int i9) {
        DateEntity dateEntity = today();
        dateEntity.setDay(dateEntity.getDay() + i9);
        return dateEntity;
    }

    public static DateEntity monthOnFuture(int i9) {
        DateEntity dateEntity = today();
        dateEntity.setMonth(dateEntity.getMonth() + i9);
        return dateEntity;
    }

    public static DateEntity target(int i9, int i10, int i11) {
        DateEntity dateEntity = new DateEntity();
        dateEntity.setYear(i9);
        dateEntity.setMonth(i10);
        dateEntity.setDay(i11);
        return dateEntity;
    }

    public static DateEntity today() {
        Calendar calendar = Calendar.getInstance();
        return target(calendar.get(1), calendar.get(2) + 1, calendar.get(5));
    }

    public static DateEntity yearOnFuture(int i9) {
        DateEntity dateEntity = today();
        dateEntity.setYear(dateEntity.getYear() + i9);
        return dateEntity;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DateEntity dateEntity = (DateEntity) obj;
        return this.year == dateEntity.year && this.month == dateEntity.month && this.day == dateEntity.day;
    }

    public int getDay() {
        return this.day;
    }

    public int getMonth() {
        return this.month;
    }

    public int getYear() {
        return this.year;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.year), Integer.valueOf(this.month), Integer.valueOf(this.day));
    }

    public void setDay(int i9) {
        this.day = i9;
    }

    public void setMonth(int i9) {
        this.month = i9;
    }

    public void setYear(int i9) {
        this.year = i9;
    }

    @NonNull
    public String toString() {
        return this.year + "-" + this.month + "-" + this.day;
    }
}
