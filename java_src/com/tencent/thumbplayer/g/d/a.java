package com.tencent.thumbplayer.g.d;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.thumbplayer.g.b.e;
import com.tencent.thumbplayer.g.b.f;
import com.tencent.thumbplayer.g.h.d;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final b f34050a;

    /* renamed from: b  reason: collision with root package name */
    private final b f34051b;

    public a() {
        b bVar = new b(2, "keep");
        this.f34050a = bVar;
        this.f34051b = new b(Integer.MAX_VALUE, "running");
        bVar.a(new c() { // from class: com.tencent.thumbplayer.g.d.a.2
            @Override // com.tencent.thumbplayer.g.d.c
            public void a(@NonNull f fVar) {
                if (com.tencent.thumbplayer.g.h.b.a()) {
                    com.tencent.thumbplayer.g.h.b.b("CodecWrapperManager", "onErase codecWrapper:".concat(String.valueOf(fVar)));
                }
                fVar.i();
            }
        });
    }

    @Nullable
    public final f a(@NonNull e eVar) {
        f a10 = this.f34050a.a(eVar);
        if (com.tencent.thumbplayer.g.h.b.a()) {
            com.tencent.thumbplayer.g.h.b.b("CodecWrapperManager", "obtainCodecWrapper codecWrapper:".concat(String.valueOf(a10)));
        }
        return a10;
    }

    @NonNull
    public final String a() {
        return "runningPool:" + this.f34051b + " keepPool:" + this.f34050a;
    }

    public final void a(@NonNull final f fVar) {
        if (com.tencent.thumbplayer.g.h.b.a()) {
            com.tencent.thumbplayer.g.h.b.b("CodecWrapperManager", "transToRunning codecWrapper:".concat(String.valueOf(fVar)));
        }
        this.f34050a.b(fVar);
        this.f34051b.a(fVar);
        d.b(new Runnable() { // from class: com.tencent.thumbplayer.g.d.a.1
            @Override // java.lang.Runnable
            public void run() {
                com.tencent.thumbplayer.g.a.a h10 = fVar.h();
                if (h10 != null) {
                    h10.onTransToRunningPool();
                }
            }
        });
    }

    public final void b(@NonNull f fVar) {
        if (com.tencent.thumbplayer.g.h.b.a()) {
            com.tencent.thumbplayer.g.h.b.b("CodecWrapperManager", "removeFromRunning codecWrapper:".concat(String.valueOf(fVar)));
        }
        this.f34051b.b(fVar);
    }

    public final void c(@NonNull f fVar) {
        if (com.tencent.thumbplayer.g.h.b.a()) {
            com.tencent.thumbplayer.g.h.b.b("CodecWrapperManager", "transTokeep codecWrapper:".concat(String.valueOf(fVar)));
        }
        this.f34051b.b(fVar);
        this.f34050a.a(fVar);
        com.tencent.thumbplayer.g.a.a h10 = fVar.h();
        if (h10 != null) {
            h10.onTransToKeepPool();
        }
    }
}
