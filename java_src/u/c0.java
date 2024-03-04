package u;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Iterator;
/* loaded from: classes.dex */
abstract class c0 implements g {

    /* renamed from: a  reason: collision with root package name */
    RecyclerView.LayoutManager f58262a;

    /* renamed from: b  reason: collision with root package name */
    private com.beloo.widget.chipslayoutmanager.a f58263b;

    /* renamed from: c  reason: collision with root package name */
    private View f58264c;

    /* renamed from: d  reason: collision with root package name */
    private View f58265d;

    /* renamed from: e  reason: collision with root package name */
    private View f58266e;

    /* renamed from: f  reason: collision with root package name */
    private View f58267f;

    /* renamed from: g  reason: collision with root package name */
    private Integer f58268g;

    /* renamed from: h  reason: collision with root package name */
    private Integer f58269h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f58270i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0(RecyclerView.LayoutManager layoutManager) {
        this.f58262a = layoutManager;
        this.f58263b = new com.beloo.widget.chipslayoutmanager.a(layoutManager);
    }

    @Override // u.g
    public boolean a(Rect rect) {
        return k().intersect(new Rect(rect));
    }

    @Override // u.g
    public View b() {
        return this.f58266e;
    }

    @Override // u.g
    public Integer d() {
        return this.f58268g;
    }

    @Override // u.g
    public View e() {
        return this.f58267f;
    }

    @Override // u.g
    public View f() {
        return this.f58265d;
    }

    @Override // u.g
    public View g() {
        return this.f58264c;
    }

    @Override // u.g
    public Rect h(View view) {
        return new Rect(this.f58262a.getDecoratedLeft(view), this.f58262a.getDecoratedTop(view), this.f58262a.getDecoratedRight(view), this.f58262a.getDecoratedBottom(view));
    }

    @Override // u.g
    public void i() {
        this.f58264c = null;
        this.f58265d = null;
        this.f58266e = null;
        this.f58267f = null;
        this.f58268g = -1;
        this.f58269h = -1;
        this.f58270i = false;
        if (this.f58262a.getChildCount() > 0) {
            View childAt = this.f58262a.getChildAt(0);
            this.f58264c = childAt;
            this.f58265d = childAt;
            this.f58266e = childAt;
            this.f58267f = childAt;
            Iterator<View> it = this.f58263b.iterator();
            while (it.hasNext()) {
                View next = it.next();
                int position = this.f58262a.getPosition(next);
                if (o(next)) {
                    if (this.f58262a.getDecoratedTop(next) < this.f58262a.getDecoratedTop(this.f58264c)) {
                        this.f58264c = next;
                    }
                    if (this.f58262a.getDecoratedBottom(next) > this.f58262a.getDecoratedBottom(this.f58265d)) {
                        this.f58265d = next;
                    }
                    if (this.f58262a.getDecoratedLeft(next) < this.f58262a.getDecoratedLeft(this.f58266e)) {
                        this.f58266e = next;
                    }
                    if (this.f58262a.getDecoratedRight(next) > this.f58262a.getDecoratedRight(this.f58267f)) {
                        this.f58267f = next;
                    }
                    if (this.f58268g.intValue() == -1 || position < this.f58268g.intValue()) {
                        this.f58268g = Integer.valueOf(position);
                    }
                    if (this.f58269h.intValue() == -1 || position > this.f58269h.intValue()) {
                        this.f58269h = Integer.valueOf(position);
                    }
                    if (position == 0) {
                        this.f58270i = true;
                    }
                }
            }
        }
    }

    @Override // u.g
    public boolean j(View view) {
        return m(h(view));
    }

    public Rect k() {
        return new Rect(c(), l(), q(), n());
    }

    public boolean m(Rect rect) {
        return rect.top >= l() && rect.bottom <= n() && rect.left >= c() && rect.right <= q();
    }

    public boolean o(View view) {
        return a(h(view));
    }

    @Override // u.g
    public Integer r() {
        return this.f58269h;
    }
}
