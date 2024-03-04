package com.tencent.qgame.animplayer.file;

import android.media.MediaExtractor;
import java.io.ByteArrayInputStream;
import kotlin.Metadata;
import kotlinx.coroutines.DebugKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0016J \u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/tencent/qgame/animplayer/file/StreamContainer;", "Lcom/tencent/qgame/animplayer/file/IFileContainer;", "bytes", "", "([B)V", "stream", "Ljava/io/ByteArrayInputStream;", "close", "", "closeRandomRead", "read", "", "b", DebugKt.DEBUG_PROPERTY_VALUE_OFF, "len", "setDataSource", "extractor", "Landroid/media/MediaExtractor;", "skip", "pos", "", "startRandomRead", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class StreamContainer implements IFileContainer {
    private final byte[] bytes;
    private ByteArrayInputStream stream;

    public StreamContainer(@NotNull byte[] bArr) {
        this.bytes = bArr;
        this.stream = new ByteArrayInputStream(bArr);
    }

    @Override // com.tencent.qgame.animplayer.file.IFileContainer
    public void close() {
        this.stream.close();
    }

    @Override // com.tencent.qgame.animplayer.file.IFileContainer
    public void closeRandomRead() {
    }

    @Override // com.tencent.qgame.animplayer.file.IFileContainer
    public int read(@NotNull byte[] bArr, int i9, int i10) {
        return this.stream.read(bArr, i9, i10);
    }

    @Override // com.tencent.qgame.animplayer.file.IFileContainer
    public void setDataSource(@NotNull MediaExtractor mediaExtractor) {
        mediaExtractor.setDataSource(new StreamMediaDataSource(this.bytes));
    }

    @Override // com.tencent.qgame.animplayer.file.IFileContainer
    public void skip(long j10) {
        this.stream.skip(j10);
    }

    @Override // com.tencent.qgame.animplayer.file.IFileContainer
    public void startRandomRead() {
    }
}
