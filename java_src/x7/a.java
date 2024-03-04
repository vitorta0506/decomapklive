package x7;

import java.text.SimpleDateFormat;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    static SimpleDateFormat f59634e = new SimpleDateFormat("HH:mm:ss");

    /* renamed from: a  reason: collision with root package name */
    private String f59635a;

    /* renamed from: b  reason: collision with root package name */
    private String f59636b;

    /* renamed from: c  reason: collision with root package name */
    private long f59637c;

    /* renamed from: d  reason: collision with root package name */
    private String f59638d;

    public a(String str, String str2) {
        this.f59635a = str;
        this.f59636b = str2;
        long currentTimeMillis = System.currentTimeMillis();
        this.f59637c = currentTimeMillis;
        this.f59638d = f59634e.format(Long.valueOf(currentTimeMillis));
    }

    public String a() {
        return this.f59636b;
    }

    public String b() {
        return this.f59635a;
    }

    public String c() {
        return this.f59638d;
    }
}
