package com.tencent.thumbplayer.tplayer.a;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.thumbplayer.api.reportv2.ITPExtendReportController;
import com.tencent.thumbplayer.api.reportv2.ITPReportChannelListener;
import com.tencent.thumbplayer.api.reportv2.ITPReportInfoGetter;
import com.tencent.thumbplayer.d.b;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.o;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes4.dex */
public class g implements ITPExtendReportController, com.tencent.thumbplayer.d.a {

    /* renamed from: k  reason: collision with root package name */
    private static final Map<Integer, Integer> f34281k;

    /* renamed from: g  reason: collision with root package name */
    private Context f34288g;

    /* renamed from: a  reason: collision with root package name */
    private ITPReportInfoGetter f34282a = null;

    /* renamed from: b  reason: collision with root package name */
    private HandlerThread f34283b = null;

    /* renamed from: c  reason: collision with root package name */
    private a f34284c = null;

    /* renamed from: d  reason: collision with root package name */
    private com.tencent.thumbplayer.tplayer.a.a f34285d = null;

    /* renamed from: e  reason: collision with root package name */
    private l f34286e = new l();

    /* renamed from: h  reason: collision with root package name */
    private com.tencent.thumbplayer.tplayer.a.a.a f34289h = null;

    /* renamed from: i  reason: collision with root package name */
    private h f34290i = new h();

    /* renamed from: j  reason: collision with root package name */
    private Object f34291j = new Object();

