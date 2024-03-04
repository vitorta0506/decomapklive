package u;

import android.graphics.Rect;
import android.util.Pair;
import android.view.View;
import androidx.annotation.NonNull;
import u.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class s extends u.a {

    /* loaded from: classes.dex */
    public static final class b extends a.AbstractC0655a {
        @Override // u.a.AbstractC0655a
        @NonNull
        /* renamed from: A */
        public s s() {
            return new s(this);
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
        return this.f58230f >= D().getDecoratedBottom(view) && D().getDecoratedRight(view) > this.f58231g;
    }

    @Override // u.a
    boolean N() {
        return true;
    }

    @Override // u.a
    void Q() {
        this.f58231g = q();
        this.f58229e = this.f58230f;
    }

    @Override // u.a
    public void R(View view) {
        if (this.f58231g != q() && this.f58231g - B() < c()) {
            this.f58231g = q();
            this.f58229e = this.f58230f;
        } else {
            this.f58231g = D().getDecoratedLeft(view);
        }
        this.f58230f = Math.min(this.f58230f, D().getDecoratedTop(view));
    }

    @Override // u.a
    void S() {
        int c10 = this.f58231g - c();
        this.f58232h = 0;
        for (Pair<Rect, View> pair : this.f58228d) {
            Rect rect = (Rect) pair.first;
            rect.left -= c10;
            int i9 = rect.right - c10;
            rect.right = i9;
            this.f58232h = Math.max(i9, this.f58232h);
            this.f58230f = Math.min(this.f58230f, rect.top);
            this.f58229e = Math.max(this.f58229e, rect.bottom);
        }
    }

    @Override // u.a
    Rect w(View view) {
        Rect rect = new Rect(this.f58231g - B(), this.f58229e - z(), this.f58231g, this.f58229e);
        this.f58231g = rect.left;
        return rect;
    }

    private s(b bVar) {
        super(bVar);
    }
}
