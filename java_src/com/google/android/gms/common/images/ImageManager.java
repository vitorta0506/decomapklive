package com.google.android.gms.common.images;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.base.zam;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2.dex */
public final class ImageManager {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f7650a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static HashSet f7651b = new HashSet();

    /* JADX INFO: Access modifiers changed from: private */
    @KeepName
    /* loaded from: classes2.dex */
    public final class ImageReceiver extends ResultReceiver {
        private final Uri zab;
        private final ArrayList zac;

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i9, Bundle bundle) {
            ImageManager.i(null).execute(new a(null, this.zab, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Context a(ImageManager imageManager) {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Handler b(ImageManager imageManager) {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zam c(ImageManager imageManager) {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Map f(ImageManager imageManager) {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Map g(ImageManager imageManager) {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Map h(ImageManager imageManager) {
        throw null;
    }

    static /* bridge */ /* synthetic */ ExecutorService i(ImageManager imageManager) {
        throw null;
    }
}
