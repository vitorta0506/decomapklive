package f;

import android.view.animation.Interpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public abstract class a<K, A> {

    /* renamed from: c  reason: collision with root package name */
    private final d<K> f39510c;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    protected n.c<A> f39512e;

    /* renamed from: a  reason: collision with root package name */
    final List<b> f39508a = new ArrayList(1);

    /* renamed from: b  reason: collision with root package name */
    private boolean f39509b = false;

    /* renamed from: d  reason: collision with root package name */
    protected float f39511d = 0.0f;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private A f39513f = null;

    /* renamed from: g  reason: collision with root package name */
    private float f39514g = -1.0f;

    /* renamed from: h  reason: collision with root package name */
    private float f39515h = -1.0f;

    /* loaded from: classes.dex */
    public interface b {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c<T> implements d<T> {
        private c() {
        }

        @Override // f.a.d
        public boolean a(float f10) {
            throw new IllegalStateException("not implemented");
        }

        @Override // f.a.d
        public n.a<T> b() {
            throw new IllegalStateException("not implemented");
        }

        @Override // f.a.d
        public boolean c(float f10) {
            return false;
        }

        @Override // f.a.d
        public float d() {
            return 0.0f;
        }

        @Override // f.a.d
        public float e() {
            return 1.0f;
        }

        @Override // f.a.d
        public boolean isEmpty() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface d<T> {
        boolean a(float f10);

        n.a<T> b();

        boolean c(float f10);

        @FloatRange(from = 0.0d, to = 1.0d)
        float d();

        @FloatRange(from = 0.0d, to = 1.0d)
        float e();

        boolean isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class e<T> implements d<T> {

        /* renamed from: a  reason: collision with root package name */
        private final List<? extends n.a<T>> f39516a;

        /* renamed from: c  reason: collision with root package name */
        private n.a<T> f39518c = null;

        /* renamed from: d  reason: collision with root package name */
        private float f39519d = -1.0f;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private n.a<T> f39517b = f(0.0f);

        e(List<? extends n.a<T>> list) {
            this.f39516a = list;
        }

        private n.a<T> f(float f10) {
            List<? extends n.a<T>> list = this.f39516a;
            n.a<T> aVar = list.get(list.size() - 1);
            if (f10 >= aVar.e()) {
                return aVar;
            }
            for (int size = this.f39516a.size() - 2; size >= 1; size--) {
                n.a<T> aVar2 = this.f39516a.get(size);
                if (this.f39517b != aVar2 && aVar2.a(f10)) {
                    return aVar2;
                }
            }
            return this.f39516a.get(0);
        }

        @Override // f.a.d
        public boolean a(float f10) {
            n.a<T> aVar = this.f39518c;
            n.a<T> aVar2 = this.f39517b;
            if (aVar == aVar2 && this.f39519d == f10) {
                return true;
            }
            this.f39518c = aVar2;
            this.f39519d = f10;
            return false;
        }

        @Override // f.a.d
        @NonNull
        public n.a<T> b() {
            return this.f39517b;
        }

        @Override // f.a.d
        public boolean c(float f10) {
            if (this.f39517b.a(f10)) {
                return !this.f39517b.h();
            }
            this.f39517b = f(f10);
            return true;
        }

        @Override // f.a.d
        public float d() {
            return this.f39516a.get(0).e();
        }

        @Override // f.a.d
        public float e() {
            List<? extends n.a<T>> list = this.f39516a;
            return list.get(list.size() - 1).b();
        }

        @Override // f.a.d
        public boolean isEmpty() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class f<T> implements d<T> {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final n.a<T> f39520a;

        /* renamed from: b  reason: collision with root package name */
        private float f39521b = -1.0f;

        f(List<? extends n.a<T>> list) {
            this.f39520a = list.get(0);
        }

        @Override // f.a.d
        public boolean a(float f10) {
            if (this.f39521b == f10) {
                return true;
            }
            this.f39521b = f10;
            return false;
        }

        @Override // f.a.d
        public n.a<T> b() {
            return this.f39520a;
        }

        @Override // f.a.d
        public boolean c(float f10) {
            return !this.f39520a.h();
        }

        @Override // f.a.d
        public float d() {
            return this.f39520a.e();
        }

        @Override // f.a.d
        public float e() {
            return this.f39520a.b();
        }

        @Override // f.a.d
        public boolean isEmpty() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(List<? extends n.a<K>> list) {
        this.f39510c = o(list);
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    private float g() {
        if (this.f39514g == -1.0f) {
            this.f39514g = this.f39510c.d();
        }
        return this.f39514g;
    }

    private static <T> d<T> o(List<? extends n.a<T>> list) {
        if (list.isEmpty()) {
            return new c();
        }
        if (list.size() == 1) {
            return new f(list);
        }
        return new e(list);
    }

    public void a(b bVar) {
        this.f39508a.add(bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public n.a<K> b() {
        com.airbnb.lottie.c.a("BaseKeyframeAnimation#getCurrentKeyframe");
        n.a<K> b10 = this.f39510c.b();
        com.airbnb.lottie.c.b("BaseKeyframeAnimation#getCurrentKeyframe");
        return b10;
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    float c() {
        if (this.f39515h == -1.0f) {
            this.f39515h = this.f39510c.e();
        }
        return this.f39515h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float d() {
        n.a<K> b10 = b();
        if (b10.h()) {
            return 0.0f;
        }
        return b10.f55178d.getInterpolation(e());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float e() {
        if (this.f39509b) {
            return 0.0f;
        }
        n.a<K> b10 = b();
        if (b10.h()) {
            return 0.0f;
        }
        return (this.f39511d - b10.e()) / (b10.b() - b10.e());
    }

    public float f() {
        return this.f39511d;
    }

    public A h() {
        A i9;
        float e10 = e();
        if (this.f39512e == null && this.f39510c.a(e10)) {
            return this.f39513f;
        }
        n.a<K> b10 = b();
        Interpolator interpolator = b10.f55179e;
        if (interpolator != null && b10.f55180f != null) {
            i9 = j(b10, e10, interpolator.getInterpolation(e10), b10.f55180f.getInterpolation(e10));
        } else {
            i9 = i(b10, d());
        }
        this.f39513f = i9;
        return i9;
    }

    abstract A i(n.a<K> aVar, float f10);

    protected A j(n.a<K> aVar, float f10, float f11, float f12) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    public void k() {
        for (int i9 = 0; i9 < this.f39508a.size(); i9++) {
            this.f39508a.get(i9).a();
        }
    }

    public void l() {
        this.f39509b = true;
    }

    public void m(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        if (this.f39510c.isEmpty()) {
            return;
        }
        if (f10 < g()) {
            f10 = g();
        } else if (f10 > c()) {
            f10 = c();
        }
        if (f10 == this.f39511d) {
            return;
        }
        this.f39511d = f10;
        if (this.f39510c.c(f10)) {
            k();
        }
    }

    public void n(@Nullable n.c<A> cVar) {
        n.c<A> cVar2 = this.f39512e;
        if (cVar2 != null) {
            cVar2.c(null);
        }
        this.f39512e = cVar;
        if (cVar != null) {
            cVar.c(this);
        }
    }
}
