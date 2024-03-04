package com.google.api.client.util;

import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
public final class t implements d0 {

    /* renamed from: a  reason: collision with root package name */
    private final d0 f11174a;

    /* renamed from: b  reason: collision with root package name */
    private final int f11175b;

    /* renamed from: c  reason: collision with root package name */
    private final Level f11176c;

    /* renamed from: d  reason: collision with root package name */
    private final Logger f11177d;

    public t(d0 d0Var, Logger logger, Level level, int i9) {
        this.f11174a = d0Var;
        this.f11177d = logger;
        this.f11176c = level;
        this.f11175b = i9;
    }

    @Override // com.google.api.client.util.d0
    public void writeTo(OutputStream outputStream) throws IOException {
        s sVar = new s(outputStream, this.f11177d, this.f11176c, this.f11175b);
        try {
            this.f11174a.writeTo(sVar);
            sVar.a().close();
            outputStream.flush();
        } catch (Throwable th2) {
            sVar.a().close();
            throw th2;
        }
    }
}
