package com.tencent.tmediacodec.c;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.tmediacodec.b.d;
import com.tencent.tmediacodec.b.e;
import com.tencent.tmediacodec.d.a;
import com.tencent.tmediacodec.d.b;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    c f34591a;

    /* renamed from: b  reason: collision with root package name */
    public final CopyOnWriteArraySet<e> f34592b = new CopyOnWriteArraySet<>();

    /* renamed from: c  reason: collision with root package name */
    private final int f34593c;

    /* renamed from: d  reason: collision with root package name */
    private final String f34594d;

    public b(int i9, @NonNull String str) {
        this.f34593c = i9;
        this.f34594d = str;
    }

    private boolean a() {
        return this.f34592b.size() == this.f34593c;
    }

    private e b() {
        Iterator<e> it = this.f34592b.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    private e c(e eVar) {
        e a10;
        return (com.tencent.tmediacodec.a.a().f34506a.f34608d != b.a.f34610b || (a10 = a(eVar, this.f34592b.iterator())) == null) ? b() : a10;
    }

    @NonNull
    public final String toString() {
        return "size:" + this.f34592b.size() + " elements:" + this.f34592b;
    }

    public final void a(@NonNull e eVar) {
        if (a()) {
            b(c(eVar));
        }
        this.f34592b.add(eVar);
    }

    public final void b(@NonNull e eVar) {
        if (this.f34592b.remove(eVar)) {
            c cVar = this.f34591a;
            if (cVar != null) {
                cVar.a(eVar);
                return;
            }
            return;
        }
        com.tencent.tmediacodec.f.a.d("CodecWrapperPool", "pool:" + this.f34594d + " remove " + eVar + " not found");
    }

    private static e a(e eVar, Iterator it) {
        while (it.hasNext()) {
            e eVar2 = (e) it.next();
            if (TextUtils.equals(eVar.k(), eVar2.k())) {
                return eVar2;
            }
        }
        return null;
    }

    public final e a(d dVar) {
        Iterator<e> it = this.f34592b.iterator();
        while (it.hasNext()) {
            e next = it.next();
            if (!next.f34543b && next.b(dVar) != a.b.KEEP_CODEC_RESULT_NO) {
                return next;
            }
            int i9 = next.f34550i + 1;
            next.f34550i = i9;
            if (i9 >= 3) {
                b(next);
            }
        }
        return null;
    }
}
