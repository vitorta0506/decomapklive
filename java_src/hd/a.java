package hd;

import android.animation.Animator;
import android.animation.ValueAnimator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import ed.b;
/* loaded from: classes4.dex */
public abstract class a<T extends Animator> {

    /* renamed from: b  reason: collision with root package name */
    protected b.a f40571b;

    /* renamed from: a  reason: collision with root package name */
    protected long f40570a = 350;

    /* renamed from: c  reason: collision with root package name */
    protected T f40572c = a();

    public a(@Nullable b.a aVar) {
        this.f40571b = aVar;
    }

    @NonNull
    public abstract T a();

    public a b(long j10) {
        this.f40570a = j10;
        T t10 = this.f40572c;
        if (t10 instanceof ValueAnimator) {
            t10.setDuration(j10);
        }
        return this;
    }

    public void c() {
        T t10 = this.f40572c;
        if (t10 == null || !t10.isStarted()) {
            return;
        }
        this.f40572c.end();
    }

    public abstract a d(float f10);

    public void e() {
        T t10 = this.f40572c;
        if (t10 == null || t10.isRunning()) {
            return;
        }
        this.f40572c.start();
    }
}
