package com.tencent.bugly.crashreport.biz;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.bugly.proguard.z;
import java.util.Map;
/* loaded from: classes4.dex */
public class UserInfoBean implements Parcelable {
    public static final Parcelable.Creator<UserInfoBean> CREATOR = new Parcelable.Creator<UserInfoBean>() { // from class: com.tencent.bugly.crashreport.biz.UserInfoBean.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ UserInfoBean createFromParcel(Parcel parcel) {
            return new UserInfoBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ UserInfoBean[] newArray(int i9) {
            return new UserInfoBean[i9];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public long f30129a;

    /* renamed from: b  reason: collision with root package name */
    public int f30130b;

    /* renamed from: c  reason: collision with root package name */
    public String f30131c;

    /* renamed from: d  reason: collision with root package name */
    public String f30132d;

    /* renamed from: e  reason: collision with root package name */
    public long f30133e;

    /* renamed from: f  reason: collision with root package name */
    public long f30134f;

    /* renamed from: g  reason: collision with root package name */
    public long f30135g;

    /* renamed from: h  reason: collision with root package name */
    public long f30136h;

    /* renamed from: i  reason: collision with root package name */
    public long f30137i;

    /* renamed from: j  reason: collision with root package name */
    public String f30138j;

    /* renamed from: k  reason: collision with root package name */
    public long f30139k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f30140l;

    /* renamed from: m  reason: collision with root package name */
    public String f30141m;

    /* renamed from: n  reason: collision with root package name */
    public String f30142n;

    /* renamed from: o  reason: collision with root package name */
    public int f30143o;

    /* renamed from: p  reason: collision with root package name */
    public int f30144p;

    /* renamed from: q  reason: collision with root package name */
    public int f30145q;

    /* renamed from: r  reason: collision with root package name */
    public Map<String, String> f30146r;

    /* renamed from: s  reason: collision with root package name */
    public Map<String, String> f30147s;

    public UserInfoBean() {
        this.f30139k = 0L;
        this.f30140l = false;
        this.f30141m = "unknown";
        this.f30144p = -1;
        this.f30145q = -1;
        this.f30146r = null;
        this.f30147s = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.f30130b);
        parcel.writeString(this.f30131c);
        parcel.writeString(this.f30132d);
        parcel.writeLong(this.f30133e);
        parcel.writeLong(this.f30134f);
        parcel.writeLong(this.f30135g);
        parcel.writeLong(this.f30136h);
        parcel.writeLong(this.f30137i);
        parcel.writeString(this.f30138j);
        parcel.writeLong(this.f30139k);
        parcel.writeByte(this.f30140l ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f30141m);
        parcel.writeInt(this.f30144p);
        parcel.writeInt(this.f30145q);
        z.b(parcel, this.f30146r);
        z.b(parcel, this.f30147s);
        parcel.writeString(this.f30142n);
        parcel.writeInt(this.f30143o);
    }

    public UserInfoBean(Parcel parcel) {
        this.f30139k = 0L;
        this.f30140l = false;
        this.f30141m = "unknown";
        this.f30144p = -1;
        this.f30145q = -1;
        this.f30146r = null;
        this.f30147s = null;
        this.f30130b = parcel.readInt();
        this.f30131c = parcel.readString();
        this.f30132d = parcel.readString();
        this.f30133e = parcel.readLong();
        this.f30134f = parcel.readLong();
        this.f30135g = parcel.readLong();
        this.f30136h = parcel.readLong();
        this.f30137i = parcel.readLong();
        this.f30138j = parcel.readString();
        this.f30139k = parcel.readLong();
        this.f30140l = parcel.readByte() == 1;
        this.f30141m = parcel.readString();
        this.f30144p = parcel.readInt();
        this.f30145q = parcel.readInt();
        this.f30146r = z.b(parcel);
        this.f30147s = z.b(parcel);
        this.f30142n = parcel.readString();
        this.f30143o = parcel.readInt();
    }
}
