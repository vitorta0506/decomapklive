package com.google.api.client.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public class n {
    public static long a(d0 d0Var) throws IOException {
        f fVar = new f();
        try {
            d0Var.writeTo(fVar);
            fVar.close();
            return fVar.f11108a;
        } catch (Throwable th2) {
            fVar.close();
            throw th2;
        }
    }

    @Deprecated
    public static void b(InputStream inputStream, OutputStream outputStream) throws IOException {
        c(inputStream, outputStream, true);
    }

    @Deprecated
    public static void c(InputStream inputStream, OutputStream outputStream, boolean z10) throws IOException {
        try {
            g.a(inputStream, outputStream);
        } finally {
            if (z10) {
                inputStream.close();
            }
        }
    }
}
