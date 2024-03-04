package com.tencent.ugc;

import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f35039a;

    /* renamed from: b  reason: collision with root package name */
    private final String f35040b;

    private m(TXVideoEditer tXVideoEditer, String str) {
        this.f35039a = tXVideoEditer;
        this.f35040b = str;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, String str) {
        return new m(tXVideoEditer, str);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35039a.setMediaSourcePaths(Collections.singletonList(this.f35040b));
    }
}
