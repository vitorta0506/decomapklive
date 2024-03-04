package io.grpc;

import com.huawei.hms.push.constant.RemoteMessageConst;
import io.grpc.n0;
import io.grpc.t0;
import java.util.Map;
/* loaded from: classes5.dex */
public abstract class o0 extends n0.c {

    /* renamed from: a  reason: collision with root package name */
    private static final t0.c f45257a = t0.c.a(new a());

    /* loaded from: classes5.dex */
    private static final class a {
        a() {
        }

        public String toString() {
            return "service config is unused";
        }
    }

    public abstract String b();

    public abstract int c();

    public abstract boolean d();

    public t0.c e(Map<String, ?> map) {
        return f45257a;
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public final String toString() {
        return com.google.common.base.j.c(this).d("policy", b()).b(RemoteMessageConst.Notification.PRIORITY, c()).e("available", d()).toString();
    }
}
