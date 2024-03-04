package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes3.dex */
public class PowOffBean implements Parcelable {
    public static final Parcelable.Creator<PowOffBean> CREATOR = new Parcelable.Creator<PowOffBean>() { // from class: com.guochao.faceshow.aaspring.beans.PowOffBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PowOffBean createFromParcel(Parcel parcel) {
            return new PowOffBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PowOffBean[] newArray(int i9) {
            return new PowOffBean[i9];
        }
    };
    private String code;
    private Bean data;
    private String message;

    /* loaded from: classes3.dex */
    public static class Bean implements Parcelable {
        public static final Parcelable.Creator<Bean> CREATOR = new Parcelable.Creator<Bean>() { // from class: com.guochao.faceshow.aaspring.beans.PowOffBean.Bean.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Bean createFromParcel(Parcel parcel) {
                return new Bean(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Bean[] newArray(int i9) {
                return new Bean[i9];
            }
        };
        private List<Event> event;
        private int status;

        protected Bean(Parcel parcel) {
            this.status = parcel.readInt();
            this.event = parcel.createTypedArrayList(Event.CREATOR);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public List<Event> getEvent() {
            return this.event;
        }

        public int getStatus() {
            return this.status;
        }

        public void setEvent(List<Event> list) {
            this.event = list;
        }

        public void setStatus(int i9) {
            this.status = i9;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeInt(this.status);
            parcel.writeTypedList(this.event);
        }
    }

    /* loaded from: classes3.dex */
    public static class Event implements Parcelable {
        public static final Parcelable.Creator<Event> CREATOR = new Parcelable.Creator<Event>() { // from class: com.guochao.faceshow.aaspring.beans.PowOffBean.Event.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Event createFromParcel(Parcel parcel) {
                return new Event(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Event[] newArray(int i9) {
                return new Event[i9];
            }
        };
        private int duration;
        private long startTime;

        protected Event(Parcel parcel) {
            this.startTime = parcel.readLong();
            this.duration = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getDuration() {
            return this.duration;
        }

        public long getStartTime() {
            return this.startTime;
        }

        public void setDuration(int i9) {
            this.duration = i9;
        }

        public void setStartTime(long j10) {
            this.startTime = j10;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeLong(this.startTime);
            parcel.writeInt(this.duration);
        }
    }

    protected PowOffBean(Parcel parcel) {
        this.code = parcel.readString();
        this.message = parcel.readString();
        this.data = (Bean) parcel.readParcelable(Bean.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCode() {
        return this.code;
    }

    public Bean getData() {
        return this.data;
    }

    public String getMessage() {
        return this.message;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setData(Bean bean) {
        this.data = bean;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.code);
        parcel.writeString(this.message);
        parcel.writeParcelable(this.data, i9);
    }
}
