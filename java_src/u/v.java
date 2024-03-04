package u;

import android.graphics.Rect;
import android.view.View;
import androidx.annotation.NonNull;
import u.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class v extends u.a {

    /* renamed from: w  reason: collision with root package name */
    private boolean f58287w;

    /* loaded from: classes.dex */
    public static final class b extends a.AbstractC0655a {
        @Override // u.a.AbstractC0655a
        @NonNull
        /* renamed from: A */
        public v s() {
            return new v(this);
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
        return q() - this.f58231g;
    }

    @Override // u.a
    public int G() {
        return K();
    }

    @Override // u.a
    boolean L(View view) {
        return this.f58229e <= D().getDecoratedTop(view) && D().getDecoratedRight(view) > this.f58231g;
    }

    @Override // u.a
    boolean N() {
        return false;
    }

    @Override // u.a
    void Q() {
        this.f58231g = q();
        this.f58230f = this.f58229e;
    }

    @Override // u.a
    public void R(View view) {
        this.f58230f = D().getDecoratedTop(view);
        this.f58231g = D().getDecoratedLeft(view);
        this.f58229e = Math.max(this.f58229e, D().getDecoratedBottom(view));
    }

    @Override // u.a
    void S() {
        if (this.f58228d.isEmpty()) {
            return;
        }
        if (!this.f58287w) {
            this.f58287w = true;
            x().c(D().getPosition((View) this.f58228d.get(0).second));
        }
        x().e(this.f58228d);
    }

    @Override // u.a
    Rect w(View view) {
        int B = this.f58231g - B();
        int i9 = this.f58230f;
        Rect rect = new Rect(B, i9, this.f58231g, z() + i9);
        this.f58231g = rect.left;
        this.f58229e = Math.max(this.f58229e, rect.bottom);
        return rect;
    }

    private v(b bVar) {
        super(bVar);
    }
}
