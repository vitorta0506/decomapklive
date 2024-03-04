package com.meizu.cloud.pushsdk.c.g;

import java.io.IOException;
import java.io.InterruptedIOException;
/* loaded from: classes4.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    public static final n f28506a = new n() { // from class: com.meizu.cloud.pushsdk.c.g.n.1
        @Override // com.meizu.cloud.pushsdk.c.g.n
        public void a() {
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private boolean f28507b;

    /* renamed from: c  reason: collision with root package name */
    private long f28508c;

    public void a() throws IOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException("thread interrupted");
        }
        if (this.f28507b && this.f28508c - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }
}
