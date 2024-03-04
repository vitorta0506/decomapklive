package t0;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.DataSource;
/* loaded from: classes.dex */
public class c implements g<Drawable> {

    /* renamed from: a  reason: collision with root package name */
    private final int f57998a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f57999b;

    /* renamed from: c  reason: collision with root package name */
    private d f58000c;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f58001a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f58002b;

        public a() {
            this(300);
        }

        public c a() {
            return new c(this.f58001a, this.f58002b);
        }

        public a(int i9) {
            this.f58001a = i9;
        }
    }

    protected c(int i9, boolean z10) {
        this.f57998a = i9;
        this.f57999b = z10;
    }

    private f<Drawable> b() {
        if (this.f58000c == null) {
            this.f58000c = new d(this.f57998a, this.f57999b);
        }
        return this.f58000c;
    }

    @Override // t0.g
    public f<Drawable> a(DataSource dataSource, boolean z10) {
        if (dataSource == DataSource.MEMORY_CACHE) {
            return e.b();
        }
        return b();
    }
}
