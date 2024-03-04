package io.grpc.xds.shaded.com.github.xds.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.xds.annotations.v3.Status;
/* loaded from: classes5.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f45519a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f45520b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f45521c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f45522d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f45523e = Descriptors.FileDescriptor.s(new String[]{"\n xds/core/v3/context_params.proto\u0012\u000bxds.core.v3\u001a\u001fxds/annotations/v3/status.proto\"v\n\rContextParams\u00126\n\u0006params\u0018\u0001 \u0003(\u000b2&.xds.core.v3.ContextParams.ParamsEntry\u001a-\n\u000bParamsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001BZ\n\u0016com.github.xds.core.v3B\u0012ContextParamsProtoP\u0001Z\"github.com/cncf/xds/go/xds/core/v3ÒÆ¤á\u0006\u0002\b\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{Status.i()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f45519a = bVar;
        f45520b = new GeneratedMessageV3.e(bVar, new String[]{"Params"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f45521c = bVar2;
        f45522d = new GeneratedMessageV3.e(bVar2, new String[]{"Key", "Value"});
        d0 k10 = d0.k();
        k10.f(Status.f50874a);
        Descriptors.FileDescriptor.u(f45523e, k10);
        Status.i();
    }

    public static Descriptors.FileDescriptor a() {
        return f45523e;
    }
}
