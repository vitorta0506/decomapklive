package u;

import android.graphics.Rect;
import android.util.Pair;
import android.view.View;
import androidx.annotation.NonNull;
import u.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class u extends u.a {

    /* loaded from: classes.dex */
    public static final class b extends a.AbstractC0655a {
        @Override // u.a.AbstractC0655a
        @NonNull
        /* renamed from: A */
        public u s() {
            return new u(this);
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
        return this.f58229e - l();
    }

    @Override // u.a
    public int G() {
        return I();
    }

    @Override // u.a
    boolean L(View view) {
        return this.f58232h >= D().getDecoratedRight(view) && D().getDecoratedBottom(view) > this.f58229e;
    }

    @Override // u.a
    boolean N() {
        return true;
    }

    @Override // u.a
    void Q() {
        this.f58229e = n();
        this.f58231g = this.f58232h;
    }

    @Override // u.a
    void R(View view) {
        if (this.f58229e != n() && this.f58229e - z() < l()) {
            this.f58229e = n();
            this.f58231g = this.f58232h;
        } else {
            this.f58229e = D().getDecoratedTop(view);
        }
        this.f58232h = Math.min(this.f58232h, D().getDecoratedLeft(view));
    }

    @Override // u.a
    void S() {
        int l10 = this.f58229e - l();
        this.f58229e = 0;
        for (Pair<Rect, View> pair : this.f58228d) {
            Rect rect = (Rect) pair.first;
            rect.top -= l10;
            int i9 = rect.bottom - l10;
            rect.bottom = i9;
            this.f58229e = Math.max(this.f58229e, i9);
            this.f58232h = Math.min(this.f58232h, rect.left);
            this.f58231g = Math.max(this.f58231g, rect.right);
        }
    }

    @Override // u.a
    Rect w(View view) {
        Rect rect = new Rect(this.f58231g - B(), this.f58229e - z(), this.f58231g, this.f58229e);
        this.f58229e = rect.top;
        return rect;
    }

    private u(b bVar) {
        super(bVar);
    }
}
