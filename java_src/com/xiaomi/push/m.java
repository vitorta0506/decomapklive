package com.xiaomi.push;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.appevents.UserDataStore;
import com.guochao.faceshow.utils.TimeUtil;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.xiaomi.channel.commonutils.android.Region;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class m {

    /* renamed from: j  reason: collision with root package name */
    protected static Context f36967j;

    /* renamed from: k  reason: collision with root package name */
    private static m f36968k;

    /* renamed from: l  reason: collision with root package name */
    private static a f36969l;

    /* renamed from: m  reason: collision with root package name */
    private static String f36970m;

    /* renamed from: n  reason: collision with root package name */
    private static String f36971n;

    /* renamed from: a  reason: collision with root package name */
    protected final Map<String, j> f36973a;

    /* renamed from: b  reason: collision with root package name */
    private l f36974b;

    /* renamed from: c  reason: collision with root package name */
    protected b f36975c;

    /* renamed from: d  reason: collision with root package name */
    private String f36976d;

    /* renamed from: e  reason: collision with root package name */
    private long f36977e;

    /* renamed from: f  reason: collision with root package name */
    private final long f36978f;

    /* renamed from: g  reason: collision with root package name */
    private long f36979g;

    /* renamed from: h  reason: collision with root package name */
    private String f36980h;

    /* renamed from: i  reason: collision with root package name */
    protected static final Map<String, i> f36966i = new HashMap();

    /* renamed from: o  reason: collision with root package name */
    protected static boolean f36972o = false;

    /* loaded from: classes5.dex */
    public interface a {
        m a(Context context, l lVar, b bVar, String str);
    }

    /* loaded from: classes5.dex */
    public interface b {
        String a(String str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public m(Context context, l lVar, b bVar, String str) {
        this(context, lVar, bVar, str, null, null);
    }

    protected m(Context context, l lVar, b bVar, String str, String str2, String str3) {
        this.f36973a = new HashMap();
        this.f36976d = "0";
        this.f36977e = 0L;
        this.f36978f = 15L;
        this.f36979g = 0L;
        this.f36980h = "isp_prov_city_country_ip";
        this.f36975c = bVar;
        this.f36974b = lVar == null ? new n(this) : lVar;
        this.f36976d = str;
        f36970m = str2 == null ? context.getPackageName() : str2;
        f36971n = str3 == null ? A() : str3;
    }

    private String A() {
        try {
            PackageInfo packageInfo = f36967j.getPackageManager().getPackageInfo(f36967j.getPackageName(), 16384);
            return packageInfo != null ? packageInfo.versionName : "0";
        } catch (Exception unused) {
            return "0";
        }
    }

    private void C() {
        Map<String, i> map = f36966i;
        synchronized (map) {
            map.clear();
        }
    }

    public static synchronized m c() {
        m mVar;
        synchronized (m.class) {
            mVar = f36968k;
            if (mVar == null) {
                throw new IllegalStateException("the host manager is not initialized yet.");
            }
        }
        return mVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String d() {
        NetworkInfo activeNetworkInfo;
        Context context = f36967j;
        if (context == null) {
            return "unknown";
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
                return "unknown";
            }
            if (activeNetworkInfo.getType() == 1) {
                return "WIFI-UNKNOWN";
            }
            return activeNetworkInfo.getTypeName() + "-" + activeNetworkInfo.getSubtypeName();
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    static String e(String str) {
        try {
            int length = str.length();
            byte[] bytes = str.getBytes("UTF-8");
            for (int i9 = 0; i9 < bytes.length; i9++) {
                byte b10 = bytes[i9];
                int i10 = b10 & 240;
                if (i10 != 240) {
                    bytes[i9] = (byte) (((b10 & 15) ^ ((byte) (((b10 >> 4) + length) & 15))) | i10);
                }
            }
            return new String(bytes);
        } catch (UnsupportedEncodingException unused) {
            return str;
        }
    }

    private ArrayList<i> g(ArrayList<String> arrayList) {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        B();
        synchronized (this.f36973a) {
            o();
            for (String str : this.f36973a.keySet()) {
                if (!arrayList.contains(str)) {
                    arrayList.add(str);
                }
            }
        }
        Map<String, i> map = f36966i;
        synchronized (map) {
            for (Object obj : map.values().toArray()) {
                i iVar = (i) obj;
                if (!iVar.u()) {
                    f36966i.remove(iVar.f36898d);
                }
            }
        }
        if (!arrayList.contains(q())) {
            arrayList.add(q());
        }
        ArrayList<i> arrayList2 = new ArrayList<>(arrayList.size());
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            arrayList2.add(null);
        }
        try {
            String str2 = p3.p(f36967j) ? "wifi" : "wap";
            String f10 = f(arrayList, str2, this.f36976d, true);
            if (!TextUtils.isEmpty(f10)) {
                JSONObject jSONObject3 = new JSONObject(f10);
                tf.c.s(f10);
                if ("OK".equalsIgnoreCase(jSONObject3.getString(ExifInterface.LATITUDE_SOUTH))) {
                    JSONObject jSONObject4 = jSONObject3.getJSONObject("R");
                    String string = jSONObject4.getString("province");
                    String string2 = jSONObject4.getString("city");
                    String string3 = jSONObject4.getString("isp");
                    String string4 = jSONObject4.getString("ip");
                    String string5 = jSONObject4.getString(UserDataStore.COUNTRY);
                    JSONObject jSONObject5 = jSONObject4.getJSONObject(str2);
                    tf.c.t("get bucket: net=" + string3 + ", hosts=" + jSONObject5.toString());
                    int i10 = 0;
                    while (i10 < arrayList.size()) {
                        String str3 = arrayList.get(i10);
                        JSONArray optJSONArray = jSONObject5.optJSONArray(str3);
                        if (optJSONArray == null) {
                            tf.c.l("no bucket found for " + str3);
                            jSONObject = jSONObject5;
                        } else {
                            i iVar2 = new i(str3);
                            int i11 = 0;
                            while (i11 < optJSONArray.length()) {
                                String string6 = optJSONArray.getString(i11);
                                if (TextUtils.isEmpty(string6)) {
                                    jSONObject2 = jSONObject5;
                                } else {
                                    jSONObject2 = jSONObject5;
                                    iVar2.i(new r(string6, optJSONArray.length() - i11));
                                }
                                i11++;
                                jSONObject5 = jSONObject2;
                            }
                            jSONObject = jSONObject5;
                            arrayList2.set(i10, iVar2);
                            iVar2.f36903i = string5;
                            iVar2.f36899e = string;
                            iVar2.f36901g = string3;
                            iVar2.f36902h = string4;
                            iVar2.f36900f = string2;
                            if (jSONObject4.has("stat-percent")) {
                                iVar2.g(jSONObject4.getDouble("stat-percent"));
                            }
                            if (jSONObject4.has("stat-domain")) {
                                iVar2.r(jSONObject4.getString("stat-domain"));
                            }
                            if (jSONObject4.has(RemoteMessageConst.TTL)) {
                                iVar2.h(jSONObject4.getInt(RemoteMessageConst.TTL) * 1000);
                            }
                            l(iVar2.b());
                        }
                        i10++;
                        jSONObject5 = jSONObject;
                    }
                    JSONObject optJSONObject = jSONObject4.optJSONObject("reserved");
                    if (optJSONObject != null) {
                        long j10 = TimeUtil.WEEK;
                        if (jSONObject4.has("reserved-ttl")) {
                            j10 = jSONObject4.getInt("reserved-ttl") * 1000;
                        }
                        Iterator<String> keys = optJSONObject.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            JSONArray optJSONArray2 = optJSONObject.optJSONArray(next);
                            if (optJSONArray2 == null) {
                                tf.c.l("no bucket found for " + next);
                            } else {
                                i iVar3 = new i(next);
                                iVar3.h(j10);
                                for (int i12 = 0; i12 < optJSONArray2.length(); i12++) {
                                    String string7 = optJSONArray2.getString(i12);
                                    if (!TextUtils.isEmpty(string7)) {
                                        iVar3.i(new r(string7, optJSONArray2.length() - i12));
                                    }
                                }
                                Map<String, i> map2 = f36966i;
                                synchronized (map2) {
                                    if (this.f36974b.a(next)) {
                                        map2.put(next, iVar3);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e10) {
            tf.c.l("failed to get bucket " + e10.getMessage());
        }
        for (int i13 = 0; i13 < arrayList.size(); i13++) {
            i iVar4 = arrayList2.get(i13);
            if (iVar4 != null) {
                m(arrayList.get(i13), iVar4);
            }
        }
        y();
        return arrayList2;
    }

    public static synchronized void j(Context context, l lVar, b bVar, String str, String str2, String str3) {
        synchronized (m.class) {
            Context applicationContext = context.getApplicationContext();
            f36967j = applicationContext;
            if (applicationContext == null) {
                f36967j = context;
            }
            if (f36968k == null) {
                a aVar = f36969l;
                if (aVar == null) {
                    f36968k = new m(context, lVar, bVar, str, str2, str3);
                } else {
                    f36968k = aVar.a(context, lVar, bVar, str);
                }
            }
        }
    }

    public static synchronized void k(a aVar) {
        synchronized (m.class) {
            f36969l = aVar;
            f36968k = null;
        }
    }

    public static void n(String str, String str2) {
        Map<String, i> map = f36966i;
        i iVar = map.get(str);
        synchronized (map) {
            if (iVar == null) {
                i iVar2 = new i(str);
                iVar2.h(TimeUtil.WEEK);
                iVar2.j(str2);
                map.put(str, iVar2);
            } else {
                iVar.j(str2);
            }
        }
    }

    public static void r() {
        m c10 = c();
        c10.C();
        c10.i();
        c10.y();
        tf.c.l("region changed so clear cached hosts");
    }

    public void B() {
        String next;
        synchronized (this.f36973a) {
            for (j jVar : this.f36973a.values()) {
                jVar.g(true);
            }
            while (true) {
                for (boolean z10 = false; !z10; z10 = true) {
                    Iterator<String> it = this.f36973a.keySet().iterator();
                    while (it.hasNext()) {
                        next = it.next();
                        if (this.f36973a.get(next).d().isEmpty()) {
                            break;
                        }
                    }
                }
                this.f36973a.remove(next);
            }
        }
    }

    public i a(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("the url is empty");
        }
        return b(new URL(str).getHost(), true);
    }

    public i b(String str, boolean z10) {
        i z11;
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("the host is empty");
        }
        if (this.f36974b.a(str)) {
            i t10 = t(str);
            return (t10 == null || !t10.u()) ? (z10 && p3.m(f36967j) && (z11 = z(str)) != null) ? z11 : new o(this, str, t10) : t10;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String f(ArrayList<String> arrayList, String str, String str2, boolean z10) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        ArrayList<o3> arrayList3 = new ArrayList();
        if (str.equals("wap")) {
            arrayList3.add(new m3("conpt", e(p3.f(f36967j))));
        }
        if (z10) {
            arrayList3.add(new m3("reserved", "1"));
        }
        arrayList3.add(new m3("list", g.d(arrayList, ",")));
        arrayList3.add(new m3("countrycode", com.xiaomi.push.service.b.a(f36967j).f()));
        arrayList3.add(new m3("push_sdk_vc", String.valueOf(50006)));
        i t10 = t(q());
        String format = String.format(Locale.US, "https://%1$s/gslb/?ver=5.0", q());
        if (t10 == null) {
            arrayList2.add(format);
            Map<String, i> map = f36966i;
            synchronized (map) {
                i iVar = map.get(q());
                if (iVar != null) {
                    Iterator<String> it = iVar.e(true).iterator();
                    while (it.hasNext()) {
                        arrayList2.add(String.format(Locale.US, "https://%1$s/gslb/?ver=5.0", it.next()));
                    }
                }
            }
        } else {
            arrayList2 = t10.d(format);
        }
        Iterator<String> it2 = arrayList2.iterator();
        IOException e10 = null;
        while (it2.hasNext()) {
            Uri.Builder buildUpon = Uri.parse(it2.next()).buildUpon();
            for (o3 o3Var : arrayList3) {
                buildUpon.appendQueryParameter(o3Var.a(), o3Var.b());
            }
            try {
                b bVar = this.f36975c;
                return bVar == null ? p3.g(f36967j, new URL(buildUpon.toString())) : bVar.a(buildUpon.toString());
            } catch (IOException e11) {
                e10 = e11;
            }
        }
        if (e10 == null) {
            return null;
        }
        tf.c.l("network exception: " + e10.getMessage());
        throw e10;
    }

    protected JSONObject h() {
        JSONObject jSONObject;
        synchronized (this.f36973a) {
            jSONObject = new JSONObject();
            jSONObject.put("ver", 2);
            JSONArray jSONArray = new JSONArray();
            for (j jVar : this.f36973a.values()) {
                jSONArray.put(jVar.e());
            }
            jSONObject.put("data", jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            for (i iVar : f36966i.values()) {
                jSONArray2.put(iVar.f());
            }
            jSONObject.put("reserved", jSONArray2);
        }
        return jSONObject;
    }

    public void i() {
        synchronized (this.f36973a) {
            this.f36973a.clear();
        }
    }

    public void l(String str) {
        this.f36980h = str;
    }

    public void m(String str, i iVar) {
        if (TextUtils.isEmpty(str) || iVar == null) {
            throw new IllegalArgumentException("the argument is invalid " + str + ", " + iVar);
        } else if (this.f36974b.a(str)) {
            synchronized (this.f36973a) {
                o();
                if (this.f36973a.containsKey(str)) {
                    this.f36973a.get(str).f(iVar);
                } else {
                    j jVar = new j(str);
                    jVar.f(iVar);
                    this.f36973a.put(str, jVar);
                }
            }
        }
    }

    protected boolean o() {
        synchronized (this.f36973a) {
            if (f36972o) {
                return true;
            }
            f36972o = true;
            this.f36973a.clear();
            String u10 = u();
            if (TextUtils.isEmpty(u10)) {
                return false;
            }
            s(u10);
            tf.c.s("loading the new hosts succeed");
            return true;
        }
    }

    public i p(String str) {
        return b(str, true);
    }

    protected String q() {
        String b10 = com.xiaomi.push.service.b.a(f36967j).b();
        return (TextUtils.isEmpty(b10) || Region.Global.name().equals(b10)) ? "resolver.msg.global.xiaomi.net" : Region.Europe.name().equals(b10) ? "fr.resolver.msg.global.xiaomi.net" : Region.Russia.name().equals(b10) ? "ru.resolver.msg.global.xiaomi.net" : Region.India.name().equals(b10) ? "mb.resolver.msg.global.xiaomi.net" : "resolver.msg.global.xiaomi.net";
    }

    protected void s(String str) {
        synchronized (this.f36973a) {
            this.f36973a.clear();
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.optInt("ver") != 2) {
                throw new JSONException("Bad version");
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("data");
            if (optJSONArray != null) {
                for (int i9 = 0; i9 < optJSONArray.length(); i9++) {
                    j b10 = new j().b(optJSONArray.getJSONObject(i9));
                    this.f36973a.put(b10.c(), b10);
                }
            }
            JSONArray optJSONArray2 = jSONObject.optJSONArray("reserved");
            if (optJSONArray2 != null) {
                for (int i10 = 0; i10 < optJSONArray2.length(); i10++) {
                    JSONObject jSONObject2 = optJSONArray2.getJSONObject(i10);
                    String optString = jSONObject2.optString("host");
                    if (!TextUtils.isEmpty(optString)) {
                        try {
                            i a10 = new i(optString).a(jSONObject2);
                            f36966i.put(a10.f36898d, a10);
                            tf.c.l("load local reserved host for " + a10.f36898d);
                        } catch (JSONException unused) {
                            tf.c.l("parse reserved host fail.");
                        }
                    }
                }
            }
        }
    }

    protected i t(String str) {
        j jVar;
        i a10;
        synchronized (this.f36973a) {
            o();
            jVar = this.f36973a.get(str);
        }
        if (jVar == null || (a10 = jVar.a()) == null) {
            return null;
        }
        return a10;
    }

    protected String u() {
        BufferedReader bufferedReader;
        File file;
        try {
            file = new File(f36967j.getFilesDir(), x());
        } catch (Throwable th2) {
            th = th2;
            bufferedReader = null;
        }
        if (!file.isFile()) {
            y2.b(null);
            return null;
        }
        bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
        try {
            StringBuilder sb2 = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return sb2.toString();
                }
                sb2.append(readLine);
            }
        } catch (Throwable th3) {
            th = th3;
            try {
                tf.c.l("load host exception " + th.getMessage());
                return null;
            } finally {
                y2.b(bufferedReader);
            }
        }
    }

    public void v() {
        ArrayList<String> arrayList;
        synchronized (this.f36973a) {
            o();
            arrayList = new ArrayList<>(this.f36973a.keySet());
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                j jVar = this.f36973a.get(arrayList.get(size));
                if (jVar != null && jVar.a() != null) {
                    arrayList.remove(size);
                }
            }
        }
        ArrayList<i> g10 = g(arrayList);
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            if (g10.get(i9) != null) {
                m(arrayList.get(i9), g10.get(i9));
            }
        }
    }

    public i w(String str) {
        i iVar;
        Map<String, i> map = f36966i;
        synchronized (map) {
            iVar = map.get(str);
        }
        return iVar;
    }

    protected String x() {
        if ("com.xiaomi.xmsf".equals(f36970m)) {
            return f36970m;
        }
        return f36970m + ":pushservice";
    }

    public void y() {
        synchronized (this.f36973a) {
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(f36967j.openFileOutput(x(), 0)));
                String jSONObject = h().toString();
                if (!TextUtils.isEmpty(jSONObject)) {
                    bufferedWriter.write(jSONObject);
                }
                bufferedWriter.close();
            } catch (Exception e10) {
                tf.c.l("persist bucket failure: " + e10.getMessage());
            }
        }
    }

    protected i z(String str) {
        if (System.currentTimeMillis() - this.f36979g > this.f36977e * 60 * 1000) {
            this.f36979g = System.currentTimeMillis();
            ArrayList<String> arrayList = new ArrayList<>();
            arrayList.add(str);
            i iVar = g(arrayList).get(0);
            if (iVar != null) {
                this.f36977e = 0L;
                return iVar;
            }
            long j10 = this.f36977e;
            if (j10 < 15) {
                this.f36977e = j10 + 1;
                return null;
            }
            return null;
        }
        return null;
    }
}
