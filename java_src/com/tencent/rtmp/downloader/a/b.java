package com.tencent.rtmp.downloader.a;

import android.app.Application;
import android.content.Context;
import android.net.Uri;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Base64;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.storage.PersistStorage;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.txcplayer.a.a;
import com.tencent.liteav.txcvodplayer.b.a;
import com.tencent.liteav.txcvodplayer.b.d;
import com.tencent.liteav.txcvodplayer.b.e;
import com.tencent.liteav.txcvodplayer.b.f;
import com.tencent.liteav.txcvodplayer.b.g;
import com.tencent.rtmp.TXPlayerAuthBuilder;
import com.tencent.rtmp.downloader.ITXVodDownloadListener;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
import com.tencent.rtmp.downloader.TXVodDownloadManager;
import com.tencent.rtmp.downloader.TXVodDownloadMediaInfo;
import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.light.utils.FileUtils;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public com.tencent.liteav.txcplayer.a.a f33405a;

    /* renamed from: b  reason: collision with root package name */
    ArrayList<c> f33406b;

    /* renamed from: c  reason: collision with root package name */
    public ITXVodDownloadListener f33407c;

    /* renamed from: d  reason: collision with root package name */
    public PersistStorage f33408d;

    /* renamed from: e  reason: collision with root package name */
    a.InterfaceC0321a f33409e = new a.InterfaceC0321a() { // from class: com.tencent.rtmp.downloader.a.b.4
        @Override // com.tencent.liteav.txcplayer.a.a.InterfaceC0321a
        public final void a(com.tencent.liteav.txcplayer.a.b bVar) {
            c a10 = b.this.a(bVar);
            if (a10 != null) {
                a10.h(1);
                b.a(b.this, a10);
                ITXVodDownloadListener iTXVodDownloadListener = b.this.f33407c;
                if (iTXVodDownloadListener != null) {
                    iTXVodDownloadListener.onDownloadStart(a10);
                }
            }
        }

        @Override // com.tencent.liteav.txcplayer.a.a.InterfaceC0321a
        public final void b(com.tencent.liteav.txcplayer.a.b bVar) {
            c a10 = b.this.a(bVar);
            if (a10 != null) {
                LiteavLog.i("TXVodDownloadManagerImpl", "downloadEnd " + a10.getPlayPath());
                a10.h(2);
                b.a(b.this, a10);
                synchronized (b.this.f33406b) {
                    b.this.f33406b.remove(a10);
                }
                ITXVodDownloadListener iTXVodDownloadListener = b.this.f33407c;
                if (iTXVodDownloadListener != null) {
                    iTXVodDownloadListener.onDownloadStop(a10);
                }
            }
        }

        @Override // com.tencent.liteav.txcplayer.a.a.InterfaceC0321a
        public final void c(com.tencent.liteav.txcplayer.a.b bVar) {
            c a10 = b.this.a(bVar);
            if (a10 != null) {
                LiteavLog.i("TXVodDownloadManagerImpl", "downloadFinish " + a10.getPlayPath());
                a10.h(4);
                b.a(b.this, a10);
                synchronized (b.this.f33406b) {
                    b.this.f33406b.remove(a10);
                }
                if (b.this.f33407c != null) {
                    if (b.c(a10.getPlayPath())) {
                        b.this.f33407c.onDownloadFinish(a10);
                    } else {
                        b.this.f33407c.onDownloadError(a10, TXVodDownloadManager.DOWNLOAD_NO_FILE, "The file not exist");
                    }
                }
            }
        }

        @Override // com.tencent.liteav.txcplayer.a.a.InterfaceC0321a
        public final void d(com.tencent.liteav.txcplayer.a.b bVar) {
            ITXVodDownloadListener iTXVodDownloadListener;
            c a10 = b.this.a(bVar);
            if (a10 == null || (iTXVodDownloadListener = b.this.f33407c) == null) {
                return;
            }
            iTXVodDownloadListener.onDownloadProgress(a10);
        }

        @Override // com.tencent.liteav.txcplayer.a.a.InterfaceC0321a
        public final void a(com.tencent.liteav.txcplayer.a.b bVar, int i9, String str) {
            c a10 = b.this.a(bVar);
            if (a10 != null) {
                LiteavLog.w("TXVodDownloadManagerImpl", "downloadError " + a10.getPlayPath() + " " + i9 + " ： " + str);
                a10.h(3);
                b.a(b.this, a10);
                synchronized (b.this.f33406b) {
                    b.this.f33406b.remove(a10);
                }
                if (b.this.f33407c != null) {
                    if (a10.getDownloadState() == 2) {
                        b.this.f33407c.onDownloadStop(a10);
                    } else if (i9 == 1008) {
                        b.this.f33407c.onDownloadError(a10, TXVodDownloadManager.DOWNLOAD_HLS_KEY_ERROR, str);
                    } else if (i9 == 14020003) {
                        b.this.f33407c.onDownloadError(a10, TXVodDownloadManager.DOWNLOAD_403FORBIDDEN, str);
                    } else {
                        b.this.f33407c.onDownloadError(a10, TXVodDownloadManager.DOWNLOAD_DISCONNECT, str);
                    }
                }
            }
        }
    };

    public b() {
        Context b10 = b();
        com.tencent.liteav.txcplayer.a.a a10 = com.tencent.liteav.txcplayer.a.c.a(b10);
        this.f33405a = a10;
        if (a10 != null) {
            a10.setListener(this.f33409e);
        }
        this.f33406b = new ArrayList<>();
        if (b10 != null) {
            ContextUtils.initApplicationContext(b10);
            ContextUtils.setDataDirectorySuffix("liteav");
            this.f33408d = new PersistStorage("vod_download");
        }
    }

    private static Context b() {
        try {
            Method method = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", new Class[0]);
            if (method == null) {
                return null;
            }
            method.setAccessible(true);
            Object invoke = method.invoke(null, new Object[0]);
            Method method2 = invoke.getClass().getMethod("getApplication", new Class[0]);
            if (method2 == null) {
                return null;
            }
            return ((Application) method2.invoke(invoke, new Object[0])).getApplicationContext();
        } catch (Throwable th2) {
            th2.printStackTrace();
            return null;
        }
    }

    static boolean c(String str) {
        if (str.contains(".hls")) {
            str = str.substring(0, str.indexOf(".hls") + 4);
        }
        return new File(str).exists();
    }

    private static c d(String str) {
        a aVar;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        byte[] decode = Base64.decode(str, 2);
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(decode, 0, decode.length);
        obtain.setDataPosition(0);
        c createFromParcel = c.CREATOR.createFromParcel(obtain);
        obtain.recycle();
        if (createFromParcel == null) {
            return null;
        }
        if (!createFromParcel.getPlayPath().contains("&oversign=") && (aVar = (a) createFromParcel.getDataSource()) != null && !TextUtils.isEmpty(aVar.getOverlayKey())) {
            createFromParcel.a(a(createFromParcel.getPlayPath(), createFromParcel));
        }
        return createFromParcel;
    }

    public final c a(String str, String str2) {
        c cVar = new c();
        cVar.b(str);
        cVar.c(str2);
        c a10 = a((TXVodDownloadMediaInfo) cVar);
        if (a10 != null) {
            return a10;
        }
        a(cVar);
        return cVar;
    }

    public final c a(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        c d10;
        String b10 = b(tXVodDownloadMediaInfo);
        if (TextUtils.isEmpty(b10)) {
            return null;
        }
        String string = this.f33408d.getString(b10);
        if (TextUtils.isEmpty(string) || (d10 = d(string)) == null) {
            return null;
        }
        if (c(d10.getPlayPath())) {
            LiteavLog.i("TXVodDownloadManagerImpl", "partly download, resume download");
            a(d10);
            return d10;
        }
        LiteavLog.w("TXVodDownloadManagerImpl", "file is deleted, remove cache and restart download");
        this.f33408d.clear(b10);
        PersistStorage persistStorage = this.f33408d;
        persistStorage.clear(b10 + "_kv");
        this.f33408d.commit();
        return null;
    }

    public final TXVodDownloadMediaInfo b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.f33406b) {
            Iterator<c> it = this.f33406b.iterator();
            while (it.hasNext()) {
                c next = it.next();
                if (next.getUrl() != null && next.getUrl().equals(str)) {
                    return next;
                }
            }
            if (this.f33408d != null) {
                c cVar = new c();
                cVar.b(str);
                String b10 = b(cVar);
                c d10 = d(this.f33408d.getString(b10));
                if (d10 == null || c(d10.getPlayPath())) {
                    return d10;
                }
                this.f33408d.clear(b10);
                this.f33408d.commit();
                return null;
            }
            return null;
        }
    }

    public final c a(final TXVodDownloadDataSource tXVodDownloadDataSource) {
        final a aVar;
        final c cVar = new c();
        if (TextUtils.isEmpty(tXVodDownloadDataSource.getTemplateName())) {
            aVar = new a(tXVodDownloadDataSource.getAuthBuilder(), tXVodDownloadDataSource.getQuality());
        } else {
            aVar = new a(tXVodDownloadDataSource.getAuthBuilder(), tXVodDownloadDataSource.getTemplateName());
        }
        cVar.a(aVar);
        c a10 = a((TXVodDownloadMediaInfo) cVar);
        if (a10 != null) {
            return a10;
        }
        if (tXVodDownloadDataSource.getAuthBuilder() != null) {
            TXPlayerAuthBuilder authBuilder = aVar.getAuthBuilder();
            d dVar = new d();
            dVar.f31546c = authBuilder.isHttps();
            dVar.a(new e() { // from class: com.tencent.rtmp.downloader.a.b.1
                @Override // com.tencent.liteav.txcvodplayer.b.e
                public final void a(d dVar2) {
                    String templateName;
                    String str;
                    List<Integer> list;
                    String str2;
                    if (cVar.getDownloadState() == 2) {
                        synchronized (b.this.f33406b) {
                            b.this.f33406b.remove(cVar);
                        }
                        ITXVodDownloadListener iTXVodDownloadListener = b.this.f33407c;
                        if (iTXVodDownloadListener != null) {
                            iTXVodDownloadListener.onDownloadStop(cVar);
                        }
                        LiteavLog.w("TXVodDownloadManagerImpl", "Download task canceled");
                        return;
                    }
                    f a11 = dVar2.a();
                    g gVar = null;
                    if (tXVodDownloadDataSource.getQuality() != 1000) {
                        int quality = aVar.getQuality();
                        if (quality == 0) {
                            gVar = a11.f();
                        } else {
                            String a12 = a.a(quality);
                            List<f.a> k10 = a11.k();
                            if (k10 != null) {
                                for (f.a aVar2 : k10) {
                                    if (aVar2.f31564a.equals(a12)) {
                                        list = aVar2.f31566c;
                                        break;
                                    }
                                }
                            }
                            list = null;
                            if (list != null) {
                                for (g gVar2 : a11.e()) {
                                    if (!list.contains(Integer.valueOf(gVar2.f31575i)) || ((str2 = gVar2.f31573g) != null && !str2.contains("hls"))) {
                                    }
                                    gVar = gVar2;
                                }
                            }
                        }
                    } else if (tXVodDownloadDataSource.getTemplateName() != null && (templateName = aVar.getTemplateName()) != null) {
                        for (g gVar22 : a11.e()) {
                            if (!templateName.equals(gVar22.f31574h) || ((str = gVar22.f31573g) != null && !str.contains("hls"))) {
                            }
                            gVar = gVar22;
                        }
                    }
                    if (gVar == null) {
                        synchronized (b.this.f33406b) {
                            b.this.f33406b.remove(cVar);
                        }
                        ITXVodDownloadListener iTXVodDownloadListener2 = b.this.f33407c;
                        if (iTXVodDownloadListener2 != null) {
                            iTXVodDownloadListener2.onDownloadError(cVar, TXVodDownloadManager.DOWNLOAD_NO_FILE, "No such resolution");
                            return;
                        }
                        return;
                    }
                    String str3 = gVar.f31567a;
                    TXVodDownloadDataSource tXVodDownloadDataSource2 = tXVodDownloadDataSource;
                    if (tXVodDownloadDataSource2 != null && tXVodDownloadDataSource2.getToken() != null) {
                        String[] split = str3.split(FileUtils.RES_PREFIX_STORAGE);
                        if (split.length > 0) {
                            int lastIndexOf = str3.lastIndexOf(split[split.length - 1]);
                            str3 = str3.substring(0, lastIndexOf) + "voddrm.token." + tXVodDownloadDataSource.getToken() + "." + str3.substring(lastIndexOf);
                        }
                    }
                    cVar.b(str3);
                    cVar.c(gVar.f31570d);
                    cVar.a(gVar.f31571e);
                    b.this.a(cVar);
                }

                @Override // com.tencent.liteav.txcvodplayer.b.e
                public final void a(d dVar2, String str, int i9) {
                    synchronized (b.this.f33406b) {
                        b.this.f33406b.remove(cVar);
                    }
                    ITXVodDownloadListener iTXVodDownloadListener = b.this.f33407c;
                    if (iTXVodDownloadListener != null) {
                        iTXVodDownloadListener.onDownloadError(cVar, TXVodDownloadManager.DOWNLOAD_AUTH_FAILED, str);
                    }
                }
            });
            if (dVar.a(authBuilder.getAppId(), authBuilder.getFileId(), authBuilder.getTimeout(), authBuilder.getUs(), authBuilder.getExper(), authBuilder.getSign()) == 0) {
                cVar.a(dVar);
                synchronized (this.f33406b) {
                    this.f33406b.add(cVar);
                }
                return cVar;
            }
            LiteavLog.e("TXVodDownloadManagerImpl", "unable to getPlayInfo");
            return null;
        }
        return null;
    }

    public static String b(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        TXVodDownloadDataSource dataSource = tXVodDownloadMediaInfo.getDataSource();
        if (dataSource == null) {
            if (TextUtils.isEmpty(tXVodDownloadMediaInfo.getUrl())) {
                return null;
            }
            return tXVodDownloadMediaInfo.getUserName() + "_" + com.tencent.liteav.txcplayer.b.a.b(tXVodDownloadMediaInfo.getUrl());
        } else if (TextUtils.isEmpty(dataSource.getFileId())) {
            return null;
        } else {
            return dataSource.getUserName() + "_" + dataSource.getAppId() + "_" + dataSource.getFileId() + "_" + dataSource.getQuality();
        }
    }

    static /* synthetic */ String b(String str, String str2) {
        String[] split;
        if (TextUtils.isEmpty(str) || (split = str.split(IOUtils.LINE_SEPARATOR_UNIX)) == null || split.length <= 0) {
            return null;
        }
        boolean z10 = false;
        for (String str3 : split) {
            if (!TextUtils.isEmpty(str3)) {
                if (str3.startsWith("#EXT-X-STREAM-INF:")) {
                    if (str3.contains(str2)) {
                        z10 = true;
                    }
                } else if (z10 && str3.contains(".m3u8")) {
                    return str3;
                }
            }
        }
        return null;
    }

    final void a(c cVar) {
        String url = cVar.getUrl();
        if (url == null) {
            return;
        }
        if (Uri.parse(url).getPath().endsWith(".m3u8")) {
            cVar.a(a(this.f33405a.makePlayPath(url), cVar));
            if (cVar.getPlayPath() == null) {
                ITXVodDownloadListener iTXVodDownloadListener = this.f33407c;
                if (iTXVodDownloadListener != null) {
                    iTXVodDownloadListener.onDownloadError(cVar, TXVodDownloadManager.DOWNLOAD_PATH_ERROR, "Failed to create local path");
                    return;
                }
                return;
            }
            LiteavLog.d("TXVodDownloadManagerImpl", "download hls " + url + " to " + cVar.getPlayPath());
            synchronized (this.f33406b) {
                this.f33406b.add(cVar);
            }
            cVar.g(this.f33405a.downloadHls(url, cVar.getPlayPath()));
            if (cVar.getTaskId() < 0) {
                LiteavLog.e("TXVodDownloadManagerImpl", "start download failed");
                ITXVodDownloadListener iTXVodDownloadListener2 = this.f33407c;
                if (iTXVodDownloadListener2 != null) {
                    iTXVodDownloadListener2.onDownloadError(cVar, TXVodDownloadManager.DOWNLOAD_FORMAT_ERROR, "Internal error");
                    return;
                }
                return;
            }
            return;
        }
        LiteavLog.e("TXVodDownloadManagerImpl", "only support m3u8 file, format error: ".concat(url));
        ITXVodDownloadListener iTXVodDownloadListener3 = this.f33407c;
        if (iTXVodDownloadListener3 != null) {
            iTXVodDownloadListener3.onDownloadError(cVar, TXVodDownloadManager.DOWNLOAD_FORMAT_ERROR, "No support format");
        }
    }

    private static String a(String str, c cVar) {
        TXVodDownloadDataSource dataSource = cVar.getDataSource();
        if (dataSource == null || TextUtils.isEmpty(dataSource.getOverlayKey())) {
            return str;
        }
        return str.concat("&oversign=" + dataSource.getAppId() + "&o1=" + dataSource.getUserName() + "&o2=" + dataSource.getFileId() + "&o3=" + dataSource.getQuality() + "&o4=" + dataSource.getOverlayKey() + "&o5=" + dataSource.getOverlayIv() + "&oversign=");
    }

    public final boolean a(String str) {
        LiteavLog.d("TXVodDownloadManagerImpl", "delete file ".concat(String.valueOf(str)));
        synchronized (this.f33406b) {
            Iterator<c> it = this.f33406b.iterator();
            while (it.hasNext()) {
                c next = it.next();
                if (next.getPlayPath() != null && next.getPlayPath().equals(str)) {
                    LiteavLog.e("TXVodDownloadManagerImpl", "file is downloading, can not be delete");
                    return false;
                }
            }
            return this.f33405a.deleteDownloadFile(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000f A[Catch: all -> 0x006b, TryCatch #0 {, blocks: (B:4:0x0003, B:5:0x0009, B:7:0x000f, B:9:0x001d, B:11:0x0029, B:13:0x002d, B:14:0x0030, B:16:0x0036, B:18:0x003a, B:19:0x003d, B:21:0x0041, B:22:0x0044, B:24:0x004a, B:26:0x004e, B:27:0x0051, B:29:0x0055, B:30:0x0058, B:32:0x005c, B:33:0x005f, B:35:0x0063, B:36:0x0066, B:38:0x0068), top: B:44:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final com.tencent.rtmp.downloader.a.c a(com.tencent.liteav.txcplayer.a.b r6) {
        /*
            r5 = this;
            java.util.ArrayList<com.tencent.rtmp.downloader.a.c> r0 = r5.f33406b
            monitor-enter(r0)
            java.util.ArrayList<com.tencent.rtmp.downloader.a.c> r1 = r5.f33406b     // Catch: java.lang.Throwable -> L6b
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L6b
        L9:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L6b
            if (r2 == 0) goto L68
            java.lang.Object r2 = r1.next()     // Catch: java.lang.Throwable -> L6b
            com.tencent.rtmp.downloader.a.c r2 = (com.tencent.rtmp.downloader.a.c) r2     // Catch: java.lang.Throwable -> L6b
            int r3 = r2.getTaskId()     // Catch: java.lang.Throwable -> L6b
            int r4 = r6.f31346a     // Catch: java.lang.Throwable -> L6b
            if (r3 == r4) goto L29
            java.lang.String r3 = r2.getUrl()     // Catch: java.lang.Throwable -> L6b
            java.lang.String r4 = r6.f31347b     // Catch: java.lang.Throwable -> L6b
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Throwable -> L6b
            if (r3 == 0) goto L9
        L29:
            int r1 = r6.f31353h     // Catch: java.lang.Throwable -> L6b
            if (r1 <= 0) goto L30
            r2.b(r1)     // Catch: java.lang.Throwable -> L6b
        L30:
            int r1 = r2.getDuration()     // Catch: java.lang.Throwable -> L6b
            if (r1 > 0) goto L3d
            int r1 = r6.f31354i     // Catch: java.lang.Throwable -> L6b
            if (r1 <= 0) goto L3d
            r2.a(r1)     // Catch: java.lang.Throwable -> L6b
        L3d:
            int r1 = r6.f31348c     // Catch: java.lang.Throwable -> L6b
            if (r1 <= 0) goto L44
            r2.d(r1)     // Catch: java.lang.Throwable -> L6b
        L44:
            int r1 = r2.getSize()     // Catch: java.lang.Throwable -> L6b
            if (r1 > 0) goto L51
            int r1 = r6.f31349d     // Catch: java.lang.Throwable -> L6b
            if (r1 <= 0) goto L51
            r2.c(r1)     // Catch: java.lang.Throwable -> L6b
        L51:
            int r1 = r6.f31351f     // Catch: java.lang.Throwable -> L6b
            if (r1 <= 0) goto L58
            r2.e(r1)     // Catch: java.lang.Throwable -> L6b
        L58:
            int r1 = r6.f31352g     // Catch: java.lang.Throwable -> L6b
            if (r1 <= 0) goto L5f
            r2.f(r1)     // Catch: java.lang.Throwable -> L6b
        L5f:
            int r6 = r6.f31350e     // Catch: java.lang.Throwable -> L6b
            if (r6 <= 0) goto L66
            r2.setSpeed(r6)     // Catch: java.lang.Throwable -> L6b
        L66:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6b
            return r2
        L68:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6b
            r6 = 0
            return r6
        L6b:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6b
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.rtmp.downloader.a.b.a(com.tencent.liteav.txcplayer.a.b):com.tencent.rtmp.downloader.a.c");
    }

    public final List<TXVodDownloadMediaInfo> a() {
        boolean z10;
        PersistStorage persistStorage = this.f33408d;
        if (persistStorage != null) {
            try {
                String[] allKeys = persistStorage.getAllKeys();
                if (allKeys == null) {
                    return null;
                }
                ArrayList arrayList = new ArrayList(allKeys.length);
                for (String str : allKeys) {
                    c d10 = d(this.f33408d.getString(str));
                    if (d10 != null) {
                        if (!c(d10.getPlayPath())) {
                            this.f33408d.clear(str);
                            this.f33408d.commit();
                        } else {
                            synchronized (this.f33406b) {
                                Iterator<c> it = this.f33406b.iterator();
                                while (true) {
                                    if (!it.hasNext()) {
                                        z10 = false;
                                        break;
                                    }
                                    c next = it.next();
                                    if (next.getPlayPath().equals(d10.getPlayPath())) {
                                        arrayList.add(next);
                                        z10 = true;
                                        break;
                                    }
                                }
                            }
                            if (!z10) {
                                arrayList.add(d10);
                            }
                        }
                    }
                }
                return arrayList;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public final TXVodDownloadMediaInfo a(int i9, String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.f33406b) {
            Iterator<c> it = this.f33406b.iterator();
            while (it.hasNext()) {
                c next = it.next();
                TXVodDownloadDataSource dataSource = next.getDataSource();
                if (dataSource != null && dataSource.getAppId() == i9 && dataSource.getFileId().equals(str) && dataSource.getQuality() == i10) {
                    return next;
                }
            }
            if (this.f33408d != null) {
                c cVar = new c();
                cVar.a(new a(i9, str, i10, null, null));
                String b10 = b(cVar);
                c d10 = d(this.f33408d.getString(b10));
                if (d10 == null || c(d10.getPlayPath())) {
                    return d10;
                }
                this.f33408d.clear(b10);
                this.f33408d.commit();
                LiteavLog.w("TXVodDownloadManagerImpl", "fileId : " + str + " | qualityId: " + i10 + " download file not exist! remove download info!");
                return null;
            }
            return null;
        }
    }

    static /* synthetic */ void a(b bVar, final c cVar, final com.tencent.liteav.txcvodplayer.b.c cVar2) {
        if (cVar2 == null || cVar.getDataSource() == null) {
            return;
        }
        final String a10 = cVar2.a();
        if (a10 != null && a10.contains(".m3u8")) {
            cVar.a(cVar2.c() * 1000);
            com.tencent.liteav.txcvodplayer.b.b bVar2 = cVar2.f31518b;
            int i9 = -1;
            if (bVar2 != null) {
                i9 = bVar2.f31505e;
            } else {
                f fVar = cVar2.f31519c;
                if (fVar != null) {
                    if (fVar.f31563b == null) {
                        fVar.f31563b = fVar.c();
                    }
                    g gVar = fVar.f31563b;
                    if (gVar != null) {
                        i9 = gVar.f31570d;
                    }
                }
            }
            cVar.c(i9);
            a.C0323a.f31500a.a(a10, new a.b() { // from class: com.tencent.rtmp.downloader.a.b.3
                /* JADX WARN: Removed duplicated region for block: B:59:0x010d  */
                /* JADX WARN: Removed duplicated region for block: B:74:0x01e0  */
                /* JADX WARN: Removed duplicated region for block: B:86:0x020a  */
                @Override // com.tencent.liteav.txcvodplayer.b.a.b
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void a(java.lang.String r10) {
                    /*
                        Method dump skipped, instructions count: 535
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.tencent.rtmp.downloader.a.b.AnonymousClass3.a(java.lang.String):void");
                }

                @Override // com.tencent.liteav.txcvodplayer.b.a.b
                public final void a() {
                    LiteavLog.i("TXVodDownloadManagerImpl", "prepareDownloadMedia onError");
                    synchronized (b.this.f33406b) {
                        b.this.f33406b.remove(cVar);
                    }
                    ITXVodDownloadListener iTXVodDownloadListener = b.this.f33407c;
                    if (iTXVodDownloadListener != null) {
                        iTXVodDownloadListener.onDownloadError(cVar, TXVodDownloadManager.DOWNLOAD_AUTH_FAILED, "get substream infos failure");
                    }
                }
            });
            return;
        }
        LiteavLog.w("TXVodDownloadManagerImpl", "not support format! masterPlaylistUrl : ".concat(String.valueOf(a10)));
        ITXVodDownloadListener iTXVodDownloadListener = bVar.f33407c;
        if (iTXVodDownloadListener != null) {
            iTXVodDownloadListener.onDownloadError(cVar, TXVodDownloadManager.DOWNLOAD_FORMAT_ERROR, "No support format");
        }
    }

    static /* synthetic */ void a(b bVar, c cVar) {
        String str;
        if (bVar.f33408d != null) {
            if (cVar == null) {
                str = "";
            } else {
                Parcel obtain = Parcel.obtain();
                cVar.writeToParcel(obtain, 0);
                obtain.setDataPosition(0);
                String encodeToString = Base64.encodeToString(obtain.marshall(), 2);
                obtain.recycle();
                str = encodeToString;
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String b10 = b(cVar);
            if (TextUtils.isEmpty(b10)) {
                return;
            }
            bVar.f33408d.put(b10, str);
            bVar.f33408d.commit();
            LiteavLog.i("TXVodDownloadManagerImpl", "saveDownloadMediaInfo key: " + b10 + "| mediaInfo: " + str);
        }
    }
}