    /* renamed from: f  reason: collision with root package name */
    private CopyOnWriteArrayList<WeakReference<ITPReportChannelListener>> f34287f = new CopyOnWriteArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i9 = message.what;
            b.a aVar = (b.a) message.obj;
            g.this.a(i9, aVar);
            if (g.this.f34285d != null) {
                g.this.f34285d.a(i9, aVar);
            }
            g.this.b(i9, aVar);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f34281k = hashMap;
        hashMap.put(117, 0);
        hashMap.put(204, 103);
        hashMap.put(101, 1);
        hashMap.put(102, 2);
        hashMap.put(103, 3);
        hashMap.put(104, 4);
        hashMap.put(105, 5);
        hashMap.put(107, 5);
        hashMap.put(108, 5);
        hashMap.put(106, 6);
        hashMap.put(109, 7);
        hashMap.put(110, 8);
        hashMap.put(111, 9);
        hashMap.put(112, 10);
        hashMap.put(114, 11);
        hashMap.put(115, 12);
        hashMap.put(201, 100);
        hashMap.put(202, 101);
        hashMap.put(203, 102);
        hashMap.put(116, 14);
        hashMap.put(113, 13);
        hashMap.put(118, 15);
    }

    public g(Context context) {
        this.f34288g = null;
        this.f34288g = context.getApplicationContext();
    }

    private void a(int i9) {
        String str;
        if (this.f34285d != null) {
            str = "mITPReporter has been create, do not create again.";
        } else {
            com.tencent.thumbplayer.tplayer.a.a a10 = k.a(i9);
            this.f34285d = a10;
            if (a10 != null) {
                a10.a(this.f34288g, this.f34286e);
                this.f34285d.a(this.f34282a);
                this.f34285d.a(this.f34289h);
                Iterator<WeakReference<ITPReportChannelListener>> it = this.f34287f.iterator();
                while (it.hasNext()) {
                    ITPReportChannelListener iTPReportChannelListener = it.next().get();
                    if (iTPReportChannelListener != null) {
                        this.f34285d.a(iTPReportChannelListener);
                    }
                }
                return;
            }
            str = "initReporter(" + i9 + ") fail, mITPReporter is null.";
        }
        TPLogUtil.w("TPReportController", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i9, b.a aVar) {
        if (i9 == 0) {
            c(aVar);
        } else if (i9 == 1) {
            d(aVar);
        } else if (i9 == 2) {
            e(aVar);
        } else if (i9 == 6) {
            f(aVar);
        } else if (i9 != 103) {
        } else {
            b(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i9, b.a aVar) {
        if (i9 == 5) {
            g(aVar);
        } else if (i9 != 1000) {
        } else {
            h(aVar);
        }
    }

    private void b(b.a aVar) {
        if (aVar instanceof b.g) {
            this.f34286e.f34300b = ((b.g) aVar).b();
            TPLogUtil.i("TPReportController", "onGetConvertedDataSource time:" + this.f34286e.f34300b);
        }
    }

    private void c(b.a aVar) {
        if (aVar instanceof b.u) {
            b.u uVar = (b.u) aVar;
            this.f34286e.f34299a = uVar.b();
            this.f34286e.f34303e = uVar.d();
            this.f34286e.f34306h = uVar.e() ? 1 : 0;
            this.f34286e.f34304f = uVar.f();
            TPLogUtil.i("TPReportController", "onSetDataSource url:" + this.f34286e.f34303e + " isUseProxy:" + this.f34286e.f34306h + " urlProtocol:" + this.f34286e.f34304f);
        }
    }

    private void d(b.a aVar) {
        this.f34290i.a(2);
        if (aVar instanceof b.p) {
            b.p pVar = (b.p) aVar;
            this.f34286e.f34301c = pVar.b();
            this.f34286e.f34302d = pVar.c();
            this.f34286e.f34307i = pVar.d();
        }
    }

    private void e(b.a aVar) {
        if (!this.f34290i.b(2)) {
            TPLogUtil.e("TPReportController", "onPrepareEnd Current state is not match:" + this.f34290i.toString());
            return;
        }
        this.f34290i.a(3);
        if (aVar instanceof b.o) {
            b.o oVar = (b.o) aVar;
            this.f34286e.f34305g = j.b(oVar.e());
            TPLogUtil.i("TPReportController", "onPrepareEnd durationMs:" + oVar.d() + " playType:" + this.f34286e.f34305g);
            if (oVar.d() == 0) {
                a(1);
            } else {
                a(0);
            }
        }
    }

    private void f(b.a aVar) {
        if (this.f34290i.b(2)) {
            a(2);
        }
        this.f34290i.a(1);
    }

    private void g(b.a aVar) {
        this.f34290i.a(1);
        com.tencent.thumbplayer.tplayer.a.a aVar2 = this.f34285d;
        if (aVar2 != null) {
            aVar2.a();
            this.f34285d = null;
        }
        this.f34286e = new l();
    }

    private void h(b.a aVar) {
        TPLogUtil.i("TPReportController", "onControllerRelease");
        synchronized (this.f34291j) {
            if (this.f34283b != null) {
                o.a().a(this.f34283b, this.f34284c);
                this.f34283b = null;
                this.f34284c = null;
            }
            this.f34287f.clear();
            this.f34291j.notifyAll();
            this.f34291j = null;
        }
    }

    public void a() {
        this.f34283b = o.a().a("TPReportController_Thread");
        this.f34284c = new a(this.f34283b.getLooper());
    }

    @Override // com.tencent.thumbplayer.d.a
    public void a(b.a aVar) {
        Map<Integer, Integer> map = f34281k;
        if (map.containsKey(Integer.valueOf(aVar.a()))) {
            this.f34284c.obtainMessage(map.get(Integer.valueOf(aVar.a())).intValue(), aVar).sendToTarget();
            return;
        }
        TPLogUtil.w("TPReportController", "EventId:" + aVar.a() + " is not need process");
    }

    public void a(@NonNull com.tencent.thumbplayer.tplayer.a.a.a aVar) {
        this.f34289h = aVar;
    }

    @Override // com.tencent.thumbplayer.api.reportv2.ITPExtendReportController
    public void addReportChannelListener(@NonNull ITPReportChannelListener iTPReportChannelListener) {
        CopyOnWriteArrayList<WeakReference<ITPReportChannelListener>> copyOnWriteArrayList = this.f34287f;
        if (copyOnWriteArrayList == null) {
            TPLogUtil.w("TPReportController", "mReportChannelListenerList is null");
            return;
        }
        Iterator<WeakReference<ITPReportChannelListener>> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            if (it.next().get() == iTPReportChannelListener) {
                TPLogUtil.w("TPReportController", "mReportChannelListenerList has contain reportChannelListener");
                return;
            }
        }
        this.f34287f.add(new WeakReference<>(iTPReportChannelListener));
    }

    public void b() {
        TPLogUtil.i("TPReportController", "release");
        synchronized (this.f34291j) {
            a aVar = this.f34284c;
            if (aVar != null) {
                aVar.sendEmptyMessage(1000);
            }
            try {
                this.f34291j.wait(500L);
            } catch (InterruptedException e10) {
                TPLogUtil.e("TPReportController", e10);
            }
        }
    }

    @Override // com.tencent.thumbplayer.api.reportv2.ITPExtendReportController
    public void setReportInfoGetter(@Nullable ITPReportInfoGetter iTPReportInfoGetter) {
        this.f34282a = iTPReportInfoGetter;
    }
}
