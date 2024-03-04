package io.grpc.internal;

import io.grpc.ChannelLogger;
import io.grpc.HttpConnectProxiedSocketAddress;
import java.io.Closeable;
import java.net.SocketAddress;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes5.dex */
public interface s extends Closeable {

    /* loaded from: classes5.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private String f43027a = "unknown-authority";

        /* renamed from: b  reason: collision with root package name */
        private io.grpc.a f43028b = io.grpc.a.f41743c;

        /* renamed from: c  reason: collision with root package name */
        private String f43029c;

        /* renamed from: d  reason: collision with root package name */
        private HttpConnectProxiedSocketAddress f43030d;

        public String a() {
            return this.f43027a;
        }

        public io.grpc.a b() {
            return this.f43028b;
        }

        public HttpConnectProxiedSocketAddress c() {
            return this.f43030d;
        }

        public String d() {
            return this.f43029c;
        }

        public a e(String str) {
            this.f43027a = (String) com.google.common.base.o.t(str, "authority");
            return this;
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                return this.f43027a.equals(aVar.f43027a) && this.f43028b.equals(aVar.f43028b) && com.google.common.base.l.a(this.f43029c, aVar.f43029c) && com.google.common.base.l.a(this.f43030d, aVar.f43030d);
            }
            return false;
        }

        public a f(io.grpc.a aVar) {
            com.google.common.base.o.t(aVar, "eagAttributes");
            this.f43028b = aVar;
            return this;
        }

        public a g(HttpConnectProxiedSocketAddress httpConnectProxiedSocketAddress) {
            this.f43030d = httpConnectProxiedSocketAddress;
            return this;
        }

        public a h(String str) {
            this.f43029c = str;
            return this;
        }

        public int hashCode() {
            return com.google.common.base.l.b(this.f43027a, this.f43028b, this.f43029c, this.f43030d);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    u h1(SocketAddress socketAddress, a aVar, ChannelLogger channelLogger);

    ScheduledExecutorService o0();
}
