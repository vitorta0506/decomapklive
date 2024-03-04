package com.squareup.okhttp.internal.framed;

import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.framed.FrameReader;
import com.squareup.okhttp.internal.framed.d;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.UByte;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Source;
import okio.Timeout;
/* loaded from: classes4.dex */
public final class e implements Variant {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f29778a = Logger.getLogger(b.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final ByteString f29779b = ByteString.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class a implements Source {

        /* renamed from: a  reason: collision with root package name */
        private final BufferedSource f29780a;

        /* renamed from: b  reason: collision with root package name */
        int f29781b;

        /* renamed from: c  reason: collision with root package name */
        byte f29782c;

        /* renamed from: d  reason: collision with root package name */
        int f29783d;

        /* renamed from: e  reason: collision with root package name */
        int f29784e;

        /* renamed from: f  reason: collision with root package name */
        short f29785f;

        public a(BufferedSource bufferedSource) {
            this.f29780a = bufferedSource;
        }

        private void a() throws IOException {
            int i9 = this.f29783d;
            int k10 = e.k(this.f29780a);
            this.f29784e = k10;
            this.f29781b = k10;
            byte readByte = (byte) (this.f29780a.readByte() & UByte.MAX_VALUE);
            this.f29782c = (byte) (this.f29780a.readByte() & UByte.MAX_VALUE);
            if (e.f29778a.isLoggable(Level.FINE)) {
                e.f29778a.fine(b.b(true, this.f29783d, this.f29781b, readByte, this.f29782c));
            }
            int readInt = this.f29780a.readInt() & Integer.MAX_VALUE;
            this.f29783d = readInt;
            if (readByte != 9) {
                throw e.i("%s != TYPE_CONTINUATION", Byte.valueOf(readByte));
            }
            if (readInt != i9) {
                throw e.i("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j10) throws IOException {
            while (true) {
                int i9 = this.f29784e;
                if (i9 == 0) {
                    this.f29780a.skip(this.f29785f);
                    this.f29785f = (short) 0;
                    if ((this.f29782c & 4) != 0) {
                        return -1L;
                    }
                    a();
                } else {
                    long read = this.f29780a.read(buffer, Math.min(j10, i9));
                    if (read == -1) {
                        return -1L;
                    }
                    this.f29784e = (int) (this.f29784e - read);
                    return read;
                }
            }
        }

        @Override // okio.Source
        public Timeout timeout() {
            return this.f29780a.timeout();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private static final String[] f29786a = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

        /* renamed from: b  reason: collision with root package name */
        private static final String[] f29787b = new String[64];

        /* renamed from: c  reason: collision with root package name */
        private static final String[] f29788c = new String[256];

        static {
            String[] strArr;
            int i9 = 0;
            int i10 = 0;
            while (true) {
                String[] strArr2 = f29788c;
                if (i10 >= strArr2.length) {
                    break;
                }
                strArr2[i10] = String.format("%8s", Integer.toBinaryString(i10)).replace(' ', '0');
                i10++;
            }
            String[] strArr3 = f29787b;
            strArr3[0] = "";
            strArr3[1] = "END_STREAM";
            int[] iArr = {1};
            strArr3[8] = "PADDED";
            for (int i11 = 0; i11 < 1; i11++) {
                int i12 = iArr[i11];
                f29787b[i12 | 8] = strArr[i12] + "|PADDED";
            }
            String[] strArr4 = f29787b;
            strArr4[4] = "END_HEADERS";
            strArr4[32] = "PRIORITY";
            strArr4[36] = "END_HEADERS|PRIORITY";
            int[] iArr2 = {4, 32, 36};
            for (int i13 = 0; i13 < 3; i13++) {
                int i14 = iArr2[i13];
                for (int i15 = 0; i15 < 1; i15++) {
                    int i16 = iArr[i15];
                    String[] strArr5 = f29787b;
                    int i17 = i16 | i14;
                    strArr5[i17] = strArr5[i16] + '|' + strArr5[i14];
                    strArr5[i17 | 8] = strArr5[i16] + '|' + strArr5[i14] + "|PADDED";
                }
            }
            while (true) {
                String[] strArr6 = f29787b;
                if (i9 >= strArr6.length) {
                    return;
                }
                if (strArr6[i9] == null) {
                    strArr6[i9] = f29788c[i9];
                }
                i9++;
            }
        }

        b() {
        }

        static String a(byte b10, byte b11) {
            if (b11 == 0) {
                return "";
            }
            if (b10 != 2 && b10 != 3) {
                if (b10 == 4 || b10 == 6) {
                    return b11 == 1 ? "ACK" : f29788c[b11];
                } else if (b10 != 7 && b10 != 8) {
                    String[] strArr = f29787b;
                    String str = b11 < strArr.length ? strArr[b11] : f29788c[b11];
                    if (b10 != 5 || (b11 & 4) == 0) {
                        return (b10 != 0 || (b11 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED");
                    }
                    return str.replace("HEADERS", "PUSH_PROMISE");
                }
            }
            return f29788c[b11];
        }

        static String b(boolean z10, int i9, int i10, byte b10, byte b11) {
            String[] strArr = f29786a;
            String format = b10 < strArr.length ? strArr[b10] : String.format("0x%02x", Byte.valueOf(b10));
            String a10 = a(b10, b11);
            Object[] objArr = new Object[5];
            objArr[0] = z10 ? "<<" : ">>";
            objArr[1] = Integer.valueOf(i9);
            objArr[2] = Integer.valueOf(i10);
            objArr[3] = format;
            objArr[4] = a10;
            return String.format("%s 0x%08x %5d %-13s %s", objArr);
        }
    }

    /* loaded from: classes4.dex */
    static final class c implements FrameReader {

        /* renamed from: a  reason: collision with root package name */
        private final BufferedSource f29789a;

        /* renamed from: b  reason: collision with root package name */
        private final a f29790b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f29791c;

        /* renamed from: d  reason: collision with root package name */
        final d.a f29792d;

        c(BufferedSource bufferedSource, int i9, boolean z10) {
            this.f29789a = bufferedSource;
            this.f29791c = z10;
            a aVar = new a(bufferedSource);
            this.f29790b = aVar;
            this.f29792d = new d.a(i9, aVar);
        }

        private void a(FrameReader.Handler handler, int i9, byte b10, int i10) throws IOException {
            boolean z10 = (b10 & 1) != 0;
            if (!((b10 & 32) != 0)) {
                short readByte = (b10 & 8) != 0 ? (short) (this.f29789a.readByte() & UByte.MAX_VALUE) : (short) 0;
                handler.data(z10, i10, this.f29789a, e.j(i9, b10, readByte));
                this.f29789a.skip(readByte);
                return;
            }
            throw e.i("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        }

        private void b(FrameReader.Handler handler, int i9, byte b10, int i10) throws IOException {
            if (i9 < 8) {
                throw e.i("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i9));
            }
            if (i10 == 0) {
                int readInt = this.f29789a.readInt();
                int readInt2 = this.f29789a.readInt();
                int i11 = i9 - 8;
                ErrorCode fromHttp2 = ErrorCode.fromHttp2(readInt2);
                if (fromHttp2 == null) {
                    throw e.i("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(readInt2));
                }
                ByteString byteString = ByteString.EMPTY;
                if (i11 > 0) {
                    byteString = this.f29789a.readByteString(i11);
                }
                handler.goAway(readInt, fromHttp2, byteString);
                return;
            }
            throw e.i("TYPE_GOAWAY streamId != 0", new Object[0]);
        }

        private List<com.squareup.okhttp.internal.framed.c> c(int i9, short s10, byte b10, int i10) throws IOException {
            a aVar = this.f29790b;
            aVar.f29784e = i9;
            aVar.f29781b = i9;
            aVar.f29785f = s10;
            aVar.f29782c = b10;
            aVar.f29783d = i10;
            this.f29792d.l();
            return this.f29792d.e();
        }

        private void d(FrameReader.Handler handler, int i9, byte b10, int i10) throws IOException {
            if (i10 != 0) {
                boolean z10 = (b10 & 1) != 0;
                short readByte = (b10 & 8) != 0 ? (short) (this.f29789a.readByte() & UByte.MAX_VALUE) : (short) 0;
                if ((b10 & 32) != 0) {
                    h(handler, i10);
                    i9 -= 5;
                }
                handler.headers(false, z10, i10, -1, c(e.j(i9, b10, readByte), readByte, b10, i10), HeadersMode.HTTP_20_HEADERS);
                return;
            }
            throw e.i("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
        }

        private void e(FrameReader.Handler handler, int i9, byte b10, int i10) throws IOException {
            if (i9 != 8) {
                throw e.i("TYPE_PING length != 8: %s", Integer.valueOf(i9));
            }
            if (i10 == 0) {
                handler.ping((b10 & 1) != 0, this.f29789a.readInt(), this.f29789a.readInt());
                return;
            }
            throw e.i("TYPE_PING streamId != 0", new Object[0]);
        }

        private void h(FrameReader.Handler handler, int i9) throws IOException {
            int readInt = this.f29789a.readInt();
            handler.priority(i9, readInt & Integer.MAX_VALUE, (this.f29789a.readByte() & UByte.MAX_VALUE) + 1, (Integer.MIN_VALUE & readInt) != 0);
        }

        private void i(FrameReader.Handler handler, int i9, byte b10, int i10) throws IOException {
            if (i9 != 5) {
                throw e.i("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i9));
            }
            if (i10 != 0) {
                h(handler, i10);
                return;
            }
            throw e.i("TYPE_PRIORITY streamId == 0", new Object[0]);
        }

        private void j(FrameReader.Handler handler, int i9, byte b10, int i10) throws IOException {
            if (i10 != 0) {
                short readByte = (b10 & 8) != 0 ? (short) (this.f29789a.readByte() & UByte.MAX_VALUE) : (short) 0;
                handler.pushPromise(i10, this.f29789a.readInt() & Integer.MAX_VALUE, c(e.j(i9 - 4, b10, readByte), readByte, b10, i10));
                return;
            }
            throw e.i("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        }

        private void k(FrameReader.Handler handler, int i9, byte b10, int i10) throws IOException {
            if (i9 != 4) {
                throw e.i("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i9));
            }
            if (i10 != 0) {
                int readInt = this.f29789a.readInt();
                ErrorCode fromHttp2 = ErrorCode.fromHttp2(readInt);
                if (fromHttp2 == null) {
                    throw e.i("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(readInt));
                }
                handler.rstStream(i10, fromHttp2);
                return;
            }
            throw e.i("TYPE_RST_STREAM streamId == 0", new Object[0]);
        }

        private void o(FrameReader.Handler handler, int i9, byte b10, int i10) throws IOException {
            if (i10 != 0) {
                throw e.i("TYPE_SETTINGS streamId != 0", new Object[0]);
            }
            if ((b10 & 1) != 0) {
                if (i9 == 0) {
                    handler.ackSettings();
                    return;
                }
                throw e.i("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
            } else if (i9 % 6 != 0) {
                throw e.i("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i9));
            } else {
                i iVar = new i();
                for (int i11 = 0; i11 < i9; i11 += 6) {
                    short readShort = this.f29789a.readShort();
                    int readInt = this.f29789a.readInt();
                    switch (readShort) {
                        case 1:
                        case 6:
                            break;
                        case 2:
                            if (readInt != 0 && readInt != 1) {
                                throw e.i("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                            }
                            break;
                        case 3:
                            readShort = 4;
                            break;
                        case 4:
                            readShort = 7;
                            if (readInt < 0) {
                                throw e.i("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                            }
                            break;
                        case 5:
                            if (readInt < 16384 || readInt > 16777215) {
                                throw e.i("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(readInt));
                            }
                            break;
                            break;
                        default:
                            throw e.i("PROTOCOL_ERROR invalid settings id: %s", Short.valueOf(readShort));
                    }
                    iVar.l(readShort, 0, readInt);
                }
                handler.settings(false, iVar);
                if (iVar.d() >= 0) {
                    this.f29792d.g(iVar.d());
                }
            }
        }

        private void p(FrameReader.Handler handler, int i9, byte b10, int i10) throws IOException {
            if (i9 != 4) {
                throw e.i("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i9));
            }
            long readInt = this.f29789a.readInt() & 2147483647L;
            if (readInt == 0) {
                throw e.i("windowSizeIncrement was 0", Long.valueOf(readInt));
            }
            handler.windowUpdate(i10, readInt);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f29789a.close();
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader
        public boolean nextFrame(FrameReader.Handler handler) throws IOException {
            try {
                this.f29789a.require(9L);
                int k10 = e.k(this.f29789a);
                if (k10 < 0 || k10 > 16384) {
                    throw e.i("FRAME_SIZE_ERROR: %s", Integer.valueOf(k10));
                }
                byte readByte = (byte) (this.f29789a.readByte() & UByte.MAX_VALUE);
                byte readByte2 = (byte) (this.f29789a.readByte() & UByte.MAX_VALUE);
                int readInt = this.f29789a.readInt() & Integer.MAX_VALUE;
                if (e.f29778a.isLoggable(Level.FINE)) {
                    e.f29778a.fine(b.b(true, readInt, k10, readByte, readByte2));
                }
                switch (readByte) {
                    case 0:
                        a(handler, k10, readByte2, readInt);
                        break;
                    case 1:
                        d(handler, k10, readByte2, readInt);
                        break;
                    case 2:
                        i(handler, k10, readByte2, readInt);
                        break;
                    case 3:
                        k(handler, k10, readByte2, readInt);
                        break;
                    case 4:
                        o(handler, k10, readByte2, readInt);
                        break;
                    case 5:
                        j(handler, k10, readByte2, readInt);
                        break;
                    case 6:
                        e(handler, k10, readByte2, readInt);
                        break;
                    case 7:
                        b(handler, k10, readByte2, readInt);
                        break;
                    case 8:
                        p(handler, k10, readByte2, readInt);
                        break;
                    default:
                        this.f29789a.skip(k10);
                        break;
                }
                return true;
            } catch (IOException unused) {
                return false;
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader
        public void readConnectionPreface() throws IOException {
            if (this.f29791c) {
                return;
            }
            ByteString readByteString = this.f29789a.readByteString(e.f29779b.size());
            if (e.f29778a.isLoggable(Level.FINE)) {
                e.f29778a.fine(String.format("<< CONNECTION %s", readByteString.hex()));
            }
            if (!e.f29779b.equals(readByteString)) {
                throw e.i("Expected a connection header but was %s", readByteString.utf8());
            }
        }
    }

    /* loaded from: classes4.dex */
    static final class d implements FrameWriter {

        /* renamed from: a  reason: collision with root package name */
        private final BufferedSink f29793a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f29794b;

        /* renamed from: c  reason: collision with root package name */
        private final Buffer f29795c;

        /* renamed from: d  reason: collision with root package name */
        private final d.b f29796d;

        /* renamed from: e  reason: collision with root package name */
        private int f29797e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f29798f;

        d(BufferedSink bufferedSink, boolean z10) {
            this.f29793a = bufferedSink;
            this.f29794b = z10;
            Buffer buffer = new Buffer();
            this.f29795c = buffer;
            this.f29796d = new d.b(buffer);
            this.f29797e = 16384;
        }

        private void d(int i9, long j10) throws IOException {
            while (j10 > 0) {
                int min = (int) Math.min(this.f29797e, j10);
                long j11 = min;
                j10 -= j11;
                b(i9, min, (byte) 9, j10 == 0 ? (byte) 4 : (byte) 0);
                this.f29793a.write(this.f29795c, j11);
            }
        }

        void a(int i9, byte b10, Buffer buffer, int i10) throws IOException {
            b(i9, i10, (byte) 0, b10);
            if (i10 > 0) {
                this.f29793a.write(buffer, i10);
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void ackSettings(i iVar) throws IOException {
            if (!this.f29798f) {
                this.f29797e = iVar.g(this.f29797e);
                b(0, 0, (byte) 4, (byte) 1);
                this.f29793a.flush();
            } else {
                throw new IOException("closed");
            }
        }

        void b(int i9, int i10, byte b10, byte b11) throws IOException {
            if (e.f29778a.isLoggable(Level.FINE)) {
                e.f29778a.fine(b.b(false, i9, i10, b10, b11));
            }
            int i11 = this.f29797e;
            if (i10 > i11) {
                throw e.h("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i11), Integer.valueOf(i10));
            }
            if ((Integer.MIN_VALUE & i9) != 0) {
                throw e.h("reserved bit set: %s", Integer.valueOf(i9));
            }
            e.l(this.f29793a, i10);
            this.f29793a.writeByte(b10 & UByte.MAX_VALUE);
            this.f29793a.writeByte(b11 & UByte.MAX_VALUE);
            this.f29793a.writeInt(i9 & Integer.MAX_VALUE);
        }

        void c(boolean z10, int i9, List<com.squareup.okhttp.internal.framed.c> list) throws IOException {
            if (!this.f29798f) {
                this.f29796d.b(list);
                long size = this.f29795c.size();
                int min = (int) Math.min(this.f29797e, size);
                long j10 = min;
                int i10 = (size > j10 ? 1 : (size == j10 ? 0 : -1));
                byte b10 = i10 == 0 ? (byte) 4 : (byte) 0;
                if (z10) {
                    b10 = (byte) (b10 | 1);
                }
                b(i9, min, (byte) 1, b10);
                this.f29793a.write(this.f29795c, j10);
                if (i10 > 0) {
                    d(i9, size - j10);
                    return;
                }
                return;
            }
            throw new IOException("closed");
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            this.f29798f = true;
            this.f29793a.close();
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void connectionPreface() throws IOException {
            if (!this.f29798f) {
                if (this.f29794b) {
                    if (e.f29778a.isLoggable(Level.FINE)) {
                        e.f29778a.fine(String.format(">> CONNECTION %s", e.f29779b.hex()));
                    }
                    this.f29793a.write(e.f29779b.toByteArray());
                    this.f29793a.flush();
                    return;
                }
                return;
            }
            throw new IOException("closed");
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void data(boolean z10, int i9, Buffer buffer, int i10) throws IOException {
            if (!this.f29798f) {
                a(i9, z10 ? (byte) 1 : (byte) 0, buffer, i10);
            } else {
                throw new IOException("closed");
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void flush() throws IOException {
            if (!this.f29798f) {
                this.f29793a.flush();
            } else {
                throw new IOException("closed");
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void goAway(int i9, ErrorCode errorCode, byte[] bArr) throws IOException {
            if (!this.f29798f) {
                if (errorCode.httpCode != -1) {
                    b(0, bArr.length + 8, (byte) 7, (byte) 0);
                    this.f29793a.writeInt(i9);
                    this.f29793a.writeInt(errorCode.httpCode);
                    if (bArr.length > 0) {
                        this.f29793a.write(bArr);
                    }
                    this.f29793a.flush();
                } else {
                    throw e.h("errorCode.httpCode == -1", new Object[0]);
                }
            } else {
                throw new IOException("closed");
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void headers(int i9, List<com.squareup.okhttp.internal.framed.c> list) throws IOException {
            if (!this.f29798f) {
                c(false, i9, list);
            } else {
                throw new IOException("closed");
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public int maxDataLength() {
            return this.f29797e;
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void ping(boolean z10, int i9, int i10) throws IOException {
            if (!this.f29798f) {
                b(0, 8, (byte) 6, z10 ? (byte) 1 : (byte) 0);
                this.f29793a.writeInt(i9);
                this.f29793a.writeInt(i10);
                this.f29793a.flush();
            } else {
                throw new IOException("closed");
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void pushPromise(int i9, int i10, List<com.squareup.okhttp.internal.framed.c> list) throws IOException {
            if (!this.f29798f) {
                this.f29796d.b(list);
                long size = this.f29795c.size();
                int min = (int) Math.min(this.f29797e - 4, size);
                long j10 = min;
                int i11 = (size > j10 ? 1 : (size == j10 ? 0 : -1));
                b(i9, min + 4, (byte) 5, i11 == 0 ? (byte) 4 : (byte) 0);
                this.f29793a.writeInt(i10 & Integer.MAX_VALUE);
                this.f29793a.write(this.f29795c, j10);
                if (i11 > 0) {
                    d(i9, size - j10);
                }
            } else {
                throw new IOException("closed");
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void rstStream(int i9, ErrorCode errorCode) throws IOException {
            if (!this.f29798f) {
                if (errorCode.httpCode != -1) {
                    b(i9, 4, (byte) 3, (byte) 0);
                    this.f29793a.writeInt(errorCode.httpCode);
                    this.f29793a.flush();
                } else {
                    throw new IllegalArgumentException();
                }
            } else {
                throw new IOException("closed");
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void settings(i iVar) throws IOException {
            if (!this.f29798f) {
                int i9 = 0;
                b(0, iVar.m() * 6, (byte) 4, (byte) 0);
                while (i9 < 10) {
                    if (iVar.i(i9)) {
                        this.f29793a.writeShort(i9 == 4 ? 3 : i9 == 7 ? 4 : i9);
                        this.f29793a.writeInt(iVar.c(i9));
                    }
                    i9++;
                }
                this.f29793a.flush();
            } else {
                throw new IOException("closed");
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void synReply(boolean z10, int i9, List<com.squareup.okhttp.internal.framed.c> list) throws IOException {
            if (!this.f29798f) {
                c(z10, i9, list);
            } else {
                throw new IOException("closed");
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void synStream(boolean z10, boolean z11, int i9, int i10, List<com.squareup.okhttp.internal.framed.c> list) throws IOException {
            try {
                if (!z11) {
                    if (!this.f29798f) {
                        c(z10, i9, list);
                    } else {
                        throw new IOException("closed");
                    }
                } else {
                    throw new UnsupportedOperationException();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void windowUpdate(int i9, long j10) throws IOException {
            if (this.f29798f) {
                throw new IOException("closed");
            }
            if (j10 == 0 || j10 > 2147483647L) {
                throw e.h("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j10));
            }
            b(i9, 4, (byte) 8, (byte) 0);
            this.f29793a.writeInt((int) j10);
            this.f29793a.flush();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static IllegalArgumentException h(String str, Object... objArr) {
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static IOException i(String str, Object... objArr) throws IOException {
        throw new IOException(String.format(str, objArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int j(int i9, byte b10, short s10) throws IOException {
        if ((b10 & 8) != 0) {
            i9--;
        }
        if (s10 <= i9) {
            return (short) (i9 - s10);
        }
        throw i("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s10), Integer.valueOf(i9));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int k(BufferedSource bufferedSource) throws IOException {
        return (bufferedSource.readByte() & UByte.MAX_VALUE) | ((bufferedSource.readByte() & UByte.MAX_VALUE) << 16) | ((bufferedSource.readByte() & UByte.MAX_VALUE) << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(BufferedSink bufferedSink, int i9) throws IOException {
        bufferedSink.writeByte((i9 >>> 16) & 255);
        bufferedSink.writeByte((i9 >>> 8) & 255);
        bufferedSink.writeByte(i9 & 255);
    }

    @Override // com.squareup.okhttp.internal.framed.Variant
    public Protocol getProtocol() {
        return Protocol.HTTP_2;
    }

    @Override // com.squareup.okhttp.internal.framed.Variant
    public FrameReader newReader(BufferedSource bufferedSource, boolean z10) {
        return new c(bufferedSource, 4096, z10);
    }

    @Override // com.squareup.okhttp.internal.framed.Variant
    public FrameWriter newWriter(BufferedSink bufferedSink, boolean z10) {
        return new d(bufferedSink, z10);
    }
}
