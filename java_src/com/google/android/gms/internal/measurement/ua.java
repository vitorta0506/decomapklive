package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
final class ua implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    private int f8368a = -1;

    /* renamed from: b  reason: collision with root package name */
    private boolean f8369b;

    /* renamed from: c  reason: collision with root package name */
    private Iterator f8370c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ ya f8371d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ua(ya yaVar, ta taVar) {
        this.f8371d = yaVar;
    }

    private final Iterator a() {
        Map map;
        if (this.f8370c == null) {
            map = this.f8371d.f8445c;
            this.f8370c = map.entrySet().iterator();
        }
        return this.f8370c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i9 = this.f8368a + 1;
        list = this.f8371d.f8444b;
        if (i9 >= list.size()) {
            map = this.f8371d.f8445c;
            return !map.isEmpty() && a().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        List list;
        List list2;
        this.f8369b = true;
        int i9 = this.f8368a + 1;
        this.f8368a = i9;
        list = this.f8371d.f8444b;
        if (i9 < list.size()) {
            list2 = this.f8371d.f8444b;
            return (Map.Entry) list2.get(this.f8368a);
        }
        return (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f8369b) {
            this.f8369b = false;
            this.f8371d.n();
            int i9 = this.f8368a;
            list = this.f8371d.f8444b;
            if (i9 < list.size()) {
                ya yaVar = this.f8371d;
                int i10 = this.f8368a;
                this.f8368a = i10 - 1;
                yaVar.l(i10);
                return;
            }
            a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
