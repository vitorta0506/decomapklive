package com.tencent.thumbplayer.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public class i extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static int f34468a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static String f34469b = "unknown";

    /* renamed from: c  reason: collision with root package name */
    private static int f34470c;

    /* renamed from: d  reason: collision with root package name */
    private static int f34471d;

    /* renamed from: e  reason: collision with root package name */
    private static String f34472e;

    /* renamed from: f  reason: collision with root package name */
    private ArrayList<b> f34473f;

    /* renamed from: g  reason: collision with root package name */
    private HandlerThread f34474g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static i f34475a = new i();
    }

    /* loaded from: classes4.dex */
    public interface b {
        void a(int i9, int i10, int i11, int i12);
    }

    private i() {
        this.f34473f = null;
        this.f34473f = new ArrayList<>();
    }

    public static i a() {
        return a.f34475a;
    }

    private synchronized void a(Context context, Handler handler) {
        if (context != null) {
            context.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"), null, handler);
        }
    }

    private boolean a(NetworkInfo networkInfo) {
        if (networkInfo != null) {
            return networkInfo.isConnected() || networkInfo.isConnectedOrConnecting();
        }
        return false;
    }

    public static int b() {
        return f34470c;
    }

    @RequiresApi(api = 3)
    private static int b(NetworkInfo networkInfo) {
        if (networkInfo != null) {
            switch (networkInfo.getSubtype()) {
                case 0:
                    break;
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                    return 2;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                default:
                    return 3;
                case 13:
                    return 4;
            }
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005b A[Catch: Exception -> 0x0074, TryCatch #0 {Exception -> 0x0074, blocks: (B:3:0x0002, B:6:0x000e, B:8:0x0020, B:10:0x0026, B:23:0x0048, B:31:0x005d, B:33:0x0067, B:34:0x006d, B:28:0x0051, B:29:0x0058, B:30:0x005b, B:11:0x0029, B:13:0x002f, B:14:0x0033, B:15:0x0036, B:17:0x003c, B:21:0x0045), top: B:37:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0067 A[Catch: Exception -> 0x0074, TryCatch #0 {Exception -> 0x0074, blocks: (B:3:0x0002, B:6:0x000e, B:8:0x0020, B:10:0x0026, B:23:0x0048, B:31:0x005d, B:33:0x0067, B:34:0x006d, B:28:0x0051, B:29:0x0058, B:30:0x005b, B:11:0x0029, B:13:0x002f, B:14:0x0033, B:15:0x0036, B:17:0x003c, B:21:0x0045), top: B:37:0x0002 }] */
    @androidx.annotation.RequiresApi(api = 3)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(android.content.Context r8) {
        /*
            r7 = this;
            if (r8 == 0) goto Lb
            java.lang.String r0 = "connectivity"
            java.lang.Object r8 = r8.getSystemService(r0)     // Catch: java.lang.Exception -> L74
            android.net.ConnectivityManager r8 = (android.net.ConnectivityManager) r8     // Catch: java.lang.Exception -> L74
            goto Lc
        Lb:
            r8 = 0
        Lc:
            if (r8 == 0) goto L74
            r0 = 0
            android.net.NetworkInfo r1 = r8.getNetworkInfo(r0)     // Catch: java.lang.Exception -> L74
            r2 = 1
            android.net.NetworkInfo r3 = r8.getNetworkInfo(r2)     // Catch: java.lang.Exception -> L74
            android.net.NetworkInfo r8 = r8.getActiveNetworkInfo()     // Catch: java.lang.Exception -> L74
            r4 = 2
            r5 = 3
            if (r8 != 0) goto L36
            boolean r6 = r7.a(r1)     // Catch: java.lang.Exception -> L74
            if (r6 == 0) goto L29
            com.tencent.thumbplayer.utils.i.f34468a = r5     // Catch: java.lang.Exception -> L74
            goto L48
        L29:
            boolean r1 = r7.a(r3)     // Catch: java.lang.Exception -> L74
            if (r1 == 0) goto L33
            com.tencent.thumbplayer.utils.i.f34468a = r4     // Catch: java.lang.Exception -> L74
            r1 = r3
            goto L48
        L33:
            com.tencent.thumbplayer.utils.i.f34468a = r2     // Catch: java.lang.Exception -> L74
            goto L47
        L36:
            boolean r3 = r7.a(r8)     // Catch: java.lang.Exception -> L74
            if (r3 == 0) goto L33
            boolean r1 = r7.a(r1)     // Catch: java.lang.Exception -> L74
            if (r1 == 0) goto L44
            r1 = 3
            goto L45
        L44:
            r1 = 2
        L45:
            com.tencent.thumbplayer.utils.i.f34468a = r1     // Catch: java.lang.Exception -> L74
        L47:
            r1 = r8
        L48:
            int r8 = com.tencent.thumbplayer.utils.i.f34468a     // Catch: java.lang.Exception -> L74
            if (r8 == r2) goto L5b
            if (r8 == r4) goto L58
            if (r8 == r5) goto L51
            goto L5d
        L51:
            int r8 = b(r1)     // Catch: java.lang.Exception -> L74
            com.tencent.thumbplayer.utils.i.f34470c = r8     // Catch: java.lang.Exception -> L74
            goto L5d
        L58:
            com.tencent.thumbplayer.utils.i.f34470c = r2     // Catch: java.lang.Exception -> L74
            goto L5d
        L5b:
            com.tencent.thumbplayer.utils.i.f34470c = r0     // Catch: java.lang.Exception -> L74
        L5d:
            java.lang.String r8 = r7.c(r1)     // Catch: java.lang.Exception -> L74
            com.tencent.thumbplayer.utils.i.f34469b = r8     // Catch: java.lang.Exception -> L74
            int r0 = com.tencent.thumbplayer.utils.i.f34471d     // Catch: java.lang.Exception -> L74
            if (r0 != 0) goto L6d
            int r0 = com.tencent.thumbplayer.utils.i.f34468a     // Catch: java.lang.Exception -> L74
            com.tencent.thumbplayer.utils.i.f34471d = r0     // Catch: java.lang.Exception -> L74
            com.tencent.thumbplayer.utils.i.f34472e = r8     // Catch: java.lang.Exception -> L74
        L6d:
            r7.f()     // Catch: java.lang.Exception -> L74
            r7.e()     // Catch: java.lang.Exception -> L74
        L74:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.utils.i.b(android.content.Context):void");
    }

    public static int c() {
        return f34468a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c0, code lost:
        if (r0.length() > 0) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String c(android.net.NetworkInfo r16) {
        /*
            r15 = this;
            r0 = 0
            if (r16 == 0) goto L8
            java.lang.String r1 = r16.getTypeName()
            goto L9
        L8:
            r1 = r0
        L9:
            java.lang.String r2 = java.lang.String.valueOf(r1)
            java.lang.String r3 = "getDetailNetworkType, typeName: "
            java.lang.String r2 = r3.concat(r2)
            java.lang.String r3 = "TPNetworkChangeMonitor"
            com.tencent.thumbplayer.utils.TPLogUtil.d(r3, r2)
            java.lang.String r2 = "3gnet"
            java.lang.String r3 = "3gwap"
            java.lang.String r4 = "net"
            java.lang.String r5 = "wap"
            java.lang.String r6 = "uninet"
            java.lang.String r7 = "uniwap"
            java.lang.String r8 = "cmnet"
            java.lang.String r9 = "cmwap"
            java.lang.String r10 = "wifi"
            java.lang.String r11 = "unknown"
            java.lang.String r12 = "ctnet"
            java.lang.String r13 = "ctwap"
            if (r1 == 0) goto Lc7
            java.util.Locale r14 = java.util.Locale.getDefault()
            java.lang.String r1 = r1.toLowerCase(r14)
            boolean r1 = r1.equals(r10)
            if (r1 != 0) goto Lc5
            java.lang.String r1 = r16.getExtraInfo()
            if (r1 == 0) goto L53
            java.util.Locale r0 = java.util.Locale.getDefault()
            java.lang.String r0 = r1.toLowerCase(r0)
        L53:
            if (r0 == 0) goto Lc7
            boolean r1 = r0.startsWith(r9)
            if (r1 == 0) goto L5e
            r2 = r9
            goto Lc8
        L5e:
            boolean r1 = r0.startsWith(r8)
            if (r1 != 0) goto Lc3
            java.lang.String r1 = "epc.tmobile.com"
            boolean r1 = r0.startsWith(r1)
            if (r1 == 0) goto L6e
            goto Lc3
        L6e:
            boolean r1 = r0.startsWith(r7)
            if (r1 == 0) goto L77
            r2 = r7
            goto Lc8
        L77:
            boolean r1 = r0.startsWith(r6)
            if (r1 == 0) goto L7f
            r2 = r6
            goto Lc8
        L7f:
            boolean r1 = r0.startsWith(r5)
            if (r1 == 0) goto L87
            r2 = r5
            goto Lc8
        L87:
            boolean r1 = r0.startsWith(r4)
            if (r1 == 0) goto L8f
            r2 = r4
            goto Lc8
        L8f:
            boolean r1 = r0.startsWith(r13)
            if (r1 == 0) goto L97
        L95:
            r2 = r13
            goto Lc8
        L97:
            boolean r1 = r0.startsWith(r12)
            if (r1 == 0) goto L9f
        L9d:
            r2 = r12
            goto Lc8
        L9f:
            boolean r1 = r0.startsWith(r3)
            if (r1 == 0) goto La7
            r2 = r3
            goto Lc8
        La7:
            boolean r1 = r0.startsWith(r2)
            if (r1 == 0) goto Lae
            goto Lc8
        Lae:
            java.lang.String r1 = "#777"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto Lc7
            java.lang.String r0 = android.net.Proxy.getDefaultHost()
            if (r0 == 0) goto L9d
            int r0 = r0.length()
            if (r0 <= 0) goto L9d
            goto L95
        Lc3:
            r2 = r8
            goto Lc8
        Lc5:
            r2 = r10
            goto Lc8
        Lc7:
            r2 = r11
        Lc8:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.utils.i.c(android.net.NetworkInfo):java.lang.String");
    }

    private static boolean d() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005e A[Catch: all -> 0x0084, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0008, B:10:0x0016, B:12:0x005e, B:13:0x0064, B:15:0x006a, B:16:0x007a), top: B:22:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized void e() {
        /*
            r6 = this;
            monitor-enter(r6)
            int r0 = com.tencent.thumbplayer.utils.i.f34468a     // Catch: java.lang.Throwable -> L84
            int r1 = com.tencent.thumbplayer.utils.i.f34471d     // Catch: java.lang.Throwable -> L84
            r2 = 0
            if (r0 != r1) goto L15
            java.lang.String r0 = com.tencent.thumbplayer.utils.i.f34469b     // Catch: java.lang.Throwable -> L84
            java.lang.String r1 = com.tencent.thumbplayer.utils.i.f34472e     // Catch: java.lang.Throwable -> L84
            boolean r0 = android.text.TextUtils.equals(r0, r1)     // Catch: java.lang.Throwable -> L84
            if (r0 != 0) goto L13
            goto L15
        L13:
            r0 = 0
            goto L16
        L15:
            r0 = 1
        L16:
            java.lang.String r1 = "TPNetworkChangeMonitor"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L84
            java.lang.String r4 = "notifyIfNetChanged, isNetChanged: "
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L84
            r3.append(r0)     // Catch: java.lang.Throwable -> L84
            java.lang.String r4 = ",  mListeners:  "
            r3.append(r4)     // Catch: java.lang.Throwable -> L84
            java.util.ArrayList<com.tencent.thumbplayer.utils.i$b> r4 = r6.f34473f     // Catch: java.lang.Throwable -> L84
            r3.append(r4)     // Catch: java.lang.Throwable -> L84
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L84
            com.tencent.thumbplayer.utils.TPLogUtil.i(r1, r3)     // Catch: java.lang.Throwable -> L84
            java.lang.String r1 = "TPNetworkChangeMonitor"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L84
            java.lang.String r4 = "onNetworkStatusChanged oldNetStatus: "
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L84
            int r4 = com.tencent.thumbplayer.utils.i.f34471d     // Catch: java.lang.Throwable -> L84
            r3.append(r4)     // Catch: java.lang.Throwable -> L84
            java.lang.String r4 = ", netStatus: "
            r3.append(r4)     // Catch: java.lang.Throwable -> L84
            int r4 = com.tencent.thumbplayer.utils.i.f34468a     // Catch: java.lang.Throwable -> L84
            r3.append(r4)     // Catch: java.lang.Throwable -> L84
            java.lang.String r4 = ", mobileNetSubType"
            r3.append(r4)     // Catch: java.lang.Throwable -> L84
            int r4 = com.tencent.thumbplayer.utils.i.f34470c     // Catch: java.lang.Throwable -> L84
            r3.append(r4)     // Catch: java.lang.Throwable -> L84
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L84
            com.tencent.thumbplayer.utils.TPLogUtil.i(r1, r3)     // Catch: java.lang.Throwable -> L84
            if (r0 == 0) goto L82
            java.util.ArrayList<com.tencent.thumbplayer.utils.i$b> r0 = r6.f34473f     // Catch: java.lang.Throwable -> L84
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L84
        L64:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Throwable -> L84
            if (r1 == 0) goto L7a
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Throwable -> L84
            com.tencent.thumbplayer.utils.i$b r1 = (com.tencent.thumbplayer.utils.i.b) r1     // Catch: java.lang.Throwable -> L84
            int r3 = com.tencent.thumbplayer.utils.i.f34471d     // Catch: java.lang.Throwable -> L84
            int r4 = com.tencent.thumbplayer.utils.i.f34468a     // Catch: java.lang.Throwable -> L84
            int r5 = com.tencent.thumbplayer.utils.i.f34470c     // Catch: java.lang.Throwable -> L84
            r1.a(r3, r4, r2, r5)     // Catch: java.lang.Throwable -> L84
            goto L64
        L7a:
            int r0 = com.tencent.thumbplayer.utils.i.f34468a     // Catch: java.lang.Throwable -> L84
            com.tencent.thumbplayer.utils.i.f34471d = r0     // Catch: java.lang.Throwable -> L84
            java.lang.String r0 = com.tencent.thumbplayer.utils.i.f34469b     // Catch: java.lang.Throwable -> L84
            com.tencent.thumbplayer.utils.i.f34472e = r0     // Catch: java.lang.Throwable -> L84
        L82:
            monitor-exit(r6)
            return
        L84:
            r0 = move-exception
            monitor-exit(r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.utils.i.e():void");
    }

    private void f() {
        TPLogUtil.d("TPNetworkChangeMonitor", "-->updateNetStatus(), mNetStatus=" + f34468a + "[wifi: 2, mobile: 3], lastNetStatus=" + f34471d + ", mDetailNetworkType=" + f34469b + ", mobileNetSubType=" + f34470c + "[2G:2 3G:3 4G:4], currentDetailNetType=" + f34469b + ", lastDetailNetType=" + f34472e);
    }

    public synchronized void a(Context context) {
        com.tencent.thumbplayer.utils.b.a(context, "context can not be null!");
        if (this.f34474g == null) {
            this.f34474g = o.a().b();
        }
        a(context, new Handler(this.f34474g.getLooper()));
    }

    public synchronized void a(b bVar) {
        ArrayList<b> arrayList = this.f34473f;
        if (arrayList != null && !arrayList.contains(bVar)) {
            this.f34473f.add(bVar);
            TPLogUtil.d("TPNetworkChangeMonitor", "add onNetStatus change listener: " + bVar + ", mListeners: " + this.f34473f.size());
        }
    }

    public synchronized void b(b bVar) {
        ArrayList<b> arrayList = this.f34473f;
        if (arrayList != null) {
            arrayList.remove(bVar);
            TPLogUtil.d("TPNetworkChangeMonitor", "remove netStatusChangeListener, listener: " + bVar + ", mListeners: " + this.f34473f.size());
        }
    }

    @Override // android.content.BroadcastReceiver
    @RequiresApi(api = 3)
    public void onReceive(Context context, Intent intent) {
        StringBuilder sb2 = new StringBuilder("onReceive broadcast action and update net status,onReceive broadcast in ");
        sb2.append(d() ? "main" : "work");
        sb2.append(" thread.");
        TPLogUtil.d("TPNetworkChangeMonitor", sb2.toString());
        b(context);
    }
}
