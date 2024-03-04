package com.tencent.tmediacodec.c;

import androidx.annotation.NonNull;
import com.tencent.tmediacodec.b.e;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final b f34586a;

    /* renamed from: b  reason: collision with root package name */
    public final b f34587b;

    public a() {
        b bVar = new b(2, "keep");
        this.f34586a = bVar;
        this.f34587b = new b(Integer.MAX_VALUE, "running");
        bVar.f34591a = new c() { // from class: com.tencent.tmediacodec.c.a.2
            @Override // com.tencent.tmediacodec.c.c
            public final void a(@NonNull e eVar) {
                if (com.tencent.tmediacodec.f.a.a()) {
                    com.tencent.tmediacodec.f.a.b("CodecWrapperManager", "onErase codecWrapper:".concat(String.valueOf(eVar)));
                }
                eVar.i();
            }
        };
    }

    @NonNull
    public final String a() {
        return "runningPool:" + this.f34587b + " keepPool:" + this.f34586a;
    }
}
