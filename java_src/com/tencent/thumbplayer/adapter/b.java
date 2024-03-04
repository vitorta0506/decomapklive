package com.tencent.thumbplayer.adapter;

import android.text.TextUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.util.HashMap;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: t  reason: collision with root package name */
    private static String f33628t = "TPPlaybackInfo";

    /* renamed from: a  reason: collision with root package name */
    private String f33629a;

    /* renamed from: b  reason: collision with root package name */
    private String f33630b;

    /* renamed from: c  reason: collision with root package name */
    private int f33631c;

    /* renamed from: d  reason: collision with root package name */
    private int f33632d;

    /* renamed from: e  reason: collision with root package name */
    private long f33633e;

    /* renamed from: f  reason: collision with root package name */
    private long f33634f;

    /* renamed from: g  reason: collision with root package name */
    private long f33635g;

    /* renamed from: h  reason: collision with root package name */
    private String f33636h;

    /* renamed from: i  reason: collision with root package name */
    private int f33637i;

    /* renamed from: j  reason: collision with root package name */
    private long f33638j;

    /* renamed from: k  reason: collision with root package name */
    private int f33639k;

    /* renamed from: l  reason: collision with root package name */
    private long f33640l;

    /* renamed from: m  reason: collision with root package name */
    private int f33641m;

    /* renamed from: n  reason: collision with root package name */
    private long f33642n;

    /* renamed from: o  reason: collision with root package name */
    private long f33643o;

    /* renamed from: p  reason: collision with root package name */
    private long f33644p;

    /* renamed from: q  reason: collision with root package name */
    private int f33645q;

    /* renamed from: r  reason: collision with root package name */
    private String f33646r;

    /* renamed from: s  reason: collision with root package name */
    private long f33647s = -1;

    /* renamed from: u  reason: collision with root package name */
    private int f33648u;

    public static b a(String str) {
        if (TextUtils.isEmpty(str)) {
            return new b();
        }
        String[] split = str.split(IOUtils.LINE_SEPARATOR_UNIX);
        HashMap hashMap = new HashMap();
        for (int i9 = 0; i9 < split.length; i9++) {
            if (!split[i9].startsWith("#") && split[i9].contains(ContainerUtils.KEY_VALUE_DELIMITER)) {
                String[] split2 = split[i9].split(ContainerUtils.KEY_VALUE_DELIMITER);
                if (split2 == null || split2.length < 2) {
                    String str2 = f33628t;
                    StringBuilder sb2 = new StringBuilder("parseInfo, ");
                    sb2.append((split2 == null || split2.length <= 0) ? "param null, " : split2[0]);
                    sb2.append("is empty");
                    TPLogUtil.i(str2, sb2.toString());
                } else {
                    hashMap.put(split2[0], split2[1]);
                }
            }
        }
        b bVar = new b();
        if (hashMap.containsKey("ContainerFormat")) {
            bVar.b((String) hashMap.get("ContainerFormat"));
        }
        if (hashMap.containsKey("VideoCodec")) {
            bVar.d((String) hashMap.get("VideoCodec"));
        }
        if (hashMap.containsKey("AudioCodec")) {
            bVar.e((String) hashMap.get("AudioCodec"));
        }
        if (hashMap.containsKey("Width")) {
            bVar.a(Long.valueOf((String) hashMap.get("Width")).longValue());
        }
        if (hashMap.containsKey("Height")) {
            bVar.b(Long.valueOf((String) hashMap.get("Height")).longValue());
        }
        if (hashMap.containsKey("VideoBitRate")) {
            bVar.c(Long.valueOf((String) hashMap.get("VideoBitRate")).longValue());
        }
        if (hashMap.containsKey("AudioBitRate")) {
            bVar.d(Long.valueOf((String) hashMap.get("AudioBitRate")).longValue());
        }
        if (hashMap.containsKey("SampleRate")) {
            bVar.e(Long.valueOf((String) hashMap.get("SampleRate")).longValue());
        }
        if (hashMap.containsKey("Channels")) {
            bVar.d(Integer.valueOf((String) hashMap.get("Channels")).intValue());
        }
        if (hashMap.containsKey("Definition")) {
            bVar.c((String) hashMap.get("Definition"));
        }
        return bVar;
    }

    public long a() {
        return this.f33633e;
    }

    public void a(int i9) {
        this.f33631c = i9;
    }

    public void a(long j10) {
        this.f33633e = j10;
    }

    public long b() {
        return this.f33634f;
    }

    public void b(int i9) {
        this.f33645q = i9;
    }

    public void b(long j10) {
        this.f33634f = j10;
    }

    public void b(String str) {
        this.f33629a = str;
    }

    public String c() {
        return this.f33629a;
    }

    public void c(int i9) {
        this.f33637i = i9;
    }

    public void c(long j10) {
        this.f33635g = j10;
    }

    public void c(String str) {
        this.f33646r = str;
    }

    public String d() {
        return this.f33646r;
    }

    public void d(int i9) {
        this.f33639k = i9;
    }

    public void d(long j10) {
        this.f33638j = j10;
    }

    public void d(String str) {
        this.f33630b = str;
    }

    public int e() {
        return this.f33631c;
    }

    public void e(int i9) {
        this.f33641m = i9;
    }

    public void e(long j10) {
        this.f33640l = j10;
    }

    public void e(String str) {
        this.f33636h = str;
    }

    public long f() {
        return this.f33635g;
    }

    public void f(int i9) {
        this.f33648u = i9;
    }

    public void f(long j10) {
        this.f33642n = j10;
    }

    public int g() {
        return this.f33641m;
    }

    public void g(int i9) {
        this.f33632d = i9;
    }

    public void g(long j10) {
        this.f33647s = j10;
    }

    public long h() {
        return this.f33642n;
    }

    public void h(long j10) {
        this.f33643o = j10;
    }

    public long i() {
        return this.f33647s;
    }

    public void i(long j10) {
        this.f33644p = j10;
    }

    public long j() {
        return this.f33643o;
    }

    public long k() {
        return this.f33644p;
    }

    public int l() {
        return this.f33648u;
    }

    public int m() {
        return this.f33632d;
    }

    public void n() {
        this.f33629a = null;
        this.f33630b = null;
        this.f33631c = 0;
        this.f33632d = 0;
        this.f33633e = 0L;
        this.f33634f = 0L;
        this.f33635g = 0L;
        this.f33636h = null;
        this.f33637i = 0;
        this.f33638j = 0L;
        this.f33639k = 0;
        this.f33640l = 0L;
        this.f33645q = 2;
        this.f33641m = 0;
        this.f33642n = 0L;
        this.f33643o = 0L;
        this.f33644p = 0L;
        this.f33648u = 0;
        this.f33647s = -1L;
    }
}
