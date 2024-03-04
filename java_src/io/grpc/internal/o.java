package io.grpc.internal;

import io.grpc.ChannelLogger;
import io.grpc.InternalChannelz$ChannelTrace$Event;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class o {

    /* renamed from: f  reason: collision with root package name */
    static final Logger f42919f = Logger.getLogger(ChannelLogger.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final Object f42920a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final io.grpc.g0 f42921b;

    /* renamed from: c  reason: collision with root package name */
    private final Collection<InternalChannelz$ChannelTrace$Event> f42922c;

    /* renamed from: d  reason: collision with root package name */
    private final long f42923d;

    /* renamed from: e  reason: collision with root package name */
    private int f42924e;

    /* loaded from: classes5.dex */
    class a extends ArrayDeque<InternalChannelz$ChannelTrace$Event> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f42925a;

        a(int i9) {
            this.f42925a = i9;
        }

        @Override // java.util.ArrayDeque, java.util.AbstractCollection, java.util.Collection, java.util.Deque, java.util.Queue
        /* renamed from: d */
        public boolean add(InternalChannelz$ChannelTrace$Event internalChannelz$ChannelTrace$Event) {
            if (size() == this.f42925a) {
                removeFirst();
            }
            o.a(o.this);
            return super.add(internalChannelz$ChannelTrace$Event);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f42927a;

        static {
            int[] iArr = new int[InternalChannelz$ChannelTrace$Event.Severity.values().length];
            f42927a = iArr;
            try {
                iArr[InternalChannelz$ChannelTrace$Event.Severity.CT_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f42927a[InternalChannelz$ChannelTrace$Event.Severity.CT_WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(io.grpc.g0 g0Var, int i9, long j10, String str) {
        com.google.common.base.o.t(str, "description");
        this.f42921b = (io.grpc.g0) com.google.common.base.o.t(g0Var, "logId");
        if (i9 > 0) {
            this.f42922c = new a(i9);
        } else {
            this.f42922c = null;
        }
        this.f42923d = j10;
        InternalChannelz$ChannelTrace$Event.a aVar = new InternalChannelz$ChannelTrace$Event.a();
        e(aVar.c(str + " created").d(InternalChannelz$ChannelTrace$Event.Severity.CT_INFO).f(j10).a());
    }

    static /* synthetic */ int a(o oVar) {
        int i9 = oVar.f42924e;
        oVar.f42924e = i9 + 1;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(io.grpc.g0 g0Var, Level level, String str) {
        Logger logger = f42919f;
        if (logger.isLoggable(level)) {
            LogRecord logRecord = new LogRecord(level, "[" + g0Var + "] " + str);
            logRecord.setLoggerName(logger.getName());
            logRecord.setSourceClassName(logger.getName());
            logRecord.setSourceMethodName("log");
            logger.log(logRecord);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public io.grpc.g0 b() {
        return this.f42921b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        boolean z10;
        synchronized (this.f42920a) {
            z10 = this.f42922c != null;
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(InternalChannelz$ChannelTrace$Event internalChannelz$ChannelTrace$Event) {
        Level level;
        int i9 = b.f42927a[internalChannelz$ChannelTrace$Event.f41668b.ordinal()];
        if (i9 == 1) {
            level = Level.FINE;
        } else if (i9 != 2) {
            level = Level.FINEST;
        } else {
            level = Level.FINER;
        }
        f(internalChannelz$ChannelTrace$Event);
        d(this.f42921b, level, internalChannelz$ChannelTrace$Event.f41667a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(InternalChannelz$ChannelTrace$Event internalChannelz$ChannelTrace$Event) {
        synchronized (this.f42920a) {
            Collection<InternalChannelz$ChannelTrace$Event> collection = this.f42922c;
            if (collection != null) {
                collection.add(internalChannelz$ChannelTrace$Event);
            }
        }
    }
}
