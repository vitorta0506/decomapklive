package com.tencent.liteav.base.a;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    protected static a f30874a;

    /* renamed from: b  reason: collision with root package name */
    private int f30875b = 60;

    /* renamed from: c  reason: collision with root package name */
    private int f30876c = 70;

    /* renamed from: d  reason: collision with root package name */
    private int f30877d = 80;

    /* renamed from: e  reason: collision with root package name */
    private int f30878e = 50;

    /* renamed from: f  reason: collision with root package name */
    private int f30879f = 10;

    public static a a() {
        if (f30874a == null) {
            synchronized (a.class) {
                if (f30874a == null) {
                    f30874a = new a();
                }
            }
        }
        return f30874a;
    }

    public final long a(String str, String str2) {
        int i9;
        if ("Video".equals(str)) {
            if ("SWToHWThreshold_CheckCount".equals(str2)) {
                i9 = this.f30879f;
            } else if ("SWToHWThreshold_CPU".equals(str2)) {
                i9 = this.f30875b;
            } else if ("SWToHWThreshold_CPU_MAX".equals(str2)) {
                i9 = this.f30877d;
            } else if ("SWToHWThreshold_FPS".equals(str2)) {
                i9 = this.f30876c;
            } else if (!"SWToHWThreshold_FPS_MIN".equals(str2)) {
                return 0L;
            } else {
                i9 = this.f30878e;
            }
            return i9;
        }
        return 0L;
    }
}
