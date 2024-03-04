package com.tencent.bugly.crashreport.common.strategy;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.bugly.proguard.z;
import java.util.Map;
/* loaded from: classes4.dex */
public class StrategyBean implements Parcelable {
    public static final Parcelable.Creator<StrategyBean> CREATOR = new Parcelable.Creator<StrategyBean>() { // from class: com.tencent.bugly.crashreport.common.strategy.StrategyBean.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ StrategyBean createFromParcel(Parcel parcel) {
            return new StrategyBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ StrategyBean[] newArray(int i9) {
            return new StrategyBean[i9];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public static String f30221a = "https://android.bugly.qq.com/rqd/async";

    /* renamed from: b  reason: collision with root package name */
    public static String f30222b = "https://android.bugly.qq.com/rqd/async";

    /* renamed from: c  reason: collision with root package name */
    public long f30223c;

    /* renamed from: d  reason: collision with root package name */
    public long f30224d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f30225e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f30226f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f30227g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f30228h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f30229i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f30230j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f30231k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f30232l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f30233m;

    /* renamed from: n  reason: collision with root package name */
    public long f30234n;

    /* renamed from: o  reason: collision with root package name */
    public long f30235o;

    /* renamed from: p  reason: collision with root package name */
    public String f30236p;

    /* renamed from: q  reason: collision with root package name */
    public String f30237q;

    /* renamed from: r  reason: collision with root package name */
    public String f30238r;

    /* renamed from: s  reason: collision with root package name */
    public Map<String, String> f30239s;

    /* renamed from: t  reason: collision with root package name */
    public int f30240t;

    /* renamed from: u  reason: collision with root package name */
    public long f30241u;

    /* renamed from: v  reason: collision with root package name */
    public long f30242v;

    public StrategyBean() {
        this.f30223c = -1L;
        this.f30224d = -1L;
        this.f30225e = true;
        this.f30226f = true;
        this.f30227g = true;
        this.f30228h = true;
        this.f30229i = false;
        this.f30230j = true;
        this.f30231k = true;
        this.f30232l = true;
        this.f30233m = true;
        this.f30235o = 30000L;
        this.f30236p = f30221a;
        this.f30237q = f30222b;
        this.f30240t = 10;
        this.f30241u = 300000L;
        this.f30242v = -1L;
        this.f30224d = System.currentTimeMillis();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("S(@L@L");
        sb2.append("@)");
        sb2.setLength(0);
        sb2.append("*^@K#K");
        sb2.append("@!");
        this.f30238r = sb2.toString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeLong(this.f30224d);
        parcel.writeByte(this.f30225e ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f30226f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f30227g ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f30236p);
        parcel.writeString(this.f30237q);
        parcel.writeString(this.f30238r);
        z.b(parcel, this.f30239s);
        parcel.writeByte(this.f30228h ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f30229i ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f30232l ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f30233m ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f30235o);
        parcel.writeByte(this.f30230j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f30231k ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f30234n);
        parcel.writeInt(this.f30240t);
        parcel.writeLong(this.f30241u);
        parcel.writeLong(this.f30242v);
    }

    public StrategyBean(Parcel parcel) {
        this.f30223c = -1L;
        this.f30224d = -1L;
        boolean z10 = true;
        this.f30225e = true;
        this.f30226f = true;
        this.f30227g = true;
        this.f30228h = true;
        this.f30229i = false;
        this.f30230j = true;
        this.f30231k = true;
        this.f30232l = true;
        this.f30233m = true;
        this.f30235o = 30000L;
        this.f30236p = f30221a;
        this.f30237q = f30222b;
        this.f30240t = 10;
        this.f30241u = 300000L;
        this.f30242v = -1L;
        try {
            this.f30224d = parcel.readLong();
            this.f30225e = parcel.readByte() == 1;
            this.f30226f = parcel.readByte() == 1;
            this.f30227g = parcel.readByte() == 1;
            this.f30236p = parcel.readString();
            this.f30237q = parcel.readString();
            this.f30238r = parcel.readString();
            this.f30239s = z.b(parcel);
            this.f30228h = parcel.readByte() == 1;
            this.f30229i = parcel.readByte() == 1;
            this.f30232l = parcel.readByte() == 1;
            this.f30233m = parcel.readByte() == 1;
            this.f30235o = parcel.readLong();
            this.f30230j = parcel.readByte() == 1;
            if (parcel.readByte() != 1) {
                z10 = false;
            }
            this.f30231k = z10;
            this.f30234n = parcel.readLong();
            this.f30240t = parcel.readInt();
            this.f30241u = parcel.readLong();
            this.f30242v = parcel.readLong();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
