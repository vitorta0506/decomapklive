package u;

import android.graphics.Rect;
import android.view.View;
import androidx.annotation.NonNull;
import u.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p extends u.a {

    /* renamed from: w  reason: collision with root package name */
    private boolean f58276w;

    /* loaded from: classes.dex */
    public static final class b extends a.AbstractC0655a {
        @Override // u.a.AbstractC0655a
        @NonNull
        /* renamed from: A */
        public p s() {
            return new p(this);
        }

        private b() {
        }
    }

    public static b V() {
        return new b();
    }

    @Override // u.a
    public int C() {
        return H();
    }

    @Override // u.a
    public int E() {
        return this.f58232h - c();
    }

    @Override // u.a
    public int G() {
        return K();
    }

    @Override // u.a
    boolean L(View view) {
        return this.f58229e <= D().getDecoratedTop(view) && D().getDecoratedLeft(view) < this.f58232h;
    }

    @Override // u.a
    boolean N() {
        return false;
    }

    @Override // u.a
    void Q() {
        this.f58232h = c();
        this.f58230f = this.f58229e;
    }

    @Override // u.a
    public void R(View view) {
        this.f58230f = D().getDecoratedTop(view);
        this.f58232h = D().getDecoratedRight(view);
        this.f58229e = Math.max(this.f58229e, D().getDecoratedBottom(view));
    }

    @Override // u.a
    void S() {
        if (this.f58228d.isEmpty()) {
            return;
        }
        if (!this.f58276w) {
            this.f58276w = true;
            x().c(D().getPosition((View) this.f58228d.get(0).second));
        }
        x().e(this.f58228d);
    }

    @Override // u.a
    Rect w(View view) {
        int i9 = this.f58232h;
        Rect rect = new Rect(i9, this.f58230f, B() + i9, this.f58230f + z());
        this.f58232h = rect.right;
        this.f58229e = Math.max(this.f58229e, rect.bottom);
        return rect;
    }

    private p(b bVar) {
        super(bVar);
    }
}
