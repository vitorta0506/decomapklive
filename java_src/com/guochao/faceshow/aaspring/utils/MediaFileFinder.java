package com.guochao.faceshow.aaspring.utils;

import android.app.Application;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.MediaStore;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import com.facebook.share.internal.ShareConstants;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.utils.FileUtil;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.TCConstants;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\n\u0018\u0000 O2\u00020\u0001:\u0001OB\u0011\b\u0002\u0012\u0006\u0010)\u001a\u00020(¢\u0006\u0004\bM\u0010NJ&\u0010\u0007\u001a\u00020\u0006\"\u000e\b\u0000\u0010\u0003*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0002J\b\u0010\b\u001a\u00020\u0006H\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J\u001e\u0010\u0011\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000e\u001a\u00020\r2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J\u001e\u0010\u0012\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000e\u001a\u00020\r2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J&\u0010\u0015\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00132\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J\u0010\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u000fH\u0002J\u0018\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0006\u0010\u001a\u001a\u00020\u0006J6\u0010!\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001b2\u0012\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u001d2\u0010\b\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u001fH\u0007J6\u0010\"\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001b2\u0012\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u001d2\u0010\b\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u001fH\u0007J6\u0010#\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001b2\u0012\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u001d2\u0010\b\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u001fH\u0007J\u0016\u0010$\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0013J\"\u0010'\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\n2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00060%R\u0017\u0010)\u001a\u00020(8\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u0014\u0010-\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u0014\u00100\u001a\u00020/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0014\u00103\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u001a\u00105\u001a\b\u0012\u0004\u0012\u00020\n0\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u001a\u00107\u001a\b\u0012\u0004\u0012\u00020\n0\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00106R\u001a\u00108\u001a\b\u0012\u0004\u0012\u00020\n0\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00106R \u0010:\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R \u0010<\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010;R \u0010=\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010;R\"\u0010>\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b>\u0010.\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\"\u0010C\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010.\u001a\u0004\bD\u0010@\"\u0004\bE\u0010BR\"\u0010G\u001a\u00020F8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bG\u0010H\u001a\u0004\bI\u0010J\"\u0004\bK\u0010L¨\u0006P"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;", "Landroidx/lifecycle/ViewModel;", "", ExifInterface.GPS_DIRECTION_TRUE, "", "list", "", "safeSort", "readSimpleInfo", "", "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;", "readSimpleImages", "readSimpleVideos", "Landroid/net/Uri;", ShareConstants.MEDIA_URI, "", TCConstants.VIDEO_RECORD_VIDEPATH, "readSingleImage", "readSingleVideo", "", "isVideo", "readSingleMediaInfo", "extentionName", "isSupportedFile", "localImageOrVideoBean", "readThumbnail", "readIfHasPermission", "Landroidx/lifecycle/LifecycleOwner;", "lifecycleOwner", "Landroidx/lifecycle/Observer;", NotificationCompat.CATEGORY_CALL, "Laa/b;", "filter", "observeAllMedia", "observeImages", "observeVideos", "mediaChanged", "Lkotlin/Function1;", "callback", "readVideoDetail", "Landroid/app/Application;", "context", "Landroid/app/Application;", "getContext", "()Landroid/app/Application;", "mIsAboveAndroid10", "Z", "Landroid/os/HandlerThread;", "mHandlerThread", "Landroid/os/HandlerThread;", "Landroid/os/Handler;", "mHandler", "Landroid/os/Handler;", "mediaList", "Ljava/util/List;", "videoList", "imageList", "Landroidx/lifecycle/MutableLiveData;", "mediaFileLivedata", "Landroidx/lifecycle/MutableLiveData;", "videoFileLivedata", "imageFileLivedata", "readImages", "getReadImages", "()Z", "setReadImages", "(Z)V", "readVideos", "getReadVideos", "setReadVideos", "", "lastNotify", "J", "getLastNotify", "()J", "setLastNotify", "(J)V", "<init>", "(Landroid/app/Application;)V", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class MediaFileFinder extends ViewModel {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final long IMAGE_SIZE = 29360128;
    @NotNull
    private static final String TAG = "FindAllImagesHelper";
    public static final long VIDEO_SIZE = 104857600;
    @Nullable
    private static MediaFileFinder sMediaFileFinder;
    @NotNull
    private final Application context;
    @NotNull
    private final MutableLiveData<List<LocalImageOrVideoBean>> imageFileLivedata;
    @NotNull
    private final List<LocalImageOrVideoBean> imageList;
    private long lastNotify;
    @NotNull
    private final Handler mHandler;
    @NotNull
    private final HandlerThread mHandlerThread;
    private final boolean mIsAboveAndroid10;
    @NotNull
    private final MutableLiveData<List<LocalImageOrVideoBean>> mediaFileLivedata;
    @NotNull
    private final List<LocalImageOrVideoBean> mediaList;
    private boolean readImages;
    private boolean readVideos;
    @NotNull
    private final MutableLiveData<List<LocalImageOrVideoBean>> videoFileLivedata;
    @NotNull
    private final List<LocalImageOrVideoBean> videoList;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\n\u001a\u00020\tH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder$Companion;", "", "()V", "IMAGE_SIZE", "", "TAG", "", "VIDEO_SIZE", "sMediaFileFinder", "Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;", "getInstance", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final MediaFileFinder getInstance() {
            if (MediaFileFinder.sMediaFileFinder == null) {
                synchronized (MediaFileFinder.class) {
                    if (MediaFileFinder.sMediaFileFinder == null) {
                        Companion companion = MediaFileFinder.Companion;
                        BaseApplication baseApplication = BaseApplication.getInstance();
                        Intrinsics.checkNotNullExpressionValue(baseApplication, "getInstance()");
                        MediaFileFinder.sMediaFileFinder = new MediaFileFinder(baseApplication, null);
                    }
                    Unit unit = Unit.INSTANCE;
                }
            }
            MediaFileFinder mediaFileFinder = MediaFileFinder.sMediaFileFinder;
            Intrinsics.checkNotNull(mediaFileFinder);
            return mediaFileFinder;
        }
    }

    private MediaFileFinder(Application application) {
        this.context = application;
        this.mIsAboveAndroid10 = Build.VERSION.SDK_INT >= 29;
        HandlerThread handlerThread = new HandlerThread("MediaFilesLoader");
        this.mHandlerThread = handlerThread;
        this.mediaList = new ArrayList();
        this.videoList = new ArrayList();
        this.imageList = new ArrayList();
        this.mediaFileLivedata = new MutableLiveData<>();
        MutableLiveData<List<LocalImageOrVideoBean>> mutableLiveData = new MutableLiveData<>();
        this.videoFileLivedata = mutableLiveData;
        MutableLiveData<List<LocalImageOrVideoBean>> mutableLiveData2 = new MutableLiveData<>();
        this.imageFileLivedata = mutableLiveData2;
        handlerThread.start();
        this.mHandler = new Handler(handlerThread.getLooper());
        Observer<? super List<LocalImageOrVideoBean>> observer = new Observer() { // from class: com.guochao.faceshow.aaspring.utils.i
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MediaFileFinder.m585_init_$lambda0(MediaFileFinder.this, (List) obj);
            }
        };
        mutableLiveData2.observeForever(observer);
        mutableLiveData.observeForever(observer);
    }

    public /* synthetic */ MediaFileFinder(Application application, DefaultConstructorMarker defaultConstructorMarker) {
        this(application);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-0  reason: not valid java name */
    public static final void m585_init_$lambda0(MediaFileFinder this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.readImages && this$0.readVideos) {
            this$0.mediaList.clear();
            this$0.mediaList.addAll(this$0.imageList);
            this$0.mediaList.addAll(this$0.videoList);
            this$0.safeSort(this$0.mediaList);
            this$0.mediaFileLivedata.postValue(this$0.mediaList);
        }
    }

    @JvmStatic
    @NotNull
    public static final MediaFileFinder getInstance() {
        return Companion.getInstance();
    }

    private final boolean isSupportedFile(String str) {
        boolean endsWith$default;
        boolean endsWith$default2;
        boolean endsWith$default3;
        boolean endsWith$default4;
        boolean endsWith$default5;
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault()");
        String lowerCase = str.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        endsWith$default = StringsKt__StringsJVMKt.endsWith$default(lowerCase, org.light.utils.FileUtils.PIC_POSTFIX_JPEG, false, 2, null);
        if (!endsWith$default) {
            endsWith$default2 = StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".jpeg", false, 2, null);
            if (!endsWith$default2) {
                endsWith$default3 = StringsKt__StringsJVMKt.endsWith$default(lowerCase, org.light.utils.FileUtils.PIC_POSTFIX_PNG, false, 2, null);
                if (!endsWith$default3) {
                    endsWith$default4 = StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".gif", false, 2, null);
                    if (!endsWith$default4) {
                        endsWith$default5 = StringsKt__StringsJVMKt.endsWith$default(lowerCase, org.light.utils.FileUtils.PIC_POSTFIX_WEBP, false, 2, null);
                        if (!endsWith$default5) {
                            return false;
                        }
                    }
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: mediaChanged$lambda-10  reason: not valid java name */
    public static final void m586mediaChanged$lambda10(boolean z10, MediaFileFinder this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            if (z10) {
                this$0.readVideos = false;
                this$0.readSimpleVideos();
            } else {
                this$0.readImages = false;
                this$0.readSimpleImages();
            }
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void observeAllMedia$default(MediaFileFinder mediaFileFinder, LifecycleOwner lifecycleOwner, Observer observer, aa.b bVar, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            bVar = null;
        }
        mediaFileFinder.observeAllMedia(lifecycleOwner, observer, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: observeAllMedia$lambda-3  reason: not valid java name */
    public static final void m587observeAllMedia$lambda3(aa.b bVar, Observer call, List it) {
        List<LocalImageOrVideoBean> list;
        Intrinsics.checkNotNullParameter(call, "$call");
        ArrayList arrayList = new ArrayList();
        if (bVar != null) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            list = CollectionsKt___CollectionsKt.toList(it);
            for (LocalImageOrVideoBean localImageOrVideoBean : list) {
                if (bVar.accept(localImageOrVideoBean)) {
                    arrayList.add(localImageOrVideoBean);
                }
            }
        } else {
            arrayList.addAll(it);
        }
        call.onChanged(arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void observeImages$default(MediaFileFinder mediaFileFinder, LifecycleOwner lifecycleOwner, Observer observer, aa.b bVar, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            bVar = null;
        }
        mediaFileFinder.observeImages(lifecycleOwner, observer, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: observeImages$lambda-4  reason: not valid java name */
    public static final void m588observeImages$lambda4(MediaFileFinder this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.readSimpleImages();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: observeImages$lambda-6  reason: not valid java name */
    public static final void m589observeImages$lambda6(aa.b bVar, Observer call, List it) {
        List<LocalImageOrVideoBean> list;
        Intrinsics.checkNotNullParameter(call, "$call");
        ArrayList arrayList = new ArrayList();
        if (bVar != null) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            list = CollectionsKt___CollectionsKt.toList(it);
            for (LocalImageOrVideoBean localImageOrVideoBean : list) {
                if (bVar.accept(localImageOrVideoBean)) {
                    arrayList.add(localImageOrVideoBean);
                }
            }
        } else {
            arrayList.addAll(it);
        }
        call.onChanged(arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void observeVideos$default(MediaFileFinder mediaFileFinder, LifecycleOwner lifecycleOwner, Observer observer, aa.b bVar, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            bVar = null;
        }
        mediaFileFinder.observeVideos(lifecycleOwner, observer, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: observeVideos$lambda-7  reason: not valid java name */
    public static final void m590observeVideos$lambda7(MediaFileFinder this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.readSimpleVideos();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: observeVideos$lambda-9  reason: not valid java name */
    public static final void m591observeVideos$lambda9(aa.b bVar, Observer call, List it) {
        List<LocalImageOrVideoBean> list;
        Intrinsics.checkNotNullParameter(call, "$call");
        ArrayList arrayList = new ArrayList();
        if (bVar != null) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            list = CollectionsKt___CollectionsKt.toList(it);
            for (LocalImageOrVideoBean localImageOrVideoBean : list) {
                if (bVar.accept(localImageOrVideoBean)) {
                    arrayList.add(localImageOrVideoBean);
                }
            }
        } else {
            arrayList.addAll(it);
        }
        call.onChanged(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: readIfHasPermission$lambda-1  reason: not valid java name */
    public static final void m592readIfHasPermission$lambda1(MediaFileFinder this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.readSimpleInfo();
    }

    private final List<LocalImageOrVideoBean> readSimpleImages() {
        ArrayList arrayList = new ArrayList();
        Cursor query = this.context.getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_id", "_data"}, null, null, null);
        if (query != null && query.moveToFirst()) {
            do {
                int i9 = query.getInt(query.getColumnIndex("_id"));
                String string = query.getString(query.getColumnIndexOrThrow("_data"));
                Uri withAppendedPath = Uri.withAppendedPath(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, String.valueOf(i9));
                Intrinsics.checkNotNullExpressionValue(withAppendedPath, "withAppendedPath(\n      …g()\n                    )");
                LocalImageOrVideoBean readSingleMediaInfo = readSingleMediaInfo(withAppendedPath, false, string);
                if (readSingleMediaInfo != null) {
                    arrayList.add(readSingleMediaInfo);
                }
            } while (query.moveToNext());
            query.close();
        }
        this.imageList.clear();
        this.imageList.addAll(arrayList);
        safeSort(this.imageList);
        this.readImages = true;
        this.imageFileLivedata.postValue(this.imageList);
        return arrayList;
    }

    private final void readSimpleInfo() {
        try {
            readSimpleImages();
            readSimpleVideos();
            safeSort(this.mediaList);
            this.mediaFileLivedata.postValue(this.mediaList);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean> readSimpleVideos() {
        /*
            r9 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.String r1 = "_id"
            java.lang.String r2 = "_data"
            java.lang.String[] r5 = new java.lang.String[]{r1, r2}
            android.app.Application r3 = r9.context
            android.content.ContentResolver r3 = r3.getContentResolver()
            android.net.Uri r4 = android.provider.MediaStore.Video.Media.EXTERNAL_CONTENT_URI
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r3 = r3.query(r4, r5, r6, r7, r8)
            r4 = 1
            if (r3 == 0) goto L56
            boolean r5 = r3.moveToNext()
            if (r5 == 0) goto L56
        L25:
            int r5 = r3.getColumnIndex(r1)
            int r5 = r3.getInt(r5)
            android.net.Uri r6 = android.provider.MediaStore.Video.Media.EXTERNAL_CONTENT_URI
            java.lang.String r5 = java.lang.String.valueOf(r5)
            android.net.Uri r5 = android.net.Uri.withAppendedPath(r6, r5)
            int r6 = r3.getColumnIndexOrThrow(r2)
            java.lang.String r6 = r3.getString(r6)
            java.lang.System.currentTimeMillis()
            java.lang.String r7 = "uri"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r7)
            com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean r5 = r9.readSingleMediaInfo(r5, r4, r6)
            if (r5 == 0) goto L50
            r0.add(r5)
        L50:
            boolean r5 = r3.moveToNext()
            if (r5 != 0) goto L25
        L56:
            if (r3 == 0) goto L5b
            r3.close()
        L5b:
            java.util.List<com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean> r1 = r9.videoList
            r1.clear()
            java.util.List<com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean> r1 = r9.videoList
            r1.addAll(r0)
            java.util.List<com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean> r1 = r9.videoList
            r9.safeSort(r1)
            r9.readVideos = r4
            androidx.lifecycle.MutableLiveData<java.util.List<com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean>> r1 = r9.videoFileLivedata
            java.util.List<com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean> r2 = r9.videoList
            r1.postValue(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.utils.MediaFileFinder.readSimpleVideos():java.util.List");
    }

    private final LocalImageOrVideoBean readSingleImage(Uri uri, String str) {
        File uriToFile;
        LocalImageOrVideoBean localImageOrVideoBean = new LocalImageOrVideoBean(1);
        if (str != null) {
            uriToFile = new File(str);
        } else {
            uriToFile = UriUtils.uriToFile(this.context, uri);
            if (uriToFile == null) {
                return null;
            }
        }
        String name = uriToFile.getName();
        Intrinsics.checkNotNullExpressionValue(name, "file.name");
        if (isSupportedFile(name)) {
            boolean canRead = uriToFile.canRead();
            long length = uriToFile.length();
            if (this.mIsAboveAndroid10) {
                if (uriToFile.length() == 0) {
                    return null;
                }
            } else if (!canRead || length == 0) {
                return null;
            }
            if (length < IMAGE_SIZE) {
                localImageOrVideoBean.setSelectable(true);
            }
            localImageOrVideoBean.setCreateTime(uriToFile.lastModified());
            localImageOrVideoBean.setPath(uriToFile.getAbsolutePath());
            localImageOrVideoBean.setFileName(uriToFile.getName());
            localImageOrVideoBean.setUri(uri);
            return localImageOrVideoBean;
        }
        return null;
    }

    static /* synthetic */ LocalImageOrVideoBean readSingleImage$default(MediaFileFinder mediaFileFinder, Uri uri, String str, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            str = null;
        }
        return mediaFileFinder.readSingleImage(uri, str);
    }

    private final LocalImageOrVideoBean readSingleMediaInfo(Uri uri, boolean z10, String str) {
        if (z10) {
            return readSingleVideo(uri, str);
        }
        return readSingleImage(uri, str);
    }

    static /* synthetic */ LocalImageOrVideoBean readSingleMediaInfo$default(MediaFileFinder mediaFileFinder, Uri uri, boolean z10, String str, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            str = null;
        }
        return mediaFileFinder.readSingleMediaInfo(uri, z10, str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0051, code lost:
        if (r3 != 0) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean readSingleVideo(android.net.Uri r11, java.lang.String r12) {
        /*
            r10 = this;
            com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean r0 = new com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean
            r1 = 2
            r0.<init>(r1)
            if (r12 == 0) goto Le
            java.io.File r2 = new java.io.File
            r2.<init>(r12)
            goto L14
        Le:
            android.app.Application r12 = r10.context
            java.io.File r2 = com.guochao.faceshow.aaspring.utils.UriUtils.uriToFile(r12, r11)
        L14:
            r12 = 0
            if (r2 != 0) goto L18
            return r12
        L18:
            java.lang.String r3 = r2.getName()
            java.lang.String r4 = "file.name"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            java.util.Locale r4 = java.util.Locale.ROOT
            java.lang.String r3 = r3.toLowerCase(r4)
            java.lang.String r4 = "this as java.lang.String).toLowerCase(Locale.ROOT)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            r4 = 0
            java.lang.String r5 = ".mp4"
            boolean r1 = kotlin.text.StringsKt.endsWith$default(r3, r5, r4, r1, r12)
            if (r1 != 0) goto L36
            return r12
        L36:
            boolean r1 = r2.canRead()
            long r3 = r2.length()
            boolean r5 = r10.mIsAboveAndroid10
            r6 = 0
            if (r5 == 0) goto L4d
            long r8 = r2.length()
            int r1 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r1 != 0) goto L55
            return r12
        L4d:
            if (r1 == 0) goto Lf3
            int r1 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r1 != 0) goto L55
            goto Lf3
        L55:
            r5 = 104857600(0x6400000, double:5.1806538E-316)
            r1 = 1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 >= 0) goto L60
            r0.setSelectable(r1)
        L60:
            long r3 = r2.lastModified()
            r0.setCreateTime(r3)
            java.lang.String r3 = r2.getAbsolutePath()
            r0.setPath(r3)
            java.lang.String r2 = r2.getName()
            r0.setFileName(r2)
            r0.setUri(r11)
            android.media.MediaMetadataRetriever r2 = new android.media.MediaMetadataRetriever     // Catch: java.lang.Throwable -> Le6 java.lang.Exception -> Led
            r2.<init>()     // Catch: java.lang.Throwable -> Le6 java.lang.Exception -> Led
            android.app.Application r3 = r10.context     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
            r2.setDataSource(r3, r11)     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
            r11 = 9
            java.lang.String r11 = r2.extractMetadata(r11)     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
            r3 = 18
            java.lang.String r3 = r2.extractMetadata(r3)     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
            r4 = 19
            java.lang.String r4 = r2.extractMetadata(r4)     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
            r5 = 24
            java.lang.String r5 = r2.extractMetadata(r5)     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
            if (r11 == 0) goto Ldd
            long r6 = java.lang.Long.parseLong(r11)     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
            r0.setDuration(r6)     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
            java.lang.String r11 = "90"
            boolean r11 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r11)     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
            if (r11 == 0) goto Lac
            goto Lb2
        Lac:
            java.lang.String r11 = "270"
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r11)     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
        Lb2:
            if (r1 == 0) goto Lc9
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4)     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
            int r11 = java.lang.Integer.parseInt(r4)     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
            r0.setWidth(r11)     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
            int r11 = java.lang.Integer.parseInt(r3)     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
            r0.setHeight(r11)     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
            goto Ldd
        Lc9:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
            int r11 = java.lang.Integer.parseInt(r3)     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
            r0.setWidth(r11)     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4)     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
            int r11 = java.lang.Integer.parseInt(r4)     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
            r0.setHeight(r11)     // Catch: java.lang.Throwable -> Le1 java.lang.Exception -> Le4
        Ldd:
            r2.release()
            return r0
        Le1:
            r11 = move-exception
            r12 = r2
            goto Le7
        Le4:
            goto Lee
        Le6:
            r11 = move-exception
        Le7:
            if (r12 == 0) goto Lec
            r12.release()
        Lec:
            throw r11
        Led:
            r2 = r12
        Lee:
            if (r2 == 0) goto Lf3
            r2.release()
        Lf3:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.utils.MediaFileFinder.readSingleVideo(android.net.Uri, java.lang.String):com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean");
    }

    static /* synthetic */ LocalImageOrVideoBean readSingleVideo$default(MediaFileFinder mediaFileFinder, Uri uri, String str, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            str = null;
        }
        return mediaFileFinder.readSingleVideo(uri, str);
    }

    private final void readThumbnail(LocalImageOrVideoBean localImageOrVideoBean, Uri uri) {
        MediaMetadataRetriever mediaMetadataRetriever;
        Throwable th2;
        File file = new File(localImageOrVideoBean.getPath());
        String absolutePath = new File(FilePathProvider.getCachePath("thumbnail"), file.getName() + org.light.utils.FileUtils.PIC_POSTFIX_JPEG).getAbsolutePath();
        localImageOrVideoBean.setThumbnailPath(absolutePath);
        File file2 = new File(absolutePath);
        if (file2.exists() && file2.length() > 0) {
            return;
        }
        MediaMetadataRetriever mediaMetadataRetriever2 = null;
        try {
            mediaMetadataRetriever = new MediaMetadataRetriever();
            try {
                mediaMetadataRetriever.setDataSource(this.context, uri);
                Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(1000000L, 2);
                if (frameAtTime != null) {
                    FileUtil.saveBitmap(absolutePath, frameAtTime);
                    frameAtTime.recycle();
                }
                mediaMetadataRetriever.release();
            } catch (Exception unused) {
                mediaMetadataRetriever2 = mediaMetadataRetriever;
                if (mediaMetadataRetriever2 != null) {
                    mediaMetadataRetriever2.release();
                }
            } catch (Throwable th3) {
                th2 = th3;
                if (mediaMetadataRetriever != null) {
                    mediaMetadataRetriever.release();
                }
                throw th2;
            }
        } catch (Exception unused2) {
        } catch (Throwable th4) {
            mediaMetadataRetriever = null;
            th2 = th4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: readVideoDetail$lambda-12  reason: not valid java name */
    public static final void m593readVideoDetail$lambda12(MediaFileFinder this$0, final LocalImageOrVideoBean localImageOrVideoBean, final Function1 callback) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(localImageOrVideoBean, "$localImageOrVideoBean");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Uri uri = localImageOrVideoBean.getUri();
        Intrinsics.checkNotNullExpressionValue(uri, "localImageOrVideoBean.uri");
        this$0.readThumbnail(localImageOrVideoBean, uri);
        HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.n
            @Override // java.lang.Runnable
            public final void run() {
                MediaFileFinder.m594readVideoDetail$lambda12$lambda11(Function1.this, localImageOrVideoBean);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: readVideoDetail$lambda-12$lambda-11  reason: not valid java name */
    public static final void m594readVideoDetail$lambda12$lambda11(Function1 callback, LocalImageOrVideoBean localImageOrVideoBean) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(localImageOrVideoBean, "$localImageOrVideoBean");
        callback.invoke(localImageOrVideoBean);
    }

    private final <T extends Comparable<? super T>> void safeSort(List<T> list) {
        try {
            CollectionsKt__MutableCollectionsJVMKt.sort(list);
        } catch (Exception unused) {
        }
    }

    @NotNull
    public final Application getContext() {
        return this.context;
    }

    public final long getLastNotify() {
        return this.lastNotify;
    }

    public final boolean getReadImages() {
        return this.readImages;
    }

    public final boolean getReadVideos() {
        return this.readVideos;
    }

    public final void mediaChanged(@NotNull Uri uri, final boolean z10) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        if (System.currentTimeMillis() - this.lastNotify < 2000) {
            return;
        }
        this.lastNotify = System.currentTimeMillis();
        if (ContextCompat.checkSelfPermission(BaseApplication.getInstance(), "android.permission.READ_EXTERNAL_STORAGE") != 0) {
            return;
        }
        this.mHandler.post(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.o
            @Override // java.lang.Runnable
            public final void run() {
                MediaFileFinder.m586mediaChanged$lambda10(z10, this);
            }
        });
    }

    @JvmOverloads
    public final void observeAllMedia(@NotNull LifecycleOwner lifecycleOwner, @NotNull Observer<List<LocalImageOrVideoBean>> call) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(call, "call");
        observeAllMedia$default(this, lifecycleOwner, call, null, 4, null);
    }

    @JvmOverloads
    public final void observeAllMedia(@NotNull LifecycleOwner lifecycleOwner, @NotNull final Observer<List<LocalImageOrVideoBean>> call, @Nullable final aa.b<LocalImageOrVideoBean> bVar) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(call, "call");
        if (!this.readImages || !this.readVideos) {
            readIfHasPermission();
        }
        this.mediaFileLivedata.observe(lifecycleOwner, new Observer() { // from class: com.guochao.faceshow.aaspring.utils.f
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MediaFileFinder.m587observeAllMedia$lambda3(aa.b.this, call, (List) obj);
            }
        });
    }

    @JvmOverloads
    public final void observeImages(@NotNull LifecycleOwner lifecycleOwner, @NotNull Observer<List<LocalImageOrVideoBean>> call) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(call, "call");
        observeImages$default(this, lifecycleOwner, call, null, 4, null);
    }

    @JvmOverloads
    public final void observeImages(@NotNull LifecycleOwner lifecycleOwner, @NotNull final Observer<List<LocalImageOrVideoBean>> call, @Nullable final aa.b<LocalImageOrVideoBean> bVar) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(call, "call");
        if (!this.readImages) {
            this.mHandler.post(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.l
                @Override // java.lang.Runnable
                public final void run() {
                    MediaFileFinder.m588observeImages$lambda4(MediaFileFinder.this);
                }
            });
        }
        this.imageFileLivedata.observe(lifecycleOwner, new Observer() { // from class: com.guochao.faceshow.aaspring.utils.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MediaFileFinder.m589observeImages$lambda6(aa.b.this, call, (List) obj);
            }
        });
    }

    @JvmOverloads
    public final void observeVideos(@NotNull LifecycleOwner lifecycleOwner, @NotNull Observer<List<LocalImageOrVideoBean>> call) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(call, "call");
        observeVideos$default(this, lifecycleOwner, call, null, 4, null);
    }

    @JvmOverloads
    public final void observeVideos(@NotNull LifecycleOwner lifecycleOwner, @NotNull final Observer<List<LocalImageOrVideoBean>> call, @Nullable final aa.b<LocalImageOrVideoBean> bVar) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(call, "call");
        if (!this.readVideos) {
            this.mHandler.post(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.k
                @Override // java.lang.Runnable
                public final void run() {
                    MediaFileFinder.m590observeVideos$lambda7(MediaFileFinder.this);
                }
            });
        }
        this.videoFileLivedata.observe(lifecycleOwner, new Observer() { // from class: com.guochao.faceshow.aaspring.utils.h
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MediaFileFinder.m591observeVideos$lambda9(aa.b.this, call, (List) obj);
            }
        });
    }

    public final void readIfHasPermission() {
        if (ContextCompat.checkSelfPermission(BaseApplication.getInstance(), "android.permission.READ_EXTERNAL_STORAGE") == 0) {
            this.mHandler.post(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.j
                @Override // java.lang.Runnable
                public final void run() {
                    MediaFileFinder.m592readIfHasPermission$lambda1(MediaFileFinder.this);
                }
            });
        }
    }

    public final void readVideoDetail(@NotNull final LocalImageOrVideoBean localImageOrVideoBean, @NotNull final Function1<? super LocalImageOrVideoBean, Unit> callback) {
        Intrinsics.checkNotNullParameter(localImageOrVideoBean, "localImageOrVideoBean");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.mHandler.post(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.m
            @Override // java.lang.Runnable
            public final void run() {
                MediaFileFinder.m593readVideoDetail$lambda12(MediaFileFinder.this, localImageOrVideoBean, callback);
            }
        });
    }

    public final void setLastNotify(long j10) {
        this.lastNotify = j10;
    }

    public final void setReadImages(boolean z10) {
        this.readImages = z10;
    }

    public final void setReadVideos(boolean z10) {
        this.readVideos = z10;
    }
}
