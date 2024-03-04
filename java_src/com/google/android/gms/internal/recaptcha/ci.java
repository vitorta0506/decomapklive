package com.google.android.gms.internal.recaptcha;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
final class ci implements Iterator<Map.Entry> {

    /* renamed from: a  reason: collision with root package name */
    private int f8574a = -1;

    /* renamed from: b  reason: collision with root package name */
    private boolean f8575b;

    /* renamed from: c  reason: collision with root package name */
    private Iterator<Map.Entry> f8576c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ ei f8577d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ci(ei eiVar, xh xhVar) {
        this.f8577d = eiVar;
    }

    private final Iterator<Map.Entry> a() {
        Map map;
        if (this.f8576c == null) {
            map = this.f8577d.f8656c;
            this.f8576c = map.entrySet().iterator();
        }
        return this.f8576c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i9 = this.f8574a + 1;
        list = this.f8577d.f8655b;
        if (i9 >= list.size()) {
            map = this.f8577d.f8656c;
            return !map.isEmpty() && a().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Map.Entry next() {
        List list;
        List list2;
        this.f8575b = true;
        int i9 = this.f8574a + 1;
        this.f8574a = i9;
        list = this.f8577d.f8655b;
        if (i9 < list.size()) {
            list2 = this.f8577d.f8655b;
            return (Map.Entry) list2.get(this.f8574a);
        }
        return a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f8575b) {
            this.f8575b = false;
            this.f8577d.n();
            int i9 = this.f8574a;
            list = this.f8577d.f8655b;
            if (i9 < list.size()) {
                ei eiVar = this.f8577d;
                int i10 = this.f8574a;
                this.f8574a = i10 - 1;
                eiVar.l(i10);
                return;
            }
            a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
