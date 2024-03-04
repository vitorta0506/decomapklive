package v2;

import android.content.Context;
import j3.i;
import j3.p;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import v2.q;
/* loaded from: classes.dex */
public final class f implements q.a {

    /* renamed from: a  reason: collision with root package name */
    private final a f58786a;

    /* renamed from: b  reason: collision with root package name */
    private i.a f58787b;

    /* renamed from: c  reason: collision with root package name */
    private long f58788c;

    /* renamed from: d  reason: collision with root package name */
    private long f58789d;

    /* renamed from: e  reason: collision with root package name */
    private long f58790e;

    /* renamed from: f  reason: collision with root package name */
    private float f58791f;

    /* renamed from: g  reason: collision with root package name */
    private float f58792g;

    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final c2.r f58793a;

        /* renamed from: b  reason: collision with root package name */
        private final Map<Integer, com.google.common.base.w<q.a>> f58794b = new HashMap();

        /* renamed from: c  reason: collision with root package name */
        private final Set<Integer> f58795c = new HashSet();

        /* renamed from: d  reason: collision with root package name */
        private final Map<Integer, q.a> f58796d = new HashMap();

        /* renamed from: e  reason: collision with root package name */
        private i.a f58797e;

        public a(c2.r rVar) {
            this.f58793a = rVar;
        }

        public void a(i.a aVar) {
            if (aVar != this.f58797e) {
                this.f58797e = aVar;
                this.f58794b.clear();
                this.f58796d.clear();
            }
        }
    }

    public f(Context context, c2.r rVar) {
        this(new p.a(context), rVar);
    }

    public f(i.a aVar, c2.r rVar) {
        this.f58787b = aVar;
        a aVar2 = new a(rVar);
        this.f58786a = aVar2;
        aVar2.a(aVar);
        this.f58788c = -9223372036854775807L;
        this.f58789d = -9223372036854775807L;
        this.f58790e = -9223372036854775807L;
        this.f58791f = -3.4028235E38f;
        this.f58792g = -3.4028235E38f;
    }
}
