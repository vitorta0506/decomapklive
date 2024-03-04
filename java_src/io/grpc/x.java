package io.grpc;

import io.grpc.a;
import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.light.utils.FileUtils;
/* loaded from: classes5.dex */
public final class x {

    /* renamed from: d  reason: collision with root package name */
    public static final a.c<String> f45469d = a.c.a("io.grpc.EquivalentAddressGroup.authorityOverride");

    /* renamed from: a  reason: collision with root package name */
    private final List<SocketAddress> f45470a;

    /* renamed from: b  reason: collision with root package name */
    private final a f45471b;

    /* renamed from: c  reason: collision with root package name */
    private final int f45472c;

    public x(List<SocketAddress> list) {
        this(list, a.f41743c);
    }

    public List<SocketAddress> a() {
        return this.f45470a;
    }

    public a b() {
        return this.f45471b;
    }

    public boolean equals(Object obj) {
        if (obj instanceof x) {
            x xVar = (x) obj;
            if (this.f45470a.size() != xVar.f45470a.size()) {
                return false;
            }
            for (int i9 = 0; i9 < this.f45470a.size(); i9++) {
                if (!this.f45470a.get(i9).equals(xVar.f45470a.get(i9))) {
                    return false;
                }
            }
            return this.f45471b.equals(xVar.f45471b);
        }
        return false;
    }

    public int hashCode() {
        return this.f45472c;
    }

    public String toString() {
        return "[" + this.f45470a + FileUtils.RES_PREFIX_STORAGE + this.f45471b + "]";
    }

    public x(List<SocketAddress> list, a aVar) {
        com.google.common.base.o.e(!list.isEmpty(), "addrs is empty");
        List<SocketAddress> unmodifiableList = Collections.unmodifiableList(new ArrayList(list));
        this.f45470a = unmodifiableList;
        this.f45471b = (a) com.google.common.base.o.t(aVar, "attrs");
        this.f45472c = unmodifiableList.hashCode();
    }

    public x(SocketAddress socketAddress) {
        this(socketAddress, a.f41743c);
    }

    public x(SocketAddress socketAddress, a aVar) {
        this(Collections.singletonList(socketAddress), aVar);
    }
}
