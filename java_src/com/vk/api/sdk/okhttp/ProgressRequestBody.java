package com.vk.api.sdk.okhttp;

import com.facebook.share.internal.ShareConstants;
import com.vk.api.sdk.VKApiProgressListener;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingSink;
import okio.Okio;
import okio.Sink;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00122\u00020\u0001:\u0002\u0012\u0013B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\b\u001a\u00020\u0007H\u0016J\n\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002J\u0010\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/vk/api/sdk/okhttp/ProgressRequestBody;", "Lokhttp3/RequestBody;", "requestBody", "progressListener", "Lcom/vk/api/sdk/VKApiProgressListener;", "(Lokhttp3/RequestBody;Lcom/vk/api/sdk/VKApiProgressListener;)V", "lastNotifyTime", "", "contentLength", "contentType", "Lokhttp3/MediaType;", "notifyProgressSend", "", "progress", "maxValue", "writeTo", "sink", "Lokio/BufferedSink;", "Companion", "CountingSink", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ProgressRequestBody extends RequestBody {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long NOTIFY_INTERVAL = TimeUnit.MILLISECONDS.toMillis(160);
    private long lastNotifyTime;
    @Nullable
    private final VKApiProgressListener progressListener;
    @NotNull
    private final RequestBody requestBody;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/vk/api/sdk/okhttp/ProgressRequestBody$Companion;", "", "()V", "NOTIFY_INTERVAL", "", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0006H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/vk/api/sdk/okhttp/ProgressRequestBody$CountingSink;", "Lokio/ForwardingSink;", "delegate", "Lokio/Sink;", "(Lcom/vk/api/sdk/okhttp/ProgressRequestBody;Lokio/Sink;)V", "bytesWritten", "", "contentLength", "write", "", ShareConstants.FEED_SOURCE_PARAM, "Lokio/Buffer;", "byteCount", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    private final class CountingSink extends ForwardingSink {
        private long bytesWritten;
        private long contentLength;
        final /* synthetic */ ProgressRequestBody this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CountingSink(@NotNull ProgressRequestBody this$0, Sink delegate) {
            super(delegate);
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(delegate, "delegate");
            this.this$0 = this$0;
            this.contentLength = -1L;
        }

        @Override // okio.ForwardingSink, okio.Sink
        public void write(@NotNull Buffer source, long j10) throws IOException {
            Intrinsics.checkNotNullParameter(source, "source");
            super.write(source, j10);
            this.bytesWritten += j10;
            if (this.contentLength < 0) {
                this.contentLength = this.this$0.contentLength();
            }
            long j11 = this.contentLength;
            if (j11 < 0) {
                this.this$0.notifyProgressSend(0L, 1L);
            } else {
                this.this$0.notifyProgressSend(this.bytesWritten, j11);
            }
        }
    }

    public ProgressRequestBody(@NotNull RequestBody requestBody, @Nullable VKApiProgressListener vKApiProgressListener) {
        Intrinsics.checkNotNullParameter(requestBody, "requestBody");
        this.requestBody = requestBody;
        this.progressListener = vKApiProgressListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notifyProgressSend(long j10, long j11) {
        if (this.progressListener != null && System.currentTimeMillis() - this.lastNotifyTime >= NOTIFY_INTERVAL) {
            float f10 = (float) j11;
            float f11 = 1000.0f / f10;
            int i9 = (int) (f10 * f11);
            this.progressListener.onProgress((int) (((float) j10) * f11), i9);
            this.lastNotifyTime = System.currentTimeMillis();
        }
    }

    @Override // okhttp3.RequestBody
    public long contentLength() throws IOException {
        return this.requestBody.contentLength();
    }

    @Override // okhttp3.RequestBody
    @Nullable
    public MediaType contentType() {
        return this.requestBody.contentType();
    }

    @Override // okhttp3.RequestBody
    public void writeTo(@NotNull BufferedSink sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        BufferedSink buffer = Okio.buffer(new CountingSink(this, sink));
        this.requestBody.writeTo(buffer);
        buffer.flush();
    }
}
