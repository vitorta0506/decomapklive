package com.tencent.qgame.animplayer.file;

import android.media.MediaDataSource;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0016J(\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\fH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/tencent/qgame/animplayer/file/StreamMediaDataSource;", "Landroid/media/MediaDataSource;", "bytes", "", "([B)V", "getBytes", "()[B", "close", "", "getSize", "", "readAt", "", "position", "buffer", TypedValues.CycleType.S_WAVE_OFFSET, "size", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class StreamMediaDataSource extends MediaDataSource {
    @NotNull
    private final byte[] bytes;

    public StreamMediaDataSource(@NotNull byte[] bArr) {
        this.bytes = bArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @NotNull
    public final byte[] getBytes() {
        return this.bytes;
    }

    @Override // android.media.MediaDataSource
    public long getSize() {
        long length;
        synchronized (Reflection.getOrCreateKotlinClass(StreamMediaDataSource.class)) {
            length = this.bytes.length;
        }
        return length;
    }

    @Override // android.media.MediaDataSource
    public int readAt(long j10, @NotNull byte[] bArr, int i9, int i10) {
        synchronized (Reflection.getOrCreateKotlinClass(StreamMediaDataSource.class)) {
            byte[] bArr2 = this.bytes;
            int length = bArr2.length;
            long j11 = length;
            if (j10 >= j11) {
                return -1;
            }
            long j12 = i10 + j10;
            if (j12 > j11) {
                i10 -= ((int) j12) - length;
            }
            System.arraycopy(bArr2, (int) j10, bArr, i9, i10);
            return i10;
        }
    }
}
