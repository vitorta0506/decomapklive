package com.tencent.ugc;

import com.tencent.ugc.TXVideoJoiner;
/* loaded from: classes4.dex */
final /* synthetic */ class ck implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoJoiner.AnonymousClass3 f34820a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34821b;

    /* renamed from: c  reason: collision with root package name */
    private final String f34822c;

    private ck(TXVideoJoiner.AnonymousClass3 anonymousClass3, int i9, String str) {
        this.f34820a = anonymousClass3;
        this.f34821b = i9;
        this.f34822c = str;
    }

    public static Runnable a(TXVideoJoiner.AnonymousClass3 anonymousClass3, int i9, String str) {
        return new ck(anonymousClass3, i9, str);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoJoiner.AnonymousClass3.a(this.f34820a, this.f34821b, this.f34822c);
    }
}
