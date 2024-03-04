package com.google.android.exoplayer2.offline;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.z;
import java.util.HashMap;
import java.util.Objects;
/* loaded from: classes.dex */
public abstract class DownloadService extends Service {

    /* renamed from: j  reason: collision with root package name */
    private static final HashMap<Class<? extends DownloadService>, a> f6378j = new HashMap<>();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f6379a;
    @StringRes

    /* renamed from: b  reason: collision with root package name */
    private final int f6380b;
    @StringRes

    /* renamed from: c  reason: collision with root package name */
    private final int f6381c;

    /* renamed from: d  reason: collision with root package name */
    private a f6382d;

    /* renamed from: e  reason: collision with root package name */
    private int f6383e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f6384f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f6385g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f6386h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f6387i;

    /* loaded from: classes.dex */
    private static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private DownloadService f6388a;

        static /* synthetic */ u2.a a(a aVar) {
            Objects.requireNonNull(aVar);
            return null;
        }

        public void b(DownloadService downloadService) {
            com.google.android.exoplayer2.util.a.f(this.f6388a == null);
            this.f6388a = downloadService;
            throw null;
        }

        public void c(DownloadService downloadService) {
            com.google.android.exoplayer2.util.a.f(this.f6388a == downloadService);
            this.f6388a = null;
        }
    }

    protected abstract u2.a a();

    @Override // android.app.Service
    @Nullable
    public final IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException();
    }

    @Override // android.app.Service
    public void onCreate() {
        String str = this.f6379a;
        if (str != null) {
            z.a(this, str, this.f6380b, this.f6381c, 2);
        }
        a aVar = f6378j.get(getClass());
        if (aVar != null) {
            this.f6382d = aVar;
            aVar.b(this);
            return;
        }
        int i9 = l0.f6985a;
        a();
        throw null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f6387i = true;
        ((a) com.google.android.exoplayer2.util.a.e(this.f6382d)).c(this);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x009a, code lost:
        if (r2.equals("com.google.android.exoplayer.downloadService.action.RESUME_DOWNLOADS") == false) goto L14;
     */
    @Override // android.app.Service
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int onStartCommand(@androidx.annotation.Nullable android.content.Intent r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.offline.DownloadService.onStartCommand(android.content.Intent, int, int):int");
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        this.f6385g = true;
    }
}
