package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.widget.ImageView;
import androidx.core.internal.view.SupportMenu;
import com.squareup.picasso.a;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
/* loaded from: classes4.dex */
public class Picasso {

    /* renamed from: p  reason: collision with root package name */
    static final Handler f29854p = new a(Looper.getMainLooper());

    /* renamed from: q  reason: collision with root package name */
    static volatile Picasso f29855q = null;

    /* renamed from: a  reason: collision with root package name */
    private final d f29856a;

    /* renamed from: b  reason: collision with root package name */
    private final e f29857b;

    /* renamed from: c  reason: collision with root package name */
    private final c f29858c;

    /* renamed from: d  reason: collision with root package name */
    private final List<u> f29859d;

    /* renamed from: e  reason: collision with root package name */
    final Context f29860e;

    /* renamed from: f  reason: collision with root package name */
    final i f29861f;

    /* renamed from: g  reason: collision with root package name */
    final com.squareup.picasso.d f29862g;

    /* renamed from: h  reason: collision with root package name */
    final w f29863h;

    /* renamed from: i  reason: collision with root package name */
    final Map<Object, com.squareup.picasso.a> f29864i;

    /* renamed from: j  reason: collision with root package name */
    final Map<ImageView, h> f29865j;

    /* renamed from: k  reason: collision with root package name */
    final ReferenceQueue<Object> f29866k;

    /* renamed from: l  reason: collision with root package name */
    final Bitmap.Config f29867l;

    /* renamed from: m  reason: collision with root package name */
    boolean f29868m;

    /* renamed from: n  reason: collision with root package name */
    volatile boolean f29869n;

    /* renamed from: o  reason: collision with root package name */
    boolean f29870o;

    /* loaded from: classes4.dex */
    public enum LoadedFrom {
        MEMORY(-16711936),
        DISK(-16776961),
        NETWORK(SupportMenu.CATEGORY_MASK);
        
        final int debugColor;

        LoadedFrom(int i9) {
            this.debugColor = i9;
        }
    }

    /* loaded from: classes4.dex */
    public enum Priority {
        LOW,
        NORMAL,
        HIGH
    }

    /* loaded from: classes4.dex */
    static class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i9 = message.what;
            if (i9 == 3) {
                com.squareup.picasso.a aVar = (com.squareup.picasso.a) message.obj;
                if (aVar.g().f29869n) {
                    c0.v("Main", "canceled", aVar.f29887b.d(), "target got garbage collected");
                }
                aVar.f29886a.b(aVar.k());
                return;
            }
            int i10 = 0;
            if (i9 == 8) {
                List list = (List) message.obj;
                int size = list.size();
                while (i10 < size) {
                    com.squareup.picasso.c cVar = (com.squareup.picasso.c) list.get(i10);
                    cVar.f29910b.e(cVar);
                    i10++;
                }
            } else if (i9 == 13) {
                List list2 = (List) message.obj;
                int size2 = list2.size();
                while (i10 < size2) {
                    com.squareup.picasso.a aVar2 = (com.squareup.picasso.a) list2.get(i10);
                    aVar2.f29886a.m(aVar2);
                    i10++;
                }
            } else {
                throw new AssertionError("Unknown handler message received: " + message.what);
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final Context f29871a;

        /* renamed from: b  reason: collision with root package name */
        private Downloader f29872b;

        /* renamed from: c  reason: collision with root package name */
        private ExecutorService f29873c;

        /* renamed from: d  reason: collision with root package name */
        private com.squareup.picasso.d f29874d;

        /* renamed from: e  reason: collision with root package name */
        private d f29875e;

        /* renamed from: f  reason: collision with root package name */
        private e f29876f;

        /* renamed from: g  reason: collision with root package name */
        private List<u> f29877g;

        /* renamed from: h  reason: collision with root package name */
        private Bitmap.Config f29878h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f29879i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f29880j;

        public b(Context context) {
            if (context != null) {
                this.f29871a = context.getApplicationContext();
                return;
            }
            throw new IllegalArgumentException("Context must not be null.");
        }

        public Picasso a() {
            Context context = this.f29871a;
            if (this.f29872b == null) {
                this.f29872b = c0.g(context);
            }
            if (this.f29874d == null) {
                this.f29874d = new l(context);
            }
            if (this.f29873c == null) {
                this.f29873c = new r();
            }
            if (this.f29876f == null) {
                this.f29876f = e.f29885a;
            }
            w wVar = new w(this.f29874d);
            return new Picasso(context, new i(context, this.f29873c, Picasso.f29854p, this.f29872b, this.f29874d, wVar), this.f29874d, this.f29875e, this.f29876f, this.f29877g, wVar, this.f29878h, this.f29879i, this.f29880j);
        }
    }

