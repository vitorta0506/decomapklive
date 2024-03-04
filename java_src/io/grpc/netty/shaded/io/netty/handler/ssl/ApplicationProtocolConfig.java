package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.jsonwebtoken.JwtParser;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public final class ApplicationProtocolConfig {

    /* renamed from: e  reason: collision with root package name */
    public static final ApplicationProtocolConfig f44488e = new ApplicationProtocolConfig();

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f44489a;

    /* renamed from: b  reason: collision with root package name */
    private final Protocol f44490b;

    /* renamed from: c  reason: collision with root package name */
    private final SelectorFailureBehavior f44491c;

    /* renamed from: d  reason: collision with root package name */
    private final SelectedListenerFailureBehavior f44492d;

    /* loaded from: classes5.dex */
    public enum Protocol {
        NONE,
        NPN,
        ALPN,
        NPN_AND_ALPN
    }

    /* loaded from: classes5.dex */
    public enum SelectedListenerFailureBehavior {
        ACCEPT,
        FATAL_ALERT,
        CHOOSE_MY_LAST_PROTOCOL
    }

    /* loaded from: classes5.dex */
    public enum SelectorFailureBehavior {
        FATAL_ALERT,
        NO_ADVERTISE,
        CHOOSE_MY_LAST_PROTOCOL
    }

    public ApplicationProtocolConfig(Protocol protocol, SelectorFailureBehavior selectorFailureBehavior, SelectedListenerFailureBehavior selectedListenerFailureBehavior, Iterable<String> iterable) {
        this(protocol, selectorFailureBehavior, selectedListenerFailureBehavior, c.b(iterable));
    }

    public Protocol a() {
        return this.f44490b;
    }

    public SelectedListenerFailureBehavior b() {
        return this.f44492d;
    }

    public SelectorFailureBehavior c() {
        return this.f44491c;
    }

    public List<String> d() {
        return this.f44489a;
    }

    private ApplicationProtocolConfig(Protocol protocol, SelectorFailureBehavior selectorFailureBehavior, SelectedListenerFailureBehavior selectedListenerFailureBehavior, List<String> list) {
        this.f44489a = Collections.unmodifiableList((List) io.grpc.netty.shaded.io.netty.util.internal.s.h(list, "supportedProtocols"));
        this.f44490b = (Protocol) io.grpc.netty.shaded.io.netty.util.internal.s.h(protocol, "protocol");
        this.f44491c = (SelectorFailureBehavior) io.grpc.netty.shaded.io.netty.util.internal.s.h(selectorFailureBehavior, "selectorBehavior");
        this.f44492d = (SelectedListenerFailureBehavior) io.grpc.netty.shaded.io.netty.util.internal.s.h(selectedListenerFailureBehavior, "selectedBehavior");
        Protocol protocol2 = Protocol.NONE;
        if (protocol != protocol2) {
            io.grpc.netty.shaded.io.netty.util.internal.s.b(list, "supportedProtocols");
            return;
        }
        throw new IllegalArgumentException("protocol (" + protocol2 + ") must not be " + protocol2 + JwtParser.SEPARATOR_CHAR);
    }

    private ApplicationProtocolConfig() {
        this.f44489a = Collections.emptyList();
        this.f44490b = Protocol.NONE;
        this.f44491c = SelectorFailureBehavior.CHOOSE_MY_LAST_PROTOCOL;
        this.f44492d = SelectedListenerFailureBehavior.ACCEPT;
    }
}
