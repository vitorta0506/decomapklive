package com.tencent.tmediacodec;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.tmediacodec.f.c;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public boolean f34511a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f34512b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public com.tencent.tmediacodec.b.b f34513c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public com.tencent.tmediacodec.a.a f34514d;

    /* renamed from: e  reason: collision with root package name */
    public final com.tencent.tmediacodec.e.a f34515e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f34516f = true;

    /* renamed from: g  reason: collision with root package name */
    public boolean f34517g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final String f34518h;

    /* renamed from: i  reason: collision with root package name */
    final a f34519i;

    /* loaded from: classes4.dex */
    public enum a {
        CreateByName,
        CreateByType
    }

    public b(String str, a aVar) {
        this.f34518h = str;
        this.f34519i = aVar;
        this.f34515e = new com.tencent.tmediacodec.e.a(c.a(str));
    }

    public final void a() {
        com.tencent.tmediacodec.b.b bVar = this.f34513c;
        if (bVar != null) {
            bVar.f();
        }
    }

    public final void b() {
        com.tencent.tmediacodec.b.b bVar = this.f34513c;
        if (bVar != null) {
            bVar.g();
        }
    }

    public final void a(int i9, int i10, long j10, int i11) {
        com.tencent.tmediacodec.b.b bVar = this.f34513c;
        if (bVar != null) {
            bVar.a(i9, i10, j10, i11);
        }
    }
}
