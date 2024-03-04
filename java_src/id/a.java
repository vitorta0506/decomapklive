package id;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import jd.b;
import jd.c;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private kd.a f41029a;

    /* renamed from: b  reason: collision with root package name */
    private b f41030b;

    /* renamed from: c  reason: collision with root package name */
    private c f41031c;

    /* renamed from: d  reason: collision with root package name */
    private jd.a f41032d;

    public a() {
        kd.a aVar = new kd.a();
        this.f41029a = aVar;
        this.f41030b = new b(aVar);
        this.f41031c = new c();
        this.f41032d = new jd.a(this.f41029a);
    }

    public void a(@NonNull Canvas canvas) {
        this.f41030b.a(canvas);
    }

    @NonNull
    public kd.a b() {
        if (this.f41029a == null) {
            this.f41029a = new kd.a();
        }
        return this.f41029a;
    }

    public void c(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this.f41032d.c(context, attributeSet);
    }

    public Pair<Integer, Integer> d(int i9, int i10) {
        return this.f41031c.a(this.f41029a, i9, i10);
    }

    public void e(@Nullable b.InterfaceC0543b interfaceC0543b) {
        this.f41030b.e(interfaceC0543b);
    }

    public void f(@Nullable MotionEvent motionEvent) {
        this.f41030b.f(motionEvent);
    }

    public void g(@Nullable fd.a aVar) {
        this.f41030b.g(aVar);
    }
}
