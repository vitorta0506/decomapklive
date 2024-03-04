package io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50308a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50309b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50310c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50311d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50312e = Descriptors.FileDescriptor.s(new String[]{"\n!envoy/type/matcher/metadata.proto\u0012\u0012envoy.type.matcher\u001a\u001eenvoy/type/matcher/value.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"å\u0001\n\u000fMetadataMatcher\u0012\u0017\n\u0006filter\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012G\n\u0004path\u0018\u0002 \u0003(\u000b2/.envoy.type.matcher.MetadataMatcher.PathSegmentB\búB\u0005\u0092\u0001\u0002\b\u0001\u00129\n\u0005value\u0018\u0003 \u0001(\u000b2 .envoy.type.matcher.ValueMatcherB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u001a5\n\u000bPathSegment\u0012\u0016\n\u0003key\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001H\u0000B\u000e\n\u0007segment\u0012\u0003øB\u0001B;\n io.envoyproxy.envoy.type.matcherB\rMetadataProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{n.a(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50308a = bVar;
        f50309b = new GeneratedMessageV3.e(bVar, new String[]{"Filter", "Path", "Value"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f50310c = bVar2;
        f50311d = new GeneratedMessageV3.e(bVar2, new String[]{"Key", "Segment"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f50312e, k10);
        n.a();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f50312e;
    }
}
