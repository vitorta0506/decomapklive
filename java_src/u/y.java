package u;

import android.graphics.Rect;
import android.util.Pair;
import android.view.View;
import androidx.annotation.NonNull;
import u.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class y extends u.a {

    /* loaded from: classes.dex */
    public static final class b extends a.AbstractC0655a {
        @Override // u.a.AbstractC0655a
        @NonNull
        /* renamed from: A */
        public y s() {
            return new y(this);
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
        return q() - this.f58232h;
    }

    @Override // u.a
    public int G() {
        return K();
    }

    @Override // u.a
    boolean L(View view) {
        return this.f58230f >= D().getDecoratedBottom(view) && D().getDecoratedLeft(view) < this.f58232h;
    }

    @Override // u.a
    boolean N() {
        return true;
    }

    @Override // u.a
    void Q() {
        this.f58232h = c();
        this.f58229e = this.f58230f;
    }

    @Override // u.a
    public void R(View view) {
        if (this.f58232h != c() && this.f58232h + B() > q()) {
            this.f58232h = c();
            this.f58229e = this.f58230f;
        } else {
            this.f58232h = D().getDecoratedRight(view);
        }
        this.f58230f = Math.min(this.f58230f, D().getDecoratedTop(view));
    }

    @Override // u.a
    void S() {
        int i9 = -(q() - this.f58232h);
        this.f58232h = this.f58228d.size() > 0 ? Integer.MAX_VALUE : 0;
        for (Pair<Rect, View> pair : this.f58228d) {
            Rect rect = (Rect) pair.first;
            int i10 = rect.left - i9;
            rect.left = i10;
            rect.right -= i9;
            this.f58232h = Math.min(this.f58232h, i10);
            this.f58230f = Math.min(this.f58230f, rect.top);
            this.f58229e = Math.max(this.f58229e, rect.bottom);
        }
    }

    @Override // u.a
    Rect w(View view) {
        int B = this.f58232h + B();
        Rect rect = new Rect(this.f58232h, this.f58229e - z(), B, this.f58229e);
        this.f58232h = rect.right;
        return rect;
    }

    private y(b bVar) {
        super(bVar);
    }
}
