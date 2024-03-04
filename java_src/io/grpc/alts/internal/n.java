package io.grpc.alts.internal;

import java.util.LinkedList;
import java.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private final Object f41941a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final Queue<io.grpc.netty.shaded.io.netty.channel.y> f41942b = new LinkedList();

    /* renamed from: c  reason: collision with root package name */
    private int f41943c;

    public n(int i9) {
        this.f41943c = i9;
    }

    public io.grpc.netty.shaded.io.netty.channel.i a(io.grpc.netty.shaded.io.netty.channel.m mVar) {
        synchronized (this.f41941a) {
            int i9 = this.f41943c;
            if (i9 > 0) {
                this.f41943c = i9 - 1;
                return mVar.m();
            }
            io.grpc.netty.shaded.io.netty.channel.y F = mVar.F();
            this.f41942b.add(F);
            return F;
        }
    }

    public void b() {
        synchronized (this.f41941a) {
            io.grpc.netty.shaded.io.netty.channel.y poll = this.f41942b.poll();
            if (poll == null) {
                this.f41943c++;
            } else {
                poll.m();
            }
        }
    }
}
