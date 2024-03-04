package com.guochao.faceshow.aaspring.manager;

import android.os.Handler;
import com.facebook.share.internal.ShareInternalUtility;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.base.http.client.FaceCastHttpClientImpl;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.manager.ResourceDownloadManager;
import com.guochao.faceshow.aaspring.utils.NetworkObserverHelper;
import com.guochao.faceshow.utils.HandlerGetter;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001,B\t\b\u0002¢\u0006\u0004\b*\u0010+J0\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\t\u001a\u00020\bH\u0007J(\u0010\u000f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u0003J\u0010\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016R\u0014\u0010\u0013\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001a\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001d\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u001b\u0010#\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0014\u0010%\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00160'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006-"}, d2 = {"Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;", "Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$OnNetworkChangeCallBack;", "", "fileUrl", "fileSavePath", "Lcom/guochao/faceshow/aaspring/base/http/callback/d;", "Ljava/io/File;", "callback", "", "highPriority", "", "download", "Lokhttp3/Response;", "response", ShareInternalUtility.STAGING_PARAM, "writeToFile", "", "type", "onChange", "TAG", "Ljava/lang/String;", "", "Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;", "failList", "Ljava/util/List;", "Lokhttp3/OkHttpClient;", "okHttpClient", "Lokhttp3/OkHttpClient;", "Ljava/util/concurrent/ThreadPoolExecutor;", "executor", "Ljava/util/concurrent/ThreadPoolExecutor;", "highPriorityExecutor$delegate", "Lkotlin/Lazy;", "getHighPriorityExecutor", "()Ljava/util/concurrent/ThreadPoolExecutor;", "highPriorityExecutor", "Landroid/os/Handler;", "handler", "Landroid/os/Handler;", "Ljava/util/concurrent/CopyOnWriteArrayList;", "runningList", "Ljava/util/concurrent/CopyOnWriteArrayList;", "<init>", "()V", "DownloadRunnable", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ResourceDownloadManager implements NetworkObserverHelper.OnNetworkChangeCallBack {
    @NotNull
    public static final ResourceDownloadManager INSTANCE;
    @NotNull
    public static final String TAG = "ResourceDownloadManager";
    @NotNull
    private static final ThreadPoolExecutor executor;
    @NotNull
    private static final List<DownloadRunnable> failList;
    @NotNull
    private static final Handler handler;
    @NotNull
    private static final Lazy highPriorityExecutor$delegate;
    @NotNull
    private static final OkHttpClient okHttpClient;
    @NotNull
    private static final CopyOnWriteArrayList<DownloadRunnable> runningList;

    @Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0019\u0018\u00002\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0002B/\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0019\u001a\u00020\u0014\u0012\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000e\u0012\u0006\u0010!\u001a\u00020\u000b¢\u0006\u0004\b+\u0010,J\u0010\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003H\u0002J\u0016\u0010\t\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006H\u0002J\b\u0010\n\u001a\u00020\bH\u0016J\u0006\u0010\f\u001a\u00020\u000bJ&\u0010\u0010\u001a\"\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000e0\rj\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000e`\u000fJ\u0013\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0000H\u0096\u0002R\u0017\u0010\u0015\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0019\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u001a\u0010\u0018R*\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u0017\u0010!\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$RB\u0010%\u001a\"\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000e0\rj\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000e`\u000f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u0006-"}, d2 = {"Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;", "Ljava/lang/Runnable;", "", "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;", "Ljava/io/File;", "download", "Lg7/a;", com.huawei.hms.push.e.f27721a, "", "fail", "run", "", "isInitCallbacks", "Ljava/util/ArrayList;", "Lcom/guochao/faceshow/aaspring/base/http/callback/d;", "Lkotlin/collections/ArrayList;", "makeSureCallbacks", "other", "", "compareTo", "", "fileUrl", "Ljava/lang/String;", "getFileUrl", "()Ljava/lang/String;", "fileSavePath", "getFileSavePath", "callback", "Lcom/guochao/faceshow/aaspring/base/http/callback/d;", "getCallback", "()Lcom/guochao/faceshow/aaspring/base/http/callback/d;", "setCallback", "(Lcom/guochao/faceshow/aaspring/base/http/callback/d;)V", RemoteMessageConst.Notification.PRIORITY, "Z", "getPriority", "()Z", "callbacks", "Ljava/util/ArrayList;", "getCallbacks", "()Ljava/util/ArrayList;", "setCallbacks", "(Ljava/util/ArrayList;)V", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/d;Z)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class DownloadRunnable implements Runnable, Comparable<DownloadRunnable> {
        @Nullable
        private com.guochao.faceshow.aaspring.base.http.callback.d<File> callback;
        public ArrayList<com.guochao.faceshow.aaspring.base.http.callback.d<File>> callbacks;
        @NotNull
        private final String fileSavePath;
        @NotNull
        private final String fileUrl;
        private final boolean priority;

        public DownloadRunnable(@NotNull String fileUrl, @NotNull String fileSavePath, @Nullable com.guochao.faceshow.aaspring.base.http.callback.d<File> dVar, boolean z10) {
            Intrinsics.checkNotNullParameter(fileUrl, "fileUrl");
            Intrinsics.checkNotNullParameter(fileSavePath, "fileSavePath");
            this.fileUrl = fileUrl;
            this.fileSavePath = fileSavePath;
            this.callback = dVar;
            this.priority = z10;
        }

        private final FaceCastBaseResponse<File> download() throws Exception {
            AutoCloseable autoCloseable = null;
            try {
                try {
                    Response execute = ResourceDownloadManager.okHttpClient.newCall(new Request.Builder().method("GET", null).url(this.fileUrl).build()).execute();
                    if (execute.code() == 200 && execute.body() != null) {
                        File file = new File(this.fileSavePath);
                        if (file.exists()) {
                            file.delete();
                        }
                        ResourceDownloadManager.writeToFile(execute, file, this.callback);
                        FaceCastBaseResponse<File> faceCastBaseResponse = new FaceCastBaseResponse<>();
                        faceCastBaseResponse.setCode(1);
                        faceCastBaseResponse.setResult(file);
                        execute.close();
                        return faceCastBaseResponse;
                    }
                    throw new IOException();
                } catch (Exception e10) {
                    throw e10;
                }
            } catch (Throwable th2) {
                if (0 != 0) {
                    autoCloseable.close();
                }
                throw th2;
            }
        }

        private final void fail(g7.a<File> aVar) {
        }

        /* renamed from: run$lambda-1 */
        public static final void m345run$lambda1(DownloadRunnable this$0, FaceCastBaseResponse r10) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(r10, "$r");
            ResourceDownloadManager.failList.remove(this$0);
            com.guochao.faceshow.aaspring.base.http.callback.c cVar = this$0.callback;
            if (cVar != null) {
                cVar.onResponse(r10.getResult(), r10);
            }
            if (this$0.callbacks != null) {
                Iterator<T> it = this$0.getCallbacks().iterator();
                while (it.hasNext()) {
                    com.guochao.faceshow.aaspring.base.http.callback.d dVar = (com.guochao.faceshow.aaspring.base.http.callback.d) it.next();
                    if (dVar != null) {
                        dVar.onResponse(r10.getResult(), r10);
                    }
                }
            }
            ResourceDownloadManager.runningList.remove(this$0);
        }

        /* renamed from: run$lambda-3 */
        public static final void m346run$lambda3(DownloadRunnable this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            ResourceDownloadManager.runningList.remove(this$0);
            g7.a<File> aVar = new g7.a<>();
            com.guochao.faceshow.aaspring.base.http.callback.d<File> dVar = this$0.callback;
            if (dVar != null) {
                dVar.onFailure(aVar);
            }
            if (this$0.callbacks != null) {
                Iterator<T> it = this$0.getCallbacks().iterator();
                while (it.hasNext()) {
                    com.guochao.faceshow.aaspring.base.http.callback.d dVar2 = (com.guochao.faceshow.aaspring.base.http.callback.d) it.next();
                    if (dVar2 != null) {
                        dVar2.onFailure(aVar);
                    }
                }
                this$0.getCallbacks().clear();
            }
            this$0.callback = null;
            ResourceDownloadManager.failList.add(this$0);
        }

        @Nullable
        public final com.guochao.faceshow.aaspring.base.http.callback.d<File> getCallback() {
            return this.callback;
        }

        @NotNull
        public final ArrayList<com.guochao.faceshow.aaspring.base.http.callback.d<File>> getCallbacks() {
            ArrayList<com.guochao.faceshow.aaspring.base.http.callback.d<File>> arrayList = this.callbacks;
            if (arrayList != null) {
                return arrayList;
            }
            Intrinsics.throwUninitializedPropertyAccessException("callbacks");
            return null;
        }

        @NotNull
        public final String getFileSavePath() {
            return this.fileSavePath;
        }

        @NotNull
        public final String getFileUrl() {
            return this.fileUrl;
        }

        public final boolean getPriority() {
            return this.priority;
        }

        public final boolean isInitCallbacks() {
            return this.callbacks != null;
        }

        @NotNull
        public final ArrayList<com.guochao.faceshow.aaspring.base.http.callback.d<File>> makeSureCallbacks() {
            if (this.callbacks == null) {
                setCallbacks(new ArrayList<>());
            }
            return getCallbacks();
        }

        @Override // java.lang.Runnable
        public void run() {
            int i9 = 0;
            while (true) {
                try {
                    final FaceCastBaseResponse<File> download = download();
                    ResourceDownloadManager.handler.post(new Runnable() { // from class: com.guochao.faceshow.aaspring.manager.g
                        @Override // java.lang.Runnable
                        public final void run() {
                            ResourceDownloadManager.DownloadRunnable.m345run$lambda1(ResourceDownloadManager.DownloadRunnable.this, download);
                        }
                    });
                    return;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    if (i9 == 2) {
                        ResourceDownloadManager.handler.post(new Runnable() { // from class: com.guochao.faceshow.aaspring.manager.f
                            @Override // java.lang.Runnable
                            public final void run() {
                                ResourceDownloadManager.DownloadRunnable.m346run$lambda3(ResourceDownloadManager.DownloadRunnable.this);
                            }
                        });
                        return;
                    }
                    i9++;
                }
            }
        }

        public final void setCallback(@Nullable com.guochao.faceshow.aaspring.base.http.callback.d<File> dVar) {
            this.callback = dVar;
        }

        public final void setCallbacks(@NotNull ArrayList<com.guochao.faceshow.aaspring.base.http.callback.d<File>> arrayList) {
            Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
            this.callbacks = arrayList;
        }

        @Override // java.lang.Comparable
        public int compareTo(@Nullable DownloadRunnable downloadRunnable) {
            if (downloadRunnable != null && this.priority == downloadRunnable.priority) {
                return 0;
            }
            return this.priority ? -1 : 1;
        }
    }

    static {
        Lazy lazy;
        ResourceDownloadManager resourceDownloadManager = new ResourceDownloadManager();
        INSTANCE = resourceDownloadManager;
        NetworkObserverHelper.create(BaseApplication.getInstance()).register(resourceDownloadManager);
        failList = new CopyOnWriteArrayList();
        OkHttpClient g10 = FaceCastHttpClientImpl.h(BaseApplication.getInstance()).g();
        Intrinsics.checkNotNullExpressionValue(g10, "getInstance(BaseApplicat…tance()).fileOkHttpClient");
        okHttpClient = g10;
        executor = new ThreadPoolExecutor(3, 5, 15L, TimeUnit.SECONDS, new PriorityBlockingQueue(256), new ThreadPoolExecutor.DiscardPolicy());
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ThreadPoolExecutor>() { // from class: com.guochao.faceshow.aaspring.manager.ResourceDownloadManager$highPriorityExecutor$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ThreadPoolExecutor invoke() {
                return new ThreadPoolExecutor(3, 5, 15L, TimeUnit.SECONDS, new PriorityBlockingQueue(256), new ThreadPoolExecutor.DiscardPolicy());
            }
        });
        highPriorityExecutor$delegate = lazy;
        handler = HandlerGetter.getMainHandler();
        runningList = new CopyOnWriteArrayList<>();
    }

    private ResourceDownloadManager() {
    }

    @JvmStatic
    @JvmOverloads
    public static final void download(@NotNull String fileUrl, @NotNull String fileSavePath, @NotNull com.guochao.faceshow.aaspring.base.http.callback.d<File> callback) {
        Intrinsics.checkNotNullParameter(fileUrl, "fileUrl");
        Intrinsics.checkNotNullParameter(fileSavePath, "fileSavePath");
        Intrinsics.checkNotNullParameter(callback, "callback");
        download$default(fileUrl, fileSavePath, callback, false, 8, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void download(@NotNull String fileUrl, @NotNull String fileSavePath, @NotNull com.guochao.faceshow.aaspring.base.http.callback.d<File> callback, boolean z10) {
        Object obj;
        Object obj2;
        boolean z11;
        BlockingQueue<Runnable> queue;
        boolean z12;
        Object obj3;
        boolean z13;
        boolean z14;
        Intrinsics.checkNotNullParameter(fileUrl, "fileUrl");
        Intrinsics.checkNotNullParameter(fileSavePath, "fileSavePath");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Iterator<T> it = runningList.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                obj2 = null;
                break;
            }
            obj2 = it.next();
            DownloadRunnable downloadRunnable = (DownloadRunnable) obj2;
            if (Intrinsics.areEqual(downloadRunnable.getFileUrl(), fileUrl) && downloadRunnable.getPriority() == z10) {
                z14 = true;
                continue;
            } else {
                z14 = false;
                continue;
            }
            if (z14) {
                break;
            }
        }
        DownloadRunnable downloadRunnable2 = (DownloadRunnable) obj2;
        if (downloadRunnable2 != null) {
            downloadRunnable2.makeSureCallbacks().add(callback);
            return;
        }
        DownloadRunnable downloadRunnable3 = new DownloadRunnable(fileUrl, fileSavePath, callback, z10);
        if (z10) {
            BlockingQueue<Runnable> queue2 = INSTANCE.getHighPriorityExecutor().getQueue();
            if (queue2 != null) {
                Iterator<T> it2 = queue2.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        obj3 = null;
                        break;
                    }
                    obj3 = it2.next();
                    Runnable runnable = (Runnable) obj3;
                    if (runnable instanceof DownloadRunnable) {
                        z13 = Intrinsics.areEqual(((DownloadRunnable) runnable).getFileUrl(), fileUrl);
                        continue;
                    } else {
                        z13 = false;
                        continue;
                    }
                    if (z13) {
                        break;
                    }
                }
                Runnable runnable2 = (Runnable) obj3;
                if (runnable2 != null) {
                    if (runnable2 instanceof DownloadRunnable) {
                        DownloadRunnable downloadRunnable4 = (DownloadRunnable) runnable2;
                        if (!downloadRunnable4.isInitCallbacks()) {
                            downloadRunnable4.setCallbacks(new ArrayList<>());
                        }
                        downloadRunnable4.getCallbacks().add(callback);
                        return;
                    }
                    return;
                }
            }
            INSTANCE.getHighPriorityExecutor().execute(downloadRunnable3);
            runningList.add(downloadRunnable3);
            BlockingQueue<Runnable> queue3 = executor.getQueue();
            if (queue3 != null) {
                Iterator<T> it3 = queue3.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        break;
                    }
                    Object next = it3.next();
                    Runnable runnable3 = (Runnable) next;
                    if (runnable3 instanceof DownloadRunnable) {
                        z12 = Intrinsics.areEqual(((DownloadRunnable) runnable3).getFileUrl(), fileUrl);
                        continue;
                    } else {
                        z12 = false;
                        continue;
                    }
                    if (z12) {
                        obj = next;
                        break;
                    }
                }
                Runnable runnable4 = (Runnable) obj;
                if (runnable4 == null || (queue = executor.getQueue()) == null) {
                    return;
                }
                queue.remove(runnable4);
                return;
            }
            return;
        }
        BlockingQueue<Runnable> queue4 = INSTANCE.getHighPriorityExecutor().getQueue();
        if (queue4 != null) {
            Iterator<T> it4 = queue4.iterator();
            while (true) {
                if (!it4.hasNext()) {
                    break;
                }
                Object next2 = it4.next();
                Runnable runnable5 = (Runnable) next2;
                if (runnable5 instanceof DownloadRunnable) {
                    z11 = Intrinsics.areEqual(((DownloadRunnable) runnable5).getFileUrl(), fileUrl);
                    continue;
                } else {
                    z11 = false;
                    continue;
                }
                if (z11) {
                    obj = next2;
                    break;
                }
            }
            Runnable runnable6 = (Runnable) obj;
            if (runnable6 != null) {
                if (runnable6 instanceof DownloadRunnable) {
                    ((DownloadRunnable) runnable6).makeSureCallbacks().add(callback);
                    return;
                }
                return;
            }
        }
        executor.execute(downloadRunnable3);
        runningList.add(downloadRunnable3);
    }

    public static /* synthetic */ void download$default(String str, String str2, com.guochao.faceshow.aaspring.base.http.callback.d dVar, boolean z10, int i9, Object obj) {
        if ((i9 & 8) != 0) {
            z10 = false;
        }
        download(str, str2, dVar, z10);
    }

    private final ThreadPoolExecutor getHighPriorityExecutor() {
        return (ThreadPoolExecutor) highPriorityExecutor$delegate.getValue();
    }

    @JvmStatic
    public static final void writeToFile(Response response, File file, final com.guochao.faceshow.aaspring.base.http.callback.d<File> dVar) {
        ResponseBody body = response.body();
        Intrinsics.checkNotNull(body);
        InputStream byteStream = body.byteStream();
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        byte[] bArr = new byte[2048];
        ResponseBody body2 = response.body();
        Intrinsics.checkNotNull(body2);
        final long contentLength = body2.contentLength();
        final Ref.LongRef longRef = new Ref.LongRef();
        while (true) {
            int read = byteStream.read(bArr);
            if (read != -1) {
                longRef.element += read;
                fileOutputStream.write(bArr, 0, read);
                if (dVar != null) {
                    handler.post(new Runnable() { // from class: com.guochao.faceshow.aaspring.manager.e
                        @Override // java.lang.Runnable
                        public final void run() {
                            ResourceDownloadManager.m344writeToFile$lambda9$lambda8(com.guochao.faceshow.aaspring.base.http.callback.d.this, longRef, contentLength);
                        }
                    });
                }
            } else {
                fileOutputStream.flush();
                fileOutputStream.close();
                byteStream.close();
                return;
            }
        }
    }

    /* renamed from: writeToFile$lambda-9$lambda-8 */
    public static final void m344writeToFile$lambda9$lambda8(com.guochao.faceshow.aaspring.base.http.callback.d this_apply, Ref.LongRef progress, long j10) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(progress, "$progress");
        long j11 = progress.element;
        this_apply.onProgress(j11, j10, j11 / j10);
    }

    @Override // com.guochao.faceshow.aaspring.utils.NetworkObserverHelper.OnNetworkChangeCallBack
    public void onChange(int i9) {
        if (i9 != 0) {
            List<DownloadRunnable> list = failList;
            if (!list.isEmpty()) {
                for (DownloadRunnable downloadRunnable : list) {
                    executor.execute(downloadRunnable);
                }
                failList.clear();
            }
        }
    }
}
