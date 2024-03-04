package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private b f7986a;

    /* renamed from: b  reason: collision with root package name */
    private b f7987b;

    /* renamed from: c  reason: collision with root package name */
    private final List f7988c;

    public c() {
        this.f7986a = new b("", 0L, null);
        this.f7987b = new b("", 0L, null);
        this.f7988c = new ArrayList();
    }

    public final b a() {
        return this.f7986a;
    }

    public final b b() {
        return this.f7987b;
    }

    public final List c() {
        return this.f7988c;
    }

    public final /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
        c cVar = new c(this.f7986a.clone());
        for (b bVar : this.f7988c) {
            cVar.f7988c.add(bVar.clone());
        }
        return cVar;
    }

    public final void d(b bVar) {
        this.f7986a = bVar;
        this.f7987b = bVar.clone();
        this.f7988c.clear();
    }

    public final void e(String str, long j10, Map map) {
        this.f7988c.add(new b(str, j10, map));
    }

    public final void f(b bVar) {
        this.f7987b = bVar;
    }

    public c(b bVar) {
        this.f7986a = bVar;
        this.f7987b = bVar.clone();
        this.f7988c = new ArrayList();
    }
}
