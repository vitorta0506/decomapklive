package com.tencent.liteav.base.http;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.text.TextUtils;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.net.Authenticator;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.PasswordAuthentication;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import javax.net.ssl.SSLException;
@JNINamespace("liteav")
/* loaded from: classes4.dex */
public class HttpClientAndroid {
    private static final int ERROR_CODE_INVALID_REQUEST = 0;
    private static final String HTTPS_PREFIX = "https://";
    private static final String HTTP_PREFIX = "http://";
    private static final String METHOD_GET = "GET";
    private static final String METHOD_POST = "POST";
    private static final int READ_STREAM_SIZE = 1388;
    private static final int REDIRECT_REQUEST_MAX = 1;
    private static final String TAG = "HttpClientAndroid";
    private HttpURLConnection mConnection;
    private b mHttpConfig;
    private final Handler mHttpHandler;
    private String mLastRequestURL;
    private long mNativeHttpClientAndroidJni;
    private final ConcurrentHashMap<Long, d> mRunningRequestMap = new ConcurrentHashMap<>();
    private final Object mLocker = new Object();
    private volatile c mInternalState = c.NONE;
    private long mTotalReadBytes = 0;
    private long mStartReadTime = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a extends Authenticator {

        /* renamed from: a  reason: collision with root package name */
        String f30896a;

        /* renamed from: b  reason: collision with root package name */
        String f30897b;

        a(String str, String str2) {
            this.f30896a = str;
            this.f30897b = str2;
        }

        @Override // java.net.Authenticator
        protected final PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(this.f30896a, this.f30897b.toCharArray());
        }
    }

    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        int f30898a;

        /* renamed from: b  reason: collision with root package name */
        int f30899b;

        /* renamed from: c  reason: collision with root package name */
        int f30900c;

        /* renamed from: d  reason: collision with root package name */
        boolean f30901d;

        /* renamed from: e  reason: collision with root package name */
        int f30902e;

        /* renamed from: f  reason: collision with root package name */
        int f30903f;

        /* renamed from: g  reason: collision with root package name */
        String f30904g;

        /* renamed from: h  reason: collision with root package name */
        String f30905h;

        /* renamed from: i  reason: collision with root package name */
        String f30906i;

        b(int i9, int i10, int i11, boolean z10, int i12, int i13, String str, String str2, String str3) {
            this.f30898a = i9;
            this.f30899b = i10;
            this.f30900c = i11;
            this.f30901d = z10;
            this.f30902e = i12;
            this.f30903f = i13;
            this.f30904g = str;
            this.f30905h = str2;
            this.f30906i = str3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public enum c {
        NONE,
        RUNNING_REPEAT,
        RUNNING_ONCE
    }

    /* loaded from: classes4.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        long f30911a;

        /* renamed from: b  reason: collision with root package name */
        String f30912b;

        /* renamed from: c  reason: collision with root package name */
        String f30913c;

        /* renamed from: d  reason: collision with root package name */
        byte[] f30914d;

        /* renamed from: e  reason: collision with root package name */
        Map<String, String> f30915e;

        d(String str, String str2, byte[] bArr, Map<String, String> map) {
            this.f30912b = str;
            this.f30913c = str2;
            this.f30914d = bArr;
            this.f30915e = map;
        }

        final boolean a() {
            if (TextUtils.isEmpty(this.f30912b)) {
                return false;
            }
            return this.f30912b.startsWith("http://") || this.f30912b.startsWith("https://");
        }

        final boolean b() {
            byte[] bArr = this.f30914d;
            return bArr != null && bArr.length > 0;
        }

        final boolean c() {
            return HttpClientAndroid.METHOD_POST.equals(d());
        }

        final String d() {
            return TextUtils.isEmpty(this.f30913c) ? "" : HttpClientAndroid.METHOD_POST.equalsIgnoreCase(this.f30913c) ? HttpClientAndroid.METHOD_POST : HttpClientAndroid.METHOD_GET.equalsIgnoreCase(this.f30913c) ? HttpClientAndroid.METHOD_GET : "";
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder("Request{requestId=");
            sb2.append(this.f30911a);
            sb2.append(", url='");
            sb2.append(this.f30912b);
            sb2.append('\'');
            sb2.append(", method='");
            sb2.append(this.f30913c);
            sb2.append('\'');
            sb2.append(", body.size=");
            sb2.append(b() ? this.f30914d.length : 0);
            sb2.append(", headers=");
            sb2.append(this.f30915e);
            sb2.append('}');
            return sb2.toString();
        }
    }

    /* loaded from: classes4.dex */
    public static class e {

        /* renamed from: c  reason: collision with root package name */
        ByteBuffer f30918c;

        /* renamed from: a  reason: collision with root package name */
        g f30916a = g.kUnknownError;

        /* renamed from: b  reason: collision with root package name */
        String f30917b = "";

        /* renamed from: d  reason: collision with root package name */
        int f30919d = 0;

        /* renamed from: e  reason: collision with root package name */
        String f30920e = "";

        /* renamed from: f  reason: collision with root package name */
        Map<String, String> f30921f = null;

        /* renamed from: g  reason: collision with root package name */
        int f30922g = 0;
    }

    /* loaded from: classes4.dex */
    public enum f {
        CONNECTED(0),
        DISCONNECTED(1),
        FINISHED(2);
        
        int nativeValue;

        f(int i9) {
            this.nativeValue = i9;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public enum g {
        kHTTP200OK(200),
        kHTTP204NoContent(204),
        kHTTP206PartialContent(206),
        kHTTP301MovedPermanently(301),
        kHTTP302Found(302),
        kHTTP303SeeOther(303),
        kHTTP304NotModified(304),
        kHTTP307TemporaryRedirect(307),
        kHTTP308PermanentRedirect(308),
        kHTTP403Forbidden(403),
        kHTTP404NotFound(404),
        kHTTP405MethodNotAllowed(405),
        kHTTP503ServiceUnavailable(503),
        kSystemFileOpenFailed(1001),
        kSystemFileWriteFailed(1002),
        kSystemUnknownHost(1003),
        kSystemConnectHostFailed(1004),
        kSystemCreateSocketFailed(1005),
        kSystemNetworkDisabled(1006),
        kSystemConnectTimeout(1007),
        kSystemConnectRefused(1008),
        kSystemProtocolError(1009),
        kSystemSSLError(1010),
        kUnknownError(1999);
        
        final int nativeValue;

        g(int i9) {
            this.nativeValue = i9;
        }
    }

    @CalledByNative
    public HttpClientAndroid(int i9, int i10, int i11, boolean z10, int i12, int i13, String str, String str2, String str3, long j10) {
        this.mHttpConfig = new b(i9, i10, i11, z10, i12, i13, str, str2, str3);
        this.mNativeHttpClientAndroidJni = j10;
        HandlerThread handlerThread = new HandlerThread("HttpClient_" + hashCode());
        handlerThread.start();
        LiteavLog.i(TAG, "Create http client(" + hashCode() + "). [ThreadName:" + handlerThread.getName() + "][ThreadId:" + handlerThread.getId() + "]");
        this.mHttpHandler = new Handler(handlerThread.getLooper());
    }

    private boolean checkNativeValid() {
        boolean z10;
        synchronized (this.mLocker) {
            z10 = this.mNativeHttpClientAndroidJni != -1;
        }
        return z10;
    }

    private boolean checkRequestValid(long j10) {
        return this.mRunningRequestMap.containsKey(Long.valueOf(j10));
    }

    private void closeConnectionSafely(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private HttpURLConnection createConnection(d dVar) throws Exception {
        Proxy proxy;
        HttpURLConnection httpURLConnection;
        if (!TextUtils.isEmpty(this.mHttpConfig.f30904g) || this.mHttpConfig.f30903f <= 0) {
            proxy = null;
        } else {
            Proxy.Type type = Proxy.Type.SOCKS;
            b bVar = this.mHttpConfig;
            proxy = new Proxy(type, new InetSocketAddress(bVar.f30904g, bVar.f30903f));
            b bVar2 = this.mHttpConfig;
            Authenticator.setDefault(new a(bVar2.f30905h, bVar2.f30906i));
        }
        URL url = new URL(dVar.f30912b.replace(" ", "%20"));
        if (proxy != null) {
            httpURLConnection = (HttpURLConnection) url.openConnection(proxy);
        } else {
            httpURLConnection = (HttpURLConnection) url.openConnection();
        }
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setConnectTimeout(this.mHttpConfig.f30898a);
        httpURLConnection.setReadTimeout(this.mHttpConfig.f30899b);
        httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
        httpURLConnection.setRequestMethod(dVar.d());
        if (dVar.c()) {
            httpURLConnection.setDoOutput(true);
        }
        if (this.mHttpConfig.f30901d) {
            httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
        } else {
            httpURLConnection.setRequestProperty("Connection", "close");
        }
        Map<String, String> map = dVar.f30915e;
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, String> entry : dVar.f30915e.entrySet()) {
                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        return httpURLConnection;
    }

    private void doCleanById(long j10, boolean z10) {
        this.mRunningRequestMap.remove(Long.valueOf(j10));
        if (this.mRunningRequestMap.size() == 0) {
            synchronized (this.mLocker) {
                this.mInternalState = c.NONE;
            }
        }
        if (z10) {
            closeConnectionSafely(this.mConnection);
            this.mConnection = null;
        }
    }

    private void doOnCallback(f fVar, long j10, e eVar) {
        synchronized (this.mLocker) {
            if (checkNativeValid() && checkRequestValid(j10) && eVar != null) {
                nativeOnCallback(this.mNativeHttpClientAndroidJni, c.RUNNING_REPEAT == this.mInternalState, fVar.nativeValue, j10, eVar.f30916a.nativeValue, eVar.f30917b, eVar.f30922g, eVar.f30918c, eVar.f30920e, eVar.f30921f, eVar.f30919d);
            }
        }
    }

    private void doReadData(long j10, e eVar) {
        boolean z10;
        long elapsedRealtime;
        boolean z11;
        if (!checkRequestValid(j10)) {
            LiteavLog.w(TAG, "(" + hashCode() + ")Do read data failed. Invalid request id. id:" + j10);
            return;
        }
        try {
            InputStream inputStream = this.mConnection.getInputStream();
            synchronized (this.mLocker) {
                z10 = this.mInternalState == c.RUNNING_ONCE;
            }
            long j11 = 0;
            if (z10) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[READ_STREAM_SIZE];
                do {
                    try {
                        int read = inputStream.read(bArr);
                        if (read > 0) {
                            byteArrayOutputStream.write(bArr, 0, read);
                        }
                        if (read <= 0 || !checkRequestValid(j10)) {
                            z11 = false;
                            continue;
                        } else {
                            z11 = true;
                            continue;
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        LiteavLog.e(TAG, "(" + hashCode() + ")Do read data failed. Catch error when reading.");
                        eVar.f30916a = getStatusCode(e10);
                        eVar.f30917b = e10.toString();
                        doOnCallback(f.DISCONNECTED, j10, eVar);
                        doCleanById(j10, true);
                        return;
                    }
                } while (z11);
                int size = byteArrayOutputStream.size();
                if (size > 0) {
                    ByteBuffer allocateDirect = ByteBuffer.allocateDirect(size);
                    eVar.f30918c = allocateDirect;
                    allocateDirect.put(byteArrayOutputStream.toByteArray(), 0, size);
                    eVar.f30919d = size;
                }
                elapsedRealtime = 0;
            } else {
                byte[] bArr2 = new byte[READ_STREAM_SIZE];
                try {
                    int read2 = inputStream.read(bArr2);
                    this.mTotalReadBytes += read2;
                    elapsedRealtime = SystemClock.elapsedRealtime();
                    if (read2 > 0) {
                        ByteBuffer allocateDirect2 = ByteBuffer.allocateDirect(read2);
                        eVar.f30918c = allocateDirect2;
                        allocateDirect2.put(bArr2, 0, read2);
                        eVar.f30919d = read2;
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                    LiteavLog.e(TAG, "(" + hashCode() + ")Do read data failed. Catch error when reading.");
                    eVar.f30916a = getStatusCode(e11);
                    eVar.f30917b = e11.toString();
                    doOnCallback(f.DISCONNECTED, j10, eVar);
                    doCleanById(j10, true);
                    return;
                }
            }
            if (eVar.f30919d == 0 && !z10) {
                LiteavLog.w(TAG, "(" + hashCode() + ")Do read data failed. Rsp size is 0.");
                doOnCallback(f.FINISHED, j10, eVar);
                doCleanById(j10, true);
            } else if (z10) {
                doOnCallback(f.FINISHED, j10, eVar);
                doCleanById(j10, !this.mHttpConfig.f30901d);
            } else {
                doOnCallback(f.CONNECTED, j10, eVar);
                int i9 = this.mHttpConfig.f30902e;
                if (i9 > 0) {
                    long j12 = this.mStartReadTime;
                    long j13 = elapsedRealtime - j12 == 0 ? 1L : elapsedRealtime - j12;
                    long j14 = this.mTotalReadBytes;
                    if (j14 / j13 > i9 / 1000) {
                        j11 = ((j14 * 1000) / i9) - j13;
                    }
                }
                this.mHttpHandler.postDelayed(com.tencent.liteav.base.http.d.a(this, eVar, j10), j11);
            }
        } catch (Exception e12) {
            e12.printStackTrace();
            LiteavLog.e(TAG, "(" + hashCode() + ")Do read data failed. Fail to get InputStream.");
            eVar.f30916a = getStatusCode(e12);
            eVar.f30917b = e12.toString();
            doOnCallback(f.DISCONNECTED, j10, eVar);
            doCleanById(j10, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doRequest(d dVar) {
        e eVar = null;
        for (int i9 = 0; i9 < 2; i9++) {
            eVar = internalRequest(dVar);
            if (eVar == null) {
                return;
            }
            g gVar = eVar.f30916a;
            if (gVar != g.kHTTP301MovedPermanently && gVar != g.kHTTP302Found) {
                break;
            }
            dVar.f30912b = this.mConnection.getHeaderField("Location");
        }
        this.mTotalReadBytes = 0L;
        this.mStartReadTime = SystemClock.elapsedRealtime();
        doReadData(dVar.f30911a, eVar);
    }

    @CalledByNative
    public static HashMap getJavaHashMap(String[] strArr, String[] strArr2) {
        if (strArr != null && strArr.length != 0 && strArr2 != null && strArr2.length != 0) {
            if (strArr.length != strArr2.length) {
                LiteavLog.w(TAG, "Invalid parameter, keys and values do not match.");
                return new HashMap();
            }
            HashMap hashMap = new HashMap();
            for (int i9 = 0; i9 < strArr.length; i9++) {
                hashMap.put(strArr[i9], strArr2[i9]);
            }
            return hashMap;
        }
        return new HashMap();
    }

    @CalledByNative
    public static String[] getMapKeys(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return new String[0];
        }
        Set<String> keySet = map.keySet();
        return (String[]) keySet.toArray(new String[keySet.size()]);
    }

    @CalledByNative
    public static String[] getMapValue(Map<String, String> map, String[] strArr) {
        if (map == null || map.isEmpty() || strArr == null || strArr.length == 0) {
            return new String[0];
        }
        String[] strArr2 = new String[strArr.length];
        for (int i9 = 0; i9 < strArr.length; i9++) {
            strArr2[i9] = map.get(strArr[i9]);
        }
        return strArr2;
    }

    private Map<String, String> getResponseHeaders(Map<String, List<String>> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (!TextUtils.isEmpty(entry.getKey())) {
                hashMap.put(entry.getKey(), entry.getValue().get(0));
            }
        }
        return hashMap;
    }

    private g getStatusCode(int i9) {
        g gVar = g.kUnknownError;
        if (i9 == 200) {
            return g.kHTTP200OK;
        }
        if (i9 == 204) {
            return g.kHTTP204NoContent;
        }
        if (i9 == 206) {
            return g.kHTTP206PartialContent;
        }
        if (i9 == 301) {
            return g.kHTTP301MovedPermanently;
        }
        if (i9 == 302) {
            return g.kHTTP302Found;
        }
        if (i9 == 303) {
            return g.kHTTP303SeeOther;
        }
        if (i9 == 304) {
            return g.kHTTP304NotModified;
        }
        if (i9 == 307) {
            return g.kHTTP307TemporaryRedirect;
        }
        if (i9 == 308) {
            return g.kHTTP308PermanentRedirect;
        }
        if (i9 == 403) {
            return g.kHTTP403Forbidden;
        }
        if (i9 == 404) {
            return g.kHTTP404NotFound;
        }
        if (i9 == 405) {
            return g.kHTTP405MethodNotAllowed;
        }
        if (i9 == 503) {
            return g.kHTTP503ServiceUnavailable;
        }
        Log.w(TAG, "(" + hashCode() + ")Failed to convert status code：", Integer.valueOf(i9));
        return gVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0133 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.tencent.liteav.base.http.HttpClientAndroid.e internalRequest(com.tencent.liteav.base.http.HttpClientAndroid.d r8) {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.base.http.HttpClientAndroid.internalRequest(com.tencent.liteav.base.http.HttpClientAndroid$d):com.tencent.liteav.base.http.HttpClientAndroid$e");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$cancelAll$1(HttpClientAndroid httpClientAndroid) {
        httpClientAndroid.closeConnectionSafely(httpClientAndroid.mConnection);
        httpClientAndroid.mConnection = null;
        LiteavLog.i(TAG, "(" + httpClientAndroid.hashCode() + ")Cancel all finish.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$destroy$2(HttpClientAndroid httpClientAndroid) {
        httpClientAndroid.closeConnectionSafely(httpClientAndroid.mConnection);
        httpClientAndroid.mConnection = null;
        if (LiteavSystemInfo.getSystemOSVersionInt() >= 18) {
            httpClientAndroid.mHttpHandler.getLooper().quitSafely();
        } else {
            httpClientAndroid.mHttpHandler.getLooper().quit();
        }
        LiteavLog.i(TAG, "(" + httpClientAndroid.hashCode() + ")Quit looper finish.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$doReadData$3(HttpClientAndroid httpClientAndroid, e eVar, long j10) {
        e eVar2 = new e();
        eVar2.f30916a = eVar.f30916a;
        httpClientAndroid.doReadData(j10, eVar2);
    }

    private static native void nativeOnCallback(long j10, boolean z10, int i9, long j11, int i10, String str, int i11, ByteBuffer byteBuffer, String str2, Map map, int i12);

    private String parseHostAddress(String str) {
        try {
            return InetAddress.getByName(str).getHostAddress();
        } catch (Exception unused) {
            LiteavLog.w(TAG, "(" + hashCode() + ")Parse host error. host:" + str);
            return "";
        }
    }

    @CalledByNative
    public void cancel(long j10) {
        synchronized (this.mLocker) {
            if (!checkNativeValid()) {
                LiteavLog.e(TAG, "(" + hashCode() + ")Cancel request failed. Invalid native handle.");
            } else if (this.mRunningRequestMap.size() == 0) {
            } else {
                LiteavLog.i(TAG, "(" + hashCode() + ")Cancel request. request:" + this.mRunningRequestMap.remove(Long.valueOf(j10)));
                if (this.mRunningRequestMap.size() == 0) {
                    this.mInternalState = c.NONE;
                }
            }
        }
    }

    @CalledByNative
    public void cancelAll() {
        synchronized (this.mLocker) {
            if (!checkNativeValid()) {
                LiteavLog.e(TAG, "(" + hashCode() + ")Cancel all request failed. Invalid native handle.");
                return;
            }
            c cVar = this.mInternalState;
            c cVar2 = c.NONE;
            if (cVar == cVar2) {
                return;
            }
            this.mInternalState = cVar2;
            LiteavLog.i(TAG, "(" + hashCode() + ")Cancel all. size:" + this.mRunningRequestMap.size());
            this.mRunningRequestMap.clear();
            this.mHttpHandler.post(com.tencent.liteav.base.http.b.a(this));
        }
    }

    @CalledByNative
    public void destroy() {
        synchronized (this.mLocker) {
            this.mRunningRequestMap.clear();
            this.mNativeHttpClientAndroidJni = -1L;
            LiteavLog.i(TAG, "(" + hashCode() + ")Destroy http client.");
            this.mHttpHandler.post(com.tencent.liteav.base.http.c.a(this));
        }
    }

    @CalledByNative
    public long send(long j10, String str, String str2, byte[] bArr, Map<String, String> map, boolean z10) {
        if (!checkNativeValid()) {
            LiteavLog.e(TAG, "(" + hashCode() + ")Send request failed. Invalid native handle.");
            return 0L;
        }
        d dVar = new d(str, str2, bArr, map);
        if (!dVar.a()) {
            LiteavLog.e(TAG, "(" + hashCode() + ")Send request failed. Invalid request url(" + dVar.f30912b + ").");
            return 0L;
        }
        boolean z11 = true;
        if (!(!TextUtils.isEmpty(dVar.d()))) {
            LiteavLog.e(TAG, "(" + hashCode() + ")Send request failed. Request method(" + dVar.f30913c + ") is not supported.");
            return 0L;
        }
        synchronized (this.mLocker) {
            if (this.mInternalState == c.NONE) {
                this.mInternalState = z10 ? c.RUNNING_REPEAT : c.RUNNING_ONCE;
            } else if (this.mInternalState != c.RUNNING_ONCE) {
                z11 = false;
            }
            if (z11) {
                dVar.f30911a = j10;
                this.mRunningRequestMap.put(Long.valueOf(j10), dVar);
                this.mHttpHandler.post(com.tencent.liteav.base.http.a.a(this, dVar));
                return dVar.f30911a;
            }
            LiteavLog.e(TAG, "(" + hashCode() + ")Send request failed. Invalid state:" + this.mInternalState);
            return 0L;
        }
    }

    @CalledByNative
    public void updateConfig(final int i9, final int i10, final int i11, final boolean z10, final int i12, final int i13, final String str, final String str2, final String str3, long j10) {
        this.mHttpHandler.post(new Runnable() { // from class: com.tencent.liteav.base.http.HttpClientAndroid.1
            @Override // java.lang.Runnable
            public final void run() {
                HttpClientAndroid.this.mHttpConfig = new b(i9, i10, i11, z10, i12, i13, str, str2, str3);
                if (i12 > 0) {
                    HttpClientAndroid.this.mTotalReadBytes = 0L;
                    HttpClientAndroid.this.mStartReadTime = SystemClock.elapsedRealtime();
                }
            }
        });
    }

    private g getStatusCode(Exception exc) {
        g gVar = g.kUnknownError;
        if (exc instanceof FileNotFoundException) {
            return g.kSystemFileOpenFailed;
        }
        if (exc instanceof EOFException) {
            return g.kSystemFileWriteFailed;
        }
        if (exc instanceof UnknownHostException) {
            return g.kSystemUnknownHost;
        }
        if (exc instanceof NoRouteToHostException) {
            return g.kSystemConnectHostFailed;
        }
        if (!(exc instanceof SocketException) && !(exc instanceof MalformedURLException)) {
            if (exc instanceof SocketTimeoutException) {
                return g.kSystemConnectTimeout;
            }
            if (exc instanceof ConnectException) {
                return g.kSystemConnectRefused;
            }
            if (exc instanceof ProtocolException) {
                return g.kSystemProtocolError;
            }
            if (exc instanceof SSLException) {
                return g.kSystemSSLError;
            }
            Log.w(TAG, "(" + hashCode() + ")Failed to convert status code, exception：", exc.toString());
            return gVar;
        }
        return g.kSystemCreateSocketFailed;
    }
}
