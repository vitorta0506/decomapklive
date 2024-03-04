package com.tencent.thumbplayer.a;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.tencent.thumbplayer.core.common.TPGeneralError;
import com.tencent.thumbplayer.core.common.TPSystemInfo;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.o;
import java.io.FileDescriptor;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static b f33450a;

    /* renamed from: b  reason: collision with root package name */
    private HandlerThread f33451b;

    /* renamed from: c  reason: collision with root package name */
    private c f33452c;

    /* renamed from: d  reason: collision with root package name */
    private MediaMetadataRetriever f33453d = null;

    /* renamed from: e  reason: collision with root package name */
    private int f33454e = 0;

    /* loaded from: classes4.dex */
    public interface a {
        void a(int i9, int i10);

        void a(int i9, long j10, int i10, int i11, Bitmap bitmap, long j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.thumbplayer.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0336b {

        /* renamed from: a  reason: collision with root package name */
        protected a f33455a;

        /* renamed from: b  reason: collision with root package name */
        private int f33456b;

        /* renamed from: c  reason: collision with root package name */
        private String f33457c;

        /* renamed from: d  reason: collision with root package name */
        private FileDescriptor f33458d;

        /* renamed from: e  reason: collision with root package name */
        private AssetFileDescriptor f33459e;

        /* renamed from: f  reason: collision with root package name */
        private long f33460f;

        /* renamed from: g  reason: collision with root package name */
        private int f33461g;

        /* renamed from: h  reason: collision with root package name */
        private int f33462h;

        private C0336b() {
        }
    }

    /* loaded from: classes4.dex */
    class c extends Handler {
        public c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i9 = message.what;
            if (i9 == 1) {
                TPLogUtil.i("TPSysPlayerImageCapture", "eventHandler EV_CAP_IMAGE");
                b.this.a((C0336b) message.obj);
            } else if (i9 != 2) {
                TPLogUtil.i("TPSysPlayerImageCapture", "eventHandler unknow msg");
            } else {
                TPLogUtil.i("TPSysPlayerImageCapture", "eventHandler EV_STOP_CAP_IMAGE");
                if (b.this.f33453d != null) {
                    b.this.f33453d.release();
                    b.this.f33453d = null;
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        public String f33464a;

        /* renamed from: b  reason: collision with root package name */
        public FileDescriptor f33465b;

        /* renamed from: c  reason: collision with root package name */
        public AssetFileDescriptor f33466c;

        /* renamed from: d  reason: collision with root package name */
        public long f33467d;

        /* renamed from: e  reason: collision with root package name */
        public int f33468e;

        /* renamed from: f  reason: collision with root package name */
        public int f33469f;
    }

    private b() {
        this.f33451b = null;
        this.f33452c = null;
        try {
            this.f33451b = o.a().b();
            this.f33452c = new c(this.f33451b.getLooper());
        } catch (Throwable th2) {
            TPLogUtil.e("TPSysPlayerImageCapture", th2);
            this.f33452c = new c(Looper.getMainLooper());
        }
    }

    public static synchronized b a() {
        b bVar;
        synchronized (b.class) {
            if (f33450a == null) {
                f33450a = new b();
            }
            bVar = f33450a;
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(C0336b c0336b) {
        MediaMetadataRetriever mediaMetadataRetriever;
        try {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                MediaMetadataRetriever mediaMetadataRetriever2 = this.f33453d;
                if (mediaMetadataRetriever2 != null) {
                    mediaMetadataRetriever2.release();
                    this.f33453d = null;
                }
                this.f33453d = new MediaMetadataRetriever();
                if (c0336b.f33458d != null) {
                    this.f33453d.setDataSource(c0336b.f33458d);
                } else if (c0336b.f33459e != null) {
                    this.f33453d.setDataSource(c0336b.f33459e.getFileDescriptor(), c0336b.f33459e.getStartOffset(), c0336b.f33459e.getLength());
                } else {
                    this.f33453d.setDataSource(c0336b.f33457c, new HashMap());
                }
                Bitmap frameAtTime = this.f33453d.getFrameAtTime(c0336b.f33460f * 1000, 2);
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                if (frameAtTime != null) {
                    c0336b.f33455a.a(c0336b.f33456b, c0336b.f33460f, c0336b.f33461g, c0336b.f33462h, frameAtTime, currentTimeMillis2);
                } else {
                    c0336b.f33455a.a(c0336b.f33456b, TPGeneralError.FAILED);
                }
                mediaMetadataRetriever = this.f33453d;
                if (mediaMetadataRetriever == null) {
                    return;
                }
            } catch (Exception e10) {
                TPLogUtil.e("TPSysPlayerImageCapture", e10);
                TPLogUtil.e("TPSysPlayerImageCapture", "doRealCaptureImage, Exception: " + e10.toString());
                c0336b.f33455a.a(c0336b.f33456b, TPGeneralError.FAILED);
                mediaMetadataRetriever = this.f33453d;
                if (mediaMetadataRetriever == null) {
                    return;
                }
            }
            mediaMetadataRetriever.release();
            this.f33453d = null;
        } catch (Throwable th2) {
            MediaMetadataRetriever mediaMetadataRetriever3 = this.f33453d;
            if (mediaMetadataRetriever3 != null) {
                mediaMetadataRetriever3.release();
                this.f33453d = null;
            }
            throw th2;
        }
    }

    public int a(d dVar, a aVar) {
        TPLogUtil.i("TPSysPlayerImageCapture", "captureImageWithPosition, position: " + dVar.f33467d + ", width: " + dVar.f33468e + ", height: " + dVar.f33469f);
        this.f33454e = this.f33454e + 1;
        if (!TextUtils.isEmpty(TPSystemInfo.getDeviceName()) && TPSystemInfo.getDeviceName().equals("Lenovo+K900")) {
            TPLogUtil.i("TPSysPlayerImageCapture", "captureImageWithPosition, Lenovo+K900 no incompatible");
            return -1;
        }
        C0336b c0336b = new C0336b();
        c0336b.f33456b = this.f33454e;
        c0336b.f33458d = dVar.f33465b;
        c0336b.f33459e = dVar.f33466c;
        c0336b.f33457c = dVar.f33464a;
        c0336b.f33460f = dVar.f33467d;
        c0336b.f33461g = dVar.f33468e;
        c0336b.f33462h = dVar.f33469f;
        c0336b.f33455a = aVar;
        Message message = new Message();
        message.what = 1;
        message.obj = c0336b;
        if (!this.f33452c.sendMessage(message)) {
            TPLogUtil.i("TPSysPlayerImageCapture", "captureImageWithPosition, send msg failed ");
        }
        return this.f33454e;
    }
}
