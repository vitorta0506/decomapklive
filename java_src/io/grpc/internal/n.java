package io.grpc.internal;

import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import io.grpc.ChannelLogger;
import io.grpc.InternalChannelz$ChannelTrace$Event;
import java.text.MessageFormat;
import java.util.logging.Level;
/* loaded from: classes5.dex */
final class n extends ChannelLogger {

    /* renamed from: a  reason: collision with root package name */
    private final o f42902a;

    /* renamed from: b  reason: collision with root package name */
    private final m2 f42903b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f42904a;

        static {
            int[] iArr = new int[ChannelLogger.ChannelLogLevel.values().length];
            f42904a = iArr;
            try {
                iArr[ChannelLogger.ChannelLogLevel.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f42904a[ChannelLogger.ChannelLogLevel.WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f42904a[ChannelLogger.ChannelLogLevel.INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(o oVar, m2 m2Var) {
        this.f42902a = (o) com.google.common.base.o.t(oVar, "tracer");
        this.f42903b = (m2) com.google.common.base.o.t(m2Var, CrashHianalyticsData.TIME);
    }

    private boolean c(ChannelLogger.ChannelLogLevel channelLogLevel) {
        return channelLogLevel != ChannelLogger.ChannelLogLevel.DEBUG && this.f42902a.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(io.grpc.g0 g0Var, ChannelLogger.ChannelLogLevel channelLogLevel, String str) {
        Level f10 = f(channelLogLevel);
        if (o.f42919f.isLoggable(f10)) {
            o.d(g0Var, f10, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(io.grpc.g0 g0Var, ChannelLogger.ChannelLogLevel channelLogLevel, String str, Object... objArr) {
        Level f10 = f(channelLogLevel);
        if (o.f42919f.isLoggable(f10)) {
            o.d(g0Var, f10, MessageFormat.format(str, objArr));
        }
    }

    private static Level f(ChannelLogger.ChannelLogLevel channelLogLevel) {
        int i9 = a.f42904a[channelLogLevel.ordinal()];
        if (i9 == 1 || i9 == 2) {
            return Level.FINE;
        }
        if (i9 != 3) {
            return Level.FINEST;
        }
        return Level.FINER;
    }

    private static InternalChannelz$ChannelTrace$Event.Severity g(ChannelLogger.ChannelLogLevel channelLogLevel) {
        int i9 = a.f42904a[channelLogLevel.ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                return InternalChannelz$ChannelTrace$Event.Severity.CT_INFO;
            }
            return InternalChannelz$ChannelTrace$Event.Severity.CT_WARNING;
        }
        return InternalChannelz$ChannelTrace$Event.Severity.CT_ERROR;
    }

    private void h(ChannelLogger.ChannelLogLevel channelLogLevel, String str) {
        if (channelLogLevel == ChannelLogger.ChannelLogLevel.DEBUG) {
            return;
        }
        this.f42902a.f(new InternalChannelz$ChannelTrace$Event.a().c(str).d(g(channelLogLevel)).f(this.f42903b.a()).a());
    }

    @Override // io.grpc.ChannelLogger
    public void a(ChannelLogger.ChannelLogLevel channelLogLevel, String str) {
        d(this.f42902a.b(), channelLogLevel, str);
        if (c(channelLogLevel)) {
            h(channelLogLevel, str);
        }
    }

    @Override // io.grpc.ChannelLogger
    public void b(ChannelLogger.ChannelLogLevel channelLogLevel, String str, Object... objArr) {
        a(channelLogLevel, (c(channelLogLevel) || o.f42919f.isLoggable(f(channelLogLevel))) ? MessageFormat.format(str, objArr) : null);
    }
}
