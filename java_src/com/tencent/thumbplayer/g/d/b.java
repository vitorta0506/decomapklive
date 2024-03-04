package com.tencent.thumbplayer.g.d;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.thumbplayer.g.b.e;
import com.tencent.thumbplayer.g.b.f;
import com.tencent.thumbplayer.g.f.a;
import com.tencent.thumbplayer.g.f.b;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private c f34055a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34056b;

    /* renamed from: c  reason: collision with root package name */
    private final String f34057c;

    /* renamed from: d  reason: collision with root package name */
    private final CopyOnWriteArraySet<f> f34058d = new CopyOnWriteArraySet<>();

    public b(int i9, @NonNull String str) {
        this.f34056b = i9;
        this.f34057c = str;
    }

    private f a(f fVar, Iterator it) {
        while (it.hasNext()) {
            f fVar2 = (f) it.next();
            if (TextUtils.equals(fVar.m(), fVar2.m())) {
                return fVar2;
            }
        }
        return null;
    }

    private f b() {
        Iterator<f> it = this.f34058d.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    private final f b(e eVar) {
        Iterator<f> it = this.f34058d.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (!next.f34008b && next.a(eVar) != a.b.KEEP_CODEC_RESULT_NO) {
                return next;
            }
            next.k();
            if (next.l()) {
                b(next);
            }
        }
        return null;
    }

    private f c(f fVar) {
        f a10;
        return (com.tencent.thumbplayer.g.a.a().d().f34092d != b.a.SAME || (a10 = a(fVar, this.f34058d.iterator())) == null) ? b() : a10;
    }

    @Nullable
    public final f a(@NonNull e eVar) {
        f b10 = b(eVar);
        if (com.tencent.thumbplayer.g.h.b.a()) {
            com.tencent.thumbplayer.g.h.b.b("CodecWrapperPool", "obtain codecWrapper:".concat(String.valueOf(b10)));
        }
        if (b10 != null) {
            this.f34058d.remove(b10);
            return b10;
        }
        return null;
    }

    public final void a(@NonNull f fVar) {
        if (a()) {
            b(c(fVar));
        }
        this.f34058d.add(fVar);
    }

    public final void a(@NonNull c cVar) {
        this.f34055a = cVar;
    }

    public final boolean a() {
        return this.f34058d.size() == this.f34056b;
    }

    public final void b(@NonNull f fVar) {
        if (this.f34058d.remove(fVar)) {
            c cVar = this.f34055a;
            if (cVar != null) {
                cVar.a(fVar);
                return;
            }
            return;
        }
        com.tencent.thumbplayer.g.h.b.d("CodecWrapperPool", "pool:" + this.f34057c + " remove " + fVar + " not found");
    }

    @NonNull
    public final String toString() {
        return "size:" + this.f34058d.size() + " elements:" + this.f34058d;
    }
}
