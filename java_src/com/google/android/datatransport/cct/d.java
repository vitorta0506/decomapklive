package com.google.android.datatransport.cct;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.facebook.appevents.UserDataStore;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.google.android.datatransport.cct.d;
import com.google.android.datatransport.cct.internal.ClientInfo;
import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;
import com.google.android.datatransport.cct.internal.QosTier;
import com.google.android.datatransport.cct.internal.i;
import com.google.android.datatransport.cct.internal.j;
import com.google.android.datatransport.cct.internal.k;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.firebase.encoders.EncodingException;
import com.guochao.faceshow.utils.HttpFileUtil;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import n1.h;
import o1.k;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d implements k {

    /* renamed from: a  reason: collision with root package name */
    private final d6.a f5228a;

    /* renamed from: b  reason: collision with root package name */
    private final ConnectivityManager f5229b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f5230c;

    /* renamed from: d  reason: collision with root package name */
    final URL f5231d;

    /* renamed from: e  reason: collision with root package name */
    private final y1.a f5232e;

    /* renamed from: f  reason: collision with root package name */
    private final y1.a f5233f;

    /* renamed from: g  reason: collision with root package name */
    private final int f5234g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final URL f5235a;

        /* renamed from: b  reason: collision with root package name */
        final i f5236b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        final String f5237c;

        a(URL url, i iVar, @Nullable String str) {
            this.f5235a = url;
            this.f5236b = iVar;
            this.f5237c = str;
        }

        a a(URL url) {
            return new a(url, this.f5236b, this.f5237c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final int f5238a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        final URL f5239b;

        /* renamed from: c  reason: collision with root package name */
        final long f5240c;

        b(int i9, @Nullable URL url, long j10) {
            this.f5238a = i9;
            this.f5239b = url;
            this.f5240c = j10;
        }
    }

    d(Context context, y1.a aVar, y1.a aVar2, int i9) {
        this.f5228a = i.b();
        this.f5230c = context;
        this.f5229b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f5231d = n(com.google.android.datatransport.cct.a.f5218c);
        this.f5232e = aVar2;
        this.f5233f = aVar;
        this.f5234g = i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b e(a aVar) throws IOException {
        s1.a.f("CctTransportBackend", "Making request to: %s", aVar.f5235a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) aVar.f5235a.openConnection();
        httpURLConnection.setConnectTimeout(HttpFileUtil.TIMEOUT);
        httpURLConnection.setReadTimeout(this.f5234g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", String.format("datatransport/%s android/", "3.1.7"));
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = aVar.f5237c;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                this.f5228a.a(aVar.f5236b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                gZIPOutputStream.close();
                if (outputStream != null) {
                    outputStream.close();
                }
                int responseCode = httpURLConnection.getResponseCode();
                s1.a.f("CctTransportBackend", "Status Code: %d", Integer.valueOf(responseCode));
                s1.a.b("CctTransportBackend", "Content-Type: %s", httpURLConnection.getHeaderField("Content-Type"));
                s1.a.b("CctTransportBackend", "Content-Encoding: %s", httpURLConnection.getHeaderField("Content-Encoding"));
                if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                    return new b(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                }
                if (responseCode != 200) {
                    return new b(responseCode, null, 0L);
                }
                InputStream inputStream = httpURLConnection.getInputStream();
                try {
                    InputStream m10 = m(inputStream, httpURLConnection.getHeaderField("Content-Encoding"));
                    b bVar = new b(responseCode, null, m1.b.b(new BufferedReader(new InputStreamReader(m10))).c());
                    if (m10 != null) {
                        m10.close();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return bVar;
                } catch (Throwable th2) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th5) {
                        th4.addSuppressed(th5);
                    }
                }
                throw th4;
            }
        } catch (EncodingException e10) {
            e = e10;
            s1.a.d("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new b(400, null, 0L);
        } catch (ConnectException e11) {
            e = e11;
            s1.a.d("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new b(500, null, 0L);
        } catch (UnknownHostException e12) {
            e = e12;
            s1.a.d("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new b(500, null, 0L);
        } catch (IOException e13) {
            e = e13;
            s1.a.d("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new b(400, null, 0L);
        }
    }

    private static int f(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return NetworkConnectionInfo.MobileSubtype.UNKNOWN_MOBILE_SUBTYPE.getValue();
        }
        int subtype = networkInfo.getSubtype();
        if (subtype == -1) {
            return NetworkConnectionInfo.MobileSubtype.COMBINED.getValue();
        }
        if (NetworkConnectionInfo.MobileSubtype.forNumber(subtype) != null) {
            return subtype;
        }
        return 0;
    }

    private static int g(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return NetworkConnectionInfo.NetworkType.NONE.getValue();
        }
        return networkInfo.getType();
    }

    private static int h(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e10) {
            s1.a.d("CctTransportBackend", "Unable to find version code for package", e10);
            return -1;
        }
    }

    private i i(o1.e eVar) {
        j.a j10;
        HashMap hashMap = new HashMap();
        for (n1.i iVar : eVar.b()) {
            String j11 = iVar.j();
            if (!hashMap.containsKey(j11)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(iVar);
                hashMap.put(j11, arrayList);
            } else {
                ((List) hashMap.get(j11)).add(iVar);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : hashMap.entrySet()) {
            n1.i iVar2 = (n1.i) ((List) entry.getValue()).get(0);
            k.a b10 = com.google.android.datatransport.cct.internal.k.a().f(QosTier.DEFAULT).g(this.f5233f.a()).h(this.f5232e.a()).b(ClientInfo.a().c(ClientInfo.ClientType.ANDROID_FIREBASE).b(com.google.android.datatransport.cct.internal.a.a().m(Integer.valueOf(iVar2.g("sdk-version"))).j(iVar2.b(DeviceRequestsHelper.DEVICE_INFO_MODEL)).f(iVar2.b("hardware")).d(iVar2.b(DeviceRequestsHelper.DEVICE_INFO_DEVICE)).l(iVar2.b("product")).k(iVar2.b("os-uild")).h(iVar2.b("manufacturer")).e(iVar2.b("fingerprint")).c(iVar2.b(UserDataStore.COUNTRY)).g(iVar2.b("locale")).i(iVar2.b("mcc_mnc")).b(iVar2.b("application_build")).a()).a());
            try {
                b10.i(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException unused) {
                b10.j((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (n1.i iVar3 : (List) entry.getValue()) {
                h e10 = iVar3.e();
                l1.b b11 = e10.b();
                if (b11.equals(l1.b.b("proto"))) {
                    j10 = j.j(e10.a());
                } else if (b11.equals(l1.b.b("json"))) {
                    j10 = j.i(new String(e10.a(), Charset.forName("UTF-8")));
                } else {
                    s1.a.g("CctTransportBackend", "Received event of unsupported encoding %s. Skipping...", b11);
                }
                j10.c(iVar3.f()).d(iVar3.k()).h(iVar3.h("tz-offset")).e(NetworkConnectionInfo.a().c(NetworkConnectionInfo.NetworkType.forNumber(iVar3.g("net-type"))).b(NetworkConnectionInfo.MobileSubtype.forNumber(iVar3.g("mobile-subtype"))).a());
                if (iVar3.d() != null) {
                    j10.b(iVar3.d());
                }
                arrayList3.add(j10.a());
            }
            b10.c(arrayList3);
            arrayList2.add(b10.a());
        }
        return i.a(arrayList2);
    }

    private static TelephonyManager j(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    @VisibleForTesting
    static long k() {
        Calendar.getInstance();
        return TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ a l(a aVar, b bVar) {
        URL url = bVar.f5239b;
        if (url != null) {
            s1.a.b("CctTransportBackend", "Following redirect to: %s", url);
            return aVar.a(bVar.f5239b);
        }
        return null;
    }

    private static InputStream m(InputStream inputStream, String str) throws IOException {
        return "gzip".equals(str) ? new GZIPInputStream(inputStream) : inputStream;
    }

    private static URL n(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e10) {
            throw new IllegalArgumentException("Invalid url: " + str, e10);
        }
    }

    @Override // o1.k
    public n1.i a(n1.i iVar) {
        NetworkInfo activeNetworkInfo = this.f5229b.getActiveNetworkInfo();
        return iVar.l().a("sdk-version", Build.VERSION.SDK_INT).c(DeviceRequestsHelper.DEVICE_INFO_MODEL, Build.MODEL).c("hardware", Build.HARDWARE).c(DeviceRequestsHelper.DEVICE_INFO_DEVICE, Build.DEVICE).c("product", Build.PRODUCT).c("os-uild", Build.ID).c("manufacturer", Build.MANUFACTURER).c("fingerprint", Build.FINGERPRINT).b("tz-offset", k()).a("net-type", g(activeNetworkInfo)).a("mobile-subtype", f(activeNetworkInfo)).c(UserDataStore.COUNTRY, Locale.getDefault().getCountry()).c("locale", Locale.getDefault().getLanguage()).c("mcc_mnc", j(this.f5230c).getSimOperator()).c("application_build", Integer.toString(h(this.f5230c))).d();
    }

    @Override // o1.k
    public BackendResponse b(o1.e eVar) {
        i i9 = i(eVar);
        URL url = this.f5231d;
        if (eVar.c() != null) {
            try {
                com.google.android.datatransport.cct.a c10 = com.google.android.datatransport.cct.a.c(eVar.c());
                r3 = c10.d() != null ? c10.d() : null;
                if (c10.e() != null) {
                    url = n(c10.e());
                }
            } catch (IllegalArgumentException unused) {
                return BackendResponse.a();
            }
        }
        try {
            b bVar = (b) t1.b.a(5, new a(url, i9, r3), new t1.a() { // from class: com.google.android.datatransport.cct.b
                @Override // t1.a
                public final Object apply(Object obj) {
                    d.b e10;
                    e10 = d.this.e((d.a) obj);
                    return e10;
                }
            }, new t1.c() { // from class: com.google.android.datatransport.cct.c
                @Override // t1.c
                public final Object a(Object obj, Object obj2) {
                    d.a l10;
                    l10 = d.l((d.a) obj, (d.b) obj2);
                    return l10;
                }
            });
            int i10 = bVar.f5238a;
            if (i10 == 200) {
                return BackendResponse.e(bVar.f5240c);
            }
            if (i10 < 500 && i10 != 404) {
                if (i10 == 400) {
                    return BackendResponse.d();
                }
                return BackendResponse.a();
            }
            return BackendResponse.f();
        } catch (IOException e10) {
            s1.a.d("CctTransportBackend", "Could not make request to the backend", e10);
            return BackendResponse.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Context context, y1.a aVar, y1.a aVar2) {
        this(context, aVar, aVar2, 130000);
    }
}
