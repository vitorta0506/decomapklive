package com.previewlibrary;

import java.util.Objects;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private volatile bd.a f28901a;

    /* loaded from: classes4.dex */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        static a f28902a = new a();
    }

    public static a a() {
        return b.f28902a;
    }

    public bd.a b() {
        Objects.requireNonNull(this.f28901a, "ZoomMediaLoader loader  no init");
        return this.f28901a;
    }

    public void c(bd.a aVar) {
        this.f28901a = aVar;
    }

    private a() {
    }
}
