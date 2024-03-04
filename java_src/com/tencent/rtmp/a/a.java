package com.tencent.rtmp.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
import com.huawei.hms.framework.common.ContainerUtils;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.rtmp.TXImageSprite;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public final class a extends TXImageSprite {

    /* renamed from: a  reason: collision with root package name */
    private final BitmapFactory.Options f33382a;

    /* renamed from: b  reason: collision with root package name */
    private HandlerThread f33383b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f33384c;

    /* renamed from: d  reason: collision with root package name */
    private List<c> f33385d;

    /* renamed from: e  reason: collision with root package name */
    private Map<String, BitmapRegionDecoder> f33386e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.rtmp.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class RunnableC0335a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<a> f33388a;

        /* renamed from: b  reason: collision with root package name */
        private String f33389b;

        public RunnableC0335a(a aVar, String str) {
            this.f33388a = new WeakReference<>(aVar);
            this.f33389b = str;
        }

        private static float a(String str) {
            String str2;
            String[] split = str.split(CertificateUtil.DELIMITER);
            String str3 = null;
            if (split.length == 3) {
                String str4 = split[0];
                str3 = split[1];
                str2 = split[2];
            } else if (split.length == 2) {
                str3 = split[0];
                str2 = split[1];
            } else {
                str2 = split.length == 1 ? split[0] : null;
            }
            float floatValue = str3 != null ? 0.0f + (Float.valueOf(str3).floatValue() * 60.0f) : 0.0f;
            return str2 != null ? floatValue + Float.valueOf(str2).floatValue() : floatValue;
        }

        @Override // java.lang.Runnable
        public final void run() {
            String readLine;
            int i9;
            a aVar = this.f33388a.get();
            BufferedReader bufferedReader = null;
            try {
                try {
                    InputStream a10 = a.a(this.f33389b);
                    if (a10 == null) {
                        return;
                    }
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(a10));
                    try {
                        String readLine2 = bufferedReader2.readLine();
                        if (readLine2 != null && readLine2.length() != 0 && readLine2.contains("WEBVTT")) {
                            do {
                                readLine = bufferedReader2.readLine();
                                if (readLine != null && readLine.contains("-->")) {
                                    String[] split = readLine.split(" --> ");
                                    if (split.length == 2) {
                                        String readLine3 = bufferedReader2.readLine();
                                        c cVar = new c((byte) 0);
                                        cVar.f33393a = a(split[0]);
                                        cVar.f33394b = a(split[1]);
                                        cVar.f33395c = readLine3;
                                        int indexOf = readLine3.indexOf("#");
                                        if (indexOf != -1) {
                                            cVar.f33396d = readLine3.substring(0, indexOf);
                                        }
                                        int indexOf2 = readLine3.indexOf(ContainerUtils.KEY_VALUE_DELIMITER);
                                        if (indexOf2 != -1 && (i9 = indexOf2 + 1) < readLine3.length()) {
                                            String[] split2 = readLine3.substring(i9, readLine3.length()).split(",");
                                            if (split2.length == 4) {
                                                cVar.f33397e = Integer.valueOf(split2[0]).intValue();
                                                cVar.f33398f = Integer.valueOf(split2[1]).intValue();
                                                cVar.f33399g = Integer.valueOf(split2[2]).intValue();
                                                cVar.f33400h = Integer.valueOf(split2[3]).intValue();
                                            }
                                        }
                                        if (aVar != null && aVar.f33385d != null) {
                                            aVar.f33385d.add(cVar);
                                            continue;
                                        }
                                    } else {
                                        continue;
                                    }
                                }
                            } while (readLine != null);
                            try {
                                bufferedReader2.close();
                                return;
                            } catch (IOException unused) {
                                return;
                            }
                        }
                        LiteavLog.e("TXImageSprite", "DownloadAndParseVTTFileTask : getVTT File Error!");
                        if (aVar != null) {
                            aVar.a();
                        }
                        try {
                            bufferedReader2.close();
                        } catch (IOException unused2) {
                        }
                    } catch (IOException e10) {
                        e = e10;
                        bufferedReader = bufferedReader2;
                        LiteavLog.e("TXImageSprite", "load image sprite failed.", e);
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused3) {
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused4) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (IOException e11) {
                e = e11;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<a> f33390a;

        /* renamed from: b  reason: collision with root package name */
        private String f33391b;

        /* renamed from: c  reason: collision with root package name */
        private String f33392c;

        public b(a aVar, String str, String str2) {
            this.f33390a = new WeakReference<>(aVar);
            this.f33391b = str;
            this.f33392c = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            a aVar = this.f33390a.get();
            if (this.f33390a == null || aVar == null) {
                return;
            }
            InputStream inputStream = null;
            try {
                try {
                    inputStream = a.a(this.f33392c);
                    String lastPathSegment = Uri.parse(this.f33392c).getLastPathSegment();
                    if (aVar.f33386e != null) {
                        aVar.f33386e.put(lastPathSegment, BitmapRegionDecoder.newInstance(inputStream, true));
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                        }
                    }
                } catch (IOException e10) {
                    LiteavLog.e("TXImageSprite", "load bitmap from network failed.", e10);
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                }
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public float f33393a;

        /* renamed from: b  reason: collision with root package name */
        public float f33394b;

        /* renamed from: c  reason: collision with root package name */
        public String f33395c;

        /* renamed from: d  reason: collision with root package name */
        public String f33396d;

        /* renamed from: e  reason: collision with root package name */
        public int f33397e;

        /* renamed from: f  reason: collision with root package name */
        public int f33398f;

        /* renamed from: g  reason: collision with root package name */
        public int f33399g;

        /* renamed from: h  reason: collision with root package name */
        public int f33400h;

        private c() {
        }

        /* synthetic */ c(byte b10) {
            this();
        }
    }

    public a(Context context) {
        super(context);
        this.f33382a = new BitmapFactory.Options();
        ArrayList arrayList = new ArrayList();
        this.f33385d = arrayList;
        this.f33385d = Collections.synchronizedList(arrayList);
        HashMap hashMap = new HashMap();
        this.f33386e = hashMap;
        this.f33386e = Collections.synchronizedMap(hashMap);
    }

    @Override // com.tencent.rtmp.TXImageSprite
    public final Bitmap getThumbnail(float f10) {
        c cVar;
        if (this.f33385d.size() == 0) {
            return null;
        }
        int i9 = 0;
        int size = this.f33385d.size() - 1;
        while (true) {
            int i10 = ((size - i9) / 2) + i9;
            if (this.f33385d.get(i10).f33393a <= f10 && this.f33385d.get(i10).f33394b > f10) {
                cVar = this.f33385d.get(i10);
                break;
            } else if (i9 >= size) {
                cVar = this.f33385d.get(i9);
                break;
            } else if (f10 < this.f33385d.get(i10).f33394b) {
                if (f10 >= this.f33385d.get(i10).f33393a) {
                    cVar = null;
                    break;
                }
                size = i10 - 1;
            } else {
                i9 = i10 + 1;
            }
        }
        if (cVar == null) {
            return null;
        }
        BitmapRegionDecoder bitmapRegionDecoder = this.f33386e.get(cVar.f33396d);
        if (bitmapRegionDecoder == null) {
            return null;
        }
        Rect rect = new Rect();
        int i11 = cVar.f33397e;
        rect.left = i11;
        int i12 = cVar.f33398f;
        rect.top = i12;
        rect.right = i11 + cVar.f33399g;
        rect.bottom = i12 + cVar.f33400h;
        return bitmapRegionDecoder.decodeRegion(rect, this.f33382a);
    }

    @Override // com.tencent.rtmp.TXImageSprite
    public final void release() {
        a();
        if (this.f33383b == null || this.f33384c == null) {
            return;
        }
        if (LiteavSystemInfo.getSystemOSVersionInt() >= 18) {
            this.f33383b.quitSafely();
        } else {
            this.f33383b.quit();
        }
        this.f33384c = null;
        this.f33383b = null;
    }

    @Override // com.tencent.rtmp.TXImageSprite
    public final void setVTTUrlAndImageUrls(String str, List<String> list) {
        if (TextUtils.isEmpty(str)) {
            LiteavLog.e("TXImageSprite", "setVTTUrlAndImageUrls: vttUrl can't be null!");
            return;
        }
        a();
        if (this.f33383b == null) {
            HandlerThread handlerThread = new HandlerThread("SuperVodThumbnailsWorkThread");
            this.f33383b = handlerThread;
            handlerThread.start();
            this.f33384c = new Handler(this.f33383b.getLooper());
        }
        this.f33384c.post(new RunnableC0335a(this, str));
        if (list == null || list.size() == 0) {
            return;
        }
        for (String str2 : list) {
            this.f33384c.post(new b(this, str, str2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f33384c != null) {
            LiteavLog.i("TXImageSprite", " remove all tasks!");
            this.f33384c.removeCallbacksAndMessages(null);
            this.f33384c.post(new Runnable() { // from class: com.tencent.rtmp.a.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (a.this.f33385d != null) {
                        a.this.f33385d.clear();
                    }
                    if (a.this.f33386e != null) {
                        for (BitmapRegionDecoder bitmapRegionDecoder : a.this.f33386e.values()) {
                            if (bitmapRegionDecoder != null) {
                                bitmapRegionDecoder.recycle();
                            }
                        }
                        a.this.f33386e.clear();
                    }
                }
            });
        }
    }

    static /* synthetic */ InputStream a(String str) throws IOException {
        URLConnection openConnection = new URL(str).openConnection();
        openConnection.connect();
        openConnection.getInputStream();
        openConnection.setConnectTimeout(15000);
        openConnection.setReadTimeout(15000);
        return openConnection.getInputStream();
    }
}
