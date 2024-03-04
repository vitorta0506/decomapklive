package com.tencent.thumbplayer.c.a;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoaderListener;
import com.tencent.thumbplayer.api.resourceloader.TPAssetResourceLoadingContentInformationRequest;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLFileSystem;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLIOUtil;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.o;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class b implements com.tencent.thumbplayer.c.a.a {

    /* renamed from: a  reason: collision with root package name */
    private static String f33775a = "TPAssetResourceLoader";

    /* renamed from: b  reason: collision with root package name */
    private Context f33776b;

    /* renamed from: c  reason: collision with root package name */
    private ITPAssetResourceLoaderListener f33777c;

    /* renamed from: d  reason: collision with root package name */
    private long f33778d = 0;

    /* renamed from: e  reason: collision with root package name */
    private String f33779e = "";

    /* renamed from: f  reason: collision with root package name */
    private String f33780f = "";

    /* renamed from: g  reason: collision with root package name */
    private String f33781g = "";

    /* renamed from: h  reason: collision with root package name */
    private String f33782h = FileUtils.PIC_POSTFIX_MP4;

    /* renamed from: i  reason: collision with root package name */
    private int f33783i = 0;

    /* renamed from: j  reason: collision with root package name */
    private ArrayList<d> f33784j = new ArrayList<>();

    /* renamed from: k  reason: collision with root package name */
    private TPAssetResourceLoadingContentInformationRequest f33785k;

    /* renamed from: l  reason: collision with root package name */
    private HandlerThread f33786l;

    /* renamed from: m  reason: collision with root package name */
    private HandlerThread f33787m;

    /* renamed from: n  reason: collision with root package name */
    private a f33788n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        private void a(long j10, long j11, String str, int i9, int i10) {
            d dVar = new d(j10, j11, i10, a(j10, j11));
            dVar.a(b.this.f33787m.getLooper());
            dVar.a(b.this.b(i9, str));
            dVar.a(b.this.f33785k);
            if (b.this.f33777c.shouldWaitForLoadingOfRequestedResource(dVar)) {
                b.this.a(dVar);
                TPLogUtil.i(b.f33775a, "add to mLoadingRequests, requestId: ".concat(String.valueOf(i10)));
            }
        }

        private boolean a(long j10, long j11) {
            boolean z10 = b.this.f33778d > 0 && j11 + j10 >= b.this.f33778d;
            if (z10) {
                b.this.f();
            }
            return z10;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String str = b.f33775a;
            TPLogUtil.d(str, "mCallbackForResourceLoaderHandler msg : " + message.what);
            if (b.this.f33777c == null) {
                return;
            }
            int i9 = message.what;
            if (i9 != 256) {
                if (i9 != 257) {
                    return;
                }
                TPLogUtil.i(b.f33775a, "stop read data");
                b.this.b(message.arg1);
                return;
            }
            TPLogUtil.i(b.f33775a, "start read data");
            C0342b c0342b = (C0342b) message.obj;
            long j10 = c0342b.f33790a;
            long j11 = c0342b.f33791b;
            String str2 = c0342b.f33792c;
            int i10 = message.arg1;
            int i11 = message.arg2;
            String str3 = b.f33775a;
            TPLogUtil.i(str3, "start read data, requestStart: " + j10 + " requestEnd:" + j11 + " requestId:" + i11);
            long a10 = b.this.a(j10, j11);
            if (a10 <= 0) {
                TPLogUtil.e(b.f33775a, "requestLength invalid, check requestStart and requestEnd");
            } else {
                a(j10, a10, str2, i10, i11);
            }
        }
    }

    /* renamed from: com.tencent.thumbplayer.c.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static class C0342b {

        /* renamed from: a  reason: collision with root package name */
        long f33790a;

        /* renamed from: b  reason: collision with root package name */
        long f33791b;

        /* renamed from: c  reason: collision with root package name */
        String f33792c;

        private C0342b() {
        }
    }

    public b(Context context, Looper looper) {
        this.f33776b = context;
        if (looper == null) {
            HandlerThread b10 = o.a().b();
            this.f33786l = b10;
            looper = b10.getLooper();
        }
        this.f33788n = new a(looper);
        this.f33787m = o.a().a("TPAssetResourceLoader-dataWriteThread");
    }

    private synchronized int a(long j10) {
        if (this.f33784j == null) {
            return 0;
        }
        int i9 = 0;
        for (int i10 = 0; i10 < this.f33784j.size(); i10++) {
            i9 = Math.max(i9, this.f33784j.get(i10).a(j10));
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long a(long j10, long j11) {
        if (j11 > 0) {
            return j11 - j10;
        }
        long j12 = this.f33778d;
        if (j12 <= 0) {
            return 536870912L;
        }
        return j12 - j10;
    }

    private synchronized d a(int i9) {
        if (this.f33784j == null) {
            return null;
        }
        for (int i10 = 0; i10 < this.f33784j.size(); i10++) {
            d dVar = this.f33784j.get(i10);
            if (dVar.getLoadingDataRequest().a() == i9) {
                return dVar;
            }
        }
        return null;
    }

    private String a(Context context, int i9) {
        if (TextUtils.isEmpty(this.f33781g)) {
            String format = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
            File externalCacheFile = TPDLFileSystem.getExternalCacheFile(context, "resourceLoader", format + "-" + i9 + this.f33782h);
            TPDLIOUtil.createFile(externalCacheFile);
            this.f33781g = externalCacheFile.getAbsolutePath();
        }
        return this.f33781g;
    }

    private void a(int i9, int i10, int i11, Object obj) {
        a aVar = this.f33788n;
        if (aVar != null) {
            Message obtainMessage = aVar.obtainMessage();
            obtainMessage.what = i9;
            obtainMessage.arg1 = i10;
            obtainMessage.arg2 = i11;
            obtainMessage.obj = obj;
            this.f33788n.sendMessage(obtainMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(d dVar) {
        ArrayList<d> arrayList = this.f33784j;
        if (arrayList != null) {
            arrayList.add(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i9) {
        d a10 = a(i9);
        if (a10 != null) {
            a10.b();
            TPLogUtil.i(f33775a, "handleStopReadData, cancel the loading request with id ".concat(String.valueOf(i9)));
            b(a10);
            this.f33777c.didCancelLoadingRequest(a10);
            return;
        }
        String str = f33775a;
        TPLogUtil.e(str, "TPAssetLoader can't find the request " + i9 + " with current loading requests");
    }

    private synchronized void b(d dVar) {
        ArrayList<d> arrayList = this.f33784j;
        if (arrayList != null) {
            arrayList.remove(dVar);
        }
    }

    private String e() {
        return this.f33780f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void f() {
        ArrayList<d> arrayList = this.f33784j;
        if (arrayList != null) {
            Iterator<d> it = arrayList.iterator();
            while (it.hasNext()) {
                d next = it.next();
                next.b();
                this.f33777c.didCancelLoadingRequest(next);
            }
            this.f33784j.clear();
        }
    }

    @Override // com.tencent.thumbplayer.c.a.a
    public int a(int i9, String str, int i10) {
        if (this.f33777c == null) {
            TPLogUtil.e(f33775a, "listener not set");
            return 0;
        }
        a(257, i10, 0, (Object) null);
        return 0;
    }

    @Override // com.tencent.thumbplayer.c.a.a
    public int a(int i9, String str, long j10, long j11) {
        if (this.f33777c == null) {
            TPLogUtil.e(f33775a, "listener not set");
            return 0;
        }
        String str2 = f33775a;
        TPLogUtil.i(str2, "onStartReadData, fileId:" + i9 + ", fileKey:" + str + ", requestStart:" + j10 + ", requestEnd:" + j11);
        int i10 = this.f33783i + 1;
        C0342b c0342b = new C0342b();
        c0342b.f33790a = j10;
        c0342b.f33791b = j11;
        c0342b.f33792c = str;
        a(256, i9, i10, c0342b);
        this.f33783i = i10;
        return i10;
    }

    @Override // com.tencent.thumbplayer.c.a.a
    public long a(int i9, String str) {
        return this.f33778d;
    }

    @Override // com.tencent.thumbplayer.c.a.a
    public void a() {
        if (this.f33777c == null) {
            TPLogUtil.e(f33775a, "listener not set");
            return;
        }
        TPAssetResourceLoadingContentInformationRequest tPAssetResourceLoadingContentInformationRequest = new TPAssetResourceLoadingContentInformationRequest();
        this.f33785k = tPAssetResourceLoadingContentInformationRequest;
        this.f33777c.fillInContentInformation(tPAssetResourceLoadingContentInformationRequest);
        TPAssetResourceLoadingContentInformationRequest tPAssetResourceLoadingContentInformationRequest2 = this.f33785k;
        this.f33779e = tPAssetResourceLoadingContentInformationRequest2.contentType;
        this.f33778d = tPAssetResourceLoadingContentInformationRequest2.dataTotalSize;
        this.f33780f = tPAssetResourceLoadingContentInformationRequest2.dataFilePath;
        String str = f33775a;
        TPLogUtil.i(str, "proxy start, mDataTotalSize: " + this.f33778d + " businessPath:" + this.f33780f);
    }

    @Override // com.tencent.thumbplayer.c.a.a
    public void a(ITPAssetResourceLoaderListener iTPAssetResourceLoaderListener) {
        this.f33777c = iTPAssetResourceLoaderListener;
    }

    @Override // com.tencent.thumbplayer.c.a.a
    public int b(int i9, String str, long j10, long j11) {
        String str2 = f33775a;
        TPLogUtil.d(str2, "read data, offset:" + j10 + ", length:" + j11);
        int min = (int) Math.min((long) a(j10), j11);
        if (min <= 0) {
            return -1;
        }
        String str3 = f33775a;
        TPLogUtil.d(str3, "on read data, fileId: " + i9 + " readOffset: " + j10 + " readLength:" + j11 + " readyLength:" + min);
        return min;
    }

    @Override // com.tencent.thumbplayer.c.a.a
    public String b(int i9, String str) {
        String e10 = e();
        return !TextUtils.isEmpty(e10) ? e10 : a(this.f33776b, i9);
    }

    @Override // com.tencent.thumbplayer.c.a.a
    public void b() {
        TPLogUtil.i(f33775a, "reset start");
        f();
        this.f33778d = 0L;
        this.f33779e = "";
        this.f33780f = "";
        if (!TextUtils.isEmpty(this.f33781g)) {
            try {
                new File(this.f33781g).deleteOnExit();
                this.f33781g = "";
            } catch (Exception e10) {
                String str = f33775a;
                TPLogUtil.e(str, "reset, delete cache file has exception:" + e10.toString());
            }
        }
        a aVar = this.f33788n;
        if (aVar != null) {
            aVar.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.tencent.thumbplayer.c.a.a
    public String c(int i9, String str) {
        return this.f33779e;
    }

    @Override // com.tencent.thumbplayer.c.a.a
    public void c() {
        TPLogUtil.i(f33775a, "release start");
        b();
        o.a().a(this.f33786l, this.f33788n);
        o.a().a(this.f33787m, (Handler) null);
        this.f33786l = null;
        this.f33787m = null;
        this.f33788n = null;
        this.f33784j = null;
    }
}
