package com.squareup.picasso;

import android.net.NetworkInfo;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.c0;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class r extends ThreadPoolExecutor {

    /* loaded from: classes4.dex */
    private static final class a extends FutureTask<c> implements Comparable<a> {

        /* renamed from: a  reason: collision with root package name */
        private final c f29992a;

        public a(c cVar) {
            super(cVar, null);
            this.f29992a = cVar;
        }

        @Override // java.lang.Comparable
        /* renamed from: b */
        public int compareTo(a aVar) {
            Picasso.Priority r10 = this.f29992a.r();
            Picasso.Priority r11 = aVar.f29992a.r();
            return r10 == r11 ? this.f29992a.f29909a - aVar.f29992a.f29909a : r11.ordinal() - r10.ordinal();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r() {
        super(3, 3, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new c0.f());
    }

    private void b(int i9) {
        setCorePoolSize(i9);
        setMaximumPoolSize(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void a(NetworkInfo networkInfo) {
        if (networkInfo != null && networkInfo.isConnectedOrConnecting()) {
            int type = networkInfo.getType();
            if (type != 0) {
                if (type != 1 && type != 6 && type != 9) {
                    b(3);
                    return;
                } else {
                    b(4);
                    return;
                }
            }
            int subtype = networkInfo.getSubtype();
            switch (subtype) {
                case 1:
                case 2:
                    b(1);
                    return;
                case 3:
                case 4:
                case 5:
                case 6:
                    break;
                default:
                    switch (subtype) {
                        case 12:
                            break;
                        case 13:
                        case 14:
                        case 15:
                            b(3);
                            return;
                        default:
                            b(3);
                            return;
                    }
            }
            b(2);
            return;
        }
        b(3);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        a aVar = new a((c) runnable);
        execute(aVar);
        return aVar;
    }
}
