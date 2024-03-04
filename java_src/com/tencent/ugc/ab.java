package com.tencent.ugc;

import com.tencent.ugc.TXVideoEditer;
import java.util.List;
/* loaded from: classes4.dex */
final /* synthetic */ class ab implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34687a;

    /* renamed from: b  reason: collision with root package name */
    private final List f34688b;

    /* renamed from: c  reason: collision with root package name */
    private final int f34689c;

    /* renamed from: d  reason: collision with root package name */
    private final int f34690d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f34691e;

    /* renamed from: f  reason: collision with root package name */
    private final TXVideoEditer.TXThumbnailListener f34692f;

    private ab(TXVideoEditer tXVideoEditer, List list, int i9, int i10, boolean z10, TXVideoEditer.TXThumbnailListener tXThumbnailListener) {
        this.f34687a = tXVideoEditer;
        this.f34688b = list;
        this.f34689c = i9;
        this.f34690d = i10;
        this.f34691e = z10;
        this.f34692f = tXThumbnailListener;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, List list, int i9, int i10, boolean z10, TXVideoEditer.TXThumbnailListener tXThumbnailListener) {
        return new ab(tXVideoEditer, list, i9, i10, z10, tXThumbnailListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34687a.doGetThumbnail(this.f34688b, this.f34689c, this.f34690d, this.f34691e, this.f34692f);
    }
}
