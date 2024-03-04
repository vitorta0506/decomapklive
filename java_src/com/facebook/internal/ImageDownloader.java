package com.facebook.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.VisibleForTesting;
import com.facebook.internal.ImageRequest;
import com.facebook.internal.WorkQueue;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.share.internal.ShareConstants;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001:\u0004-./0B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\b\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000fH\u0002J\u0012\u0010\u0019\u001a\u00020\u00162\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J \u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u0012H\u0002J\u0018\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u000fH\u0002J(\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0014\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\"H\u0007J2\u0010#\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000f2\u000e\u0010$\u001a\n\u0018\u00010%j\u0004\u0018\u0001`&2\b\u0010'\u001a\u0004\u0018\u00010(2\u0006\u0010)\u001a\u00020\u0012H\u0002J\u0010\u0010*\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0018\u0010+\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u0012H\u0002J\u0012\u0010,\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0018\u001a\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8BX\u0082\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcom/facebook/internal/ImageDownloader;", "", "()V", "CACHE_READ_QUEUE_MAX_CONCURRENT", "", "DOWNLOAD_QUEUE_MAX_CONCURRENT", "cacheReadQueue", "Lcom/facebook/internal/WorkQueue;", "downloadQueue", "handler", "Landroid/os/Handler;", "getHandler", "()Landroid/os/Handler;", "pendingRequests", "", "Lcom/facebook/internal/ImageDownloader$RequestKey;", "Lcom/facebook/internal/ImageDownloader$DownloaderContext;", "cancelRequest", "", "request", "Lcom/facebook/internal/ImageRequest;", "clearCache", "", "download", "key", "downloadAsync", "enqueueCacheRead", "allowCachedRedirects", "enqueueDownload", "enqueueRequest", "workQueue", "workItem", "Ljava/lang/Runnable;", "getPendingRequests", "", "issueResponse", "error", "Ljava/lang/Exception;", "Lkotlin/Exception;", "bitmap", "Landroid/graphics/Bitmap;", "isCachedRedirect", "prioritizeRequest", "readFromCache", "removePendingRequest", "CacheReadWorkItem", "DownloadImageWorkItem", "DownloaderContext", "RequestKey", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class ImageDownloader {
    private static final int CACHE_READ_QUEUE_MAX_CONCURRENT = 2;
    private static final int DOWNLOAD_QUEUE_MAX_CONCURRENT = 8;
    @Nullable
    private static Handler handler;
    @NotNull
    public static final ImageDownloader INSTANCE = new ImageDownloader();
    @NotNull
    private static final WorkQueue downloadQueue = new WorkQueue(8, null, 2, null);
    @NotNull
    private static final WorkQueue cacheReadQueue = new WorkQueue(2, null, 2, null);
    @NotNull
    private static final Map<RequestKey, DownloaderContext> pendingRequests = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0017\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;", "Ljava/lang/Runnable;", "key", "Lcom/facebook/internal/ImageDownloader$RequestKey;", "allowCachedRedirects", "", "(Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V", "run", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class CacheReadWorkItem implements Runnable {
        private final boolean allowCachedRedirects;
        @NotNull
        private final RequestKey key;

        public CacheReadWorkItem(@NotNull RequestKey key, boolean z10) {
            Intrinsics.checkNotNullParameter(key, "key");
            this.key = key;
            this.allowCachedRedirects = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                ImageDownloader.INSTANCE.readFromCache(this.key, this.allowCachedRedirects);
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;", "Ljava/lang/Runnable;", "key", "Lcom/facebook/internal/ImageDownloader$RequestKey;", "(Lcom/facebook/internal/ImageDownloader$RequestKey;)V", "run", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DownloadImageWorkItem implements Runnable {
        @NotNull
        private final RequestKey key;

        public DownloadImageWorkItem(@NotNull RequestKey key) {
            Intrinsics.checkNotNullParameter(key, "key");
            this.key = key;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                ImageDownloader.INSTANCE.download(this.key);
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
            }
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\u0004R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/facebook/internal/ImageDownloader$DownloaderContext;", "", "request", "Lcom/facebook/internal/ImageRequest;", "(Lcom/facebook/internal/ImageRequest;)V", "isCancelled", "", "()Z", "setCancelled", "(Z)V", "getRequest", "()Lcom/facebook/internal/ImageRequest;", "setRequest", "workItem", "Lcom/facebook/internal/WorkQueue$WorkItem;", "getWorkItem", "()Lcom/facebook/internal/WorkQueue$WorkItem;", "setWorkItem", "(Lcom/facebook/internal/WorkQueue$WorkItem;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    @VisibleForTesting(otherwise = 2)
    /* loaded from: classes.dex */
    public static final class DownloaderContext {
        private boolean isCancelled;
        @NotNull
        private ImageRequest request;
        @Nullable
        private WorkQueue.WorkItem workItem;

        public DownloaderContext(@NotNull ImageRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            this.request = request;
        }

        @NotNull
        public final ImageRequest getRequest() {
            return this.request;
        }

        @Nullable
        public final WorkQueue.WorkItem getWorkItem() {
            return this.workItem;
        }

        public final boolean isCancelled() {
            return this.isCancelled;
        }

        public final void setCancelled(boolean z10) {
            this.isCancelled = z10;
        }

        public final void setRequest(@NotNull ImageRequest imageRequest) {
            Intrinsics.checkNotNullParameter(imageRequest, "<set-?>");
            this.request = imageRequest;
        }

        public final void setWorkItem(@Nullable WorkQueue.WorkItem workItem) {
            this.workItem = workItem;
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0002\u0010\u0005J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u001a\u0010\u0004\u001a\u00020\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0014"}, d2 = {"Lcom/facebook/internal/ImageDownloader$RequestKey;", "", ShareConstants.MEDIA_URI, "Landroid/net/Uri;", "tag", "(Landroid/net/Uri;Ljava/lang/Object;)V", "getTag", "()Ljava/lang/Object;", "setTag", "(Ljava/lang/Object;)V", "getUri", "()Landroid/net/Uri;", "setUri", "(Landroid/net/Uri;)V", "equals", "", "o", "hashCode", "", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    @VisibleForTesting(otherwise = 2)
    /* loaded from: classes.dex */
    public static final class RequestKey {
        @NotNull
        public static final Companion Companion = new Companion(null);
        private static final int HASH_MULTIPLIER = 37;
        private static final int HASH_SEED = 29;
        @NotNull
        private Object tag;
        @NotNull
        private Uri uri;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/internal/ImageDownloader$RequestKey$Companion;", "", "()V", "HASH_MULTIPLIER", "", "HASH_SEED", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public RequestKey(@NotNull Uri uri, @NotNull Object tag) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            Intrinsics.checkNotNullParameter(tag, "tag");
            this.uri = uri;
            this.tag = tag;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj == null || !(obj instanceof RequestKey)) {
                return false;
            }
            RequestKey requestKey = (RequestKey) obj;
            return requestKey.uri == this.uri && requestKey.tag == this.tag;
        }

        @NotNull
        public final Object getTag() {
            return this.tag;
        }

        @NotNull
        public final Uri getUri() {
            return this.uri;
        }

        public int hashCode() {
            return ((1073 + this.uri.hashCode()) * 37) + this.tag.hashCode();
        }

        public final void setTag(@NotNull Object obj) {
            Intrinsics.checkNotNullParameter(obj, "<set-?>");
            this.tag = obj;
        }

        public final void setUri(@NotNull Uri uri) {
            Intrinsics.checkNotNullParameter(uri, "<set-?>");
            this.uri = uri;
        }
    }

    private ImageDownloader() {
    }

    @JvmStatic
    public static final boolean cancelRequest(@NotNull ImageRequest request) {
        boolean z10;
        Intrinsics.checkNotNullParameter(request, "request");
        RequestKey requestKey = new RequestKey(request.getImageUri(), request.getCallerTag());
        Map<RequestKey, DownloaderContext> map = pendingRequests;
        synchronized (map) {
            DownloaderContext downloaderContext = map.get(requestKey);
            z10 = true;
            if (downloaderContext != null) {
                WorkQueue.WorkItem workItem = downloaderContext.getWorkItem();
                if (workItem != null && workItem.cancel()) {
                    map.remove(requestKey);
                } else {
                    downloaderContext.setCancelled(true);
                }
            } else {
                z10 = false;
            }
            Unit unit = Unit.INSTANCE;
        }
        return z10;
    }

    @JvmStatic
    public static final void clearCache() {
        ImageResponseCache imageResponseCache = ImageResponseCache.INSTANCE;
        ImageResponseCache.clearCache();
        UrlRedirectCache urlRedirectCache = UrlRedirectCache.INSTANCE;
        UrlRedirectCache.clearCache();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void download(com.facebook.internal.ImageDownloader.RequestKey r11) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.ImageDownloader.download(com.facebook.internal.ImageDownloader$RequestKey):void");
    }

    @JvmStatic
    public static final void downloadAsync(@Nullable ImageRequest imageRequest) {
        if (imageRequest == null) {
            return;
        }
        RequestKey requestKey = new RequestKey(imageRequest.getImageUri(), imageRequest.getCallerTag());
        Map<RequestKey, DownloaderContext> map = pendingRequests;
        synchronized (map) {
            DownloaderContext downloaderContext = map.get(requestKey);
            if (downloaderContext != null) {
                downloaderContext.setRequest(imageRequest);
                downloaderContext.setCancelled(false);
                WorkQueue.WorkItem workItem = downloaderContext.getWorkItem();
                if (workItem != null) {
                    workItem.moveToFront();
                    Unit unit = Unit.INSTANCE;
                }
            } else {
                INSTANCE.enqueueCacheRead(imageRequest, requestKey, imageRequest.isCachedRedirectAllowed());
                Unit unit2 = Unit.INSTANCE;
            }
        }
    }

    private final void enqueueCacheRead(ImageRequest imageRequest, RequestKey requestKey, boolean z10) {
        enqueueRequest(imageRequest, requestKey, cacheReadQueue, new CacheReadWorkItem(requestKey, z10));
    }

    private final void enqueueDownload(ImageRequest imageRequest, RequestKey requestKey) {
        enqueueRequest(imageRequest, requestKey, downloadQueue, new DownloadImageWorkItem(requestKey));
    }

    private final void enqueueRequest(ImageRequest imageRequest, RequestKey requestKey, WorkQueue workQueue, Runnable runnable) {
        Map<RequestKey, DownloaderContext> map = pendingRequests;
        synchronized (map) {
            DownloaderContext downloaderContext = new DownloaderContext(imageRequest);
            map.put(requestKey, downloaderContext);
            downloaderContext.setWorkItem(WorkQueue.addActiveWorkItem$default(workQueue, runnable, false, 2, null));
            Unit unit = Unit.INSTANCE;
        }
    }

    private final synchronized Handler getHandler() {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        return handler;
    }

    private final void issueResponse(RequestKey requestKey, final Exception exc, final Bitmap bitmap, final boolean z10) {
        Handler handler2;
        DownloaderContext removePendingRequest = removePendingRequest(requestKey);
        if (removePendingRequest == null || removePendingRequest.isCancelled()) {
            return;
        }
        final ImageRequest request = removePendingRequest.getRequest();
        final ImageRequest.Callback callback = request == null ? null : request.getCallback();
        if (callback == null || (handler2 = getHandler()) == null) {
            return;
        }
        handler2.post(new Runnable() { // from class: com.facebook.internal.n
            @Override // java.lang.Runnable
            public final void run() {
                ImageDownloader.m141issueResponse$lambda4(ImageRequest.this, exc, z10, bitmap, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: issueResponse$lambda-4  reason: not valid java name */
    public static final void m141issueResponse$lambda4(ImageRequest request, Exception exc, boolean z10, Bitmap bitmap, ImageRequest.Callback callback) {
        Intrinsics.checkNotNullParameter(request, "$request");
        callback.onCompleted(new ImageResponse(request, exc, z10, bitmap));
    }

    @JvmStatic
    public static final void prioritizeRequest(@NotNull ImageRequest request) {
        WorkQueue.WorkItem workItem;
        Intrinsics.checkNotNullParameter(request, "request");
        RequestKey requestKey = new RequestKey(request.getImageUri(), request.getCallerTag());
        Map<RequestKey, DownloaderContext> map = pendingRequests;
        synchronized (map) {
            DownloaderContext downloaderContext = map.get(requestKey);
            if (downloaderContext != null && (workItem = downloaderContext.getWorkItem()) != null) {
                workItem.moveToFront();
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void readFromCache(com.facebook.internal.ImageDownloader.RequestKey r5, boolean r6) {
        /*
            r4 = this;
            r0 = 0
            r1 = 0
            if (r6 == 0) goto L1a
            com.facebook.internal.UrlRedirectCache r6 = com.facebook.internal.UrlRedirectCache.INSTANCE
            android.net.Uri r6 = r5.getUri()
            android.net.Uri r6 = com.facebook.internal.UrlRedirectCache.getRedirectedUri(r6)
            if (r6 == 0) goto L1a
            com.facebook.internal.ImageResponseCache r2 = com.facebook.internal.ImageResponseCache.INSTANCE
            java.io.InputStream r6 = com.facebook.internal.ImageResponseCache.getCachedImageStream(r6)
            if (r6 == 0) goto L1b
            r0 = 1
            goto L1b
        L1a:
            r6 = r1
        L1b:
            if (r0 != 0) goto L27
            com.facebook.internal.ImageResponseCache r6 = com.facebook.internal.ImageResponseCache.INSTANCE
            android.net.Uri r6 = r5.getUri()
            java.io.InputStream r6 = com.facebook.internal.ImageResponseCache.getCachedImageStream(r6)
        L27:
            if (r6 == 0) goto L36
            android.graphics.Bitmap r2 = android.graphics.BitmapFactory.decodeStream(r6)
            com.facebook.internal.Utility r3 = com.facebook.internal.Utility.INSTANCE
            com.facebook.internal.Utility.closeQuietly(r6)
            r4.issueResponse(r5, r1, r2, r0)
            goto L4e
        L36:
            com.facebook.internal.ImageDownloader$DownloaderContext r6 = r4.removePendingRequest(r5)
            if (r6 != 0) goto L3d
            goto L41
        L3d:
            com.facebook.internal.ImageRequest r1 = r6.getRequest()
        L41:
            if (r6 == 0) goto L4e
            boolean r6 = r6.isCancelled()
            if (r6 != 0) goto L4e
            if (r1 == 0) goto L4e
            r4.enqueueDownload(r1, r5)
        L4e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.ImageDownloader.readFromCache(com.facebook.internal.ImageDownloader$RequestKey, boolean):void");
    }

    private final DownloaderContext removePendingRequest(RequestKey requestKey) {
        DownloaderContext remove;
        Map<RequestKey, DownloaderContext> map = pendingRequests;
        synchronized (map) {
            remove = map.remove(requestKey);
        }
        return remove;
    }

    @VisibleForTesting(otherwise = 2)
    @NotNull
    public final Map<RequestKey, DownloaderContext> getPendingRequests() {
        return pendingRequests;
    }
}
