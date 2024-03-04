package io.grpc.netty.shaded.io.netty.util.internal;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.util.List;
/* loaded from: classes5.dex */
public final class e0 {
    public static void a(Throwable th2, Throwable th3) {
        if (d()) {
            th2.addSuppressed(th3);
        }
    }

    public static void b(Throwable th2, List<Throwable> list) {
        for (Throwable th3 : list) {
            a(th2, th3);
        }
    }

    public static void c(Throwable th2, List<Throwable> list) {
        b(th2, list);
        list.clear();
    }

    public static boolean d() {
        return t.l0() >= 7;
    }

    public static String e(Throwable th2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        th2.printStackTrace(printStream);
        printStream.flush();
        try {
            return new String(byteArrayOutputStream.toByteArray());
        } finally {
            try {
                byteArrayOutputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public static <T extends Throwable> T f(T t10, Class<?> cls, String str) {
        t10.setStackTrace(new StackTraceElement[]{new StackTraceElement(cls.getName(), str, null, -1)});
        return t10;
    }
}
