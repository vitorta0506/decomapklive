package eh;

import java.text.MessageFormat;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class q2 {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f39125b = Logger.getLogger(q2.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final String f39126a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f39127a;

        static {
            int[] iArr = new int[b.values().length];
            f39127a = iArr;
            try {
                iArr[b.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39127a[b.WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f39127a[b.INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes5.dex */
    enum b {
        DEBUG,
        INFO,
        WARNING,
        ERROR
    }

    private q2(String str) {
        this.f39126a = (String) com.google.common.base.o.t(str, "prefix");
    }

    private static void d(String str, Level level, String str2) {
        Logger logger = f39125b;
        if (logger.isLoggable(level)) {
            LogRecord logRecord = new LogRecord(level, "[" + str + "] " + str2);
            logRecord.setLoggerName(logger.getName());
            logRecord.setSourceClassName(logger.getName());
            logRecord.setSourceMethodName("log");
            logger.log(logRecord);
        }
    }

    private static Level e(b bVar) {
        int i9 = a.f39127a[bVar.ordinal()];
        if (i9 == 1 || i9 == 2) {
            return Level.FINE;
        }
        if (i9 != 3) {
            return Level.FINEST;
        }
        return Level.FINER;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static q2 f(io.grpc.g0 g0Var) {
        com.google.common.base.o.t(g0Var, "logId");
        return new q2(g0Var.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(b bVar) {
        return f39125b.isLoggable(e(bVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(b bVar, String str) {
        d(this.f39126a, e(bVar), str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(b bVar, String str, Object... objArr) {
        Level e10 = e(bVar);
        if (f39125b.isLoggable(e10)) {
            d(this.f39126a, e10, MessageFormat.format(str, objArr));
        }
    }
}
