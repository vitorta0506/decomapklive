package com.tencent.thumbplayer.f.b;

import android.os.SystemClock;
import com.tencent.thumbplayer.api.richmedia.TPRichMediaFeature;
import com.tencent.thumbplayer.config.TPPlayerConfig;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.utils.i;
import com.tencent.thumbplayer.utils.l;
import com.tencent.thumbplayer.utils.m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes4.dex */
public class a implements com.tencent.thumbplayer.tplayer.plugins.a {

    /* renamed from: b  reason: collision with root package name */
    private String f33944b;

    /* renamed from: c  reason: collision with root package name */
    private String f33945c;

    /* renamed from: d  reason: collision with root package name */
    private TPRichMediaFeature[] f33946d;

    /* renamed from: a  reason: collision with root package name */
    m f33943a = new m();

    /* renamed from: e  reason: collision with root package name */
    private int f33947e = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f33948f = 0;

    /* renamed from: g  reason: collision with root package name */
    private int f33949g = -1;

    /* renamed from: h  reason: collision with root package name */
    private long f33950h = 0;

    /* renamed from: i  reason: collision with root package name */
    private List<b> f33951i = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    private Map<Integer, C0348a> f33952j = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.thumbplayer.f.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0348a {

        /* renamed from: a  reason: collision with root package name */
        public int f33955a;

        /* renamed from: b  reason: collision with root package name */
        public long f33956b;

        private C0348a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f33957a;

        /* renamed from: b  reason: collision with root package name */
        public int f33958b;

        /* renamed from: c  reason: collision with root package name */
        public long f33959c;

        private b() {
        }
    }

    private void a(int i9) {
        this.f33947e++;
        b bVar = new b();
        bVar.f33957a = i9;
        bVar.f33958b = this.f33947e;
        bVar.f33959c = SystemClock.elapsedRealtime();
        this.f33951i.add(bVar);
    }

    private void a(int i9, int i10) {
        b(i9, i10);
        c(i9, i10);
    }

    private void a(com.tencent.thumbplayer.common.a.a aVar) {
        aVar.a("url", this.f33945c);
        aVar.a("flowid", this.f33944b);
        aVar.a(TPDownloadProxyEnum.USER_GUID, TPPlayerConfig.getGuid());
        aVar.a("appplatform", TPPlayerConfig.getPlatform());
        aVar.a("network", i.b());
    }

    private void a(C0348a c0348a, String str, int i9) {
        l lVar = new l();
        lVar.a("duration", SystemClock.elapsedRealtime() - c0348a.f33956b);
        lVar.a("code", i9);
        lVar.a("seq", c0348a.f33955a);
        lVar.a("featuretype", str);
        lVar.a("position", this.f33949g);
        a("rich_media_feature_data_callback", lVar);
    }

    private void a(b bVar, String str, int i9) {
        l lVar = new l();
        lVar.a("duration", SystemClock.elapsedRealtime() - bVar.f33959c);
        lVar.a("code", i9);
        lVar.a("seq", bVar.f33958b);
        lVar.a("featuretype", str);
        lVar.a("position", this.f33949g);
        a("rich_media_feature_select", lVar);
    }

    private void a(Object obj) {
        if (obj instanceof TPRichMediaFeature[]) {
            this.f33946d = (TPRichMediaFeature[]) obj;
        }
        l(0);
    }

    private void a(String str) {
        this.f33944b = UUID.randomUUID().toString() + System.nanoTime() + "_" + TPPlayerConfig.getPlatform();
        this.f33945c = str;
    }

    private void a(String str, com.tencent.thumbplayer.common.a.a aVar) {
        a(aVar);
        com.tencent.thumbplayer.common.a.b.a(str, aVar);
    }

    private void b(int i9) {
        b(i9, 0);
        if (this.f33952j.containsKey(Integer.valueOf(i9))) {
            return;
        }
        this.f33948f++;
        C0348a c0348a = new C0348a();
        c0348a.f33955a = this.f33948f;
        c0348a.f33956b = SystemClock.elapsedRealtime();
        this.f33952j.put(Integer.valueOf(i9), c0348a);
    }

    private void b(int i9, int i10) {
        String k10 = k(i9);
        Iterator<b> it = this.f33951i.iterator();
        while (it.hasNext()) {
            b next = it.next();
            if (next.f33957a == i9) {
                a(next, k10, i10);
                it.remove();
            }
        }
    }

    private void c() {
        this.f33950h = SystemClock.elapsedRealtime();
    }

    private void c(int i9) {
        b(i9, 0);
    }

    private void c(int i9, int i10) {
        if (this.f33952j.containsKey(Integer.valueOf(i9))) {
            a(this.f33952j.get(Integer.valueOf(i9)), k(i9), i10);
            this.f33952j.remove(Integer.valueOf(i9));
        }
    }

    private void d() {
        g(0);
    }

    private void d(int i9) {
        c(i9, 0);
    }

    private void e() {
        g(0);
    }

    private void e(int i9) {
        g(i9);
    }

    private void f() {
        this.f33946d = null;
        this.f33947e = 0;
        this.f33948f = 0;
        this.f33950h = 0L;
        this.f33951i.clear();
        this.f33952j.clear();
    }

    private void f(int i9) {
        this.f33949g = i9;
    }

    private void g(int i9) {
        h(i9);
        f();
    }

    private void h(int i9) {
        l(i9);
        i(i9);
        j(i9);
    }

    private void i(int i9) {
        if (this.f33946d != null) {
            for (int i10 = 0; i10 < this.f33946d.length; i10++) {
                b(i10, 0);
            }
        }
    }

    private void j(int i9) {
        if (this.f33946d != null) {
            for (int i10 = 0; i10 < this.f33946d.length; i10++) {
                c(i10, 0);
            }
        }
    }

    private String k(int i9) {
        TPRichMediaFeature[] tPRichMediaFeatureArr = this.f33946d;
        return (tPRichMediaFeatureArr == null || i9 < 0 || i9 >= tPRichMediaFeatureArr.length) ? "" : tPRichMediaFeatureArr[i9].getFeatureType();
    }

    private void l(int i9) {
        if (this.f33950h <= 0) {
            return;
        }
        l lVar = new l();
        lVar.a("duration", SystemClock.elapsedRealtime() - this.f33950h);
        lVar.a("code", i9);
        a("rich_media_prepare", lVar);
        this.f33950h = 0L;
    }

    @Override // com.tencent.thumbplayer.tplayer.plugins.a
    public void a() {
    }

    @Override // com.tencent.thumbplayer.tplayer.plugins.a
    public void a(int i9, int i10, int i11, String str, Object obj) {
        this.f33943a.writeLock().lock();
        switch (i9) {
            case 300:
                c();
                break;
            case 301:
                a(obj);
                break;
            case 302:
                a(i10);
                break;
            case 303:
                b(i10);
                break;
            case 304:
                c(i10);
                break;
            case 305:
                d(i10);
                break;
            case 306:
                d();
                break;
            case 307:
                e();
                break;
            case 308:
                e(i10);
                break;
            case 309:
                a(str);
                break;
            case 310:
                a(i10, i11);
                break;
            case 311:
                f(i10);
                break;
        }
        this.f33943a.writeLock().unlock();
    }

    @Override // com.tencent.thumbplayer.tplayer.plugins.a
    public void b() {
    }
}
