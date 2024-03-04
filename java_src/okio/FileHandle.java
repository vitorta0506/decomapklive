package okio;

import com.facebook.share.internal.ShareConstants;
import java.io.Closeable;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0002()B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\fJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014J\b\u0010\u0015\u001a\u00020\u000eH$J\b\u0010\u0016\u001a\u00020\u000eH$J(\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\bH$J\u0010\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u0011H$J\b\u0010\u001f\u001a\u00020\u0011H$J(\u0010 \u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\bH$J&\u0010!\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\bJ\u001e\u0010!\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\u0011J \u0010#\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\u0011H\u0002J\u0016\u0010$\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010$\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010%\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u0011J\u0010\u0010\u0012\u001a\u00020\f2\b\b\u0002\u0010\u0018\u001a\u00020\u0011J\u0006\u0010\u001e\u001a\u00020\u0011J\u0010\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0018\u001a\u00020\u0011J&\u0010&\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\bJ\u001e\u0010&\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\u0011J \u0010'\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\u0011H\u0002R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006*"}, d2 = {"Lokio/FileHandle;", "Ljava/io/Closeable;", "Lokio/Closeable;", "readWrite", "", "(Z)V", "closed", "openStreamCount", "", "getReadWrite", "()Z", "appendingSink", "Lokio/Sink;", "close", "", "flush", "position", "", "sink", ShareConstants.FEED_SOURCE_PARAM, "Lokio/Source;", "protectedClose", "protectedFlush", "protectedRead", "fileOffset", "array", "", "arrayOffset", "byteCount", "protectedResize", "size", "protectedSize", "protectedWrite", "read", "Lokio/Buffer;", "readNoCloseCheck", "reposition", "resize", "write", "writeNoCloseCheck", "FileHandleSink", "FileHandleSource", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes7.dex */
public abstract class FileHandle implements Closeable {
    private boolean closed;
    private int openStreamCount;
    private final boolean readWrite;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0014H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u0018\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0005H\u0016R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u001c"}, d2 = {"Lokio/FileHandle$FileHandleSink;", "Lokio/Sink;", "fileHandle", "Lokio/FileHandle;", "position", "", "(Lokio/FileHandle;J)V", "closed", "", "getClosed", "()Z", "setClosed", "(Z)V", "getFileHandle", "()Lokio/FileHandle;", "getPosition", "()J", "setPosition", "(J)V", "close", "", "flush", "timeout", "Lokio/Timeout;", "write", ShareConstants.FEED_SOURCE_PARAM, "Lokio/Buffer;", "byteCount", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class FileHandleSink implements Sink {
        private boolean closed;
        @NotNull
        private final FileHandle fileHandle;
        private long position;

        public FileHandleSink(@NotNull FileHandle fileHandle, long j10) {
            Intrinsics.checkNotNullParameter(fileHandle, "fileHandle");
            this.fileHandle = fileHandle;
            this.position = j10;
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            synchronized (this.fileHandle) {
                FileHandle fileHandle = getFileHandle();
                fileHandle.openStreamCount--;
                if (getFileHandle().openStreamCount == 0 && getFileHandle().closed) {
                    Unit unit = Unit.INSTANCE;
                    this.fileHandle.protectedClose();
                }
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() {
            if (!this.closed) {
                this.fileHandle.protectedFlush();
                return;
            }
            throw new IllegalStateException("closed".toString());
        }

        public final boolean getClosed() {
            return this.closed;
        }

        @NotNull
        public final FileHandle getFileHandle() {
            return this.fileHandle;
        }

        public final long getPosition() {
            return this.position;
        }

        public final void setClosed(boolean z10) {
            this.closed = z10;
        }

        public final void setPosition(long j10) {
            this.position = j10;
        }

        @Override // okio.Sink
        @NotNull
        public Timeout timeout() {
            return Timeout.NONE;
        }

        @Override // okio.Sink
        public void write(@NotNull Buffer source, long j10) {
            Intrinsics.checkNotNullParameter(source, "source");
            if (!this.closed) {
                this.fileHandle.writeNoCloseCheck(this.position, source, j10);
                this.position += j10;
                return;
            }
            throw new IllegalStateException("closed".toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0005H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u001b"}, d2 = {"Lokio/FileHandle$FileHandleSource;", "Lokio/Source;", "fileHandle", "Lokio/FileHandle;", "position", "", "(Lokio/FileHandle;J)V", "closed", "", "getClosed", "()Z", "setClosed", "(Z)V", "getFileHandle", "()Lokio/FileHandle;", "getPosition", "()J", "setPosition", "(J)V", "close", "", "read", "sink", "Lokio/Buffer;", "byteCount", "timeout", "Lokio/Timeout;", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class FileHandleSource implements Source {
        private boolean closed;
        @NotNull
        private final FileHandle fileHandle;
        private long position;

        public FileHandleSource(@NotNull FileHandle fileHandle, long j10) {
            Intrinsics.checkNotNullParameter(fileHandle, "fileHandle");
            this.fileHandle = fileHandle;
            this.position = j10;
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            synchronized (this.fileHandle) {
                FileHandle fileHandle = getFileHandle();
                fileHandle.openStreamCount--;
                if (getFileHandle().openStreamCount == 0 && getFileHandle().closed) {
                    Unit unit = Unit.INSTANCE;
                    this.fileHandle.protectedClose();
                }
            }
        }

        public final boolean getClosed() {
            return this.closed;
        }

        @NotNull
        public final FileHandle getFileHandle() {
            return this.fileHandle;
        }

        public final long getPosition() {
            return this.position;
        }

        @Override // okio.Source
        public long read(@NotNull Buffer sink, long j10) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (!this.closed) {
                long readNoCloseCheck = this.fileHandle.readNoCloseCheck(this.position, sink, j10);
                if (readNoCloseCheck != -1) {
                    this.position += readNoCloseCheck;
                }
                return readNoCloseCheck;
            }
            throw new IllegalStateException("closed".toString());
        }

        public final void setClosed(boolean z10) {
            this.closed = z10;
        }

        public final void setPosition(long j10) {
            this.position = j10;
        }

        @Override // okio.Source
        @NotNull
        public Timeout timeout() {
            return Timeout.NONE;
        }
    }

    public FileHandle(boolean z10) {
        this.readWrite = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long readNoCloseCheck(long j10, Buffer buffer, long j11) {
        int i9;
        if (j11 >= 0) {
            long j12 = j10 + j11;
            long j13 = j10;
            while (true) {
                if (j13 >= j12) {
                    break;
                }
                Segment writableSegment$okio = buffer.writableSegment$okio(1);
                int protectedRead = protectedRead(j13, writableSegment$okio.data, writableSegment$okio.limit, (int) Math.min(j12 - j13, 8192 - i9));
                if (protectedRead == -1) {
                    if (writableSegment$okio.pos == writableSegment$okio.limit) {
                        buffer.head = writableSegment$okio.pop();
                        SegmentPool.recycle(writableSegment$okio);
                    }
                    if (j10 == j13) {
                        return -1L;
                    }
                } else {
                    writableSegment$okio.limit += protectedRead;
                    long j14 = protectedRead;
                    j13 += j14;
                    buffer.setSize$okio(buffer.size() + j14);
                }
            }
            return j13 - j10;
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j11)).toString());
    }

    public static /* synthetic */ Sink sink$default(FileHandle fileHandle, long j10, int i9, Object obj) throws IOException {
        if (obj == null) {
            if ((i9 & 1) != 0) {
                j10 = 0;
            }
            return fileHandle.sink(j10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sink");
    }

    public static /* synthetic */ Source source$default(FileHandle fileHandle, long j10, int i9, Object obj) throws IOException {
        if (obj == null) {
            if ((i9 & 1) != 0) {
                j10 = 0;
            }
            return fileHandle.source(j10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: source");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void writeNoCloseCheck(long j10, Buffer buffer, long j11) {
        _UtilKt.checkOffsetAndCount(buffer.size(), 0L, j11);
        long j12 = j11 + j10;
        while (j10 < j12) {
            Segment segment = buffer.head;
            Intrinsics.checkNotNull(segment);
            int min = (int) Math.min(j12 - j10, segment.limit - segment.pos);
            protectedWrite(j10, segment.data, segment.pos, min);
            segment.pos += min;
            long j13 = min;
            j10 += j13;
            buffer.setSize$okio(buffer.size() - j13);
            if (segment.pos == segment.limit) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }

    @NotNull
    public final Sink appendingSink() throws IOException {
        return sink(size());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            if (this.closed) {
                return;
            }
            this.closed = true;
            if (this.openStreamCount != 0) {
                return;
            }
            Unit unit = Unit.INSTANCE;
            protectedClose();
        }
    }

    public final void flush() throws IOException {
        if (this.readWrite) {
            synchronized (this) {
                if (!this.closed) {
                    Unit unit = Unit.INSTANCE;
                } else {
                    throw new IllegalStateException("closed".toString());
                }
            }
            protectedFlush();
            return;
        }
        throw new IllegalStateException("file handle is read-only".toString());
    }

    public final boolean getReadWrite() {
        return this.readWrite;
    }

    public final long position(@NotNull Source source) throws IOException {
        long j10;
        Intrinsics.checkNotNullParameter(source, "source");
        if (source instanceof RealBufferedSource) {
            RealBufferedSource realBufferedSource = (RealBufferedSource) source;
            j10 = realBufferedSource.bufferField.size();
            source = realBufferedSource.source;
        } else {
            j10 = 0;
        }
        if ((source instanceof FileHandleSource) && ((FileHandleSource) source).getFileHandle() == this) {
            FileHandleSource fileHandleSource = (FileHandleSource) source;
            if (!fileHandleSource.getClosed()) {
                return fileHandleSource.getPosition() - j10;
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException("source was not created by this FileHandle".toString());
    }

    protected abstract void protectedClose() throws IOException;

    protected abstract void protectedFlush() throws IOException;

    protected abstract int protectedRead(long j10, @NotNull byte[] bArr, int i9, int i10) throws IOException;

    protected abstract void protectedResize(long j10) throws IOException;

    protected abstract long protectedSize() throws IOException;

    protected abstract void protectedWrite(long j10, @NotNull byte[] bArr, int i9, int i10) throws IOException;

    public final int read(long j10, @NotNull byte[] array, int i9, int i10) throws IOException {
        Intrinsics.checkNotNullParameter(array, "array");
        synchronized (this) {
            if (!this.closed) {
                Unit unit = Unit.INSTANCE;
            } else {
                throw new IllegalStateException("closed".toString());
            }
        }
        return protectedRead(j10, array, i9, i10);
    }

    public final void reposition(@NotNull Source source, long j10) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        boolean z10 = false;
        if (source instanceof RealBufferedSource) {
            RealBufferedSource realBufferedSource = (RealBufferedSource) source;
            Source source2 = realBufferedSource.source;
            if ((source2 instanceof FileHandleSource) && ((FileHandleSource) source2).getFileHandle() == this) {
                FileHandleSource fileHandleSource = (FileHandleSource) source2;
                if (!fileHandleSource.getClosed()) {
                    long size = realBufferedSource.bufferField.size();
                    long position = j10 - (fileHandleSource.getPosition() - size);
                    if (0 <= position && position < size) {
                        z10 = true;
                    }
                    if (z10) {
                        realBufferedSource.skip(position);
                        return;
                    }
                    realBufferedSource.bufferField.clear();
                    fileHandleSource.setPosition(j10);
                    return;
                }
                throw new IllegalStateException("closed".toString());
            }
            throw new IllegalArgumentException("source was not created by this FileHandle".toString());
        }
        if ((source instanceof FileHandleSource) && ((FileHandleSource) source).getFileHandle() == this) {
            z10 = true;
        }
        if (z10) {
            FileHandleSource fileHandleSource2 = (FileHandleSource) source;
            if (!fileHandleSource2.getClosed()) {
                fileHandleSource2.setPosition(j10);
                return;
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException("source was not created by this FileHandle".toString());
    }

    public final void resize(long j10) throws IOException {
        if (this.readWrite) {
            synchronized (this) {
                if (!this.closed) {
                    Unit unit = Unit.INSTANCE;
                } else {
                    throw new IllegalStateException("closed".toString());
                }
            }
            protectedResize(j10);
            return;
        }
        throw new IllegalStateException("file handle is read-only".toString());
    }

    @NotNull
    public final Sink sink(long j10) throws IOException {
        if (this.readWrite) {
            synchronized (this) {
                if (!this.closed) {
                    this.openStreamCount++;
                } else {
                    throw new IllegalStateException("closed".toString());
                }
            }
            return new FileHandleSink(this, j10);
        }
        throw new IllegalStateException("file handle is read-only".toString());
    }

    public final long size() throws IOException {
        synchronized (this) {
            if (!this.closed) {
                Unit unit = Unit.INSTANCE;
            } else {
                throw new IllegalStateException("closed".toString());
            }
        }
        return protectedSize();
    }

    @NotNull
    public final Source source(long j10) throws IOException {
        synchronized (this) {
            if (!this.closed) {
                this.openStreamCount++;
            } else {
                throw new IllegalStateException("closed".toString());
            }
        }
        return new FileHandleSource(this, j10);
    }

    public final void write(long j10, @NotNull byte[] array, int i9, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        if (this.readWrite) {
            synchronized (this) {
                if (!this.closed) {
                    Unit unit = Unit.INSTANCE;
                } else {
                    throw new IllegalStateException("closed".toString());
                }
            }
            protectedWrite(j10, array, i9, i10);
            return;
        }
        throw new IllegalStateException("file handle is read-only".toString());
    }

    public final long read(long j10, @NotNull Buffer sink, long j11) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        synchronized (this) {
            if (!this.closed) {
                Unit unit = Unit.INSTANCE;
            } else {
                throw new IllegalStateException("closed".toString());
            }
        }
        return readNoCloseCheck(j10, sink, j11);
    }

    public final void write(long j10, @NotNull Buffer source, long j11) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        if (this.readWrite) {
            synchronized (this) {
                if (!this.closed) {
                    Unit unit = Unit.INSTANCE;
                } else {
                    throw new IllegalStateException("closed".toString());
                }
            }
            writeNoCloseCheck(j10, source, j11);
            return;
        }
        throw new IllegalStateException("file handle is read-only".toString());
    }

    public final long position(@NotNull Sink sink) throws IOException {
        long j10;
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (sink instanceof RealBufferedSink) {
            RealBufferedSink realBufferedSink = (RealBufferedSink) sink;
            j10 = realBufferedSink.bufferField.size();
            sink = realBufferedSink.sink;
        } else {
            j10 = 0;
        }
        if ((sink instanceof FileHandleSink) && ((FileHandleSink) sink).getFileHandle() == this) {
            FileHandleSink fileHandleSink = (FileHandleSink) sink;
            if (!fileHandleSink.getClosed()) {
                return fileHandleSink.getPosition() + j10;
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException("sink was not created by this FileHandle".toString());
    }

    public final void reposition(@NotNull Sink sink, long j10) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        boolean z10 = false;
        if (sink instanceof RealBufferedSink) {
            RealBufferedSink realBufferedSink = (RealBufferedSink) sink;
            Sink sink2 = realBufferedSink.sink;
            if ((sink2 instanceof FileHandleSink) && ((FileHandleSink) sink2).getFileHandle() == this) {
                z10 = true;
            }
            if (z10) {
                FileHandleSink fileHandleSink = (FileHandleSink) sink2;
                if (!fileHandleSink.getClosed()) {
                    realBufferedSink.emit();
                    fileHandleSink.setPosition(j10);
                    return;
                }
                throw new IllegalStateException("closed".toString());
            }
            throw new IllegalArgumentException("sink was not created by this FileHandle".toString());
        }
        if ((sink instanceof FileHandleSink) && ((FileHandleSink) sink).getFileHandle() == this) {
            z10 = true;
        }
        if (z10) {
            FileHandleSink fileHandleSink2 = (FileHandleSink) sink;
            if (!fileHandleSink2.getClosed()) {
                fileHandleSink2.setPosition(j10);
                return;
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException("sink was not created by this FileHandle".toString());
    }
}
