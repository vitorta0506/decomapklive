package com.google.logging.type;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.w;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f14225a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f14226b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f14227c = Descriptors.FileDescriptor.s(new String[]{"\n&google/logging/type/http_request.proto\u0012\u0013google.logging.type\u001a\u001egoogle/protobuf/duration.proto\"ï\u0002\n\u000bHttpRequest\u0012\u0016\n\u000erequest_method\u0018\u0001 \u0001(\t\u0012\u0013\n\u000brequest_url\u0018\u0002 \u0001(\t\u0012\u0014\n\frequest_size\u0018\u0003 \u0001(\u0003\u0012\u000e\n\u0006status\u0018\u0004 \u0001(\u0005\u0012\u0015\n\rresponse_size\u0018\u0005 \u0001(\u0003\u0012\u0012\n\nuser_agent\u0018\u0006 \u0001(\t\u0012\u0011\n\tremote_ip\u0018\u0007 \u0001(\t\u0012\u0011\n\tserver_ip\u0018\r \u0001(\t\u0012\u000f\n\u0007referer\u0018\b \u0001(\t\u0012*\n\u0007latency\u0018\u000e \u0001(\u000b2\u0019.google.protobuf.Duration\u0012\u0014\n\fcache_lookup\u0018\u000b \u0001(\b\u0012\u0011\n\tcache_hit\u0018\t \u0001(\b\u0012*\n\"cache_validated_with_origin_server\u0018\n \u0001(\b\u0012\u0018\n\u0010cache_fill_bytes\u0018\f \u0001(\u0003\u0012\u0010\n\bprotocol\u0018\u000f \u0001(\tB¾\u0001\n\u0017com.google.logging.typeB\u0010HttpRequestProtoP\u0001Z8google.golang.org/genproto/googleapis/logging/type;ltypeª\u0002\u0019Google.Cloud.Logging.TypeÊ\u0002\u0019Google\\Cloud\\Logging\\Typeê\u0002\u001cGoogle::Cloud::Logging::Typeb\u0006proto3"}, new Descriptors.FileDescriptor[]{w.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f14225a = bVar;
        f14226b = new GeneratedMessageV3.e(bVar, new String[]{"RequestMethod", "RequestUrl", "RequestSize", "Status", "ResponseSize", "UserAgent", "RemoteIp", "ServerIp", "Referer", "Latency", "CacheLookup", "CacheHit", "CacheValidatedWithOriginServer", "CacheFillBytes", "Protocol"});
        w.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f14227c;
    }
}
