package com.guochao.faceshow.aaspring.utils;

import android.app.Application;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.internal.ShareConstants;
import com.guochao.faceshow.utils.HandlerGetter;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010J\u001a\u0010\u0011\u001a\u00020\r2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;", "", "()V", "handler", "Landroid/os/Handler;", "getHandler", "()Landroid/os/Handler;", "mContentObserver", "Landroid/database/ContentObserver;", "mContext", "Landroid/app/Application;", "mVideoObserver", "destroy", "", "init", "context", "Landroid/content/Context;", "refreshUri", ShareConstants.MEDIA_URI, "Landroid/net/Uri;", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PhotoObserver {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final PhotoObserver instance = new PhotoObserver();
    @NotNull
    private final Handler handler;
    @NotNull
    private ContentObserver mContentObserver;
    @Nullable
    private Application mContext;
    @NotNull
    private ContentObserver mVideoObserver;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/PhotoObserver$Companion;", "", "()V", "instance", "Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;", "getInstance$annotations", "getInstance", "()Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public static /* synthetic */ void getInstance$annotations() {
        }

        @NotNull
        public final PhotoObserver getInstance() {
            return PhotoObserver.instance;
        }
    }

    public PhotoObserver() {
        final Handler mainHandler = HandlerGetter.getMainHandler();
        this.handler = mainHandler;
        this.mContentObserver = new ContentObserver(mainHandler) { // from class: com.guochao.faceshow.aaspring.utils.PhotoObserver$mContentObserver$1
            @Override // android.database.ContentObserver
            public void onChange(boolean z10, @Nullable Uri uri) {
                super.onChange(z10, uri);
                PhotoObserver.this.refreshUri(uri, false);
            }
        };
        this.mVideoObserver = new ContentObserver(mainHandler) { // from class: com.guochao.faceshow.aaspring.utils.PhotoObserver$mVideoObserver$1
            @Override // android.database.ContentObserver
            public void onChange(boolean z10, @Nullable Uri uri) {
                super.onChange(z10, uri);
                PhotoObserver.this.refreshUri(uri, true);
            }
        };
    }

    @NotNull
    public static final PhotoObserver getInstance() {
        return Companion.getInstance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshUri(Uri uri, boolean z10) {
        if (uri == null) {
            return;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (TextUtils.isEmpty(lastPathSegment) || !TextUtils.isDigitsOnly(lastPathSegment)) {
            return;
        }
        MediaFileFinder.Companion.getInstance().mediaChanged(uri, z10);
    }

    public final void destroy() {
        Application application = this.mContext;
        Intrinsics.checkNotNull(application);
        application.getContentResolver().unregisterContentObserver(this.mContentObserver);
        Application application2 = this.mContext;
        Intrinsics.checkNotNull(application2);
        application2.getContentResolver().unregisterContentObserver(this.mVideoObserver);
    }

    @NotNull
    public final Handler getHandler() {
        return this.handler;
    }

    public final void init(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.mContext = (Application) context.getApplicationContext();
        context.getContentResolver().registerContentObserver(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, true, this.mContentObserver);
        context.getContentResolver().registerContentObserver(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, true, this.mVideoObserver);
    }
}
