package ph;

import io.opencensus.trace.Span;
import java.util.logging.Level;
import java.util.logging.Logger;
import mh.g;
import mh.h;
/* loaded from: classes7.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f56890a = Logger.getLogger(b.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final h f56891b = c(h.class.getClassLoader());

    private b() {
    }

    public static g a() {
        return f56891b.a();
    }

    public static Span b(g gVar) {
        return f56891b.c(gVar);
    }

    private static h c(ClassLoader classLoader) {
        try {
            return (h) lh.a.a(Class.forName("io.opentelemetry.opencensusshim.OpenTelemetryContextManager", true, classLoader), h.class);
        } catch (ClassNotFoundException e10) {
            f56890a.log(Level.FINE, "Couldn't load full implementation for OpenTelemetry context manager, now loading original implementation.", (Throwable) e10);
            return new c();
        }
    }

    public static g d(g gVar, Span span) {
        return f56891b.b(gVar, span);
    }
}
