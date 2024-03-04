package com.guochao.faceshow.aaspring.manager;

import android.util.ArrayMap;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import com.facebook.GraphResponse;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.manager.DownloadableResourceManager;
import com.guochao.faceshow.aaspring.utils.AsyncUtils;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.TCConstants;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import java.io.File;
import java.io.FileInputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.light.utils.IOUtils;
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u0004\u001f !\"B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0018\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0004H\u0002J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u001b\u001a\u00020\u0004H\u0002J\u001e\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\fJ\u0016\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R$\u0010\t\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\f\u0018\u00010\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;", "", "()V", "BASE_URL", "", "DOWNLOADED", "", "DOWNLOADING", "DOWNLOAD_FAIL", "callbacks", "", "", "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;", "items", "Ljava/util/ArrayList;", "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;", "Lkotlin/collections/ArrayList;", "addCallback", "", "itemName", "callback", "lifecycleOwner", "Landroidx/lifecycle/LifecycleOwner;", "download", BaseConfig.ITEM, TCConstants.VIDEO_RECORD_VIDEPATH, "findResource", "name", "getResource", "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;", "startDownload", "DownloadCallback", "DownloadItem", "LifecycleDownloadCallback", "SvgaCallback", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DownloadableResourceManager {
    @NotNull
    public static final String BASE_URL = "https://fsveg.buzzcast.info/app_static/resource/";
    public static final int DOWNLOADED = 1;
    public static final int DOWNLOADING = 0;
    public static final int DOWNLOAD_FAIL = -1;
    @NotNull
    public static final DownloadableResourceManager INSTANCE = new DownloadableResourceManager();
    @NotNull
    private static final Map<String, List<DownloadCallback>> callbacks;
    @NotNull
    private static final ArrayList<DownloadItem> items;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\tÀ\u0006\u0003"}, d2 = {"Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;", "", "fail", "", "code", "", GraphResponse.SUCCESS_KEY, BaseConfig.ITEM, "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface DownloadCallback {

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class DefaultImpls {
            @Deprecated
            public static void fail(@NotNull DownloadCallback downloadCallback, int i9) {
                d.a(downloadCallback, i9);
            }
        }

        void fail(int i9);

        void success(@NotNull DownloadItem downloadItem);
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH&¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback;", "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;", "lifecycleOwner", "Landroidx/lifecycle/LifecycleOwner;", "(Landroidx/lifecycle/LifecycleOwner;)V", GraphResponse.SUCCESS_KEY, "", BaseConfig.ITEM, "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;", "videoItem", "Lcom/opensource/svgaplayer/SVGAVideoEntity;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static abstract class SvgaCallback extends LifecycleDownloadCallback {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SvgaCallback(@NotNull LifecycleOwner lifecycleOwner) {
            super(lifecycleOwner, null, 2, null);
            Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        }

        @Override // com.guochao.faceshow.aaspring.manager.DownloadableResourceManager.LifecycleDownloadCallback, com.guochao.faceshow.aaspring.manager.DownloadableResourceManager.DownloadCallback
        public void success(@NotNull DownloadItem item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.success(item);
            String path = item.getPath();
            File file = new File(path);
            if (!file.exists()) {
                file.createNewFile();
            }
            SVGAParser.Companion.shareParser().decodeFromInputStream(new FileInputStream(path), path, new SVGAParser.ParseCompletion() { // from class: com.guochao.faceshow.aaspring.manager.DownloadableResourceManager$SvgaCallback$success$1
                @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
                public void onComplete(@NotNull SVGAVideoEntity videoItem) {
                    Intrinsics.checkNotNullParameter(videoItem, "videoItem");
                    LifecycleOwner lifecycleOwner = DownloadableResourceManager.SvgaCallback.this.getLife().get();
                    if (lifecycleOwner == null || lifecycleOwner.getLifecycle().getCurrentState() != Lifecycle.State.DESTROYED) {
                        DownloadableResourceManager.SvgaCallback.this.success(videoItem);
                    }
                }

                @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
                public void onError() {
                    DownloadableResourceManager.SvgaCallback.this.fail(-2);
                }
            }, true);
        }

        public abstract void success(@NotNull SVGAVideoEntity sVGAVideoEntity);
    }

    static {
        ArrayList<DownloadItem> arrayList = new ArrayList<>();
        items = arrayList;
        callbacks = new ArrayMap();
        arrayList.add(new DownloadItem("pk_vs.svga", null, 0, 6, null));
        arrayList.add(new DownloadItem("tie_29.svga", null, 0, 6, null));
        arrayList.add(new DownloadItem("pk_progress.svga", null, 0, 6, null));
        arrayList.add(new DownloadItem("win_29.svga", null, 0, 6, null));
        arrayList.add(new DownloadItem("lose_29.svga", null, 0, 6, null));
    }

    private DownloadableResourceManager() {
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v8, types: [T, java.util.ArrayList] */
    private final void addCallback(String str, final DownloadCallback downloadCallback, LifecycleOwner lifecycleOwner) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? r32 = callbacks.get(str);
        objectRef.element = r32;
        if (r32 == 0) {
            objectRef.element = new ArrayList();
        }
        if (((List) objectRef.element).contains(downloadCallback)) {
            return;
        }
        ((List) objectRef.element).add(downloadCallback);
        DefaultLifecycleObserver defaultLifecycleObserver = new DefaultLifecycleObserver() { // from class: com.guochao.faceshow.aaspring.manager.DownloadableResourceManager$addCallback$observer$1
            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onCreate(LifecycleOwner lifecycleOwner2) {
                androidx.lifecycle.a.a(this, lifecycleOwner2);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public void onDestroy(@NotNull LifecycleOwner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
                androidx.lifecycle.a.b(this, owner);
                objectRef.element.remove(downloadCallback);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onPause(LifecycleOwner lifecycleOwner2) {
                androidx.lifecycle.a.c(this, lifecycleOwner2);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onResume(LifecycleOwner lifecycleOwner2) {
                androidx.lifecycle.a.d(this, lifecycleOwner2);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onStart(LifecycleOwner lifecycleOwner2) {
                androidx.lifecycle.a.e(this, lifecycleOwner2);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
            public /* synthetic */ void onStop(LifecycleOwner lifecycleOwner2) {
                androidx.lifecycle.a.f(this, lifecycleOwner2);
            }
        };
        lifecycleOwner.getLifecycle().addObserver(defaultLifecycleObserver);
        if (downloadCallback instanceof LifecycleDownloadCallback) {
            ((LifecycleDownloadCallback) downloadCallback).setObserver(defaultLifecycleObserver);
        }
    }

    private final void download(final DownloadItem downloadItem, final String str) {
        downloadItem.setDownloadState(0);
        String url = downloadItem.getUrl();
        ResourceDownloadManager.download$default(url, str + "_temp", new com.guochao.faceshow.aaspring.base.http.callback.d<File>() { // from class: com.guochao.faceshow.aaspring.manager.DownloadableResourceManager$download$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<File> exp) {
                Map map;
                Intrinsics.checkNotNullParameter(exp, "exp");
                downloadItem.setDownloadState(-1);
                map = DownloadableResourceManager.callbacks;
                List<DownloadableResourceManager.DownloadCallback> list = (List) map.get(downloadItem.getName());
                if (list != null) {
                    for (DownloadableResourceManager.DownloadCallback downloadCallback : list) {
                        if (downloadCallback != null) {
                            downloadCallback.fail(exp.a());
                        }
                    }
                    list.clear();
                }
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.d
            public void onProgress(long j10, long j11, double d10) {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public /* bridge */ /* synthetic */ void onResponse(Object obj, FaceCastBaseResponse faceCastBaseResponse) {
                onResponse((File) obj, (FaceCastBaseResponse<File>) faceCastBaseResponse);
            }

            public void onResponse(@Nullable File file, @NotNull FaceCastBaseResponse<File> baseResponse) {
                Map map;
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (file != null) {
                    String str2 = str;
                    DownloadableResourceManager.DownloadItem downloadItem2 = downloadItem;
                    file.renameTo(new File(str2));
                    downloadItem2.setPath(str2);
                    downloadItem2.setDownloadState(1);
                    map = DownloadableResourceManager.callbacks;
                    List<DownloadableResourceManager.DownloadCallback> list = (List) map.get(downloadItem2.getName());
                    if (list != null) {
                        for (DownloadableResourceManager.DownloadCallback downloadCallback : list) {
                            if (downloadCallback != null) {
                                downloadCallback.success(downloadItem2);
                            }
                        }
                        list.clear();
                    }
                }
            }
        }, false, 8, null);
    }

    private final DownloadItem findResource(String str) {
        Object obj;
        Iterator<T> it = items.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (Intrinsics.areEqual(str, ((DownloadItem) obj).getName())) {
                break;
            }
        }
        return (DownloadItem) obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startDownload$lambda-1  reason: not valid java name */
    public static final void m343startDownload$lambda1() {
        for (DownloadItem downloadItem : items) {
            String str = FilePathProvider.getDownloadableResourceDir() + IOUtils.DIR_SEPARATOR_UNIX + downloadItem.getName();
            downloadItem.setPath(str);
            if (!new File(str).exists()) {
                INSTANCE.download(downloadItem, str);
            } else {
                downloadItem.setPath(str);
                downloadItem.setDownloadState(1);
            }
        }
    }

    public final void getResource(@NotNull String itemName, @NotNull LifecycleOwner lifecycleOwner, @NotNull DownloadCallback callback) {
        Intrinsics.checkNotNullParameter(itemName, "itemName");
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (lifecycleOwner.getLifecycle().getCurrentState() == Lifecycle.State.DESTROYED) {
            return;
        }
        DownloadItem findResource = findResource(itemName);
        if (findResource == null) {
            callback.fail(-1);
        } else if (findResource.getDownloadState() == 1) {
            callback.success(findResource);
        } else if (findResource.getDownloadState() == -1) {
            download(findResource, findResource.getPath());
        } else {
            addCallback(itemName, callback, lifecycleOwner);
        }
    }

    public final void startDownload() {
        AsyncUtils.run$default(new Runnable() { // from class: com.guochao.faceshow.aaspring.manager.c
            @Override // java.lang.Runnable
            public final void run() {
                DownloadableResourceManager.m343startDownload$lambda1();
            }
        }, (Runnable) null, (Runnable) null, 6, (Object) null);
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0012H\u0002J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0019"}, d2 = {"Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;", "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;", "lifecycleOwner", "Landroidx/lifecycle/LifecycleOwner;", "life", "Ljava/lang/ref/WeakReference;", "(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/ref/WeakReference;)V", "getLife", "()Ljava/lang/ref/WeakReference;", "getLifecycleOwner", "()Landroidx/lifecycle/LifecycleOwner;", "observer", "Landroidx/lifecycle/LifecycleObserver;", "getObserver", "()Landroidx/lifecycle/LifecycleObserver;", "setObserver", "(Landroidx/lifecycle/LifecycleObserver;)V", "fail", "", "code", "", "remove", GraphResponse.SUCCESS_KEY, BaseConfig.ITEM, "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static abstract class LifecycleDownloadCallback implements DownloadCallback {
        @NotNull
        private final WeakReference<LifecycleOwner> life;
        @NotNull
        private final LifecycleOwner lifecycleOwner;
        @Nullable
        private LifecycleObserver observer;

        public LifecycleDownloadCallback(@NotNull LifecycleOwner lifecycleOwner, @NotNull WeakReference<LifecycleOwner> life) {
            Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
            Intrinsics.checkNotNullParameter(life, "life");
            this.lifecycleOwner = lifecycleOwner;
            this.life = life;
        }

        private final void remove() {
            LifecycleObserver lifecycleObserver;
            LifecycleOwner lifecycleOwner = this.life.get();
            if (lifecycleOwner == null || (lifecycleObserver = this.observer) == null) {
                return;
            }
            lifecycleOwner.getLifecycle().removeObserver(lifecycleObserver);
        }

        @Override // com.guochao.faceshow.aaspring.manager.DownloadableResourceManager.DownloadCallback
        public void fail(int i9) {
            d.a(this, i9);
            remove();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @NotNull
        public final WeakReference<LifecycleOwner> getLife() {
            return this.life;
        }

        @NotNull
        public final LifecycleOwner getLifecycleOwner() {
            return this.lifecycleOwner;
        }

        @Nullable
        public final LifecycleObserver getObserver() {
            return this.observer;
        }

        public final void setObserver(@Nullable LifecycleObserver lifecycleObserver) {
            this.observer = lifecycleObserver;
        }

        @Override // com.guochao.faceshow.aaspring.manager.DownloadableResourceManager.DownloadCallback
        public void success(@NotNull DownloadItem item) {
            Intrinsics.checkNotNullParameter(item, "item");
            remove();
        }

        public /* synthetic */ LifecycleDownloadCallback(LifecycleOwner lifecycleOwner, WeakReference weakReference, int i9, DefaultConstructorMarker defaultConstructorMarker) {
            this(lifecycleOwner, (i9 & 2) != 0 ? new WeakReference(lifecycleOwner) : weakReference);
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÆ\u0003J'\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\r\"\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\r¨\u0006\u001c"}, d2 = {"Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;", "", "name", "", "url", "downloadState", "", "(Ljava/lang/String;Ljava/lang/String;I)V", "getDownloadState", "()I", "setDownloadState", "(I)V", "getName", "()Ljava/lang/String;", TCConstants.VIDEO_RECORD_VIDEPATH, "getPath", "setPath", "(Ljava/lang/String;)V", "getUrl", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DownloadItem {
        private int downloadState;
        @NotNull
        private final String name;
        @NotNull
        private String path;
        @NotNull
        private final String url;

        public DownloadItem(@NotNull String name, @NotNull String url, int i9) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(url, "url");
            this.name = name;
            this.url = url;
            this.downloadState = i9;
            this.path = "";
        }

        public static /* synthetic */ DownloadItem copy$default(DownloadItem downloadItem, String str, String str2, int i9, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = downloadItem.name;
            }
            if ((i10 & 2) != 0) {
                str2 = downloadItem.url;
            }
            if ((i10 & 4) != 0) {
                i9 = downloadItem.downloadState;
            }
            return downloadItem.copy(str, str2, i9);
        }

        @NotNull
        public final String component1() {
            return this.name;
        }

        @NotNull
        public final String component2() {
            return this.url;
        }

        public final int component3() {
            return this.downloadState;
        }

        @NotNull
        public final DownloadItem copy(@NotNull String name, @NotNull String url, int i9) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(url, "url");
            return new DownloadItem(name, url, i9);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof DownloadItem) {
                DownloadItem downloadItem = (DownloadItem) obj;
                return Intrinsics.areEqual(this.name, downloadItem.name) && Intrinsics.areEqual(this.url, downloadItem.url) && this.downloadState == downloadItem.downloadState;
            }
            return false;
        }

        public final int getDownloadState() {
            return this.downloadState;
        }

        @NotNull
        public final String getName() {
            return this.name;
        }

        @NotNull
        public final String getPath() {
            return this.path;
        }

        @NotNull
        public final String getUrl() {
            return this.url;
        }

        public int hashCode() {
            return (((this.name.hashCode() * 31) + this.url.hashCode()) * 31) + this.downloadState;
        }

        public final void setDownloadState(int i9) {
            this.downloadState = i9;
        }

        public final void setPath(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.path = str;
        }

        @NotNull
        public String toString() {
            return "DownloadItem(name=" + this.name + ", url=" + this.url + ", downloadState=" + this.downloadState + ')';
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ DownloadItem(java.lang.String r1, java.lang.String r2, int r3, int r4, kotlin.jvm.internal.DefaultConstructorMarker r5) {
            /*
                r0 = this;
                r5 = r4 & 2
                if (r5 == 0) goto L15
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r5 = "https://fsveg.buzzcast.info/app_static/resource/"
                r2.append(r5)
                r2.append(r1)
                java.lang.String r2 = r2.toString()
            L15:
                r4 = r4 & 4
                if (r4 == 0) goto L1a
                r3 = 0
            L1a:
                r0.<init>(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.manager.DownloadableResourceManager.DownloadItem.<init>(java.lang.String, java.lang.String, int, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    public final void getResource(@NotNull String itemName, @NotNull LifecycleDownloadCallback callback) {
        Intrinsics.checkNotNullParameter(itemName, "itemName");
        Intrinsics.checkNotNullParameter(callback, "callback");
        getResource(itemName, callback.getLifecycleOwner(), callback);
    }
}
