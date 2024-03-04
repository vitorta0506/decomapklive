package com.opensource.svgaplayer;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.http.HttpResponseCache;
import android.os.Handler;
import android.os.Looper;
import com.facebook.login.LoginLogger;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.proto.MovieEntity;
import com.opensource.svgaplayer.utils.log.LogUtils;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.Inflater;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
import org.light.utils.FileUtils;
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 72\u00020\u0001:\u0003789B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J \u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0018\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J$\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\b\u0002\u0010\u001b\u001a\u00020\u001cH\u0002J*\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\b\u0002\u0010\u001e\u001a\u00020\u001cJ*\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\b\u0002\u0010\u001e\u001a\u00020\u001cJ \u0010 \u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010!2\u0006\u0010\"\u001a\u00020#2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0018\u0010$\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0012\u0010&\u001a\u0004\u0018\u00010'2\u0006\u0010(\u001a\u00020'H\u0002J\u000e\u0010)\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u0003J$\u0010*\u001a\u00020\u00102\u0006\u0010+\u001a\u00020,2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\b\u0002\u0010\u001b\u001a\u00020\u001cH\u0002J$\u0010-\u001a\u00020\u00102\u0006\u0010.\u001a\u00020/2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\b\u0002\u0010\u001b\u001a\u00020\u001cH\u0002J,\u00100\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\b\u0002\u0010\u001e\u001a\u00020\u001cH\u0007J\u001a\u00100\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020#2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u001a\u00100\u001a\u00020\u00102\u0006\u00101\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u0012\u00102\u001a\u0004\u0018\u00010'2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0016\u00103\u001a\u00020\u00102\u0006\u00104\u001a\u00020\r2\u0006\u00105\u001a\u00020\rJ\u0018\u00106\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006:"}, d2 = {"Lcom/opensource/svgaplayer/SVGAParser;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "fileDownloader", "Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;", "getFileDownloader", "()Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;", "setFileDownloader", "(Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;)V", "mContext", "mFrameHeight", "", "mFrameWidth", "_decodeFromCacheKey", "", "cacheKey", "", "callback", "Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;", "_decodeFromInputStream", "inputStream", "Ljava/io/InputStream;", "decodeFromAssets", "name", "decodeFromCacheKey", "block", "", "decodeFromInputStream", "closeInputStream", "decodeFromInputStreamBlocked", "decodeFromURL", "Lkotlin/Function0;", "url", "Ljava/net/URL;", "doError", "error", "inflate", "", "byteArray", "init", "invokeCompleteCallback", "videoItem", "Lcom/opensource/svgaplayer/SVGAVideoEntity;", "invokeErrorCallback", com.huawei.hms.push.e.f27721a, "Ljava/lang/Exception;", "parse", "assetsName", "readAsBytes", "setFrameSize", "frameWidth", "frameHeight", "unzip", "Companion", "FileDownloader", "ParseCompletion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SVGAParser {
    @NotNull
    private static final String TAG = "SVGAParser";
    @NotNull
    private FileDownloader fileDownloader;
    @Nullable
    private Context mContext;
    private volatile int mFrameHeight;
    private volatile int mFrameWidth;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final AtomicInteger threadNum = new AtomicInteger(0);
    @NotNull
    private static SVGAParser mShareParser = new SVGAParser(null);
    private static ExecutorService threadPoolExecutor = Executors.newCachedThreadPool(new ThreadFactory() { // from class: com.opensource.svgaplayer.k
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread m824threadPoolExecutor$lambda38;
            m824threadPoolExecutor$lambda38 = SVGAParser.m824threadPoolExecutor$lambda38(runnable);
            return m824threadPoolExecutor$lambda38;
        }
    });

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, d2 = {"Lcom/opensource/svgaplayer/SVGAParser$Companion;", "", "()V", "TAG", "", "mShareParser", "Lcom/opensource/svgaplayer/SVGAParser;", "threadNum", "Ljava/util/concurrent/atomic/AtomicInteger;", "threadPoolExecutor", "Ljava/util/concurrent/ExecutorService;", "kotlin.jvm.PlatformType", "getThreadPoolExecutor$com_opensource_svgaplayer", "()Ljava/util/concurrent/ExecutorService;", "setThreadPoolExecutor$com_opensource_svgaplayer", "(Ljava/util/concurrent/ExecutorService;)V", "setThreadPoolExecutor", "", "executor", "Ljava/util/concurrent/ThreadPoolExecutor;", "shareParser", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ExecutorService getThreadPoolExecutor$com_opensource_svgaplayer() {
            return SVGAParser.threadPoolExecutor;
        }

        public final void setThreadPoolExecutor(@NotNull ThreadPoolExecutor executor) {
            Intrinsics.checkNotNullParameter(executor, "executor");
            setThreadPoolExecutor$com_opensource_svgaplayer(executor);
        }

        public final void setThreadPoolExecutor$com_opensource_svgaplayer(ExecutorService executorService) {
            SVGAParser.threadPoolExecutor = executorService;
        }

        @NotNull
        public final SVGAParser shareParser() {
            return SVGAParser.mShareParser;
        }
    }

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J`\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\r2!\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u000b0\u000f2%\u0010\u0014\u001a!\u0012\u0017\u0012\u00150\u0015j\u0002`\u0016¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u000b0\u000fH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0018"}, d2 = {"Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;", "", "()V", "noCache", "", "getNoCache", "()Z", "setNoCache", "(Z)V", "resume", "Lkotlin/Function0;", "", "url", "Ljava/net/URL;", "complete", "Lkotlin/Function1;", "Ljava/io/InputStream;", "Lkotlin/ParameterName;", "name", "inputStream", LoginLogger.EVENT_EXTRAS_FAILURE, "Ljava/lang/Exception;", "Lkotlin/Exception;", com.huawei.hms.push.e.f27721a, BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static class FileDownloader {
        private boolean noCache;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: resume$lambda-4  reason: not valid java name */
        public static final void m825resume$lambda4(FileDownloader this$0, URL url, Function1 failure, Ref.BooleanRef cancelled, Function1 complete) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(url, "$url");
            Intrinsics.checkNotNullParameter(failure, "$failure");
            Intrinsics.checkNotNullParameter(cancelled, "$cancelled");
            Intrinsics.checkNotNullParameter(complete, "$complete");
            try {
                LogUtils logUtils = LogUtils.INSTANCE;
                logUtils.info(SVGAParser.TAG, "================ svga file download start ================");
                if (HttpResponseCache.getInstalled() == null && !this$0.getNoCache()) {
                    logUtils.error(SVGAParser.TAG, "SVGAParser can not handle cache before install HttpResponseCache. see https://github.com/yyued/SVGAPlayer-Android#cache");
                    logUtils.error(SVGAParser.TAG, "在配置 HttpResponseCache 前 SVGAParser 无法缓存. 查看 https://github.com/yyued/SVGAPlayer-Android#cache ");
                }
                URLConnection openConnection = url.openConnection();
                HttpURLConnection httpURLConnection = openConnection instanceof HttpURLConnection ? (HttpURLConnection) openConnection : null;
                if (httpURLConnection == null) {
                    return;
                }
                httpURLConnection.setConnectTimeout(20000);
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.connect();
                InputStream inputStream = httpURLConnection.getInputStream();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[4096];
                while (true) {
                    if (cancelled.element) {
                        LogUtils.INSTANCE.warn(SVGAParser.TAG, "================ svga file download canceled ================");
                        break;
                    }
                    int read = inputStream.read(bArr, 0, 4096);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                if (cancelled.element) {
                    LogUtils.INSTANCE.warn(SVGAParser.TAG, "================ svga file download canceled ================");
                    CloseableKt.closeFinally(byteArrayOutputStream, null);
                    CloseableKt.closeFinally(inputStream, null);
                    return;
                }
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                LogUtils.INSTANCE.info(SVGAParser.TAG, "================ svga file download complete ================");
                complete.invoke(byteArrayInputStream);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(byteArrayInputStream, null);
                CloseableKt.closeFinally(byteArrayOutputStream, null);
                CloseableKt.closeFinally(inputStream, null);
            } catch (Exception e10) {
                LogUtils logUtils2 = LogUtils.INSTANCE;
                logUtils2.error(SVGAParser.TAG, "================ svga file download fail ================");
                logUtils2.error(SVGAParser.TAG, Intrinsics.stringPlus("error: ", e10.getMessage()));
                e10.printStackTrace();
                failure.invoke(e10);
            }
        }

        public final boolean getNoCache() {
            return this.noCache;
        }

        @NotNull
        public Function0<Unit> resume(@NotNull final URL url, @NotNull final Function1<? super InputStream, Unit> complete, @NotNull final Function1<? super Exception, Unit> failure) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(complete, "complete");
            Intrinsics.checkNotNullParameter(failure, "failure");
            final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            Function0<Unit> function0 = new Function0<Unit>() { // from class: com.opensource.svgaplayer.SVGAParser$FileDownloader$resume$cancelBlock$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    Ref.BooleanRef.this.element = true;
                }
            };
            SVGAParser.Companion.getThreadPoolExecutor$com_opensource_svgaplayer().execute(new Runnable() { // from class: com.opensource.svgaplayer.l
                @Override // java.lang.Runnable
                public final void run() {
                    SVGAParser.FileDownloader.m825resume$lambda4(SVGAParser.FileDownloader.this, url, failure, booleanRef, complete);
                }
            });
            return function0;
        }

        public final void setNoCache(boolean z10) {
            this.noCache = z10;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&¨\u0006\u0007"}, d2 = {"Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;", "", "onComplete", "", "videoItem", "Lcom/opensource/svgaplayer/SVGAVideoEntity;", "onError", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface ParseCompletion {
        void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity);

        void onError();
    }

    public SVGAParser(@Nullable Context context) {
        this.mContext = context == null ? null : context.getApplicationContext();
        SVGACache.INSTANCE.onCreate(context);
        this.fileDownloader = new FileDownloader();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _decodeFromInputStream$lambda-12  reason: not valid java name */
    public static final void m817_decodeFromInputStream$lambda12(final SVGAParser this$0, InputStream inputStream, final ParseCompletion parseCompletion, final String cacheKey) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(inputStream, "$inputStream");
        Intrinsics.checkNotNullParameter(cacheKey, "$cacheKey");
        try {
            try {
                LogUtils logUtils = LogUtils.INSTANCE;
                logUtils.info(TAG, "Input.binary change to entity");
                final byte[] readAsBytes = this$0.readAsBytes(inputStream);
                Unit unit = null;
                if (readAsBytes != null) {
                    threadPoolExecutor.execute(new Runnable() { // from class: com.opensource.svgaplayer.j
                        @Override // java.lang.Runnable
                        public final void run() {
                            SVGAParser.m818_decodeFromInputStream$lambda12$lambda11$lambda9(cacheKey, readAsBytes);
                        }
                    });
                    logUtils.info(TAG, "Input.inflate start");
                    byte[] inflate = this$0.inflate(readAsBytes);
                    if (inflate != null) {
                        logUtils.info(TAG, "Input.inflate success");
                        MovieEntity decode = MovieEntity.ADAPTER.decode(inflate);
                        Intrinsics.checkNotNullExpressionValue(decode, "ADAPTER.decode(inflateBytes)");
                        final SVGAVideoEntity sVGAVideoEntity = new SVGAVideoEntity(decode, new File(cacheKey), this$0.mFrameWidth, this$0.mFrameHeight);
                        sVGAVideoEntity.prepare$com_opensource_svgaplayer(new Function0<Unit>() { // from class: com.opensource.svgaplayer.SVGAParser$_decodeFromInputStream$1$1$2$1
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Unit invoke() {
                                invoke2();
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke  reason: avoid collision after fix types in other method */
                            public final void invoke2() {
                                LogUtils.INSTANCE.info("SVGAParser", "Input.prepare success");
                                SVGAParser.invokeCompleteCallback$default(SVGAParser.this, sVGAVideoEntity, parseCompletion, false, 4, null);
                            }
                        });
                        unit = Unit.INSTANCE;
                    }
                    if (unit == null) {
                        this$0.doError("Input.inflate(bytes) cause exception", parseCompletion);
                    }
                    unit = Unit.INSTANCE;
                }
                if (unit == null) {
                    this$0.doError("Input.readAsBytes(inputStream) cause exception", parseCompletion);
                }
            } catch (Exception e10) {
                invokeErrorCallback$default(this$0, e10, parseCompletion, false, 4, null);
            }
        } finally {
            inputStream.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _decodeFromInputStream$lambda-12$lambda-11$lambda-9  reason: not valid java name */
    public static final void m818_decodeFromInputStream$lambda12$lambda11$lambda9(String cacheKey, byte[] bytes) {
        Intrinsics.checkNotNullParameter(cacheKey, "$cacheKey");
        Intrinsics.checkNotNullParameter(bytes, "$bytes");
        File buildSvgaFile = SVGACache.INSTANCE.buildSvgaFile(cacheKey);
        try {
            File file = buildSvgaFile.exists() ^ true ? buildSvgaFile : null;
            if (file != null) {
                file.createNewFile();
            }
            new FileOutputStream(buildSvgaFile).write(bytes);
        } catch (Exception e10) {
            LogUtils.INSTANCE.error(TAG, "create cache file fail.", e10);
            buildSvgaFile.delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: decodeFromAssets$lambda-1  reason: not valid java name */
    public static final void m819decodeFromAssets$lambda1(SVGAParser this$0, String name, ParseCompletion parseCompletion) {
        InputStream open;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(name, "$name");
        Context context = this$0.mContext;
        AssetManager assets = context == null ? null : context.getAssets();
        if (assets == null || (open = assets.open(name)) == null) {
            return;
        }
        this$0.decodeFromInputStream(open, SVGACache.INSTANCE.buildCacheKey(Intrinsics.stringPlus("file:///assets/", name)), parseCompletion, true);
    }

    private final void decodeFromCacheKey(String str, ParseCompletion parseCompletion, boolean z10) {
        LogUtils logUtils = LogUtils.INSTANCE;
        logUtils.info(TAG, "================ decode from cache ================");
        logUtils.debug(TAG, Intrinsics.stringPlus("decodeFromCacheKey called with cacheKey : ", str));
        if (this.mContext == null) {
            logUtils.error(TAG, "在配置 SVGAParser context 前, 无法解析 SVGA 文件。");
            return;
        }
        try {
            File buildCacheDir = SVGACache.INSTANCE.buildCacheDir(str);
            File file = new File(buildCacheDir, "movie.binary");
            if (!file.isFile()) {
                file = null;
            }
            if (file != null) {
                try {
                    logUtils.info(TAG, "binary change to entity");
                    FileInputStream fileInputStream = new FileInputStream(file);
                    logUtils.info(TAG, "binary change to entity success");
                    MovieEntity decode = MovieEntity.ADAPTER.decode(fileInputStream);
                    Intrinsics.checkNotNullExpressionValue(decode, "ADAPTER.decode(it)");
                    invokeCompleteCallback(new SVGAVideoEntity(decode, buildCacheDir, this.mFrameWidth, this.mFrameHeight), parseCompletion, z10);
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(fileInputStream, null);
                } catch (Exception e10) {
                    LogUtils.INSTANCE.error(TAG, "binary change to entity fail", e10);
                    buildCacheDir.delete();
                    file.delete();
                    throw e10;
                }
            }
            File file2 = new File(buildCacheDir, "movie.spec");
            if (!file2.isFile()) {
                file2 = null;
            }
            if (file2 == null) {
                return;
            }
            try {
                logUtils.info(TAG, "spec change to entity");
                FileInputStream fileInputStream2 = new FileInputStream(file2);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[2048];
                while (true) {
                    int read = fileInputStream2.read(bArr, 0, 2048);
                    if (read == -1) {
                        JSONObject jSONObject = new JSONObject(byteArrayOutputStream.toString());
                        LogUtils.INSTANCE.info(TAG, "spec change to entity success");
                        invokeCompleteCallback(new SVGAVideoEntity(jSONObject, buildCacheDir, this.mFrameWidth, this.mFrameHeight), parseCompletion, z10);
                        Unit unit2 = Unit.INSTANCE;
                        CloseableKt.closeFinally(byteArrayOutputStream, null);
                        CloseableKt.closeFinally(fileInputStream2, null);
                        return;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
            } catch (Exception e11) {
                LogUtils.INSTANCE.error(TAG, "spec change to entity fail", e11);
                buildCacheDir.delete();
                file2.delete();
                throw e11;
            }
        } catch (Exception e12) {
            invokeErrorCallback(e12, parseCompletion, z10);
        }
    }

    static /* synthetic */ void decodeFromCacheKey$default(SVGAParser sVGAParser, String str, ParseCompletion parseCompletion, boolean z10, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            z10 = false;
        }
        sVGAParser.decodeFromCacheKey(str, parseCompletion, z10);
    }

    public static /* synthetic */ void decodeFromInputStream$default(SVGAParser sVGAParser, InputStream inputStream, String str, ParseCompletion parseCompletion, boolean z10, int i9, Object obj) {
        if ((i9 & 8) != 0) {
            z10 = false;
        }
        sVGAParser.decodeFromInputStream(inputStream, str, parseCompletion, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004e, code lost:
        if (r7 != false) goto L30;
     */
    /* renamed from: decodeFromInputStream$lambda-17  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m820decodeFromInputStream$lambda17(final com.opensource.svgaplayer.SVGAParser r8, java.io.InputStream r9, final com.opensource.svgaplayer.SVGAParser.ParseCompletion r10, boolean r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.opensource.svgaplayer.SVGAParser.m820decodeFromInputStream$lambda17(com.opensource.svgaplayer.SVGAParser, java.io.InputStream, com.opensource.svgaplayer.SVGAParser$ParseCompletion, boolean, java.lang.String):void");
    }

    public static /* synthetic */ void decodeFromInputStreamBlocked$default(SVGAParser sVGAParser, InputStream inputStream, String str, ParseCompletion parseCompletion, boolean z10, int i9, Object obj) {
        if ((i9 & 8) != 0) {
            z10 = false;
        }
        sVGAParser.decodeFromInputStreamBlocked(inputStream, str, parseCompletion, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: decodeFromURL$lambda-2  reason: not valid java name */
    public static final void m821decodeFromURL$lambda2(SVGAParser this$0, String cacheKey, ParseCompletion parseCompletion) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(cacheKey, "$cacheKey");
        if (SVGACache.INSTANCE.isDefaultCache()) {
            decodeFromCacheKey$default(this$0, cacheKey, parseCompletion, false, 4, null);
        } else {
            this$0._decodeFromCacheKey(cacheKey, parseCompletion);
        }
    }

    private final byte[] inflate(byte[] bArr) {
        Inflater inflater = new Inflater();
        inflater.setInput(bArr, 0, bArr.length);
        byte[] bArr2 = new byte[2048];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            try {
                int inflate = inflater.inflate(bArr2, 0, 2048);
                if (inflate <= 0) {
                    inflater.end();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    CloseableKt.closeFinally(byteArrayOutputStream, null);
                    return byteArray;
                }
                byteArrayOutputStream.write(bArr2, 0, inflate);
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invokeCompleteCallback(final SVGAVideoEntity sVGAVideoEntity, final ParseCompletion parseCompletion, boolean z10) {
        if (z10) {
            if (sVGAVideoEntity.getCalledComplete()) {
                return;
            }
            LogUtils.INSTANCE.info(TAG, "================ parser complete ================");
            if (parseCompletion != null) {
                parseCompletion.onComplete(sVGAVideoEntity);
            }
            sVGAVideoEntity.setCalledComplete(true);
            return;
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.opensource.svgaplayer.i
            @Override // java.lang.Runnable
            public final void run() {
                SVGAParser.m822invokeCompleteCallback$lambda22(SVGAVideoEntity.this, parseCompletion);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void invokeCompleteCallback$default(SVGAParser sVGAParser, SVGAVideoEntity sVGAVideoEntity, ParseCompletion parseCompletion, boolean z10, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            z10 = false;
        }
        sVGAParser.invokeCompleteCallback(sVGAVideoEntity, parseCompletion, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invokeCompleteCallback$lambda-22  reason: not valid java name */
    public static final void m822invokeCompleteCallback$lambda22(SVGAVideoEntity videoItem, ParseCompletion parseCompletion) {
        Intrinsics.checkNotNullParameter(videoItem, "$videoItem");
        if (videoItem.getCalledComplete()) {
            return;
        }
        LogUtils.INSTANCE.info(TAG, "================ parser complete ================");
        if (parseCompletion != null) {
            parseCompletion.onComplete(videoItem);
        }
        videoItem.setCalledComplete(true);
    }

    private final void invokeErrorCallback(Exception exc, final ParseCompletion parseCompletion, boolean z10) {
        exc.printStackTrace();
        LogUtils logUtils = LogUtils.INSTANCE;
        logUtils.error(TAG, "================ parser error ================");
        logUtils.error(TAG, "error", exc);
        if (!z10) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.opensource.svgaplayer.d
                @Override // java.lang.Runnable
                public final void run() {
                    SVGAParser.m823invokeErrorCallback$lambda23(SVGAParser.ParseCompletion.this);
                }
            });
        } else if (parseCompletion == null) {
        } else {
            parseCompletion.onError();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void invokeErrorCallback$default(SVGAParser sVGAParser, Exception exc, ParseCompletion parseCompletion, boolean z10, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            z10 = false;
        }
        sVGAParser.invokeErrorCallback(exc, parseCompletion, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invokeErrorCallback$lambda-23  reason: not valid java name */
    public static final void m823invokeErrorCallback$lambda23(ParseCompletion parseCompletion) {
        if (parseCompletion == null) {
            return;
        }
        parseCompletion.onError();
    }

    public static /* synthetic */ void parse$default(SVGAParser sVGAParser, InputStream inputStream, String str, ParseCompletion parseCompletion, boolean z10, int i9, Object obj) {
        if ((i9 & 8) != 0) {
            z10 = false;
        }
        sVGAParser.parse(inputStream, str, parseCompletion, z10);
    }

    private final byte[] readAsBytes(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[2048];
            while (true) {
                int read = inputStream.read(bArr, 0, 2048);
                if (read <= 0) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    CloseableKt.closeFinally(byteArrayOutputStream, null);
                    return byteArray;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: threadPoolExecutor$lambda-38  reason: not valid java name */
    public static final Thread m824threadPoolExecutor$lambda38(Runnable runnable) {
        return new Thread(runnable, Intrinsics.stringPlus("SVGAParser-Thread-", Integer.valueOf(threadNum.getAndIncrement())));
    }

    private final void unzip(InputStream inputStream, String str) {
        boolean contains$default;
        boolean contains$default2;
        LogUtils.INSTANCE.info(TAG, "================ unzip prepare ================");
        File buildCacheDir = SVGACache.INSTANCE.buildCacheDir(str);
        buildCacheDir.mkdirs();
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            ZipInputStream zipInputStream = new ZipInputStream(bufferedInputStream);
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(zipInputStream, null);
                    CloseableKt.closeFinally(bufferedInputStream, null);
                    return;
                }
                String name = nextEntry.getName();
                Intrinsics.checkNotNullExpressionValue(name, "zipItem.name");
                contains$default = StringsKt__StringsKt.contains$default((CharSequence) name, (CharSequence) "../", false, 2, (Object) null);
                if (!contains$default) {
                    String name2 = nextEntry.getName();
                    Intrinsics.checkNotNullExpressionValue(name2, "zipItem.name");
                    contains$default2 = StringsKt__StringsKt.contains$default((CharSequence) name2, (CharSequence) FileUtils.RES_PREFIX_STORAGE, false, 2, (Object) null);
                    if (!contains$default2) {
                        FileOutputStream fileOutputStream = new FileOutputStream(new File(buildCacheDir, nextEntry.getName()));
                        byte[] bArr = new byte[2048];
                        while (true) {
                            int read = zipInputStream.read(bArr);
                            if (read <= 0) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, read);
                        }
                        Unit unit2 = Unit.INSTANCE;
                        CloseableKt.closeFinally(fileOutputStream, null);
                        LogUtils.INSTANCE.error(TAG, "================ unzip complete ================");
                        zipInputStream.closeEntry();
                    }
                }
            }
        } catch (Exception e10) {
            LogUtils logUtils = LogUtils.INSTANCE;
            logUtils.error(TAG, "================ unzip error ================");
            logUtils.error(TAG, "error", e10);
            buildCacheDir.delete();
            throw e10;
        }
    }

    public final void _decodeFromCacheKey(@NotNull String cacheKey, @Nullable final ParseCompletion parseCompletion) {
        Unit unit;
        Unit unit2;
        Intrinsics.checkNotNullParameter(cacheKey, "cacheKey");
        File buildSvgaFile = SVGACache.INSTANCE.buildSvgaFile(cacheKey);
        try {
            LogUtils logUtils = LogUtils.INSTANCE;
            logUtils.info(TAG, "cache.binary change to entity");
            FileInputStream fileInputStream = new FileInputStream(buildSvgaFile);
            try {
                byte[] readAsBytes = readAsBytes(fileInputStream);
                if (readAsBytes == null) {
                    unit2 = null;
                } else {
                    logUtils.info(TAG, "cache.inflate start");
                    byte[] inflate = inflate(readAsBytes);
                    if (inflate == null) {
                        unit = null;
                    } else {
                        logUtils.info(TAG, "cache.inflate success");
                        MovieEntity decode = MovieEntity.ADAPTER.decode(inflate);
                        Intrinsics.checkNotNullExpressionValue(decode, "ADAPTER.decode(inflateBytes)");
                        final SVGAVideoEntity sVGAVideoEntity = new SVGAVideoEntity(decode, new File(cacheKey), this.mFrameWidth, this.mFrameHeight);
                        sVGAVideoEntity.prepare$com_opensource_svgaplayer(new Function0<Unit>() { // from class: com.opensource.svgaplayer.SVGAParser$_decodeFromCacheKey$1$1$1$1
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Unit invoke() {
                                invoke2();
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke  reason: avoid collision after fix types in other method */
                            public final void invoke2() {
                                LogUtils.INSTANCE.info("SVGAParser", "cache.prepare success");
                                SVGAParser.invokeCompleteCallback$default(SVGAParser.this, sVGAVideoEntity, parseCompletion, false, 4, null);
                            }
                        });
                        unit = Unit.INSTANCE;
                    }
                    if (unit == null) {
                        doError("cache.inflate(bytes) cause exception", parseCompletion);
                    }
                    unit2 = Unit.INSTANCE;
                }
                if (unit2 == null) {
                    doError("cache.readAsBytes(inputStream) cause exception", parseCompletion);
                }
            } catch (Exception e10) {
                invokeErrorCallback$default(this, e10, parseCompletion, false, 4, null);
            }
            fileInputStream.close();
            Unit unit3 = Unit.INSTANCE;
            CloseableKt.closeFinally(fileInputStream, null);
        } catch (Exception e11) {
            LogUtils.INSTANCE.error(TAG, "cache.binary change to entity fail", e11);
            if (!buildSvgaFile.exists()) {
                buildSvgaFile = null;
            }
            if (buildSvgaFile != null) {
                buildSvgaFile.delete();
            }
            invokeErrorCallback$default(this, e11, parseCompletion, false, 4, null);
        }
    }

    public final void _decodeFromInputStream(@NotNull final InputStream inputStream, @NotNull final String cacheKey, @Nullable final ParseCompletion parseCompletion) {
        Intrinsics.checkNotNullParameter(inputStream, "inputStream");
        Intrinsics.checkNotNullParameter(cacheKey, "cacheKey");
        threadPoolExecutor.execute(new Runnable() { // from class: com.opensource.svgaplayer.e
            @Override // java.lang.Runnable
            public final void run() {
                SVGAParser.m817_decodeFromInputStream$lambda12(SVGAParser.this, inputStream, parseCompletion, cacheKey);
            }
        });
    }

    public final void decodeFromAssets(@NotNull final String name, @Nullable final ParseCompletion parseCompletion) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (this.mContext == null) {
            LogUtils.INSTANCE.error(TAG, "在配置 SVGAParser context 前, 无法解析 SVGA 文件。");
            return;
        }
        try {
            LogUtils.INSTANCE.info(TAG, "================ decode from assets ================");
            threadPoolExecutor.execute(new Runnable() { // from class: com.opensource.svgaplayer.g
                @Override // java.lang.Runnable
                public final void run() {
                    SVGAParser.m819decodeFromAssets$lambda1(SVGAParser.this, name, parseCompletion);
                }
            });
        } catch (Exception e10) {
            invokeErrorCallback$default(this, e10, parseCompletion, false, 4, null);
        }
    }

    public final void decodeFromInputStream(@NotNull final InputStream inputStream, @NotNull final String cacheKey, @Nullable final ParseCompletion parseCompletion, final boolean z10) {
        Intrinsics.checkNotNullParameter(inputStream, "inputStream");
        Intrinsics.checkNotNullParameter(cacheKey, "cacheKey");
        if (this.mContext == null) {
            LogUtils.INSTANCE.error(TAG, "在配置 SVGAParser context 前, 无法解析 SVGA 文件。");
            return;
        }
        LogUtils.INSTANCE.info(TAG, "================ decode from input stream ================");
        threadPoolExecutor.execute(new Runnable() { // from class: com.opensource.svgaplayer.f
            @Override // java.lang.Runnable
            public final void run() {
                SVGAParser.m820decodeFromInputStream$lambda17(SVGAParser.this, inputStream, parseCompletion, z10, cacheKey);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005e, code lost:
        if (r6 != false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void decodeFromInputStreamBlocked(@org.jetbrains.annotations.NotNull java.io.InputStream r9, @org.jetbrains.annotations.NotNull java.lang.String r10, @org.jetbrains.annotations.Nullable final com.opensource.svgaplayer.SVGAParser.ParseCompletion r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.opensource.svgaplayer.SVGAParser.decodeFromInputStreamBlocked(java.io.InputStream, java.lang.String, com.opensource.svgaplayer.SVGAParser$ParseCompletion, boolean):void");
    }

    @Nullable
    public final Function0<Unit> decodeFromURL(@NotNull URL url, @Nullable final ParseCompletion parseCompletion) {
        Intrinsics.checkNotNullParameter(url, "url");
        if (this.mContext == null) {
            LogUtils.INSTANCE.error(TAG, "在配置 SVGAParser context 前, 无法解析 SVGA 文件。");
            return null;
        }
        LogUtils logUtils = LogUtils.INSTANCE;
        logUtils.info(TAG, "================ decode from url ================");
        SVGACache sVGACache = SVGACache.INSTANCE;
        final String buildCacheKey = sVGACache.buildCacheKey(url);
        if (sVGACache.isCached(buildCacheKey)) {
            logUtils.info(TAG, "this url cached");
            threadPoolExecutor.execute(new Runnable() { // from class: com.opensource.svgaplayer.h
                @Override // java.lang.Runnable
                public final void run() {
                    SVGAParser.m821decodeFromURL$lambda2(SVGAParser.this, buildCacheKey, parseCompletion);
                }
            });
            return null;
        }
        logUtils.info(TAG, "no cached, prepare to download");
        return this.fileDownloader.resume(url, new Function1<InputStream, Unit>() { // from class: com.opensource.svgaplayer.SVGAParser$decodeFromURL$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(InputStream inputStream) {
                invoke2(inputStream);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull InputStream it) {
                Intrinsics.checkNotNullParameter(it, "it");
                if (SVGACache.INSTANCE.isDefaultCache()) {
                    SVGAParser.decodeFromInputStream$default(SVGAParser.this, it, buildCacheKey, parseCompletion, false, 8, null);
                } else {
                    SVGAParser.this._decodeFromInputStream(it, buildCacheKey, parseCompletion);
                }
            }
        }, new Function1<Exception, Unit>() { // from class: com.opensource.svgaplayer.SVGAParser$decodeFromURL$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Exception exc) {
                invoke2(exc);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Exception it) {
                Intrinsics.checkNotNullParameter(it, "it");
                SVGAParser.invokeErrorCallback$default(SVGAParser.this, it, parseCompletion, false, 4, null);
            }
        });
    }

    public final void doError(@NotNull String error, @Nullable ParseCompletion parseCompletion) {
        Intrinsics.checkNotNullParameter(error, "error");
        LogUtils.INSTANCE.info(TAG, error);
        invokeErrorCallback$default(this, new Exception(error), parseCompletion, false, 4, null);
    }

    @NotNull
    public final FileDownloader getFileDownloader() {
        return this.fileDownloader;
    }

    public final void init(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext;
        SVGACache.INSTANCE.onCreate(applicationContext);
    }

    @Deprecated(message = "This method has been deprecated from 2.4.0.", replaceWith = @ReplaceWith(expression = "this.decodeFromAssets(assetsName, callback)", imports = {}))
    public final void parse(@NotNull String assetsName, @Nullable ParseCompletion parseCompletion) {
        Intrinsics.checkNotNullParameter(assetsName, "assetsName");
        decodeFromAssets(assetsName, parseCompletion);
    }

    public final void setFileDownloader(@NotNull FileDownloader fileDownloader) {
        Intrinsics.checkNotNullParameter(fileDownloader, "<set-?>");
        this.fileDownloader = fileDownloader;
    }

    public final void setFrameSize(int i9, int i10) {
        this.mFrameWidth = i9;
        this.mFrameHeight = i10;
    }

    @Deprecated(message = "This method has been deprecated from 2.4.0.", replaceWith = @ReplaceWith(expression = "this.decodeFromURL(url, callback)", imports = {}))
    public final void parse(@NotNull URL url, @Nullable ParseCompletion parseCompletion) {
        Intrinsics.checkNotNullParameter(url, "url");
        decodeFromURL(url, parseCompletion);
    }

    @Deprecated(message = "This method has been deprecated from 2.4.0.", replaceWith = @ReplaceWith(expression = "this.decodeFromInputStream(inputStream, cacheKey, callback, closeInputStream)", imports = {}))
    public final void parse(@NotNull InputStream inputStream, @NotNull String cacheKey, @Nullable ParseCompletion parseCompletion, boolean z10) {
        Intrinsics.checkNotNullParameter(inputStream, "inputStream");
        Intrinsics.checkNotNullParameter(cacheKey, "cacheKey");
        decodeFromInputStream(inputStream, cacheKey, parseCompletion, z10);
    }
}
