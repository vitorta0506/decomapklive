package h0;

import h0.a;
import java.io.File;
/* loaded from: classes.dex */
public class d implements a.InterfaceC0436a {

    /* renamed from: a  reason: collision with root package name */
    private final long f40243a;

    /* renamed from: b  reason: collision with root package name */
    private final b f40244b;

    /* loaded from: classes.dex */
    class a implements b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f40245a;

        a(String str) {
            this.f40245a = str;
        }

        @Override // h0.d.b
        public File a() {
            return new File(this.f40245a);
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        File a();
    }

    public d(String str, long j10) {
        this(new a(str), j10);
    }

    @Override // h0.a.InterfaceC0436a
    public h0.a build() {
        File a10 = this.f40244b.a();
        if (a10 == null) {
            return null;
        }
        if (a10.isDirectory() || a10.mkdirs()) {
            return e.c(a10, this.f40243a);
        }
        return null;
    }

    public d(b bVar, long j10) {
        this.f40243a = j10;
        this.f40244b = bVar;
    }
}
