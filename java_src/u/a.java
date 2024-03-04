package u;

import android.graphics.Rect;
import android.util.Pair;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import com.beloo.widget.chipslayoutmanager.ChipsLayoutManager;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public abstract class a implements h, com.beloo.widget.chipslayoutmanager.d {

    /* renamed from: a  reason: collision with root package name */
    private int f58225a;

    /* renamed from: b  reason: collision with root package name */
    private int f58226b;

    /* renamed from: c  reason: collision with root package name */
    private int f58227c;

    /* renamed from: e  reason: collision with root package name */
    int f58229e;

    /* renamed from: f  reason: collision with root package name */
    int f58230f;

    /* renamed from: g  reason: collision with root package name */
    int f58231g;

    /* renamed from: h  reason: collision with root package name */
    int f58232h;

    /* renamed from: j  reason: collision with root package name */
    private int f58234j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f58235k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    private ChipsLayoutManager f58236l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    private s.a f58237m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    private com.beloo.widget.chipslayoutmanager.d f58238n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    private t.n f58239o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    private w.n f58240p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    private x.e f58241q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    private v.h f58242r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    private t.q f58243s;

    /* renamed from: t  reason: collision with root package name */
    private Set<j> f58244t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    private t.p f58245u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    private b f58246v;

    /* renamed from: d  reason: collision with root package name */
    List<Pair<Rect, View>> f58228d = new LinkedList();

    /* renamed from: i  reason: collision with root package name */
    private int f58233i = 0;

    /* renamed from: u.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0655a {

        /* renamed from: a  reason: collision with root package name */
        private ChipsLayoutManager f58247a;

        /* renamed from: b  reason: collision with root package name */
        private s.a f58248b;

        /* renamed from: c  reason: collision with root package name */
        private com.beloo.widget.chipslayoutmanager.d f58249c;

        /* renamed from: d  reason: collision with root package name */
        private t.n f58250d;

        /* renamed from: e  reason: collision with root package name */
        private w.n f58251e;

        /* renamed from: f  reason: collision with root package name */
        private x.e f58252f;

        /* renamed from: g  reason: collision with root package name */
        private v.h f58253g;

        /* renamed from: h  reason: collision with root package name */
        private Rect f58254h;

        /* renamed from: i  reason: collision with root package name */
        private HashSet<j> f58255i = new HashSet<>();

        /* renamed from: j  reason: collision with root package name */
        private t.p f58256j;

        /* renamed from: k  reason: collision with root package name */
        private t.q f58257k;

        /* renamed from: l  reason: collision with root package name */
        private b f58258l;

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public final AbstractC0655a m(@NonNull List<j> list) {
            this.f58255i.addAll(list);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public final AbstractC0655a n(@NonNull v.h hVar) {
            y.a.a(hVar, "breaker shouldn't be null");
            this.f58253g = hVar;
            return this;
        }

        public final a o() {
            if (this.f58247a != null) {
                if (this.f58253g != null) {
                    if (this.f58249c != null) {
                        if (this.f58248b != null) {
                            if (this.f58257k != null) {
                                if (this.f58254h != null) {
                                    if (this.f58251e != null) {
                                        if (this.f58252f != null) {
                                            if (this.f58256j != null) {
                                                if (this.f58250d != null) {
                                                    if (this.f58258l != null) {
                                                        return s();
                                                    }
                                                    throw new IllegalStateException("positionIterator can't be null, call #positionIterator()");
                                                }
                                                throw new IllegalStateException("childGravityResolver can't be null, call #childGravityResolver()");
                                            }
                                            throw new IllegalStateException("gravityModifiersFactory can't be null, call #gravityModifiersFactory()");
                                        }
                                        throw new IllegalStateException("placer can't be null, call #placer()");
                                    }
                                    throw new IllegalStateException("finishingCriteria can't be null, call #finishingCriteria()");
                                }
                                throw new IllegalStateException("offsetRect can't be null, call #offsetRect()");
                            }
                            throw new IllegalStateException("rowStrategy can't be null, call #rowStrategy()");
                        }
                        throw new IllegalStateException("cacheStorage can't be null, call #cacheStorage()");
                    }
                    throw new IllegalStateException("border can't be null, call #border()");
                }
                throw new IllegalStateException("breaker can't be null, call #breaker()");
            }
            throw new IllegalStateException("layoutManager can't be null, call #layoutManager()");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public final AbstractC0655a p(@NonNull s.a aVar) {
            this.f58248b = aVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public final AbstractC0655a q(@NonNull com.beloo.widget.chipslayoutmanager.d dVar) {
            this.f58249c = dVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public final AbstractC0655a r(@NonNull t.n nVar) {
            this.f58250d = nVar;
            return this;
        }

        @NonNull
        protected abstract a s();

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public final AbstractC0655a t(@NonNull w.n nVar) {
            this.f58251e = nVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public final AbstractC0655a u(@NonNull t.p pVar) {
            this.f58256j = pVar;
            return this;
        }

        @NonNull
        public final AbstractC0655a v(@NonNull ChipsLayoutManager chipsLayoutManager) {
            this.f58247a = chipsLayoutManager;
            return this;
        }

        @NonNull
        public AbstractC0655a w(@NonNull Rect rect) {
            this.f58254h = rect;
            return this;
        }

        @NonNull
        public final AbstractC0655a x(@NonNull x.e eVar) {
            this.f58252f = eVar;
            return this;
        }

        @NonNull
        public AbstractC0655a y(b bVar) {
            this.f58258l = bVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public AbstractC0655a z(t.q qVar) {
            this.f58257k = qVar;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AbstractC0655a abstractC0655a) {
        this.f58244t = new HashSet();
        this.f58236l = abstractC0655a.f58247a;
        this.f58237m = abstractC0655a.f58248b;
        this.f58238n = abstractC0655a.f58249c;
        this.f58239o = abstractC0655a.f58250d;
        this.f58240p = abstractC0655a.f58251e;
        this.f58241q = abstractC0655a.f58252f;
        this.f58230f = abstractC0655a.f58254h.top;
        this.f58229e = abstractC0655a.f58254h.bottom;
        this.f58231g = abstractC0655a.f58254h.right;
        this.f58232h = abstractC0655a.f58254h.left;
        this.f58244t = abstractC0655a.f58255i;
        this.f58242r = abstractC0655a.f58253g;
        this.f58245u = abstractC0655a.f58256j;
        this.f58243s = abstractC0655a.f58257k;
        this.f58246v = abstractC0655a.f58258l;
    }

    private void P() {
        for (j jVar : this.f58244t) {
            jVar.a(this);
        }
    }

    private Rect t(View view, Rect rect) {
        return this.f58245u.a(this.f58239o.a(D().getPosition(view))).a(G(), C(), rect);
    }

    private void u(View view) {
        this.f58226b = this.f58236l.getDecoratedMeasuredHeight(view);
        this.f58225a = this.f58236l.getDecoratedMeasuredWidth(view);
        this.f58227c = this.f58236l.getPosition(view);
    }

    public final int A() {
        return this.f58227c;
    }

    public final int B() {
        return this.f58225a;
    }

    public abstract int C();

    @NonNull
    public ChipsLayoutManager D() {
        return this.f58236l;
    }

    public abstract int E();

    public int F() {
        return this.f58233i;
    }

    public abstract int G();

    public int H() {
        return this.f58229e;
    }

    public final int I() {
        return this.f58232h;
    }

    public final int J() {
        return this.f58231g;
    }

    public int K() {
        return this.f58230f;
    }

    abstract boolean L(View view);

    public final boolean M() {
        return this.f58240p.b(this);
    }

    abstract boolean N();

    public boolean O() {
        return this.f58235k;
    }

    abstract void Q();

    abstract void R(View view);

    abstract void S();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void T(@NonNull w.n nVar) {
        this.f58240p = nVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void U(@NonNull x.e eVar) {
        this.f58241q = eVar;
    }

    @Override // com.beloo.widget.chipslayoutmanager.d
    public final int c() {
        return this.f58238n.c();
    }

    @Override // u.h
    public final void k() {
        S();
        if (this.f58228d.size() > 0) {
            this.f58243s.a(this, y());
        }
        for (Pair<Rect, View> pair : this.f58228d) {
            View view = (View) pair.second;
            Rect t10 = t(view, (Rect) pair.first);
            this.f58241q.a(view);
            this.f58236l.layoutDecorated(view, t10.left, t10.top, t10.right, t10.bottom);
        }
        Q();
        P();
        this.f58234j = this.f58233i;
        this.f58233i = 0;
        this.f58228d.clear();
        this.f58235k = false;
    }

    @Override // com.beloo.widget.chipslayoutmanager.d
    public final int l() {
        return this.f58238n.l();
    }

    @Override // u.h
    public b m() {
        return this.f58246v;
    }

    @Override // com.beloo.widget.chipslayoutmanager.d
    public final int n() {
        return this.f58238n.n();
    }

    @Override // u.h
    @CallSuper
    public final boolean o(View view) {
        this.f58236l.measureChildWithMargins(view, 0, 0);
        u(view);
        if (v()) {
            this.f58235k = true;
            k();
        }
        if (M()) {
            return false;
        }
        this.f58233i++;
        this.f58228d.add(new Pair<>(w(view), view));
        return true;
    }

    @Override // u.h
    @CallSuper
    public final boolean p(View view) {
        u(view);
        if (L(view)) {
            P();
            this.f58233i = 0;
        }
        R(view);
        if (M()) {
            return false;
        }
        this.f58233i++;
        this.f58236l.attachView(view);
        return true;
    }

    @Override // com.beloo.widget.chipslayoutmanager.d
    public final int q() {
        return this.f58238n.q();
    }

    public void s(j jVar) {
        if (jVar != null) {
            this.f58244t.add(jVar);
        }
    }

    public final boolean v() {
        return this.f58242r.a(this);
    }

    abstract Rect w(View view);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final s.a x() {
        return this.f58237m;
    }

    public List<o> y() {
        LinkedList linkedList = new LinkedList();
        LinkedList<Pair> linkedList2 = new LinkedList(this.f58228d);
        if (N()) {
            Collections.reverse(linkedList2);
        }
        for (Pair pair : linkedList2) {
            linkedList.add(new o((Rect) pair.first, this.f58236l.getPosition((View) pair.second)));
        }
        return linkedList;
    }

    public final int z() {
        return this.f58226b;
    }
}
