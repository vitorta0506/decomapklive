package io.grpc.netty.shaded.io.netty.util.internal.logging;

import java.util.logging.Logger;
/* loaded from: classes5.dex */
public class e extends c {

    /* renamed from: b  reason: collision with root package name */
    public static final c f45098b = new e();

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.c
    public b e(String str) {
        return new d(Logger.getLogger(str));
    }
}
