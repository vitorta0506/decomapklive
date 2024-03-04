package com.tencent.bugly.crashreport.crash;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.bugly.crashreport.common.info.PlugInBean;
import com.tencent.bugly.proguard.z;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes4.dex */
public class CrashDetailBean implements Parcelable, Comparable<CrashDetailBean> {
    public static final Parcelable.Creator<CrashDetailBean> CREATOR = new Parcelable.Creator<CrashDetailBean>() { // from class: com.tencent.bugly.crashreport.crash.CrashDetailBean.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ CrashDetailBean createFromParcel(Parcel parcel) {
            return new CrashDetailBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ CrashDetailBean[] newArray(int i9) {
            return new CrashDetailBean[i9];
        }
    };
    public String A;
    public String B;
    public long C;
    public long D;
    public long E;
    public long F;
    public long G;
    public long H;
    public String I;
    public String J;
    public String K;
    public String L;
    public long M;
    public boolean N;
    public Map<String, String> O;
    public Map<String, String> P;
    public int Q;
    public int R;
    public Map<String, String> S;
    public Map<String, String> T;
    public byte[] U;
    public String V;
    public String W;
    private String X;

    /* renamed from: a  reason: collision with root package name */
    public long f30259a;

    /* renamed from: b  reason: collision with root package name */
    public int f30260b;

    /* renamed from: c  reason: collision with root package name */
    public String f30261c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f30262d;

    /* renamed from: e  reason: collision with root package name */
    public String f30263e;

    /* renamed from: f  reason: collision with root package name */
    public String f30264f;

    /* renamed from: g  reason: collision with root package name */
    public String f30265g;

    /* renamed from: h  reason: collision with root package name */
    public Map<String, PlugInBean> f30266h;

    /* renamed from: i  reason: collision with root package name */
    public Map<String, PlugInBean> f30267i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f30268j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f30269k;

    /* renamed from: l  reason: collision with root package name */
    public int f30270l;

    /* renamed from: m  reason: collision with root package name */
    public String f30271m;

    /* renamed from: n  reason: collision with root package name */
    public String f30272n;

    /* renamed from: o  reason: collision with root package name */
    public String f30273o;

    /* renamed from: p  reason: collision with root package name */
    public String f30274p;

    /* renamed from: q  reason: collision with root package name */
    public String f30275q;

    /* renamed from: r  reason: collision with root package name */
    public long f30276r;

    /* renamed from: s  reason: collision with root package name */
    public String f30277s;

    /* renamed from: t  reason: collision with root package name */
    public int f30278t;

    /* renamed from: u  reason: collision with root package name */
    public String f30279u;

    /* renamed from: v  reason: collision with root package name */
    public String f30280v;

    /* renamed from: w  reason: collision with root package name */
    public String f30281w;

    /* renamed from: x  reason: collision with root package name */
    public String f30282x;

    /* renamed from: y  reason: collision with root package name */
    public byte[] f30283y;

    /* renamed from: z  reason: collision with root package name */
    public Map<String, String> f30284z;

    public CrashDetailBean() {
        this.f30259a = -1L;
        this.f30260b = 0;
        this.f30261c = UUID.randomUUID().toString();
        this.f30262d = false;
        this.f30263e = "";
        this.f30264f = "";
        this.f30265g = "";
        this.f30266h = null;
        this.f30267i = null;
        this.f30268j = false;
        this.f30269k = false;
        this.f30270l = 0;
        this.f30271m = "";
        this.f30272n = "";
        this.f30273o = "";
        this.f30274p = "";
        this.f30275q = "";
        this.f30276r = -1L;
        this.f30277s = null;
        this.f30278t = 0;
        this.f30279u = "";
        this.f30280v = "";
        this.f30281w = null;
        this.f30282x = null;
        this.f30283y = null;
        this.f30284z = null;
        this.A = "";
        this.B = "";
        this.C = -1L;
        this.D = -1L;
        this.E = -1L;
        this.F = -1L;
        this.G = -1L;
        this.H = -1L;
        this.I = "";
        this.X = "";
        this.J = "";
        this.K = "";
        this.L = "";
        this.M = -1L;
        this.N = false;
        this.O = null;
        this.P = null;
        this.Q = -1;
        this.R = -1;
        this.S = null;
        this.T = null;
        this.U = null;
        this.V = null;
        this.W = null;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(CrashDetailBean crashDetailBean) {
        int i9;
        CrashDetailBean crashDetailBean2 = crashDetailBean;
        if (crashDetailBean2 == null || this.f30276r - crashDetailBean2.f30276r > 0) {
            return 1;
        }
        return i9 < 0 ? -1 : 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.f30260b);
        parcel.writeString(this.f30261c);
        parcel.writeByte(this.f30262d ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f30263e);
        parcel.writeString(this.f30264f);
        parcel.writeString(this.f30265g);
        parcel.writeByte(this.f30268j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f30269k ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f30270l);
        parcel.writeString(this.f30271m);
        parcel.writeString(this.f30272n);
        parcel.writeString(this.f30273o);
        parcel.writeString(this.f30274p);
        parcel.writeString(this.f30275q);
        parcel.writeLong(this.f30276r);
        parcel.writeString(this.f30277s);
        parcel.writeInt(this.f30278t);
        parcel.writeString(this.f30279u);
        parcel.writeString(this.f30280v);
        parcel.writeString(this.f30281w);
        z.b(parcel, this.f30284z);
        parcel.writeString(this.A);
        parcel.writeString(this.B);
        parcel.writeLong(this.C);
        parcel.writeLong(this.D);
        parcel.writeLong(this.E);
        parcel.writeLong(this.F);
        parcel.writeLong(this.G);
        parcel.writeLong(this.H);
        parcel.writeString(this.I);
        parcel.writeString(this.X);
        parcel.writeString(this.J);
        parcel.writeString(this.K);
        parcel.writeString(this.L);
        parcel.writeLong(this.M);
        parcel.writeByte(this.N ? (byte) 1 : (byte) 0);
        z.b(parcel, this.O);
        z.a(parcel, this.f30266h);
        z.a(parcel, this.f30267i);
        parcel.writeInt(this.Q);
        parcel.writeInt(this.R);
        z.b(parcel, this.S);
        z.b(parcel, this.T);
        parcel.writeByteArray(this.U);
        parcel.writeByteArray(this.f30283y);
        parcel.writeString(this.V);
        parcel.writeString(this.W);
        parcel.writeString(this.f30282x);
    }

