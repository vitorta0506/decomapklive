package xg;

import io.grpc.okhttp.internal.framed.ErrorCode;
import java.util.EnumMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okio.Buffer;
import okio.ByteString;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final Logger f59861a;

    /* renamed from: b  reason: collision with root package name */
    private final Level f59862b;

    /* loaded from: classes5.dex */
    enum a {
        INBOUND,
        OUTBOUND
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public enum b {
        HEADER_TABLE_SIZE(1),
        ENABLE_PUSH(2),
        MAX_CONCURRENT_STREAMS(4),
        MAX_FRAME_SIZE(5),
        MAX_HEADER_LIST_SIZE(6),
        INITIAL_WINDOW_SIZE(7);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f59873a;

        b(int i9) {
            this.f59873a = i9;
        }

        public int a() {
            return this.f59873a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Level level, Class<?> cls) {
        this(level, Logger.getLogger(cls.getName()));
    }

    private boolean a() {
        return this.f59861a.isLoggable(this.f59862b);
    }

    private static String l(Buffer buffer) {
        if (buffer.size() <= 64) {
            return buffer.snapshot().hex();
        }
        int min = (int) Math.min(buffer.size(), 64L);
        return buffer.snapshot(min).hex() + "...";
    }

    private static String m(yg.g gVar) {
        b[] values;
        EnumMap enumMap = new EnumMap(b.class);
        for (b bVar : b.values()) {
            if (gVar.d(bVar.a())) {
                enumMap.put((EnumMap) bVar, (b) Integer.valueOf(gVar.a(bVar.a())));
            }
        }
        return enumMap.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(a aVar, int i9, Buffer buffer, int i10, boolean z10) {
        if (a()) {
            Logger logger = this.f59861a;
            Level level = this.f59862b;
            logger.log(level, aVar + " DATA: streamId=" + i9 + " endStream=" + z10 + " length=" + i10 + " bytes=" + l(buffer));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(a aVar, int i9, ErrorCode errorCode, ByteString byteString) {
        if (a()) {
            Logger logger = this.f59861a;
            Level level = this.f59862b;
            logger.log(level, aVar + " GO_AWAY: lastStreamId=" + i9 + " errorCode=" + errorCode + " length=" + byteString.size() + " bytes=" + l(new Buffer().write(byteString)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(a aVar, int i9, List<yg.c> list, boolean z10) {
        if (a()) {
            Logger logger = this.f59861a;
            Level level = this.f59862b;
            logger.log(level, aVar + " HEADERS: streamId=" + i9 + " headers=" + list + " endStream=" + z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(a aVar, long j10) {
        if (a()) {
            Logger logger = this.f59861a;
            Level level = this.f59862b;
            logger.log(level, aVar + " PING: ack=false bytes=" + j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(a aVar, long j10) {
        if (a()) {
            Logger logger = this.f59861a;
            Level level = this.f59862b;
            logger.log(level, aVar + " PING: ack=true bytes=" + j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(a aVar, int i9, int i10, List<yg.c> list) {
        if (a()) {
            Logger logger = this.f59861a;
            Level level = this.f59862b;
            logger.log(level, aVar + " PUSH_PROMISE: streamId=" + i9 + " promisedStreamId=" + i10 + " headers=" + list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(a aVar, int i9, ErrorCode errorCode) {
        if (a()) {
            Logger logger = this.f59861a;
            Level level = this.f59862b;
            logger.log(level, aVar + " RST_STREAM: streamId=" + i9 + " errorCode=" + errorCode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(a aVar, yg.g gVar) {
        if (a()) {
            Logger logger = this.f59861a;
            Level level = this.f59862b;
            logger.log(level, aVar + " SETTINGS: ack=false settings=" + m(gVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(a aVar) {
        if (a()) {
            Logger logger = this.f59861a;
            Level level = this.f59862b;
            logger.log(level, aVar + " SETTINGS: ack=true");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(a aVar, int i9, long j10) {
        if (a()) {
            Logger logger = this.f59861a;
            Level level = this.f59862b;
            logger.log(level, aVar + " WINDOW_UPDATE: streamId=" + i9 + " windowSizeIncrement=" + j10);
        }
    }

    h(Level level, Logger logger) {
        this.f59862b = (Level) com.google.common.base.o.t(level, "level");
        this.f59861a = (Logger) com.google.common.base.o.t(logger, "logger");
    }
}
