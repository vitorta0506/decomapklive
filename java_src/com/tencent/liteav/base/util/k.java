package com.tencent.liteav.base.util;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes4.dex */
final /* synthetic */ class k implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final String f31015a;

    private k(String str) {
        this.f31015a = str;
    }

    public static ThreadFactory a(String str) {
        return new k(str);
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.f31015a);
    }
}