    public CrashDetailBean(Parcel parcel) {
        this.f30259a = -1L;
        this.f30260b = 0;
        this.f30261c = UUID.randomUUID().toString();
        this.f30262d = false;
        this.f30263e = "";
        this.f30264f = "";
        this.f30265g = "";
        this.f30266h = null;
        this.f30267i = null;
        this.f30268j = false;
        this.f30269k = false;
        this.f30270l = 0;
        this.f30271m = "";
        this.f30272n = "";
        this.f30273o = "";
        this.f30274p = "";
        this.f30275q = "";
        this.f30276r = -1L;
        this.f30277s = null;
        this.f30278t = 0;
        this.f30279u = "";
        this.f30280v = "";
        this.f30281w = null;
        this.f30282x = null;
        this.f30283y = null;
        this.f30284z = null;
        this.A = "";
        this.B = "";
        this.C = -1L;
        this.D = -1L;
        this.E = -1L;
        this.F = -1L;
        this.G = -1L;
        this.H = -1L;
        this.I = "";
        this.X = "";
        this.J = "";
        this.K = "";
        this.L = "";
        this.M = -1L;
        this.N = false;
        this.O = null;
        this.P = null;
        this.Q = -1;
        this.R = -1;
        this.S = null;
        this.T = null;
        this.U = null;
        this.V = null;
        this.W = null;
        this.f30260b = parcel.readInt();
        this.f30261c = parcel.readString();
        this.f30262d = parcel.readByte() == 1;
        this.f30263e = parcel.readString();
        this.f30264f = parcel.readString();
        this.f30265g = parcel.readString();
        this.f30268j = parcel.readByte() == 1;
        this.f30269k = parcel.readByte() == 1;
        this.f30270l = parcel.readInt();
        this.f30271m = parcel.readString();
        this.f30272n = parcel.readString();
        this.f30273o = parcel.readString();
        this.f30274p = parcel.readString();
        this.f30275q = parcel.readString();
        this.f30276r = parcel.readLong();
        this.f30277s = parcel.readString();
        this.f30278t = parcel.readInt();
        this.f30279u = parcel.readString();
        this.f30280v = parcel.readString();
        this.f30281w = parcel.readString();
        this.f30284z = z.b(parcel);
        this.A = parcel.readString();
        this.B = parcel.readString();
        this.C = parcel.readLong();
        this.D = parcel.readLong();
        this.E = parcel.readLong();
        this.F = parcel.readLong();
        this.G = parcel.readLong();
        this.H = parcel.readLong();
        this.I = parcel.readString();
        this.X = parcel.readString();
        this.J = parcel.readString();
        this.K = parcel.readString();
        this.L = parcel.readString();
        this.M = parcel.readLong();
        this.N = parcel.readByte() == 1;
        this.O = z.b(parcel);
        this.f30266h = z.a(parcel);
        this.f30267i = z.a(parcel);
        this.Q = parcel.readInt();
        this.R = parcel.readInt();
        this.S = z.b(parcel);
        this.T = z.b(parcel);
        this.U = parcel.createByteArray();
        this.f30283y = parcel.createByteArray();
        this.V = parcel.readString();
        this.W = parcel.readString();
        this.f30282x = parcel.readString();
    }
}
