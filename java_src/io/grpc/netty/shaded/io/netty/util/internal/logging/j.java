package io.grpc.netty.shaded.io.netty.util.internal.logging;

import org.apache.log4j.Logger;
/* loaded from: classes5.dex */
public class j extends c {

    /* renamed from: b  reason: collision with root package name */
    public static final c f45107b = new j();

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.c
    public b e(String str) {
        return new i(Logger.getLogger(str));
    }
}
