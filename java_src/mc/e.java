package mc;

import android.os.Handler;
import android.os.Message;
import android.view.MotionEvent;
import android.view.View;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
/* loaded from: classes4.dex */
public class e extends b {

    /* renamed from: c  reason: collision with root package name */
    private float f54989c;

    /* renamed from: d  reason: collision with root package name */
    private int f54990d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f54991e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f54992f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f54993g;

    /* renamed from: h  reason: collision with root package name */
    private Handler f54994h;

    /* loaded from: classes4.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int y10 = e.this.f54988b.y();
            int i9 = message.what;
            if (i9 == 0) {
                e.this.f54990d = -1;
            } else if (i9 != 1) {
                if (i9 != 2) {
                    return;
                }
                e.this.f54990d = 60;
                return;
            }
            e.i(e.this);
            View x10 = e.this.f54988b.x();
            if (e.this.f54988b.b()) {
                if (e.this.f54989c >= 3000.0f) {
                    if (nc.b.h(x10, y10)) {
                        e.this.f54988b.o().F(e.this.f54989c, e.this.f54990d);
                        e.this.f54989c = 0.0f;
                        e.this.f54990d = 60;
                    }
                } else if (e.this.f54989c <= -3000.0f && nc.b.g(x10, y10)) {
                    e.this.f54988b.o().E(e.this.f54989c, e.this.f54990d);
                    e.this.f54989c = 0.0f;
                    e.this.f54990d = 60;
                }
            }
            if (e.this.f54990d < 60) {
                e.this.f54994h.sendEmptyMessageDelayed(1, 10L);
            }
        }
    }

    public e(TwinklingRefreshLayout.d dVar, c cVar) {
        super(dVar, cVar);
        this.f54990d = 0;
        this.f54991e = false;
        this.f54992f = false;
        this.f54993g = false;
        this.f54994h = new a();
    }

    static /* synthetic */ int i(e eVar) {
        int i9 = eVar.f54990d;
        eVar.f54990d = i9 + 1;
        return i9;
    }

    @Override // mc.c
    public void a(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11, float f12, float f13) {
        c cVar = this.f54987a;
        if (cVar != null) {
            cVar.a(motionEvent, motionEvent2, f10, f11, f12, f13);
        }
    }

    @Override // mc.c
    public void b(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        c cVar = this.f54987a;
        if (cVar != null) {
            cVar.b(motionEvent, motionEvent2, f10, f11);
        }
        if (this.f54988b.i()) {
            int y10 = (int) (motionEvent2.getY() - motionEvent.getY());
            this.f54992f = !this.f54988b.g() || this.f54992f;
            this.f54991e = !this.f54988b.k() || this.f54991e;
            if (y10 >= (-this.f54988b.y()) || !this.f54992f) {
                if (y10 <= this.f54988b.y() || !this.f54991e) {
                    this.f54989c = f11;
                    if (Math.abs(f11) >= 3000.0f) {
                        this.f54994h.sendEmptyMessage(0);
                        this.f54993g = true;
                        return;
                    }
                    this.f54989c = 0.0f;
                    this.f54990d = 60;
                }
            }
        }
    }

    @Override // mc.c
    public void c(MotionEvent motionEvent) {
        c cVar = this.f54987a;
        if (cVar != null) {
            cVar.c(motionEvent);
        }
        this.f54991e = nc.b.h(this.f54988b.x(), this.f54988b.y());
        this.f54992f = nc.b.g(this.f54988b.x(), this.f54988b.y());
    }

    @Override // mc.c
    public boolean d(MotionEvent motionEvent) {
        c cVar = this.f54987a;
        return cVar != null && cVar.d(motionEvent);
    }

    @Override // mc.c
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        c cVar = this.f54987a;
        return cVar != null && cVar.dispatchTouchEvent(motionEvent);
    }

    @Override // mc.c
    public void e(MotionEvent motionEvent, boolean z10) {
        c cVar = this.f54987a;
        if (cVar != null) {
            cVar.e(motionEvent, this.f54993g && z10);
        }
        this.f54993g = false;
    }

    @Override // mc.c
    public boolean f(MotionEvent motionEvent) {
        c cVar = this.f54987a;
        return cVar != null && cVar.f(motionEvent);
    }
}
