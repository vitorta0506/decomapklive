package com.alibaba.android.arouter.core;

import android.content.Context;
import com.alibaba.android.arouter.exception.HandlerException;
import com.alibaba.android.arouter.facade.Postcard;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.alibaba.android.arouter.facade.callback.InterceptorCallback;
import com.alibaba.android.arouter.facade.service.InterceptorService;
import com.alibaba.android.arouter.facade.template.IInterceptor;
import com.alibaba.android.arouter.facade.template.ILogger;
import java.util.Map;
import java.util.concurrent.TimeUnit;
@Route(path = "/arouter/service/interceptor")
/* loaded from: classes.dex */
public class InterceptorServiceImpl implements InterceptorService {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f3883a;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f3884b = new Object();

    /* loaded from: classes.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Postcard f3885a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ InterceptorCallback f3886b;

        a(Postcard postcard, InterceptorCallback interceptorCallback) {
            this.f3885a = postcard;
            this.f3886b = interceptorCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.a aVar = new p.a(com.alibaba.android.arouter.core.b.f3902f.size());
            try {
                InterceptorServiceImpl.a(0, aVar, this.f3885a);
                aVar.await(this.f3885a.getTimeout(), TimeUnit.SECONDS);
                if (aVar.getCount() > 0) {
                    this.f3886b.onInterrupt(new HandlerException("The interceptor processing timed out."));
                } else if (this.f3885a.getTag() != null) {
                    this.f3886b.onInterrupt((Throwable) this.f3885a.getTag());
                } else {
                    this.f3886b.onContinue(this.f3885a);
                }
            } catch (Exception e10) {
                this.f3886b.onInterrupt(e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b implements InterceptorCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ p.a f3888a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f3889b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Postcard f3890c;

        b(p.a aVar, int i9, Postcard postcard) {
            this.f3888a = aVar;
            this.f3889b = i9;
            this.f3890c = postcard;
        }

        @Override // com.alibaba.android.arouter.facade.callback.InterceptorCallback
        public void onContinue(Postcard postcard) {
            this.f3888a.countDown();
            InterceptorServiceImpl.a(this.f3889b + 1, this.f3888a, postcard);
        }

        @Override // com.alibaba.android.arouter.facade.callback.InterceptorCallback
        public void onInterrupt(Throwable th2) {
            Postcard postcard = this.f3890c;
            if (th2 == null) {
                th2 = new HandlerException("No message.");
            }
            postcard.setTag(th2);
            this.f3888a.a();
        }
    }

    /* loaded from: classes.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f3891a;

        c(Context context) {
            this.f3891a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (q.c.b(com.alibaba.android.arouter.core.b.f3901e)) {
                for (Map.Entry<Integer, Class<? extends IInterceptor>> entry : com.alibaba.android.arouter.core.b.f3901e.entrySet()) {
                    Class<? extends IInterceptor> value = entry.getValue();
                    try {
                        IInterceptor newInstance = value.getConstructor(new Class[0]).newInstance(new Object[0]);
                        newInstance.init(this.f3891a);
                        com.alibaba.android.arouter.core.b.f3902f.add(newInstance);
                    } catch (Exception e10) {
                        throw new HandlerException("ARouter::ARouter init interceptor error! name = [" + value.getName() + "], reason = [" + e10.getMessage() + "]");
                    }
                }
                boolean unused = InterceptorServiceImpl.f3883a = true;
                o.a.f55433c.info(ILogger.defaultTag, "ARouter interceptors init over.");
                synchronized (InterceptorServiceImpl.f3884b) {
                    InterceptorServiceImpl.f3884b.notifyAll();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(int i9, p.a aVar, Postcard postcard) {
        if (i9 < com.alibaba.android.arouter.core.b.f3902f.size()) {
            com.alibaba.android.arouter.core.b.f3902f.get(i9).process(postcard, new b(aVar, i9, postcard));
        }
    }

    private static void e() {
        synchronized (f3884b) {
            while (!f3883a) {
                try {
                    f3884b.wait(10000L);
                } catch (InterruptedException e10) {
                    throw new HandlerException("ARouter::Interceptor init cost too much time error! reason = [" + e10.getMessage() + "]");
                }
            }
        }
    }

    @Override // com.alibaba.android.arouter.facade.service.InterceptorService
    public void doInterceptions(Postcard postcard, InterceptorCallback interceptorCallback) {
        if (q.c.b(com.alibaba.android.arouter.core.b.f3901e)) {
            e();
            if (!f3883a) {
                interceptorCallback.onInterrupt(new HandlerException("Interceptors initialization takes too much time."));
                return;
            } else {
                com.alibaba.android.arouter.core.a.f3894b.execute(new a(postcard, interceptorCallback));
                return;
            }
        }
        interceptorCallback.onContinue(postcard);
    }

    @Override // com.alibaba.android.arouter.facade.template.IProvider
    public void init(Context context) {
        com.alibaba.android.arouter.core.a.f3894b.execute(new c(context));
    }
}
