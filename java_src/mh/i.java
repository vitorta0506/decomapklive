package mh;

import io.opencensus.trace.Status;
import mh.d;
/* loaded from: classes7.dex */
public abstract class i {

    /* renamed from: a  reason: collision with root package name */
    public static final i f55116a = a().a();

    /* loaded from: classes7.dex */
    public static abstract class a {
        public abstract i a();

        public abstract a b(Status status);
    }

    public static a a() {
        return new d.b().c(false);
    }

    public abstract boolean b();

    public abstract Status c();
}
