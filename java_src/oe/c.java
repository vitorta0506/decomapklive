package oe;

import androidx.annotation.NonNull;
import java.io.File;
/* loaded from: classes4.dex */
public final class c extends a {

    /* renamed from: c  reason: collision with root package name */
    private ne.c f55623c;

    public c(@NonNull ne.c cVar) {
        this.f55623c = cVar;
    }

    @Override // oe.a
    public final String c() {
        return "preview";
    }

    @Override // oe.a
    public final String d() {
        return "image/*";
    }

    @Override // oe.a
    public final File e() {
        return this.f55623c.a();
    }
}