    /* loaded from: classes4.dex */
    private static class c extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private final ReferenceQueue<Object> f29881a;

        /* renamed from: b  reason: collision with root package name */
        private final Handler f29882b;

        /* loaded from: classes4.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Exception f29883a;

            a(Exception exc) {
                this.f29883a = exc;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new RuntimeException(this.f29883a);
            }
        }

        c(ReferenceQueue<Object> referenceQueue, Handler handler) {
            this.f29881a = referenceQueue;
            this.f29882b = handler;
            setDaemon(true);
            setName("Picasso-refQueue");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            while (true) {
                try {
                    a.C0297a c0297a = (a.C0297a) this.f29881a.remove(1000L);
                    Message obtainMessage = this.f29882b.obtainMessage();
                    if (c0297a != null) {
                        obtainMessage.what = 3;
                        obtainMessage.obj = c0297a.f29898a;
                        this.f29882b.sendMessage(obtainMessage);
                    } else {
                        obtainMessage.recycle();
                    }
                } catch (InterruptedException unused) {
                    return;
                } catch (Exception e10) {
                    this.f29882b.post(new a(e10));
                    return;
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface d {
        void a(Picasso picasso, Uri uri, Exception exc);
    }

    /* loaded from: classes4.dex */
    public interface e {

        /* renamed from: a  reason: collision with root package name */
        public static final e f29885a = new a();

        /* loaded from: classes4.dex */
        static class a implements e {
            a() {
            }

            @Override // com.squareup.picasso.Picasso.e
            public s a(s sVar) {
                return sVar;
            }
        }

        s a(s sVar);
    }

    Picasso(Context context, i iVar, com.squareup.picasso.d dVar, d dVar2, e eVar, List<u> list, w wVar, Bitmap.Config config, boolean z10, boolean z11) {
        this.f29860e = context;
        this.f29861f = iVar;
        this.f29862g = dVar;
        this.f29856a = dVar2;
        this.f29857b = eVar;
        this.f29867l = config;
        ArrayList arrayList = new ArrayList((list != null ? list.size() : 0) + 7);
        arrayList.add(new v(context));
        if (list != null) {
            arrayList.addAll(list);
        }
        arrayList.add(new f(context));
        arrayList.add(new n(context));
        arrayList.add(new g(context));
        arrayList.add(new com.squareup.picasso.b(context));
        arrayList.add(new j(context));
        arrayList.add(new o(iVar.f29943d, wVar));
        this.f29859d = Collections.unmodifiableList(arrayList);
        this.f29863h = wVar;
        this.f29864i = new WeakHashMap();
        this.f29865j = new WeakHashMap();
        this.f29868m = z10;
        this.f29869n = z11;
        ReferenceQueue<Object> referenceQueue = new ReferenceQueue<>();
        this.f29866k = referenceQueue;
        c cVar = new c(referenceQueue, f29854p);
        this.f29858c = cVar;
        cVar.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Object obj) {
        c0.c();
        com.squareup.picasso.a remove = this.f29864i.remove(obj);
        if (remove != null) {
            remove.a();
            this.f29861f.c(remove);
        }
        if (obj instanceof ImageView) {
            h remove2 = this.f29865j.remove((ImageView) obj);
            if (remove2 != null) {
                remove2.a();
            }
        }
    }

