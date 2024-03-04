package com.tencent.ugc;

import com.tencent.ugc.TXRecordCommon;
/* loaded from: classes4.dex */
final /* synthetic */ class ej implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final int f34899a;

    /* renamed from: b  reason: collision with root package name */
    private final String f34900b;

    /* renamed from: c  reason: collision with root package name */
    private final String f34901c;

    /* renamed from: d  reason: collision with root package name */
    private final String f34902d;

    /* renamed from: e  reason: collision with root package name */
    private final TXRecordCommon.ITXVideoRecordListener f34903e;

    private ej(int i9, String str, String str2, String str3, TXRecordCommon.ITXVideoRecordListener iTXVideoRecordListener) {
        this.f34899a = i9;
        this.f34900b = str;
        this.f34901c = str2;
        this.f34902d = str3;
        this.f34903e = iTXVideoRecordListener;
    }

    public static Runnable a(int i9, String str, String str2, String str3, TXRecordCommon.ITXVideoRecordListener iTXVideoRecordListener) {
        return new ej(i9, str, str2, str3, iTXVideoRecordListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCRecorderJni.lambda$onRecordComplete$1(this.f34899a, this.f34900b, this.f34901c, this.f34902d, this.f34903e);
    }
}
