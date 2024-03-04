package io.grpc.netty.shaded.io.netty.util.internal.logging;

import org.apache.logging.log4j.LogManager;
/* loaded from: classes5.dex */
public final class h extends c {

    /* renamed from: b  reason: collision with root package name */
    public static final c f45103b = new h();

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.c
    public b e(String str) {
        return new g(LogManager.getLogger(str));
    }
}
