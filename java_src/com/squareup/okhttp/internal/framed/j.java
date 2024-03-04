package com.squareup.okhttp.internal.framed;

import androidx.core.view.ViewCompat;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.framed.FrameReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.ProtocolException;
import java.util.List;
import java.util.zip.Deflater;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.DeflaterSink;
import okio.Okio;
import okio.Sink;
/* loaded from: classes4.dex */
public final class j implements Variant {

    /* renamed from: a  reason: collision with root package name */
    static final byte[] f29818a;

    /* loaded from: classes4.dex */
    static final class a implements FrameReader {

        /* renamed from: a  reason: collision with root package name */
        private final BufferedSource f29819a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f29820b;

        /* renamed from: c  reason: collision with root package name */
        private final g f29821c;

        a(BufferedSource bufferedSource, boolean z10) {
            this.f29819a = bufferedSource;
            this.f29821c = new g(bufferedSource);
            this.f29820b = z10;
        }

        private static IOException a(String str, Object... objArr) throws IOException {
            throw new IOException(String.format(str, objArr));
        }

        private void b(FrameReader.Handler handler, int i9, int i10) throws IOException {
            if (i10 != 8) {
                throw a("TYPE_GOAWAY length: %d != 8", Integer.valueOf(i10));
            }
            int readInt = this.f29819a.readInt() & Integer.MAX_VALUE;
            int readInt2 = this.f29819a.readInt();
            ErrorCode fromSpdyGoAway = ErrorCode.fromSpdyGoAway(readInt2);
            if (fromSpdyGoAway == null) {
                throw a("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(readInt2));
            }
            handler.goAway(readInt, fromSpdyGoAway, ByteString.EMPTY);
        }

        private void c(FrameReader.Handler handler, int i9, int i10) throws IOException {
            handler.headers(false, false, this.f29819a.readInt() & Integer.MAX_VALUE, -1, this.f29821c.f(i10 - 4), HeadersMode.SPDY_HEADERS);
        }

        private void d(FrameReader.Handler handler, int i9, int i10) throws IOException {
            if (i10 != 4) {
                throw a("TYPE_PING length: %d != 4", Integer.valueOf(i10));
            }
            int readInt = this.f29819a.readInt();
            handler.ping(this.f29820b == ((readInt & 1) == 1), readInt, 0);
        }

        private void e(FrameReader.Handler handler, int i9, int i10) throws IOException {
            if (i10 != 8) {
                throw a("TYPE_RST_STREAM length: %d != 8", Integer.valueOf(i10));
            }
            int readInt = this.f29819a.readInt() & Integer.MAX_VALUE;
            int readInt2 = this.f29819a.readInt();
            ErrorCode fromSpdy3Rst = ErrorCode.fromSpdy3Rst(readInt2);
            if (fromSpdy3Rst == null) {
                throw a("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(readInt2));
            }
            handler.rstStream(readInt, fromSpdy3Rst);
        }

        private void h(FrameReader.Handler handler, int i9, int i10) throws IOException {
            int readInt = this.f29819a.readInt();
            if (i10 != (readInt * 8) + 4) {
                throw a("TYPE_SETTINGS length: %d != 4 + 8 * %d", Integer.valueOf(i10), Integer.valueOf(readInt));
            }
            i iVar = new i();
            for (int i11 = 0; i11 < readInt; i11++) {
                int readInt2 = this.f29819a.readInt();
                iVar.l(readInt2 & ViewCompat.MEASURED_SIZE_MASK, ((-16777216) & readInt2) >>> 24, this.f29819a.readInt());
            }
            handler.settings((i9 & 1) != 0, iVar);
        }

        private void i(FrameReader.Handler handler, int i9, int i10) throws IOException {
            handler.headers(false, (i9 & 1) != 0, this.f29819a.readInt() & Integer.MAX_VALUE, -1, this.f29821c.f(i10 - 4), HeadersMode.SPDY_REPLY);
        }

        private void j(FrameReader.Handler handler, int i9, int i10) throws IOException {
            int readInt = this.f29819a.readInt() & Integer.MAX_VALUE;
            int readInt2 = this.f29819a.readInt() & Integer.MAX_VALUE;
            this.f29819a.readShort();
            List<c> f10 = this.f29821c.f(i10 - 10);
            handler.headers((i9 & 2) != 0, (i9 & 1) != 0, readInt, readInt2, f10, HeadersMode.SPDY_SYN_STREAM);
        }

        private void k(FrameReader.Handler handler, int i9, int i10) throws IOException {
            if (i10 != 8) {
                throw a("TYPE_WINDOW_UPDATE length: %d != 8", Integer.valueOf(i10));
            }
            int readInt = this.f29819a.readInt() & Integer.MAX_VALUE;
            long readInt2 = this.f29819a.readInt() & Integer.MAX_VALUE;
            if (readInt2 == 0) {
                throw a("windowSizeIncrement was 0", Long.valueOf(readInt2));
            }
            handler.windowUpdate(readInt, readInt2);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f29821c.c();
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader
        public boolean nextFrame(FrameReader.Handler handler) throws IOException {
            try {
                int readInt = this.f29819a.readInt();
                int readInt2 = this.f29819a.readInt();
                boolean z10 = (Integer.MIN_VALUE & readInt) != 0;
                int i9 = ((-16777216) & readInt2) >>> 24;
                int i10 = readInt2 & ViewCompat.MEASURED_SIZE_MASK;
                if (!z10) {
                    handler.data((i9 & 1) != 0, readInt & Integer.MAX_VALUE, this.f29819a, i10);
                    return true;
                }
                int i11 = (2147418112 & readInt) >>> 16;
                int i12 = readInt & 65535;
                if (i11 == 3) {
                    switch (i12) {
                        case 1:
                            j(handler, i9, i10);
                            return true;
                        case 2:
                            i(handler, i9, i10);
                            return true;
                        case 3:
                            e(handler, i9, i10);
                            return true;
                        case 4:
                            h(handler, i9, i10);
                            return true;
                        case 5:
                        default:
                            this.f29819a.skip(i10);
                            return true;
                        case 6:
                            d(handler, i9, i10);
                            return true;
                        case 7:
                            b(handler, i9, i10);
                            return true;
                        case 8:
                            c(handler, i9, i10);
                            return true;
                        case 9:
                            k(handler, i9, i10);
                            return true;
                    }
                }
                throw new ProtocolException("version != 3: " + i11);
            } catch (IOException unused) {
                return false;
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader
        public void readConnectionPreface() {
        }
    }

    /* loaded from: classes4.dex */
    static final class b implements FrameWriter {

        /* renamed from: a  reason: collision with root package name */
        private final BufferedSink f29822a;

        /* renamed from: b  reason: collision with root package name */
        private final Buffer f29823b;

        /* renamed from: c  reason: collision with root package name */
        private final BufferedSink f29824c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f29825d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f29826e;

        b(BufferedSink bufferedSink, boolean z10) {
            this.f29822a = bufferedSink;
            this.f29825d = z10;
            Deflater deflater = new Deflater();
            deflater.setDictionary(j.f29818a);
            Buffer buffer = new Buffer();
            this.f29823b = buffer;
            this.f29824c = Okio.buffer(new DeflaterSink((Sink) buffer, deflater));
        }

        private void b(List<c> list) throws IOException {
            this.f29824c.writeInt(list.size());
            int size = list.size();
            for (int i9 = 0; i9 < size; i9++) {
                ByteString byteString = list.get(i9).f29764a;
                this.f29824c.writeInt(byteString.size());
                this.f29824c.write(byteString);
                ByteString byteString2 = list.get(i9).f29765b;
                this.f29824c.writeInt(byteString2.size());
                this.f29824c.write(byteString2);
            }
            this.f29824c.flush();
        }

        void a(int i9, int i10, Buffer buffer, int i11) throws IOException {
            if (this.f29826e) {
                throw new IOException("closed");
            }
            long j10 = i11;
            if (j10 <= 16777215) {
                this.f29822a.writeInt(i9 & Integer.MAX_VALUE);
                this.f29822a.writeInt(((i10 & 255) << 24) | (16777215 & i11));
                if (i11 > 0) {
                    this.f29822a.write(buffer, j10);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("FRAME_TOO_LARGE max size is 16Mib: " + i11);
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public void ackSettings(i iVar) {
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            this.f29826e = true;
            com.squareup.okhttp.internal.i.b(this.f29822a, this.f29824c);
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void connectionPreface() {
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void data(boolean z10, int i9, Buffer buffer, int i10) throws IOException {
            a(i9, z10 ? 1 : 0, buffer, i10);
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void flush() throws IOException {
            if (!this.f29826e) {
                this.f29822a.flush();
            } else {
                throw new IOException("closed");
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void goAway(int i9, ErrorCode errorCode, byte[] bArr) throws IOException {
            if (!this.f29826e) {
                if (errorCode.spdyGoAwayCode != -1) {
                    this.f29822a.writeInt(-2147287033);
                    this.f29822a.writeInt(8);
                    this.f29822a.writeInt(i9);
                    this.f29822a.writeInt(errorCode.spdyGoAwayCode);
                    this.f29822a.flush();
                } else {
                    throw new IllegalArgumentException("errorCode.spdyGoAwayCode == -1");
                }
            } else {
                throw new IOException("closed");
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void headers(int i9, List<c> list) throws IOException {
            if (!this.f29826e) {
                b(list);
                int size = (int) (this.f29823b.size() + 4);
                this.f29822a.writeInt(-2147287032);
                this.f29822a.writeInt((size & ViewCompat.MEASURED_SIZE_MASK) | 0);
                this.f29822a.writeInt(i9 & Integer.MAX_VALUE);
                this.f29822a.writeAll(this.f29823b);
            } else {
                throw new IOException("closed");
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public int maxDataLength() {
            return 16383;
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void ping(boolean z10, int i9, int i10) throws IOException {
            if (this.f29826e) {
                throw new IOException("closed");
            }
            if (z10 == (this.f29825d != ((i9 & 1) == 1))) {
                this.f29822a.writeInt(-2147287034);
                this.f29822a.writeInt(4);
                this.f29822a.writeInt(i9);
                this.f29822a.flush();
            } else {
                throw new IllegalArgumentException("payload != reply");
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public void pushPromise(int i9, int i10, List<c> list) throws IOException {
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void rstStream(int i9, ErrorCode errorCode) throws IOException {
            if (!this.f29826e) {
                if (errorCode.spdyRstCode != -1) {
                    this.f29822a.writeInt(-2147287037);
                    this.f29822a.writeInt(8);
                    this.f29822a.writeInt(i9 & Integer.MAX_VALUE);
                    this.f29822a.writeInt(errorCode.spdyRstCode);
                    this.f29822a.flush();
                } else {
                    throw new IllegalArgumentException();
                }
            } else {
                throw new IOException("closed");
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void settings(i iVar) throws IOException {
            if (!this.f29826e) {
                int m10 = iVar.m();
                this.f29822a.writeInt(-2147287036);
                this.f29822a.writeInt((((m10 * 8) + 4) & ViewCompat.MEASURED_SIZE_MASK) | 0);
                this.f29822a.writeInt(m10);
                for (int i9 = 0; i9 <= 10; i9++) {
                    if (iVar.i(i9)) {
                        this.f29822a.writeInt(((iVar.b(i9) & 255) << 24) | (i9 & ViewCompat.MEASURED_SIZE_MASK));
                        this.f29822a.writeInt(iVar.c(i9));
                    }
                }
                this.f29822a.flush();
            } else {
                throw new IOException("closed");
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void synReply(boolean z10, int i9, List<c> list) throws IOException {
            if (!this.f29826e) {
                b(list);
                int i10 = z10 ? 1 : 0;
                int size = (int) (this.f29823b.size() + 4);
                this.f29822a.writeInt(-2147287038);
                this.f29822a.writeInt(((i10 & 255) << 24) | (size & ViewCompat.MEASURED_SIZE_MASK));
                this.f29822a.writeInt(i9 & Integer.MAX_VALUE);
                this.f29822a.writeAll(this.f29823b);
                this.f29822a.flush();
            } else {
                throw new IOException("closed");
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void synStream(boolean z10, boolean z11, int i9, int i10, List<c> list) throws IOException {
            if (!this.f29826e) {
                b(list);
                int size = (int) (this.f29823b.size() + 10);
                int i11 = (z10 ? 1 : 0) | (z11 ? 2 : 0);
                this.f29822a.writeInt(-2147287039);
                this.f29822a.writeInt(((i11 & 255) << 24) | (size & ViewCompat.MEASURED_SIZE_MASK));
                this.f29822a.writeInt(i9 & Integer.MAX_VALUE);
                this.f29822a.writeInt(Integer.MAX_VALUE & i10);
                this.f29822a.writeShort(0);
                this.f29822a.writeAll(this.f29823b);
                this.f29822a.flush();
            } else {
                throw new IOException("closed");
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void windowUpdate(int i9, long j10) throws IOException {
            if (this.f29826e) {
                throw new IOException("closed");
            }
            if (j10 != 0 && j10 <= 2147483647L) {
                this.f29822a.writeInt(-2147287031);
                this.f29822a.writeInt(8);
                this.f29822a.writeInt(i9);
                this.f29822a.writeInt((int) j10);
                this.f29822a.flush();
            } else {
                throw new IllegalArgumentException("windowSizeIncrement must be between 1 and 0x7fffffff: " + j10);
            }
        }
    }

    static {
        try {
            f29818a = "\u0000\u0000\u0000\u0007options\u0000\u0000\u0000\u0004head\u0000\u0000\u0000\u0004post\u0000\u0000\u0000\u0003put\u0000\u0000\u0000\u0006delete\u0000\u0000\u0000\u0005trace\u0000\u0000\u0000\u0006accept\u0000\u0000\u0000\u000eaccept-charset\u0000\u0000\u0000\u000faccept-encoding\u0000\u0000\u0000\u000faccept-language\u0000\u0000\u0000\raccept-ranges\u0000\u0000\u0000\u0003age\u0000\u0000\u0000\u0005allow\u0000\u0000\u0000\rauthorization\u0000\u0000\u0000\rcache-control\u0000\u0000\u0000\nconnection\u0000\u0000\u0000\fcontent-base\u0000\u0000\u0000\u0010content-encoding\u0000\u0000\u0000\u0010content-language\u0000\u0000\u0000\u000econtent-length\u0000\u0000\u0000\u0010content-location\u0000\u0000\u0000\u000bcontent-md5\u0000\u0000\u0000\rcontent-range\u0000\u0000\u0000\fcontent-type\u0000\u0000\u0000\u0004date\u0000\u0000\u0000\u0004etag\u0000\u0000\u0000\u0006expect\u0000\u0000\u0000\u0007expires\u0000\u0000\u0000\u0004from\u0000\u0000\u0000\u0004host\u0000\u0000\u0000\bif-match\u0000\u0000\u0000\u0011if-modified-since\u0000\u0000\u0000\rif-none-match\u0000\u0000\u0000\bif-range\u0000\u0000\u0000\u0013if-unmodified-since\u0000\u0000\u0000\rlast-modified\u0000\u0000\u0000\blocation\u0000\u0000\u0000\fmax-forwards\u0000\u0000\u0000\u0006pragma\u0000\u0000\u0000\u0012proxy-authenticate\u0000\u0000\u0000\u0013proxy-authorization\u0000\u0000\u0000\u0005range\u0000\u0000\u0000\u0007referer\u0000\u0000\u0000\u000bretry-after\u0000\u0000\u0000\u0006server\u0000\u0000\u0000\u0002te\u0000\u0000\u0000\u0007trailer\u0000\u0000\u0000\u0011transfer-encoding\u0000\u0000\u0000\u0007upgrade\u0000\u0000\u0000\nuser-agent\u0000\u0000\u0000\u0004vary\u0000\u0000\u0000\u0003via\u0000\u0000\u0000\u0007warning\u0000\u0000\u0000\u0010www-authenticate\u0000\u0000\u0000\u0006method\u0000\u0000\u0000\u0003get\u0000\u0000\u0000\u0006status\u0000\u0000\u0000\u0006200 OK\u0000\u0000\u0000\u0007version\u0000\u0000\u0000\bHTTP/1.1\u0000\u0000\u0000\u0003url\u0000\u0000\u0000\u0006public\u0000\u0000\u0000\nset-cookie\u0000\u0000\u0000\nkeep-alive\u0000\u0000\u0000\u0006origin100101201202205206300302303304305306307402405406407408409410411412413414415416417502504505203 Non-Authoritative Information204 No Content301 Moved Permanently400 Bad Request401 Unauthorized403 Forbidden404 Not Found500 Internal Server Error501 Not Implemented503 Service UnavailableJan Feb Mar Apr May Jun Jul Aug Sept Oct Nov Dec 00:00:00 Mon, Tue, Wed, Thu, Fri, Sat, Sun, GMTchunked,text/html,image/png,image/jpg,image/gif,application/xml,application/xhtml+xml,text/plain,text/javascript,publicprivatemax-age=gzip,deflate,sdchcharset=utf-8charset=iso-8859-1,utf-,*,enq=0.".getBytes(com.squareup.okhttp.internal.i.f29847c.name());
        } catch (UnsupportedEncodingException unused) {
            throw new AssertionError();
        }
    }

    @Override // com.squareup.okhttp.internal.framed.Variant
    public Protocol getProtocol() {
        return Protocol.SPDY_3;
    }

    @Override // com.squareup.okhttp.internal.framed.Variant
    public FrameReader newReader(BufferedSource bufferedSource, boolean z10) {
        return new a(bufferedSource, z10);
    }

    @Override // com.squareup.okhttp.internal.framed.Variant
    public FrameWriter newWriter(BufferedSink bufferedSink, boolean z10) {
        return new b(bufferedSink, z10);
    }
}
