package com.tencent.thumbplayer.adapter;

import android.content.res.AssetFileDescriptor;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.tencent.thumbplayer.api.composition.ITPMediaAsset;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private String f33720a;

    /* renamed from: b  reason: collision with root package name */
    private int f33721b;

    /* renamed from: c  reason: collision with root package name */
    private ParcelFileDescriptor f33722c;

    /* renamed from: d  reason: collision with root package name */
    private AssetFileDescriptor f33723d;

    /* renamed from: e  reason: collision with root package name */
    private Map<String, String> f33724e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private ITPMediaAsset f33725f;

    /* renamed from: g  reason: collision with root package name */
    private com.tencent.thumbplayer.adapter.a.e f33726g;

    public String a() {
        return this.f33720a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(AssetFileDescriptor assetFileDescriptor) {
        this.f33720a = null;
        this.f33721b = 4;
        this.f33724e.clear();
        this.f33722c = null;
        this.f33723d = assetFileDescriptor;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(ParcelFileDescriptor parcelFileDescriptor) {
        this.f33720a = null;
        this.f33721b = 1;
        this.f33724e.clear();
        this.f33722c = parcelFileDescriptor;
        this.f33723d = null;
    }

    public void a(com.tencent.thumbplayer.adapter.a.e eVar) {
        this.f33720a = null;
        this.f33721b = 3;
        this.f33722c = null;
        this.f33723d = null;
        this.f33726g = eVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(ITPMediaAsset iTPMediaAsset) {
        this.f33720a = null;
        this.f33721b = 2;
        this.f33724e.clear();
        this.f33722c = null;
        this.f33723d = null;
        this.f33725f = iTPMediaAsset;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str) {
        this.f33720a = str;
        this.f33721b = 0;
        this.f33722c = null;
        this.f33723d = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Map<String, String> map) {
        this.f33724e.clear();
        Map<String, String> map2 = this.f33724e;
        if (map == null) {
            map = new HashMap<>(0);
        }
        map2.putAll(map);
    }

    public Map<String, String> b() {
        return this.f33724e;
    }

    public ParcelFileDescriptor c() {
        return this.f33722c;
    }

    public AssetFileDescriptor d() {
        return this.f33723d;
    }

    public ITPMediaAsset e() {
        return this.f33725f;
    }

    public com.tencent.thumbplayer.adapter.a.e f() {
        return this.f33726g;
    }

    public int g() {
        return this.f33721b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean h() {
        return (TextUtils.isEmpty(this.f33720a) && this.f33722c == null && this.f33723d == null && this.f33725f == null && this.f33726g == null) ? false : true;
    }
}
