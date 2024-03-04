package io.grpc.xds.shaded.com.github.xds.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.xds.annotations.v3.Status;
/* loaded from: classes5.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f45514a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f45515b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f45516c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f45517d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f45518e = Descriptors.FileDescriptor.s(new String[]{"\n\"xds/core/v3/collection_entry.proto\u0012\u000bxds.core.v3\u001a\u0019google/protobuf/any.proto\u001a\u001fxds/annotations/v3/status.proto\u001a\"xds/core/v3/resource_locator.proto\u001a\u0017validate/validate.proto\"\u0093\u0002\n\u000fCollectionEntry\u0012/\n\u0007locator\u0018\u0001 \u0001(\u000b2\u001c.xds.core.v3.ResourceLocatorH\u0000\u0012@\n\finline_entry\u0018\u0002 \u0001(\u000b2(.xds.core.v3.CollectionEntry.InlineEntryH\u0000\u001ar\n\u000bInlineEntry\u0012*\n\u0004name\u0018\u0001 \u0001(\tB\u001cúB\u0019r\u00172\u0015^[0-9a-zA-Z_\\-\\.~:]+$\u0012\u000f\n\u0007version\u0018\u0002 \u0001(\t\u0012&\n\bresource\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyB\u0019\n\u0012resource_specifier\u0012\u0003øB\u0001B\\\n\u0016com.github.xds.core.v3B\u0014CollectionEntryProtoP\u0001Z\"github.com/cncf/xds/go/xds/core/v3ÒÆ¤á\u0006\u0002\b\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{com.google.protobuf.g.a(), Status.i(), h.a(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f45514a = bVar;
        f45515b = new GeneratedMessageV3.e(bVar, new String[]{"Locator", "InlineEntry", "ResourceSpecifier"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f45516c = bVar2;
        f45517d = new GeneratedMessageV3.e(bVar2, new String[]{"Name", "Version", "Resource"});
        d0 k10 = d0.k();
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        k10.f(Status.f50874a);
        Descriptors.FileDescriptor.u(f45518e, k10);
        com.google.protobuf.g.a();
        Status.i();
        h.a();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f45518e;
    }
}
