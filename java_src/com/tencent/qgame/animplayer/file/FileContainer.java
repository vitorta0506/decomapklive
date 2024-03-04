package com.tencent.qgame.animplayer.file;

import android.media.MediaExtractor;
import com.facebook.share.internal.ShareInternalUtility;
import com.tencent.qgame.animplayer.util.ALog;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.RandomAccessFile;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.DebugKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0016J \u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/tencent/qgame/animplayer/file/FileContainer;", "Lcom/tencent/qgame/animplayer/file/IFileContainer;", ShareInternalUtility.STAGING_PARAM, "Ljava/io/File;", "(Ljava/io/File;)V", "randomAccessFile", "Ljava/io/RandomAccessFile;", "close", "", "closeRandomRead", "read", "", "b", "", DebugKt.DEBUG_PROPERTY_VALUE_OFF, "len", "setDataSource", "extractor", "Landroid/media/MediaExtractor;", "skip", "pos", "", "startRandomRead", "Companion", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class FileContainer implements IFileContainer {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "AnimPlayer.FileContainer";
    private final File file;
    private RandomAccessFile randomAccessFile;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/tencent/qgame/animplayer/file/FileContainer$Companion;", "", "()V", "TAG", "", "animplayer_release"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public FileContainer(@NotNull File file) {
        this.file = file;
        ALog.INSTANCE.i(TAG, "FileContainer init");
        if (file.exists() && file.isFile() && file.canRead()) {
            return;
        }
        throw new FileNotFoundException("Unable to read " + file);
    }

    @Override // com.tencent.qgame.animplayer.file.IFileContainer
    public void close() {
    }

    @Override // com.tencent.qgame.animplayer.file.IFileContainer
    public void closeRandomRead() {
        RandomAccessFile randomAccessFile = this.randomAccessFile;
        if (randomAccessFile != null) {
            randomAccessFile.close();
        }
    }

    @Override // com.tencent.qgame.animplayer.file.IFileContainer
    public int read(@NotNull byte[] bArr, int i9, int i10) {
        RandomAccessFile randomAccessFile = this.randomAccessFile;
        if (randomAccessFile != null) {
            return randomAccessFile.read(bArr, i9, i10);
        }
        return -1;
    }

    @Override // com.tencent.qgame.animplayer.file.IFileContainer
    public void setDataSource(@NotNull MediaExtractor mediaExtractor) {
        mediaExtractor.setDataSource(this.file.toString());
    }

    @Override // com.tencent.qgame.animplayer.file.IFileContainer
    public void skip(long j10) {
        RandomAccessFile randomAccessFile = this.randomAccessFile;
        if (randomAccessFile != null) {
            randomAccessFile.skipBytes((int) j10);
        }
    }

    @Override // com.tencent.qgame.animplayer.file.IFileContainer
    public void startRandomRead() {
        this.randomAccessFile = new RandomAccessFile(this.file, "r");
    }
}
