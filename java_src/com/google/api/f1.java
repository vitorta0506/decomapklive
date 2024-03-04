package com.google.api;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.c3;
import com.google.protobuf.p3;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
/* loaded from: classes2.dex */
public final class f1 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f11207a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f11208b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f11209c = Descriptors.FileDescriptor.s(new String[]{"\n\u0018google/api/service.proto\u0012\ngoogle.api\u001a\u0015google/api/auth.proto\u001a\u0018google/api/backend.proto\u001a\u0018google/api/billing.proto\u001a\u0018google/api/context.proto\u001a\u0018google/api/control.proto\u001a\u001egoogle/api/documentation.proto\u001a\u0019google/api/endpoint.proto\u001a\u0015google/api/http.proto\u001a\u0016google/api/label.proto\u001a\u0014google/api/log.proto\u001a\u0018google/api/logging.proto\u001a\u0017google/api/metric.proto\u001a#google/api/monitored_resource.proto\u001a\u001bgoogle/api/monitoring.proto\u001a\u0016google/api/quota.proto\u001a\u0019google/api/resource.proto\u001a\u001cgoogle/api/source_info.proto\u001a!google/api/system_parameter.proto\u001a\u0016google/api/usage.proto\u001a\u0019google/protobuf/any.proto\u001a\u0019google/protobuf/api.proto\u001a\u001agoogle/protobuf/type.proto\u001a\u001egoogle/protobuf/wrappers.proto\"Ú\u0007\n\u0007Service\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\r\n\u0005title\u0018\u0002 \u0001(\t\u0012\u001b\n\u0013producer_project_id\u0018\u0016 \u0001(\t\u0012\n\n\u0002id\u0018! \u0001(\t\u0012\"\n\u0004apis\u0018\u0003 \u0003(\u000b2\u0014.google.protobuf.Api\u0012$\n\u0005types\u0018\u0004 \u0003(\u000b2\u0015.google.protobuf.Type\u0012$\n\u0005enums\u0018\u0005 \u0003(\u000b2\u0015.google.protobuf.Enum\u00120\n\rdocumentation\u0018\u0006 \u0001(\u000b2\u0019.google.api.Documentation\u0012$\n\u0007backend\u0018\b \u0001(\u000b2\u0013.google.api.Backend\u0012\u001e\n\u0004http\u0018\t \u0001(\u000b2\u0010.google.api.Http\u0012 \n\u0005quota\u0018\n \u0001(\u000b2\u0011.google.api.Quota\u00122\n\u000eauthentication\u0018\u000b \u0001(\u000b2\u001a.google.api.Authentication\u0012$\n\u0007context\u0018\f \u0001(\u000b2\u0013.google.api.Context\u0012 \n\u0005usage\u0018\u000f \u0001(\u000b2\u0011.google.api.Usage\u0012'\n\tendpoints\u0018\u0012 \u0003(\u000b2\u0014.google.api.Endpoint\u0012$\n\u0007control\u0018\u0015 \u0001(\u000b2\u0013.google.api.Control\u0012'\n\u0004logs\u0018\u0017 \u0003(\u000b2\u0019.google.api.LogDescriptor\u0012-\n\u0007metrics\u0018\u0018 \u0003(\u000b2\u001c.google.api.MetricDescriptor\u0012D\n\u0013monitored_resources\u0018\u0019 \u0003(\u000b2'.google.api.MonitoredResourceDescriptor\u0012$\n\u0007billing\u0018\u001a \u0001(\u000b2\u0013.google.api.Billing\u0012$\n\u0007logging\u0018\u001b \u0001(\u000b2\u0013.google.api.Logging\u0012*\n\nmonitoring\u0018\u001c \u0001(\u000b2\u0016.google.api.Monitoring\u00127\n\u0011system_parameters\u0018\u001d \u0001(\u000b2\u001c.google.api.SystemParameters\u0012+\n\u000bsource_info\u0018% \u0001(\u000b2\u0016.google.api.SourceInfo\u00128\n\u000econfig_version\u0018\u0014 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0002\u0018\u0001Bn\n\u000ecom.google.apiB\fServiceProtoP\u0001ZEgoogle.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[]{c.a(), i.a(), l.a(), q.a(), t.a(), x.a(), a0.a(), f0.a(), j0.a(), m0.a(), o0.a(), q0.a(), t0.a(), v0.a(), b1.a(), c1.a(), h1.a(), j1.a(), n1.a(), com.google.protobuf.g.a(), com.google.protobuf.i.a(), c3.a(), p3.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f11207a = bVar;
        f11208b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "Title", "ProducerProjectId", "Id", "Apis", "Types", "Enums", "Documentation", "Backend", "Http", "Quota", "Authentication", "Context", "Usage", "Endpoints", "Control", FilePathProvider.PRIVATE_LOG_NEW, "Metrics", "MonitoredResources", "Billing", "Logging", "Monitoring", "SystemParameters", "SourceInfo", "ConfigVersion"});
        c.a();
        i.a();
        l.a();
        q.a();
        t.a();
        x.a();
        a0.a();
        f0.a();
        j0.a();
        m0.a();
        o0.a();
        q0.a();
        t0.a();
        v0.a();
        b1.a();
        c1.a();
        h1.a();
        j1.a();
        n1.a();
        com.google.protobuf.g.a();
        com.google.protobuf.i.a();
        c3.a();
        p3.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f11209c;
    }
}