    private void g(Bitmap bitmap, LoadedFrom loadedFrom, com.squareup.picasso.a aVar) {
        if (aVar.l()) {
            return;
        }
        if (!aVar.m()) {
            this.f29864i.remove(aVar.k());
        }
        if (bitmap == null) {
            aVar.c();
            if (this.f29869n) {
                c0.u("Main", "errored", aVar.f29887b.d());
            }
        } else if (loadedFrom != null) {
            aVar.b(bitmap, loadedFrom);
            if (this.f29869n) {
                String d10 = aVar.f29887b.d();
                c0.v("Main", "completed", d10, "from " + loadedFrom);
            }
        } else {
            throw new AssertionError("LoadedFrom cannot be null.");
        }
    }

    public static Picasso p(Context context) {
        if (f29855q == null) {
            synchronized (Picasso.class) {
                if (f29855q == null) {
                    f29855q = new b(context).a();
                }
            }
        }
        return f29855q;
    }

    public void c(ImageView imageView) {
        b(imageView);
    }

    public void d(y yVar) {
        b(yVar);
    }

    void e(com.squareup.picasso.c cVar) {
        com.squareup.picasso.a j10 = cVar.j();
        List<com.squareup.picasso.a> k10 = cVar.k();
        boolean z10 = true;
        boolean z11 = (k10 == null || k10.isEmpty()) ? false : true;
        if (j10 == null && !z11) {
            z10 = false;
        }
        if (z10) {
            Uri uri = cVar.l().f29997d;
            Exception m10 = cVar.m();
            Bitmap s10 = cVar.s();
            LoadedFrom o10 = cVar.o();
            if (j10 != null) {
                g(s10, o10, j10);
            }
            if (z11) {
                int size = k10.size();
                for (int i9 = 0; i9 < size; i9++) {
                    g(s10, o10, k10.get(i9));
                }
            }
            d dVar = this.f29856a;
            if (dVar == null || m10 == null) {
                return;
            }
            dVar.a(this, uri, m10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(ImageView imageView, h hVar) {
        this.f29865j.put(imageView, hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(com.squareup.picasso.a aVar) {
        Object k10 = aVar.k();
        if (k10 != null && this.f29864i.get(k10) != aVar) {
            b(k10);
            this.f29864i.put(k10, aVar);
        }
        n(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<u> i() {
        return this.f29859d;
    }

    public t j(Uri uri) {
        return new t(this, uri, 0);
    }

    public t k(String str) {
        if (str == null) {
            return new t(this, null, 0);
        }
        if (str.trim().length() != 0) {
            return j(Uri.parse(str));
        }
        throw new IllegalArgumentException("Path must not be empty.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap l(String str) {
        Bitmap bitmap = this.f29862g.get(str);
        if (bitmap != null) {
            this.f29863h.d();
        } else {
            this.f29863h.e();
        }
        return bitmap;
    }

    void m(com.squareup.picasso.a aVar) {
        Bitmap l10 = MemoryPolicy.shouldReadFromMemoryCache(aVar.f29890e) ? l(aVar.d()) : null;
        if (l10 != null) {
            LoadedFrom loadedFrom = LoadedFrom.MEMORY;
            g(l10, loadedFrom, aVar);
            if (this.f29869n) {
                String d10 = aVar.f29887b.d();
                c0.v("Main", "completed", d10, "from " + loadedFrom);
                return;
            }
            return;
        }
        h(aVar);
        if (this.f29869n) {
            c0.u("Main", "resumed", aVar.f29887b.d());
        }
    }

    void n(com.squareup.picasso.a aVar) {
        this.f29861f.h(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s o(s sVar) {
        s a10 = this.f29857b.a(sVar);
        if (a10 != null) {
            return a10;
        }
        throw new IllegalStateException("Request transformer " + this.f29857b.getClass().getCanonicalName() + " returned null for " + sVar);
    }
}
