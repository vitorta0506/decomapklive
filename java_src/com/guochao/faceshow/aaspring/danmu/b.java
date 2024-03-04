package com.guochao.faceshow.aaspring.danmu;

import android.graphics.Bitmap;
import android.util.Log;
import android.util.SparseArray;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    int f16345a;

    /* renamed from: b  reason: collision with root package name */
    Object f16346b;

    /* renamed from: c  reason: collision with root package name */
    long f16347c;

    /* renamed from: d  reason: collision with root package name */
    Bitmap f16348d;

    /* renamed from: e  reason: collision with root package name */
    int f16349e;

    /* renamed from: f  reason: collision with root package name */
    float f16350f;

    /* renamed from: g  reason: collision with root package name */
    int f16351g;

    /* renamed from: j  reason: collision with root package name */
    boolean f16354j;

    /* renamed from: l  reason: collision with root package name */
    SparseArray<Object> f16356l;

    /* renamed from: n  reason: collision with root package name */
    private long f16358n;

    /* renamed from: o  reason: collision with root package name */
    private long f16359o;

    /* renamed from: p  reason: collision with root package name */
    private long f16360p;

    /* renamed from: h  reason: collision with root package name */
    boolean f16352h = false;

    /* renamed from: i  reason: collision with root package name */
    boolean f16353i = false;

    /* renamed from: k  reason: collision with root package name */
    boolean f16355k = false;

    /* renamed from: m  reason: collision with root package name */
    int f16357m = 1;

    public b(Object obj) {
        this.f16346b = obj;
    }

    public void a() {
        Bitmap bitmap = this.f16348d;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.f16348d.recycle();
            this.f16348d = null;
            Log.i("Danmu", "销毁了bitmap " + this.f16347c);
        }
        SparseArray<Object> sparseArray = this.f16356l;
        if (sparseArray != null) {
            sparseArray.clear();
        }
        this.f16355k = true;
    }

    public Object b() {
        return this.f16346b;
    }

    public long c() {
        return this.f16360p;
    }

    public long d() {
        return this.f16359o;
    }

    public int e() {
        Object obj = this.f16346b;
        if (obj instanceof LiveMessageModel) {
            return ((LiveMessageModel) obj).getData().getMvpLevel();
        }
        return -1;
    }

    public Object f(int i9) {
        SparseArray<Object> sparseArray = this.f16356l;
        if (sparseArray == null) {
            return null;
        }
        return sparseArray.get(i9);
    }

    public void g() {
        this.f16353i = true;
    }

    public boolean h() {
        return this.f16355k;
    }

    public void i(int i9) {
        this.f16357m = i9;
    }

    public void j(long j10) {
        this.f16360p = j10;
    }

    public void k(long j10) {
        this.f16359o = j10;
    }

    public void l(int i9, Object obj) {
        if (this.f16356l == null) {
            this.f16356l = new SparseArray<>();
        }
        this.f16356l.put(i9, obj);
    }

    public void m(long j10) {
        this.f16358n = j10;
    }
}
