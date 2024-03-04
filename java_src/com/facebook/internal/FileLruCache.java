package com.facebook.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.FacebookSdk;
import com.facebook.LoggingBehavior;
import com.facebook.internal.FileLruCache;
import com.facebook.internal.Logger;
import com.facebook.share.internal.ShareInternalUtility;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.InvalidParameterException;
import java.util.Date;
import java.util.PriorityQueue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u000b\u0018\u0000 )2\u00020\u0001:\b'()*+,-.B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0016\u001a\u00020\u0017J\u001f\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u00032\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u0087\u0002J\u0016\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0019J\u001c\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001a\u001a\u00020\u00032\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u0007J\b\u0010 \u001a\u00020\u0017H\u0002J\u0018\u0010!\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u000bH\u0002J\u0006\u0010#\u001a\u00020$J\b\u0010%\u001a\u00020\u0003H\u0016J\b\u0010&\u001a\u00020\u0017H\u0002R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\b0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lcom/facebook/internal/FileLruCache;", "", "tag", "", "limits", "Lcom/facebook/internal/FileLruCache$Limits;", "(Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V", "condition", "Ljava/util/concurrent/locks/Condition;", "kotlin.jvm.PlatformType", "directory", "Ljava/io/File;", "isTrimInProgress", "", "isTrimPending", "lastClearCacheTime", "Ljava/util/concurrent/atomic/AtomicLong;", "location", "getLocation", "()Ljava/lang/String;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "clearCache", "", "get", "Ljava/io/InputStream;", FileLruCache.HEADER_CACHEKEY_KEY, "contentTag", "interceptAndPut", "input", "openPutStream", "Ljava/io/OutputStream;", "postTrim", "renameToTargetAndTrim", "buffer", "sizeInBytesForTest", "", "toString", "trim", "BufferFile", "CloseCallbackOutputStream", "Companion", "CopyingInputStream", "Limits", "ModifiedFile", "StreamCloseCallback", "StreamHeader", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class FileLruCache {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String HEADER_CACHEKEY_KEY = "key";
    @NotNull
    private static final String HEADER_CACHE_CONTENT_TAG_KEY = "tag";
    @NotNull
    private static final String TAG;
    @NotNull
    private static final AtomicLong bufferIndex;
    private final Condition condition;
    @NotNull
    private final File directory;
    private boolean isTrimInProgress;
    private boolean isTrimPending;
    @NotNull
    private final AtomicLong lastClearCacheTime;
    @NotNull
    private final Limits limits;
    @NotNull
    private final ReentrantLock lock;
    @NotNull
    private final String tag;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\u0006J\u0006\u0010\r\u001a\u00020\u0006J\u0010\u0010\u000e\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/facebook/internal/FileLruCache$BufferFile;", "", "()V", "FILE_NAME_PREFIX", "", "filterExcludeBufferFiles", "Ljava/io/FilenameFilter;", "filterExcludeNonBufferFiles", "deleteAll", "", "root", "Ljava/io/File;", "excludeBufferFiles", "excludeNonBufferFiles", "newFile", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class BufferFile {
        @NotNull
        private static final String FILE_NAME_PREFIX = "buffer";
        @NotNull
        public static final BufferFile INSTANCE = new BufferFile();
        @NotNull
        private static final FilenameFilter filterExcludeBufferFiles = new FilenameFilter() { // from class: com.facebook.internal.m
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean m139filterExcludeBufferFiles$lambda0;
                m139filterExcludeBufferFiles$lambda0 = FileLruCache.BufferFile.m139filterExcludeBufferFiles$lambda0(file, str);
                return m139filterExcludeBufferFiles$lambda0;
            }
        };
        @NotNull
        private static final FilenameFilter filterExcludeNonBufferFiles = new FilenameFilter() { // from class: com.facebook.internal.l
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean m140filterExcludeNonBufferFiles$lambda1;
                m140filterExcludeNonBufferFiles$lambda1 = FileLruCache.BufferFile.m140filterExcludeNonBufferFiles$lambda1(file, str);
                return m140filterExcludeNonBufferFiles$lambda1;
            }
        };

        private BufferFile() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: filterExcludeBufferFiles$lambda-0  reason: not valid java name */
        public static final boolean m139filterExcludeBufferFiles$lambda0(File file, String filename) {
            boolean startsWith$default;
            Intrinsics.checkNotNullExpressionValue(filename, "filename");
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(filename, FILE_NAME_PREFIX, false, 2, null);
            return !startsWith$default;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: filterExcludeNonBufferFiles$lambda-1  reason: not valid java name */
        public static final boolean m140filterExcludeNonBufferFiles$lambda1(File file, String filename) {
            boolean startsWith$default;
            Intrinsics.checkNotNullExpressionValue(filename, "filename");
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(filename, FILE_NAME_PREFIX, false, 2, null);
            return startsWith$default;
        }

        public final void deleteAll(@NotNull File root) {
            Intrinsics.checkNotNullParameter(root, "root");
            File[] listFiles = root.listFiles(excludeNonBufferFiles());
            if (listFiles != null) {
                int i9 = 0;
                int length = listFiles.length;
                while (i9 < length) {
                    File file = listFiles[i9];
                    i9++;
                    file.delete();
                }
            }
        }

        @NotNull
        public final FilenameFilter excludeBufferFiles() {
            return filterExcludeBufferFiles;
        }

        @NotNull
        public final FilenameFilter excludeNonBufferFiles() {
            return filterExcludeNonBufferFiles;
        }

        @NotNull
        public final File newFile(@Nullable File file) {
            return new File(file, Intrinsics.stringPlus(FILE_NAME_PREFIX, Long.valueOf(FileLruCache.bufferIndex.incrementAndGet())));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J \u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0011H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0014"}, d2 = {"Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;", "Ljava/io/OutputStream;", "innerStream", "callback", "Lcom/facebook/internal/FileLruCache$StreamCloseCallback;", "(Ljava/io/OutputStream;Lcom/facebook/internal/FileLruCache$StreamCloseCallback;)V", "getCallback", "()Lcom/facebook/internal/FileLruCache$StreamCloseCallback;", "getInnerStream", "()Ljava/io/OutputStream;", "close", "", "flush", "write", "buffer", "", TypedValues.CycleType.S_WAVE_OFFSET, "", AnimatedPasterJsonConfig.CONFIG_COUNT, "oneByte", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class CloseCallbackOutputStream extends OutputStream {
        @NotNull
        private final StreamCloseCallback callback;
        @NotNull
        private final OutputStream innerStream;

        public CloseCallbackOutputStream(@NotNull OutputStream innerStream, @NotNull StreamCloseCallback callback) {
            Intrinsics.checkNotNullParameter(innerStream, "innerStream");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.innerStream = innerStream;
            this.callback = callback;
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                this.innerStream.close();
            } finally {
                this.callback.onClose();
            }
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.innerStream.flush();
        }

        @NotNull
        public final StreamCloseCallback getCallback() {
            return this.callback;
        }

        @NotNull
        public final OutputStream getInnerStream() {
            return this.innerStream;
        }

        @Override // java.io.OutputStream
        public void write(@NotNull byte[] buffer, int i9, int i10) throws IOException {
            Intrinsics.checkNotNullParameter(buffer, "buffer");
            this.innerStream.write(buffer, i9, i10);
        }

        @Override // java.io.OutputStream
        public void write(@NotNull byte[] buffer) throws IOException {
            Intrinsics.checkNotNullParameter(buffer, "buffer");
            this.innerStream.write(buffer);
        }

        @Override // java.io.OutputStream
        public void write(int i9) throws IOException {
            this.innerStream.write(i9);
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/facebook/internal/FileLruCache$Companion;", "", "()V", "HEADER_CACHEKEY_KEY", "", "HEADER_CACHE_CONTENT_TAG_KEY", "TAG", "getTAG", "()Ljava/lang/String;", "bufferIndex", "Ljava/util/concurrent/atomic/AtomicLong;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getTAG() {
            return FileLruCache.TAG;
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\t¨\u0006\r"}, d2 = {"Lcom/facebook/internal/FileLruCache$Limits;", "", "()V", "value", "", "byteCount", "getByteCount", "()I", "setByteCount", "(I)V", "fileCount", "getFileCount", "setFileCount", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Limits {
        private int byteCount = 1048576;
        private int fileCount = 1024;

        public final int getByteCount() {
            return this.byteCount;
        }

        public final int getFileCount() {
            return this.fileCount;
        }

        public final void setByteCount(int i9) {
            if (i9 >= 0) {
                this.byteCount = i9;
                return;
            }
            throw new InvalidParameterException("Cache byte-count limit must be >= 0");
        }

        public final void setFileCount(int i9) {
            if (i9 >= 0) {
                this.fileCount = i9;
                return;
            }
            throw new InvalidParameterException("Cache file count limit must be >= 0");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0002\u0018\u0000 \u00122\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0012B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0011\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0000H\u0096\u0002J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\r\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\fH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/facebook/internal/FileLruCache$ModifiedFile;", "", ShareInternalUtility.STAGING_PARAM, "Ljava/io/File;", "(Ljava/io/File;)V", "getFile", "()Ljava/io/File;", "modified", "", "getModified", "()J", "compareTo", "", "another", "equals", "", "", "hashCode", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class ModifiedFile implements Comparable<ModifiedFile> {
        @NotNull
        public static final Companion Companion = new Companion(null);
        private static final int HASH_MULTIPLIER = 37;
        private static final int HASH_SEED = 29;
        @NotNull
        private final File file;
        private final long modified;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/internal/FileLruCache$ModifiedFile$Companion;", "", "()V", "HASH_MULTIPLIER", "", "HASH_SEED", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public ModifiedFile(@NotNull File file) {
            Intrinsics.checkNotNullParameter(file, "file");
            this.file = file;
            this.modified = file.lastModified();
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof ModifiedFile) && compareTo((ModifiedFile) obj) == 0;
        }

        @NotNull
        public final File getFile() {
            return this.file;
        }

        public final long getModified() {
            return this.modified;
        }

        public int hashCode() {
            return ((1073 + this.file.hashCode()) * 37) + ((int) (this.modified % Integer.MAX_VALUE));
        }

        @Override // java.lang.Comparable
        public int compareTo(@NotNull ModifiedFile another) {
            Intrinsics.checkNotNullParameter(another, "another");
            long j10 = this.modified;
            long j11 = another.modified;
            if (j10 < j11) {
                return -1;
            }
            if (j10 > j11) {
                return 1;
            }
            return this.file.compareTo(another.file);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bâ\u0080\u0001\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcom/facebook/internal/FileLruCache$StreamCloseCallback;", "", "onClose", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public interface StreamCloseCallback {
        void onClose();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/facebook/internal/FileLruCache$StreamHeader;", "", "()V", "HEADER_VERSION", "", "readHeader", "Lorg/json/JSONObject;", "stream", "Ljava/io/InputStream;", "writeHeader", "", "Ljava/io/OutputStream;", "header", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class StreamHeader {
        private static final int HEADER_VERSION = 0;
        @NotNull
        public static final StreamHeader INSTANCE = new StreamHeader();

        private StreamHeader() {
        }

        @Nullable
        public final JSONObject readHeader(@NotNull InputStream stream) throws IOException {
            Intrinsics.checkNotNullParameter(stream, "stream");
            if (stream.read() != 0) {
                return null;
            }
            int i9 = 0;
            int i10 = 0;
            for (int i11 = 0; i11 < 3; i11++) {
                int read = stream.read();
                if (read == -1) {
                    Logger.Companion.log(LoggingBehavior.CACHE, FileLruCache.Companion.getTAG(), "readHeader: stream.read returned -1 while reading header size");
                    return null;
                }
                i10 = (i10 << 8) + (read & 255);
            }
            byte[] bArr = new byte[i10];
            while (i9 < i10) {
                int read2 = stream.read(bArr, i9, i10 - i9);
                if (read2 < 1) {
                    Logger.Companion companion = Logger.Companion;
                    LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
                    String tag = FileLruCache.Companion.getTAG();
                    companion.log(loggingBehavior, tag, "readHeader: stream.read stopped at " + i9 + " when expected " + i10);
                    return null;
                }
                i9 += read2;
            }
            try {
                Object nextValue = new JSONTokener(new String(bArr, Charsets.UTF_8)).nextValue();
                if (!(nextValue instanceof JSONObject)) {
                    Logger.Companion.log(LoggingBehavior.CACHE, FileLruCache.Companion.getTAG(), Intrinsics.stringPlus("readHeader: expected JSONObject, got ", nextValue.getClass().getCanonicalName()));
                    return null;
                }
                return (JSONObject) nextValue;
            } catch (JSONException e10) {
                throw new IOException(e10.getMessage());
            }
        }

        public final void writeHeader(@NotNull OutputStream stream, @NotNull JSONObject header) throws IOException {
            Intrinsics.checkNotNullParameter(stream, "stream");
            Intrinsics.checkNotNullParameter(header, "header");
            String jSONObject = header.toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject, "header.toString()");
            byte[] bytes = jSONObject.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
            stream.write(0);
            stream.write((bytes.length >> 16) & 255);
            stream.write((bytes.length >> 8) & 255);
            stream.write((bytes.length >> 0) & 255);
            stream.write(bytes);
        }
    }

    static {
        String simpleName = FileLruCache.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "FileLruCache::class.java.simpleName");
        TAG = simpleName;
        bufferIndex = new AtomicLong();
    }

    public FileLruCache(@NotNull String tag, @NotNull Limits limits) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(limits, "limits");
        this.tag = tag;
        this.limits = limits;
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        File file = new File(FacebookSdk.getCacheDir(), tag);
        this.directory = file;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.condition = reentrantLock.newCondition();
        this.lastClearCacheTime = new AtomicLong(0L);
        if (file.mkdirs() || file.isDirectory()) {
            BufferFile.INSTANCE.deleteAll(file);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: clearCache$lambda-1  reason: not valid java name */
    public static final void m137clearCache$lambda1(File[] filesToDelete) {
        Intrinsics.checkNotNullExpressionValue(filesToDelete, "filesToDelete");
        int length = filesToDelete.length;
        int i9 = 0;
        while (i9 < length) {
            File file = filesToDelete[i9];
            i9++;
            file.delete();
        }
    }

    public static /* synthetic */ InputStream get$default(FileLruCache fileLruCache, String str, String str2, int i9, Object obj) throws IOException {
        if ((i9 & 2) != 0) {
            str2 = null;
        }
        return fileLruCache.get(str, str2);
    }

    public static /* synthetic */ OutputStream openPutStream$default(FileLruCache fileLruCache, String str, String str2, int i9, Object obj) throws IOException {
        if ((i9 & 2) != 0) {
            str2 = null;
        }
        return fileLruCache.openPutStream(str, str2);
    }

    private final void postTrim() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (!this.isTrimPending) {
                this.isTrimPending = true;
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.internal.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        FileLruCache.m138postTrim$lambda3$lambda2(FileLruCache.this);
                    }
                });
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: postTrim$lambda-3$lambda-2  reason: not valid java name */
    public static final void m138postTrim$lambda3$lambda2(FileLruCache this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.trim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void renameToTargetAndTrim(String str, File file) {
        File file2 = this.directory;
        Utility utility = Utility.INSTANCE;
        if (!file.renameTo(new File(file2, Utility.md5hash(str)))) {
            file.delete();
        }
        postTrim();
    }

    private final void trim() {
        long j10;
        ModifiedFile modifiedFile;
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.isTrimPending = false;
            this.isTrimInProgress = true;
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            try {
                Logger.Companion.log(LoggingBehavior.CACHE, TAG, "trim started");
                PriorityQueue priorityQueue = new PriorityQueue();
                File[] listFiles = this.directory.listFiles(BufferFile.INSTANCE.excludeBufferFiles());
                long j11 = 0;
                if (listFiles != null) {
                    int length = listFiles.length;
                    j10 = 0;
                    int i9 = 0;
                    while (i9 < length) {
                        File file = listFiles[i9];
                        i9++;
                        Intrinsics.checkNotNullExpressionValue(file, "file");
                        priorityQueue.add(new ModifiedFile(file));
                        Logger.Companion.log(LoggingBehavior.CACHE, TAG, "  trim considering time=" + modifiedFile.getModified() + " name=" + ((Object) modifiedFile.getFile().getName()));
                        j11 += file.length();
                        j10++;
                        listFiles = listFiles;
                    }
                } else {
                    j10 = 0;
                }
                while (true) {
                    if (j11 <= this.limits.getByteCount() && j10 <= this.limits.getFileCount()) {
                        this.lock.lock();
                        try {
                            this.isTrimInProgress = false;
                            this.condition.signalAll();
                            Unit unit2 = Unit.INSTANCE;
                            return;
                        } finally {
                        }
                    }
                    File file2 = ((ModifiedFile) priorityQueue.remove()).getFile();
                    Logger.Companion.log(LoggingBehavior.CACHE, TAG, Intrinsics.stringPlus("  trim removing ", file2.getName()));
                    j11 -= file2.length();
                    j10--;
                    file2.delete();
                }
            } catch (Throwable th2) {
                this.lock.lock();
                try {
                    this.isTrimInProgress = false;
                    this.condition.signalAll();
                    Unit unit3 = Unit.INSTANCE;
                    throw th2;
                } finally {
                }
            }
        } finally {
        }
    }

    public final void clearCache() {
        final File[] listFiles = this.directory.listFiles(BufferFile.INSTANCE.excludeBufferFiles());
        this.lastClearCacheTime.set(System.currentTimeMillis());
        if (listFiles != null) {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.internal.k
                @Override // java.lang.Runnable
                public final void run() {
                    FileLruCache.m137clearCache$lambda1(listFiles);
                }
            });
        }
    }

    @JvmOverloads
    @Nullable
    public final InputStream get(@NotNull String key) throws IOException {
        Intrinsics.checkNotNullParameter(key, "key");
        return get$default(this, key, null, 2, null);
    }

    @JvmOverloads
    @Nullable
    public final InputStream get(@NotNull String key, @Nullable String str) throws IOException {
        Intrinsics.checkNotNullParameter(key, "key");
        File file = this.directory;
        Utility utility = Utility.INSTANCE;
        File file2 = new File(file, Utility.md5hash(key));
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file2), 8192);
            try {
                JSONObject readHeader = StreamHeader.INSTANCE.readHeader(bufferedInputStream);
                if (readHeader == null) {
                    return null;
                }
                if (Intrinsics.areEqual(readHeader.optString(HEADER_CACHEKEY_KEY), key)) {
                    String optString = readHeader.optString("tag", null);
                    if (str != null || Intrinsics.areEqual(str, optString)) {
                        long time = new Date().getTime();
                        Logger.Companion companion = Logger.Companion;
                        LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
                        String str2 = TAG;
                        companion.log(loggingBehavior, str2, "Setting lastModified to " + time + " for " + ((Object) file2.getName()));
                        file2.setLastModified(time);
                        return bufferedInputStream;
                    }
                    return null;
                }
                return null;
            } finally {
                bufferedInputStream.close();
            }
        } catch (IOException unused) {
            return null;
        }
    }

    @NotNull
    public final String getLocation() {
        String path = this.directory.getPath();
        Intrinsics.checkNotNullExpressionValue(path, "directory.path");
        return path;
    }

    @NotNull
    public final InputStream interceptAndPut(@NotNull String key, @NotNull InputStream input) throws IOException {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(input, "input");
        return new CopyingInputStream(input, openPutStream$default(this, key, null, 2, null));
    }

    @JvmOverloads
    @NotNull
    public final OutputStream openPutStream(@NotNull String key) throws IOException {
        Intrinsics.checkNotNullParameter(key, "key");
        return openPutStream$default(this, key, null, 2, null);
    }

    @JvmOverloads
    @NotNull
    public final OutputStream openPutStream(@NotNull final String key, @Nullable String str) throws IOException {
        Intrinsics.checkNotNullParameter(key, "key");
        final File newFile = BufferFile.INSTANCE.newFile(this.directory);
        newFile.delete();
        if (newFile.createNewFile()) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(newFile);
                final long currentTimeMillis = System.currentTimeMillis();
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new CloseCallbackOutputStream(fileOutputStream, new StreamCloseCallback() { // from class: com.facebook.internal.FileLruCache$openPutStream$renameToTargetCallback$1
                    @Override // com.facebook.internal.FileLruCache.StreamCloseCallback
                    public void onClose() {
                        AtomicLong atomicLong;
                        long j10 = currentTimeMillis;
                        atomicLong = this.lastClearCacheTime;
                        if (j10 < atomicLong.get()) {
                            newFile.delete();
                        } else {
                            this.renameToTargetAndTrim(key, newFile);
                        }
                    }
                }), 8192);
                try {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(HEADER_CACHEKEY_KEY, key);
                        Utility utility = Utility.INSTANCE;
                        if (!Utility.isNullOrEmpty(str)) {
                            jSONObject.put("tag", str);
                        }
                        StreamHeader.INSTANCE.writeHeader(bufferedOutputStream, jSONObject);
                        return bufferedOutputStream;
                    } catch (JSONException e10) {
                        Logger.Companion.log(LoggingBehavior.CACHE, 5, TAG, Intrinsics.stringPlus("Error creating JSON header for cache file: ", e10));
                        throw new IOException(e10.getMessage());
                    }
                } catch (Throwable th2) {
                    bufferedOutputStream.close();
                    throw th2;
                }
            } catch (FileNotFoundException e11) {
                Logger.Companion.log(LoggingBehavior.CACHE, 5, TAG, Intrinsics.stringPlus("Error creating buffer output stream: ", e11));
                throw new IOException(e11.getMessage());
            }
        }
        throw new IOException(Intrinsics.stringPlus("Could not create file at ", newFile.getAbsolutePath()));
    }

    public final long sizeInBytesForTest() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        while (true) {
            try {
                if (!this.isTrimPending && !this.isTrimInProgress) {
                    break;
                }
                try {
                    this.condition.await();
                } catch (InterruptedException unused) {
                }
            } catch (Throwable th2) {
                reentrantLock.unlock();
                throw th2;
            }
        }
        Unit unit = Unit.INSTANCE;
        reentrantLock.unlock();
        File[] listFiles = this.directory.listFiles();
        long j10 = 0;
        if (listFiles != null) {
            int i9 = 0;
            int length = listFiles.length;
            while (i9 < length) {
                File file = listFiles[i9];
                i9++;
                j10 += file.length();
            }
        }
        return j10;
    }

    @NotNull
    public String toString() {
        return "{FileLruCache: tag:" + this.tag + " file:" + ((Object) this.directory.getName()) + '}';
    }

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u000bH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u000bH\u0016J\u0010\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J \u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000bH\u0016J\b\u0010\u0017\u001a\u00020\rH\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0016R\u0011\u0010\u0002\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u001b"}, d2 = {"Lcom/facebook/internal/FileLruCache$CopyingInputStream;", "Ljava/io/InputStream;", "input", "output", "Ljava/io/OutputStream;", "(Ljava/io/InputStream;Ljava/io/OutputStream;)V", "getInput", "()Ljava/io/InputStream;", "getOutput", "()Ljava/io/OutputStream;", "available", "", "close", "", "mark", "readlimit", "markSupported", "", "read", "buffer", "", TypedValues.CycleType.S_WAVE_OFFSET, "length", "reset", "skip", "", "byteCount", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    private static final class CopyingInputStream extends InputStream {
        @NotNull
        private final InputStream input;
        @NotNull
        private final OutputStream output;

        public CopyingInputStream(@NotNull InputStream input, @NotNull OutputStream output) {
            Intrinsics.checkNotNullParameter(input, "input");
            Intrinsics.checkNotNullParameter(output, "output");
            this.input = input;
            this.output = output;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.input.available();
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                this.input.close();
            } finally {
                this.output.close();
            }
        }

        @NotNull
        public final InputStream getInput() {
            return this.input;
        }

        @NotNull
        public final OutputStream getOutput() {
            return this.output;
        }

        @Override // java.io.InputStream
        public void mark(int i9) {
            throw new UnsupportedOperationException();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return false;
        }

        @Override // java.io.InputStream
        public int read(@NotNull byte[] buffer) throws IOException {
            Intrinsics.checkNotNullParameter(buffer, "buffer");
            int read = this.input.read(buffer);
            if (read > 0) {
                this.output.write(buffer, 0, read);
            }
            return read;
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            throw new UnsupportedOperationException();
        }

        @Override // java.io.InputStream
        public long skip(long j10) throws IOException {
            int read;
            byte[] bArr = new byte[1024];
            long j11 = 0;
            while (j11 < j10 && (read = read(bArr, 0, (int) Math.min(j10 - j11, 1024))) >= 0) {
                j11 += read;
            }
            return j11;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            int read = this.input.read();
            if (read >= 0) {
                this.output.write(read);
            }
            return read;
        }

        @Override // java.io.InputStream
        public int read(@NotNull byte[] buffer, int i9, int i10) throws IOException {
            Intrinsics.checkNotNullParameter(buffer, "buffer");
            int read = this.input.read(buffer, i9, i10);
            if (read > 0) {
                this.output.write(buffer, i9, read);
            }
            return read;
        }
    }
}
