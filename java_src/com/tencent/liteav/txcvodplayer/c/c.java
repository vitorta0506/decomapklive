package com.tencent.liteav.txcvodplayer.c;
/* loaded from: classes4.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f31586a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31587b;

    /* renamed from: c  reason: collision with root package name */
    private final String f31588c;

    /* renamed from: d  reason: collision with root package name */
    private final String f31589d;

    /* renamed from: e  reason: collision with root package name */
    private final String f31590e;

    private c(a aVar, int i9, String str, String str2, String str3) {
        this.f31586a = aVar;
        this.f31587b = i9;
        this.f31588c = str;
        this.f31589d = str2;
        this.f31590e = str3;
    }

    public static Runnable a(a aVar, int i9, String str, String str2, String str3) {
        return new c(aVar, i9, str, str2, str3);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.a(this.f31586a, this.f31587b, this.f31588c, this.f31589d, this.f31590e);
    }
}
