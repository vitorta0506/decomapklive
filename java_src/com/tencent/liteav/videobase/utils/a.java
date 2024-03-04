package com.tencent.liteav.videobase.utils;

import androidx.annotation.NonNull;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private long f31881a;

    /* renamed from: b  reason: collision with root package name */
    private long f31882b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC0329a f31883c;

    /* renamed from: d  reason: collision with root package name */
    private long f31884d;

    /* renamed from: e  reason: collision with root package name */
    private long f31885e = (int) Math.max(1000L, TimeUnit.SECONDS.toMillis(1));

    /* renamed from: f  reason: collision with root package name */
    private String f31886f;

    /* renamed from: com.tencent.liteav.videobase.utils.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0329a {
    }

    public a(String str, @NonNull InterfaceC0329a interfaceC0329a) {
        this.f31886f = str;
        a();
        this.f31883c = interfaceC0329a;
    }

    public final void a() {
        this.f31881a = 0L;
        this.f31882b = 0L;
        this.f31884d = 0L;
    }
}
