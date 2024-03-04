package io.opencensus.trace;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes7.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f51307a = Logger.getLogger(i.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final g f51308b = c(g.class.getClassLoader());

    private i() {
    }

    public static io.opencensus.trace.export.b a() {
        return f51308b.a();
    }

    public static h b() {
        return f51308b.b();
    }

    static g c(ClassLoader classLoader) {
        try {
            return (g) lh.a.a(Class.forName("io.opentelemetry.opencensusshim.OpenTelemetryTraceComponentImpl", true, classLoader), g.class);
        } catch (ClassNotFoundException e10) {
            f51307a.log(Level.FINE, "Couldn't load full implementation for OpenTelemetry TraceComponent, now trying to load original implementation.", (Throwable) e10);
            try {
                return (g) lh.a.a(Class.forName("io.opencensus.impl.trace.TraceComponentImpl", true, classLoader), g.class);
            } catch (ClassNotFoundException e11) {
                f51307a.log(Level.FINE, "Couldn't load full implementation for TraceComponent, now trying to load lite implementation.", (Throwable) e11);
                try {
                    return (g) lh.a.a(Class.forName("io.opencensus.impllite.trace.TraceComponentImplLite", true, classLoader), g.class);
                } catch (ClassNotFoundException e12) {
                    f51307a.log(Level.FINE, "Couldn't load lite implementation for TraceComponent, now using default implementation for TraceComponent.", (Throwable) e12);
                    return g.c();
                }
            }
        }
    }
}
