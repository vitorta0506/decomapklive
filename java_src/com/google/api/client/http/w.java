package com.google.api.client.http;

import com.google.api.client.util.z;
import com.google.common.collect.ImmutableList;
import io.opencensus.trace.MessageEvent;
import io.opencensus.trace.Span;
import io.opencensus.trace.Status;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;
import mh.i;
import oh.a;
/* loaded from: classes2.dex */
public class w {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f11071a = Logger.getLogger(w.class.getName());

    /* renamed from: b  reason: collision with root package name */
    public static final String f11072b = "Sent." + m.class.getName() + ".execute";

    /* renamed from: c  reason: collision with root package name */
    private static final io.opencensus.trace.h f11073c = io.opencensus.trace.i.b();

    /* renamed from: d  reason: collision with root package name */
    private static final AtomicLong f11074d = new AtomicLong();

    /* renamed from: e  reason: collision with root package name */
    private static volatile boolean f11075e = true;

    /* renamed from: f  reason: collision with root package name */
    static volatile oh.a f11076f;

    /* renamed from: g  reason: collision with root package name */
    static volatile a.c f11077g;

    /* loaded from: classes2.dex */
    static class a extends a.c<j> {
        a() {
        }

        @Override // oh.a.c
        /* renamed from: b */
        public void a(j jVar, String str, String str2) {
            jVar.e(str, str2);
        }
    }

    static {
        f11076f = null;
        f11077g = null;
        try {
            f11076f = kh.b.a();
            f11077g = new a();
        } catch (Exception e10) {
            f11071a.log(Level.WARNING, "Cannot initialize default OpenCensus HTTP propagation text format.", (Throwable) e10);
        }
        try {
            io.opencensus.trace.i.a().a().b(ImmutableList.of(f11072b));
        } catch (Exception e11) {
            f11071a.log(Level.WARNING, "Cannot register default OpenCensus span names for collection.", (Throwable) e11);
        }
    }

    private w() {
    }

    public static mh.i a(Integer num) {
        i.a a10 = mh.i.a();
        if (num == null) {
            a10.b(Status.f51263f);
        } else if (!r.b(num.intValue())) {
            int intValue = num.intValue();
            if (intValue == 400) {
                a10.b(Status.f51264g);
            } else if (intValue == 401) {
                a10.b(Status.f51269l);
            } else if (intValue == 403) {
                a10.b(Status.f51268k);
            } else if (intValue == 404) {
                a10.b(Status.f51266i);
            } else if (intValue == 412) {
                a10.b(Status.f51271n);
            } else if (intValue != 500) {
                a10.b(Status.f51263f);
            } else {
                a10.b(Status.f51276s);
            }
        } else {
            a10.b(Status.f51261d);
        }
        return a10.a();
    }

    public static io.opencensus.trace.h b() {
        return f11073c;
    }

    public static boolean c() {
        return f11075e;
    }

    public static void d(Span span, j jVar) {
        z.b(span != null, "span should not be null.");
        z.b(jVar != null, "headers should not be null.");
        if (f11076f == null || f11077g == null || span.equals(io.opencensus.trace.d.f51296e)) {
            return;
        }
        f11076f.a(span.h(), jVar, f11077g);
    }

    static void e(Span span, long j10, MessageEvent.Type type) {
        z.b(span != null, "span should not be null.");
        if (j10 < 0) {
            j10 = 0;
        }
        span.d(MessageEvent.a(type, f11074d.getAndIncrement()).d(j10).a());
    }

    public static void f(Span span, long j10) {
        e(span, j10, MessageEvent.Type.RECEIVED);
    }

    public static void g(Span span, long j10) {
        e(span, j10, MessageEvent.Type.SENT);
    }
}
