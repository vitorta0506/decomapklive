package t0;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.DataSource;
import t0.f;
/* loaded from: classes.dex */
public abstract class a<R> implements g<R> {

    /* renamed from: a  reason: collision with root package name */
    private final g<Drawable> f57995a;

    /* renamed from: t0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private final class C0649a implements f<R> {

        /* renamed from: a  reason: collision with root package name */
        private final f<Drawable> f57996a;

        C0649a(f<Drawable> fVar) {
            this.f57996a = fVar;
        }

        @Override // t0.f
        public boolean a(R r10, f.a aVar) {
            return this.f57996a.a(new BitmapDrawable(aVar.getView().getResources(), a.this.b(r10)), aVar);
        }
    }

    public a(g<Drawable> gVar) {
        this.f57995a = gVar;
    }

    @Override // t0.g
    public f<R> a(DataSource dataSource, boolean z10) {
        return new C0649a(this.f57995a.a(dataSource, z10));
    }

    protected abstract Bitmap b(R r10);
}
