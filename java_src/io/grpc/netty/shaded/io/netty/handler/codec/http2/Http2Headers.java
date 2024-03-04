package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import java.util.Iterator;
import java.util.Map;
import okhttp3.internal.http2.Header;
/* loaded from: classes5.dex */
public interface Http2Headers extends pg.i<CharSequence, CharSequence, Http2Headers> {

    /* loaded from: classes5.dex */
    public enum PseudoHeaderName {
        METHOD(Header.TARGET_METHOD_UTF8, true),
        SCHEME(Header.TARGET_SCHEME_UTF8, true),
        AUTHORITY(Header.TARGET_AUTHORITY_UTF8, true),
        PATH(Header.TARGET_PATH_UTF8, true),
        STATUS(Header.RESPONSE_STATUS_UTF8, false),
        PROTOCOL(":protocol", true);
        
        private static final a<PseudoHeaderName> PSEUDO_HEADERS = new a<>();
        private static final char PSEUDO_HEADER_PREFIX = ':';
        private static final byte PSEUDO_HEADER_PREFIX_BYTE = 58;
        private final boolean requestOnly;
        private final io.grpc.netty.shaded.io.netty.util.c value;

        static {
            PseudoHeaderName[] values;
            for (PseudoHeaderName pseudoHeaderName : values()) {
                PSEUDO_HEADERS.Z0(pseudoHeaderName.value(), pseudoHeaderName);
            }
        }

        PseudoHeaderName(String str, boolean z10) {
            this.value = io.grpc.netty.shaded.io.netty.util.c.g(str);
            this.requestOnly = z10;
        }

        public static PseudoHeaderName getPseudoHeader(CharSequence charSequence) {
            return PSEUDO_HEADERS.get(charSequence);
        }

        public static boolean hasPseudoHeaderFormat(CharSequence charSequence) {
            if (!(charSequence instanceof io.grpc.netty.shaded.io.netty.util.c)) {
                return charSequence.length() > 0 && charSequence.charAt(0) == ':';
            }
            io.grpc.netty.shaded.io.netty.util.c cVar = (io.grpc.netty.shaded.io.netty.util.c) charSequence;
            return cVar.length() > 0 && cVar.d(0) == 58;
        }

        public static boolean isPseudoHeader(CharSequence charSequence) {
            return PSEUDO_HEADERS.contains(charSequence);
        }

        public boolean isRequestOnly() {
            return this.requestOnly;
        }

        public io.grpc.netty.shaded.io.netty.util.c value() {
            return this.value;
        }
    }

    @Override // pg.i, java.lang.Iterable
    Iterator<Map.Entry<CharSequence, CharSequence>> iterator();

    CharSequence t();
}
