package com.google.android.exoplayer2.util;
/* loaded from: classes2.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final d f6963a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f6964b;

    public g() {
        this(d.f6951a);
    }

    public synchronized void a() throws InterruptedException {
        while (!this.f6964b) {
            wait();
        }
    }

    public synchronized void b() {
        boolean z10 = false;
        while (!this.f6964b) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z10 = true;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    public synchronized boolean c() {
        boolean z10;
        z10 = this.f6964b;
        this.f6964b = false;
        return z10;
    }

    public synchronized boolean d() {
        return this.f6964b;
    }

    public synchronized boolean e() {
        if (this.f6964b) {
            return false;
        }
        this.f6964b = true;
        notifyAll();
        return true;
    }

    public g(d dVar) {
        this.f6963a = dVar;
    }
}
