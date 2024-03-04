package oe;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import ne.e;
/* loaded from: classes4.dex */
public final class d extends a {

    /* renamed from: c  reason: collision with root package name */
    private e f55624c;

    public d(@NonNull e eVar) {
        this.f55624c = eVar;
    }

    @Override // oe.a
    public final String c() {
        return "preview";
    }

    @Override // oe.a
    public final String d() {
        return "snapvideo/*";
    }

    @Override // oe.a
    @Nullable
    public final File e() {
        return this.f55624c.a();
    }
}
