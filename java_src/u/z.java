package u;

import android.graphics.Rect;
import android.view.View;
import androidx.annotation.NonNull;
import u.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class z extends u.a {

    /* renamed from: w  reason: collision with root package name */
    private boolean f58289w;

    /* loaded from: classes.dex */
    public static final class b extends a.AbstractC0655a {
        @Override // u.a.AbstractC0655a
        @NonNull
        /* renamed from: A */
        public z s() {
            return new z(this);
        }

        private b() {
        }
    }

    public static b V() {
        return new b();
    }

    @Override // u.a
    public int C() {
        return J();
    }

    @Override // u.a
    public int E() {
        return this.f58230f - l();
    }

    @Override // u.a
    public int G() {
        return I();
    }

    @Override // u.a
    boolean L(View view) {
        return this.f58231g <= D().getDecoratedLeft(view) && D().getDecoratedTop(view) < this.f58230f;
    }

    @Override // u.a
    boolean N() {
        return false;
    }

    @Override // u.a
    void Q() {
        this.f58232h = J();
        this.f58230f = l();
    }

    @Override // u.a
    void R(View view) {
        this.f58230f = D().getDecoratedBottom(view);
        this.f58232h = D().getDecoratedLeft(view);
        this.f58231g = Math.max(this.f58231g, D().getDecoratedRight(view));
    }

    @Override // u.a
    void S() {
        if (this.f58228d.isEmpty()) {
            return;
        }
        if (!this.f58289w) {
            this.f58289w = true;
            x().c(D().getPosition((View) this.f58228d.get(0).second));
        }
        x().e(this.f58228d);
    }

    @Override // u.a
    Rect w(View view) {
        int i9 = this.f58232h;
        Rect rect = new Rect(i9, this.f58230f, B() + i9, this.f58230f + z());
        int i10 = rect.bottom;
        this.f58229e = i10;
        this.f58230f = i10;
        this.f58231g = Math.max(this.f58231g, rect.right);
        return rect;
    }

    private z(b bVar) {
        super(bVar);
    }
}
