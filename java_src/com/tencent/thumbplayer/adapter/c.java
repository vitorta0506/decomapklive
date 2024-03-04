package com.tencent.thumbplayer.adapter;

import android.content.res.AssetFileDescriptor;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.tencent.thumbplayer.api.TPOptionalParam;
import com.tencent.thumbplayer.api.TPProgramInfo;
import com.tencent.thumbplayer.api.TPTrackInfo;
import com.tencent.thumbplayer.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private Object f33649a;

    /* renamed from: g  reason: collision with root package name */
    private b f33655g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f33656h;

    /* renamed from: i  reason: collision with root package name */
    private float f33657i;

    /* renamed from: j  reason: collision with root package name */
    private String f33658j;

    /* renamed from: k  reason: collision with root package name */
    private float f33659k;

    /* renamed from: o  reason: collision with root package name */
    private TPProgramInfo f33663o;

    /* renamed from: m  reason: collision with root package name */
    private int f33661m = -1;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, d> f33650b = new HashMap(0);

    /* renamed from: c  reason: collision with root package name */
    private Map<String, a> f33651c = new HashMap(0);

    /* renamed from: f  reason: collision with root package name */
    private h f33654f = new h();

    /* renamed from: e  reason: collision with root package name */
    private Map<Integer, TPOptionalParam> f33653e = new HashMap(0);

    /* renamed from: l  reason: collision with root package name */
    private Map<Integer, TPTrackInfo> f33660l = new HashMap(0);

    /* renamed from: n  reason: collision with root package name */
    private ArrayList<TPTrackInfo> f33662n = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<C0341c> f33652d = new ArrayList<>();

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f33664a;

        /* renamed from: b  reason: collision with root package name */
        public String f33665b;

        /* renamed from: c  reason: collision with root package name */
        public List<TPOptionalParam> f33666c;

        /* renamed from: d  reason: collision with root package name */
        public Map<String, String> f33667d;
    }

    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public boolean f33668a;

        /* renamed from: b  reason: collision with root package name */
        public long f33669b;

        /* renamed from: c  reason: collision with root package name */
        public long f33670c;
    }

    /* renamed from: com.tencent.thumbplayer.adapter.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0341c {

        /* renamed from: a  reason: collision with root package name */
        public int f33671a;

        /* renamed from: b  reason: collision with root package name */
        public long f33672b;

        /* renamed from: c  reason: collision with root package name */
        public TPTrackInfo f33673c;
    }

    /* loaded from: classes4.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        public String f33674a;

        /* renamed from: b  reason: collision with root package name */
        public String f33675b;

        /* renamed from: c  reason: collision with root package name */
        public String f33676c;

        /* renamed from: d  reason: collision with root package name */
        public Map<String, String> f33677d;
    }

    private void a(String str, String str2) {
        this.f33661m++;
        TPTrackInfo tPTrackInfo = new TPTrackInfo();
        tPTrackInfo.trackType = 2;
        tPTrackInfo.name = str2;
        tPTrackInfo.isSelected = false;
        tPTrackInfo.isExclusive = true;
        tPTrackInfo.isInternal = false;
        this.f33662n.add(tPTrackInfo);
    }

    private void a(String str, String str2, String str3) {
        this.f33661m++;
        TPTrackInfo tPTrackInfo = new TPTrackInfo();
        tPTrackInfo.trackType = 3;
        tPTrackInfo.name = str3;
        tPTrackInfo.isSelected = false;
        tPTrackInfo.isExclusive = true;
        tPTrackInfo.isInternal = false;
        this.f33662n.add(tPTrackInfo);
    }

    public TPTrackInfo a(int i9) {
        return this.f33660l.get(Integer.valueOf(i9));
    }

    public void a() {
        this.f33650b.clear();
        this.f33651c.clear();
        this.f33656h = false;
        this.f33657i = 1.0f;
        this.f33658j = "";
        this.f33659k = 1.0f;
        this.f33660l.clear();
        this.f33649a = null;
        this.f33653e.clear();
        this.f33654f = new h();
        this.f33655g = null;
        this.f33663o = null;
        this.f33661m = -1;
        this.f33662n.clear();
        this.f33652d.clear();
    }

    public void a(float f10) {
        this.f33657i = f10;
    }

    public void a(int i9, long j10, TPTrackInfo tPTrackInfo) {
        this.f33660l.put(Integer.valueOf(tPTrackInfo.getTrackType()), tPTrackInfo);
        if (i9 < 0 || i9 >= this.f33662n.size()) {
            TPLogUtil.w("TPPlaybackParams", "track Index:" + i9 + " is invalid, trackInfoList size:" + this.f33662n.size());
            return;
        }
        C0341c c0341c = new C0341c();
        c0341c.f33671a = i9;
        c0341c.f33672b = j10;
        Iterator<TPTrackInfo> it = this.f33662n.iterator();
        while (it.hasNext()) {
            TPTrackInfo next = it.next();
            if (next.trackType == tPTrackInfo.trackType) {
                if ((TextUtils.isEmpty(next.name) && TextUtils.isEmpty(tPTrackInfo.name)) || next.name.equals(tPTrackInfo.name)) {
                    next.isSelected = true;
                    c0341c.f33673c = next;
                } else {
                    next.isSelected = false;
                }
            }
        }
        this.f33652d.add(c0341c);
    }

    public void a(AssetFileDescriptor assetFileDescriptor) {
        this.f33654f.a(assetFileDescriptor);
    }

    public void a(ParcelFileDescriptor parcelFileDescriptor) {
        this.f33654f.a(parcelFileDescriptor);
    }

    public void a(Surface surface) {
        this.f33649a = surface;
    }

    public void a(SurfaceHolder surfaceHolder) {
        this.f33649a = surfaceHolder;
    }

    public void a(com.tencent.thumbplayer.adapter.a.e eVar, Map<String, String> map) {
        this.f33654f.a(eVar);
        this.f33654f.a(map);
    }

    public void a(TPOptionalParam tPOptionalParam) {
        if (tPOptionalParam != null) {
            this.f33653e.put(Integer.valueOf(tPOptionalParam.getKey()), tPOptionalParam);
        }
    }

    public void a(TPProgramInfo tPProgramInfo) {
        this.f33663o = tPProgramInfo;
    }

    public void a(ITPMediaAsset iTPMediaAsset) {
        this.f33654f.a(iTPMediaAsset);
    }

    public void a(String str) {
        this.f33658j = str;
    }

    public void a(String str, Map<String, String> map) {
        this.f33654f.a(str);
        this.f33654f.a(map);
    }

    public void a(String str, Map<String, String> map, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str3)) {
            return;
        }
        d dVar = new d();
        dVar.f33674a = str;
        dVar.f33677d = map;
        dVar.f33675b = str2;
        dVar.f33676c = str3;
        this.f33650b.put(str, dVar);
        a(str, str2, str3);
    }

    public void a(String str, Map<String, String> map, String str2, List<TPOptionalParam> list) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        a aVar = new a();
        aVar.f33664a = str;
        aVar.f33667d = map;
        aVar.f33665b = str2;
        aVar.f33666c = list;
        this.f33651c.put(str, aVar);
        a(str, str2);
    }

    public void a(boolean z10) {
        this.f33656h = z10;
    }

    public void a(boolean z10, long j10, long j11) {
        if (this.f33655g == null) {
            this.f33655g = new b();
        }
        b bVar = this.f33655g;
        bVar.f33668a = z10;
        bVar.f33669b = j10;
        bVar.f33670c = j11;
    }

    public TPOptionalParam b(int i9) {
        return this.f33653e.get(Integer.valueOf(i9));
    }

    public ArrayList<TPTrackInfo> b() {
        return this.f33662n;
    }

    public void b(float f10) {
        this.f33659k = f10;
    }

    public void b(int i9, long j10, TPTrackInfo tPTrackInfo) {
        this.f33660l.remove(Integer.valueOf(tPTrackInfo.getTrackType()));
        if (i9 < 0 || i9 >= this.f33662n.size()) {
            TPLogUtil.w("TPPlaybackParams", "track Index:" + i9 + " is invalid, trackInfoList size:" + this.f33662n.size());
            return;
        }
        Iterator<TPTrackInfo> it = this.f33662n.iterator();
        while (it.hasNext()) {
            TPTrackInfo next = it.next();
            if (next.trackType == tPTrackInfo.trackType && ((TextUtils.isEmpty(next.name) && TextUtils.isEmpty(tPTrackInfo.name)) || next.name.equals(tPTrackInfo.name))) {
                next.isSelected = false;
                break;
            }
        }
        Iterator<C0341c> it2 = this.f33652d.iterator();
        while (it2.hasNext()) {
            C0341c next2 = it2.next();
            TPTrackInfo tPTrackInfo2 = next2.f33673c;
            if (tPTrackInfo2 != null && tPTrackInfo2.equals(tPTrackInfo)) {
                this.f33652d.remove(next2);
                return;
            }
        }
    }

    public void b(String str) {
        this.f33654f.a(str);
    }

    public void b(boolean z10) {
        if (this.f33655g == null) {
            this.f33655g = new b();
        }
        b bVar = this.f33655g;
        bVar.f33668a = z10;
        bVar.f33669b = 0L;
        bVar.f33670c = -1L;
    }

    public ArrayList<C0341c> c() {
        return this.f33652d;
    }

    public Object d() {
        return this.f33649a;
    }

    public h e() {
        return this.f33654f;
    }

    public boolean f() {
        h hVar = this.f33654f;
        return hVar != null && hVar.h();
    }

    public boolean g() {
        return this.f33656h;
    }

    public float h() {
        return this.f33657i;
    }

    public String i() {
        return this.f33658j;
    }

    public float j() {
        return this.f33659k;
    }

    public b k() {
        return this.f33655g;
    }

    public TPProgramInfo l() {
        return this.f33663o;
    }

    public List<d> m() {
        ArrayList arrayList = new ArrayList(this.f33650b.size());
        for (Map.Entry<String, d> entry : this.f33650b.entrySet()) {
            arrayList.add(entry.getValue());
        }
        return arrayList;
    }

    public List<a> n() {
        ArrayList arrayList = new ArrayList(this.f33651c.size());
        for (Map.Entry<String, a> entry : this.f33651c.entrySet()) {
            arrayList.add(entry.getValue());
        }
        return arrayList;
    }

    public List<TPOptionalParam> o() {
        ArrayList arrayList = new ArrayList(this.f33653e.size());
        for (Map.Entry<Integer, TPOptionalParam> entry : this.f33653e.entrySet()) {
            arrayList.add(entry.getValue());
        }
        return arrayList;
    }

    public boolean p() {
        return e() != null && e().g() == 2;
    }
}
