package com.meizu.cloud.pushsdk.handler.a.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.meizu.cloud.pushsdk.handler.MessageV3;
/* loaded from: classes4.dex */
public class c implements Parcelable {
    public static final Parcelable.Creator<c> CREATOR = new Parcelable.Creator<c>() { // from class: com.meizu.cloud.pushsdk.handler.a.c.c.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public c createFromParcel(Parcel parcel) {
            return new c(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public c[] newArray(int i9) {
            return new c[i9];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private MessageV3 f28689a;

    /* renamed from: b  reason: collision with root package name */
    private String f28690b;

    /* renamed from: c  reason: collision with root package name */
    private int f28691c;

    /* renamed from: d  reason: collision with root package name */
    private int f28692d;

    protected c(Parcel parcel) {
        this.f28689a = (MessageV3) parcel.readParcelable(MessageV3.class.getClassLoader());
        this.f28690b = parcel.readString();
        this.f28691c = parcel.readInt();
        this.f28692d = parcel.readInt();
    }

    public c(MessageV3 messageV3) {
        this.f28689a = messageV3;
    }

    public MessageV3 a() {
        return this.f28689a;
    }

    public void a(int i9) {
        this.f28691c = i9;
    }

    public void a(String str) {
        this.f28690b = str;
    }

    public int b() {
        return this.f28691c;
    }

    public void b(int i9) {
        this.f28692d = i9;
    }

    public int c() {
        return this.f28692d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "NotificationState{messageV3=" + this.f28689a + ", notificationPkg='" + this.f28690b + "', notificationId='" + this.f28691c + "', state='" + this.f28692d + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeParcelable(this.f28689a, i9);
        parcel.writeString(this.f28690b);
        parcel.writeInt(this.f28691c);
        parcel.writeInt(this.f28692d);
    }
}
