package com.tencent.thumbplayer.tplayer.plugins;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes4.dex */
public class c implements b {

    /* renamed from: a  reason: collision with root package name */
    private CopyOnWriteArrayList<a> f34384a = new CopyOnWriteArrayList<>();

    @Override // com.tencent.thumbplayer.tplayer.plugins.a
    public void a() {
    }

    @Override // com.tencent.thumbplayer.tplayer.plugins.a
    public void a(int i9, int i10, int i11, String str, Object obj) {
        CopyOnWriteArrayList<a> copyOnWriteArrayList = this.f34384a;
        if (copyOnWriteArrayList != null) {
            Iterator<a> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next != null) {
                    next.a(i9, i10, i11, str, obj);
                }
            }
        }
    }

    @Override // com.tencent.thumbplayer.tplayer.plugins.b
    public void a(a aVar) {
        CopyOnWriteArrayList<a> copyOnWriteArrayList = this.f34384a;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.contains(aVar)) {
            return;
        }
        aVar.a();
        this.f34384a.add(aVar);
    }

    @Override // com.tencent.thumbplayer.tplayer.plugins.a
    public void b() {
    }

    @Override // com.tencent.thumbplayer.tplayer.plugins.b
    public void c() {
        CopyOnWriteArrayList<a> copyOnWriteArrayList = this.f34384a;
        if (copyOnWriteArrayList != null) {
            Iterator<a> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next != null) {
                    next.b();
                }
            }
            this.f34384a.clear();
        }
        this.f34384a = null;
    }
}
