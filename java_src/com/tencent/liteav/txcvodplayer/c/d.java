package com.tencent.liteav.txcvodplayer.c;
/* loaded from: classes4.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f31591a;

    /* renamed from: b  reason: collision with root package name */
    private final String f31592b;

    /* renamed from: c  reason: collision with root package name */
    private final long f31593c;

    private d(a aVar, String str, long j10) {
        this.f31591a = aVar;
        this.f31592b = str;
        this.f31593c = j10;
    }

    public static Runnable a(a aVar, String str, long j10) {
        return new d(aVar, str, j10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.a(this.f31591a, this.f31592b, this.f31593c);
    }
}
