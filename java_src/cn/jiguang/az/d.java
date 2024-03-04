package cn.jiguang.az;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    int f2297a = 0;

    /* renamed from: b  reason: collision with root package name */
    public long f2298b;

    /* renamed from: c  reason: collision with root package name */
    public String f2299c;

    /* renamed from: d  reason: collision with root package name */
    int f2300d;

    /* renamed from: e  reason: collision with root package name */
    int f2301e;

    /* renamed from: f  reason: collision with root package name */
    long f2302f;

    /* renamed from: g  reason: collision with root package name */
    byte[] f2303g;

    /* renamed from: h  reason: collision with root package name */
    long f2304h;

    /* renamed from: i  reason: collision with root package name */
    long f2305i;

    /* renamed from: j  reason: collision with root package name */
    boolean f2306j;

    public d(long j10, String str, int i9, int i10, long j11, long j12, byte[] bArr) {
        this.f2298b = j10;
        this.f2299c = str;
        this.f2300d = i9;
        this.f2301e = i10;
        this.f2302f = j11;
        this.f2305i = j12;
        this.f2303g = bArr;
        if (j12 > 0) {
            this.f2306j = true;
        }
    }

    public void a() {
        this.f2297a++;
    }

    public String toString() {
        return "InnerRequest{times=" + this.f2297a + ", requestId=" + this.f2298b + ", sdkType='" + this.f2299c + "', command=" + this.f2300d + ", ver=" + this.f2301e + ", rid=" + this.f2302f + ", reqeustTime=" + this.f2304h + ", timeout=" + this.f2305i + '}';
    }
}
