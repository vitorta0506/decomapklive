package com.tencent.thumbplayer.c.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingDataRequest;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.m;
import java.io.RandomAccessFile;
/* loaded from: classes4.dex */
public class c implements ITPAssetResourceLoadingDataRequest {

    /* renamed from: a  reason: collision with root package name */
    private static String f33793a = "TPAssetResourceLoadingDataRequest";

    /* renamed from: b  reason: collision with root package name */
    private long f33794b;

    /* renamed from: c  reason: collision with root package name */
    private long f33795c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f33796d;

    /* renamed from: e  reason: collision with root package name */
    private long f33797e;

    /* renamed from: f  reason: collision with root package name */
    private long f33798f;

    /* renamed from: g  reason: collision with root package name */
    private long f33799g;

    /* renamed from: h  reason: collision with root package name */
    private int f33800h;

    /* renamed from: i  reason: collision with root package name */
    private b f33801i;

    /* renamed from: j  reason: collision with root package name */
    private m f33802j = new m();

    /* renamed from: k  reason: collision with root package name */
    private String f33803k;

    /* renamed from: l  reason: collision with root package name */
    private RandomAccessFile f33804l;

    /* loaded from: classes4.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        long f33805a;

        /* renamed from: b  reason: collision with root package name */
        byte[] f33806b;

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b extends Handler {
        b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 256) {
                return;
            }
            a aVar = (a) message.obj;
            long j10 = aVar.f33805a;
            byte[] bArr = aVar.f33806b;
            int i9 = message.arg1;
            c cVar = c.this;
            if (!cVar.a(j10, bArr, cVar.f33803k)) {
                TPLogUtil.e(c.f33793a, "write data failed");
                return;
            }
            c.this.f33802j.writeLock().lock();
            c.this.f33797e = i9 + j10;
            c.this.f33802j.writeLock().unlock();
            String str = c.f33793a;
            TPLogUtil.i(str, "write data from " + j10 + " , with dataLength" + i9);
        }
    }

    public c(long j10, long j11, boolean z10) {
        this.f33794b = j10;
        this.f33798f = j10;
        this.f33797e = j10;
        this.f33795c = j11;
        this.f33796d = z10;
    }

    private void a(int i9, int i10, int i11, Object obj) {
        b bVar = this.f33801i;
        if (bVar != null) {
            Message obtainMessage = bVar.obtainMessage();
            obtainMessage.what = i9;
            obtainMessage.arg1 = i10;
            obtainMessage.arg2 = i11;
            obtainMessage.obj = obj;
            this.f33801i.sendMessage(obtainMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002d, code lost:
        if (r4 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0039, code lost:
        if (r4 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003b, code lost:
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003f, code lost:
        com.tencent.thumbplayer.utils.TPLogUtil.e(com.tencent.thumbplayer.c.a.c.f33793a, "fail to close mRandomAccessFile");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(long r4, byte[] r6, java.lang.String r7) {
        /*
            r3 = this;
            java.lang.String r0 = "fail to close mRandomAccessFile"
            java.io.RandomAccessFile r1 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L22 java.io.IOException -> L24 java.io.FileNotFoundException -> L30
            java.lang.String r2 = "rw"
            r1.<init>(r7, r2)     // Catch: java.lang.Throwable -> L22 java.io.IOException -> L24 java.io.FileNotFoundException -> L30
            r3.f33804l = r1     // Catch: java.lang.Throwable -> L22 java.io.IOException -> L24 java.io.FileNotFoundException -> L30
            r1.seek(r4)     // Catch: java.lang.Throwable -> L22 java.io.IOException -> L24 java.io.FileNotFoundException -> L30
            java.io.RandomAccessFile r4 = r3.f33804l     // Catch: java.lang.Throwable -> L22 java.io.IOException -> L24 java.io.FileNotFoundException -> L30
            r4.write(r6)     // Catch: java.lang.Throwable -> L22 java.io.IOException -> L24 java.io.FileNotFoundException -> L30
            r4 = 1
            java.io.RandomAccessFile r5 = r3.f33804l
            if (r5 == 0) goto L45
            r5.close()     // Catch: java.io.IOException -> L1c
            goto L45
        L1c:
            java.lang.String r5 = com.tencent.thumbplayer.c.a.c.f33793a
            com.tencent.thumbplayer.utils.TPLogUtil.e(r5, r0)
            goto L45
        L22:
            r4 = move-exception
            goto L46
        L24:
            java.lang.String r4 = com.tencent.thumbplayer.c.a.c.f33793a     // Catch: java.lang.Throwable -> L22
            java.lang.String r5 = "fail to write data"
            com.tencent.thumbplayer.utils.TPLogUtil.e(r4, r5)     // Catch: java.lang.Throwable -> L22
            java.io.RandomAccessFile r4 = r3.f33804l
            if (r4 == 0) goto L44
            goto L3b
        L30:
            java.lang.String r4 = com.tencent.thumbplayer.c.a.c.f33793a     // Catch: java.lang.Throwable -> L22
            java.lang.String r5 = "file not found"
            com.tencent.thumbplayer.utils.TPLogUtil.e(r4, r5)     // Catch: java.lang.Throwable -> L22
            java.io.RandomAccessFile r4 = r3.f33804l
            if (r4 == 0) goto L44
        L3b:
            r4.close()     // Catch: java.io.IOException -> L3f
            goto L44
        L3f:
            java.lang.String r4 = com.tencent.thumbplayer.c.a.c.f33793a
            com.tencent.thumbplayer.utils.TPLogUtil.e(r4, r0)
        L44:
            r4 = 0
        L45:
            return r4
        L46:
            java.io.RandomAccessFile r5 = r3.f33804l
            if (r5 == 0) goto L53
            r5.close()     // Catch: java.io.IOException -> L4e
            goto L53
        L4e:
            java.lang.String r5 = com.tencent.thumbplayer.c.a.c.f33793a
            com.tencent.thumbplayer.utils.TPLogUtil.e(r5, r0)
        L53:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.c.a.c.a(long, byte[], java.lang.String):boolean");
    }

    public int a() {
        return this.f33800h;
    }

    public int a(long j10) {
        this.f33802j.readLock().lock();
        long j11 = this.f33797e;
        this.f33802j.readLock().unlock();
        if (j10 >= j11) {
            return -1;
        }
        if (j10 < this.f33794b) {
            TPLogUtil.e(f33793a, "Offset less than mRequestedOffset");
            return -1;
        }
        return (int) (j11 - j10);
    }

    public void a(int i9) {
        this.f33800h = i9;
    }

    public void a(Looper looper) {
        this.f33801i = new b(looper);
    }

    public void a(String str) {
        this.f33803k = str;
    }

    public void b() {
        b bVar = this.f33801i;
        if (bVar != null) {
            bVar.removeCallbacksAndMessages(null);
            this.f33801i = null;
        }
    }

    @Override // com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingDataRequest
    public long getCurrentOffset() {
        this.f33802j.readLock().lock();
        long j10 = this.f33798f;
        this.f33802j.readLock().unlock();
        return j10;
    }

    @Override // com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingDataRequest
    public long getRequestedLength() {
        return this.f33795c;
    }

    @Override // com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingDataRequest
    public long getRequestedOffset() {
        return this.f33794b;
    }

    @Override // com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingDataRequest
    public void notifyDataReady(long j10, long j11) {
        long j12 = j11 + j10;
        long j13 = this.f33794b;
        if (j12 > this.f33795c + j13) {
            TPLogUtil.e(f33793a, "data exceed the max request offset");
            return;
        }
        if (j10 < j13) {
            TPLogUtil.w(f33793a, "the notify data offset is less than request offset");
        }
        if (j12 < this.f33798f) {
            TPLogUtil.e(f33793a, "data not reach current offset");
            return;
        }
        this.f33802j.writeLock().lock();
        this.f33798f = j12;
        this.f33797e = j12;
        this.f33802j.writeLock().unlock();
    }

    @Override // com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingDataRequest
    public void respondWithData(byte[] bArr) {
        if (this.f33799g > this.f33795c) {
            TPLogUtil.i(f33793a, "respond full data");
            return;
        }
        int length = bArr.length;
        a aVar = new a();
        aVar.f33805a = this.f33798f;
        aVar.f33806b = bArr;
        a(256, length, 0, aVar);
        String str = f33793a;
        TPLogUtil.i(str, "respond data from:" + this.f33798f + ", dataLength:" + length);
        this.f33802j.writeLock().lock();
        long j10 = (long) length;
        this.f33798f = this.f33798f + j10;
        this.f33799g = this.f33799g + j10;
        this.f33802j.writeLock().unlock();
    }
}
