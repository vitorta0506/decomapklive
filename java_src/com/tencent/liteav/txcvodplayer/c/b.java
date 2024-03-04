package com.tencent.liteav.txcvodplayer.c;
/* loaded from: classes4.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f31580a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31581b;

    /* renamed from: c  reason: collision with root package name */
    private final String f31582c;

    /* renamed from: d  reason: collision with root package name */
    private final String f31583d;

    /* renamed from: e  reason: collision with root package name */
    private final String f31584e;

    /* renamed from: f  reason: collision with root package name */
    private final String f31585f;

    private b(a aVar, int i9, String str, String str2, String str3, String str4) {
        this.f31580a = aVar;
        this.f31581b = i9;
        this.f31582c = str;
        this.f31583d = str2;
        this.f31584e = str3;
        this.f31585f = str4;
    }

    public static Runnable a(a aVar, int i9, String str, String str2, String str3, String str4) {
        return new b(aVar, i9, str, str2, str3, str4);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.a(this.f31580a, this.f31581b, this.f31582c, this.f31583d, this.f31584e, this.f31585f);
    }
}
