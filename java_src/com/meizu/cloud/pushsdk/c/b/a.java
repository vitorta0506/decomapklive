package com.meizu.cloud.pushsdk.c.b;

import com.meizu.cloud.pushsdk.c.c.k;
/* loaded from: classes4.dex */
public class a extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private String f28364a;

    /* renamed from: b  reason: collision with root package name */
    private int f28365b;

    /* renamed from: c  reason: collision with root package name */
    private String f28366c;

    /* renamed from: d  reason: collision with root package name */
    private k f28367d;

    public a() {
        this.f28365b = 0;
    }

    public a(k kVar) {
        this.f28365b = 0;
        this.f28367d = kVar;
    }

    public a(Throwable th2) {
        super(th2);
        this.f28365b = 0;
    }

    public k a() {
        return this.f28367d;
    }

    public void a(int i9) {
        this.f28365b = i9;
    }

    public void a(String str) {
        this.f28366c = str;
    }

    public int b() {
        return this.f28365b;
    }

    public void b(String str) {
        this.f28364a = str;
    }

    public String c() {
        return this.f28364a;
    }
}
