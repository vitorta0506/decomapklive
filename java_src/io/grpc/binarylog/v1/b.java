package io.grpc.binarylog.v1;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.a3;
import com.google.protobuf.w;
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f42020a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f42021b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f42022c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f42023d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f42024e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f42025f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f42026g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f42027h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f42028i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f42029j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f42030k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f42031l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f42032m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f42033n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f42034o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f42035p;

    /* renamed from: q  reason: collision with root package name */
    private static Descriptors.FileDescriptor f42036q = Descriptors.FileDescriptor.s(new String[]{"\n\u001egrpc/binlog/v1/binarylog.proto\u0012\u0011grpc.binarylog.v1\u001a\u001egoogle/protobuf/duration.proto\u001a\u001fgoogle/protobuf/timestamp.proto\"¾\u0006\n\fGrpcLogEntry\u0012-\n\ttimestamp\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\u000f\n\u0007call_id\u0018\u0002 \u0001(\u0004\u0012\u001f\n\u0017sequence_id_within_call\u0018\u0003 \u0001(\u0004\u00127\n\u0004type\u0018\u0004 \u0001(\u000e2).grpc.binarylog.v1.GrpcLogEntry.EventType\u00126\n\u0006logger\u0018\u0005 \u0001(\u000e2&.grpc.binarylog.v1.GrpcLogEntry.Logger\u00128\n\rclient_header\u0018\u0006 \u0001(\u000b2\u001f.grpc.binarylog.v1.ClientHeaderH\u0000\u00128\n\rserver_header\u0018\u0007 \u0001(\u000b2\u001f.grpc.binarylog.v1.ServerHeaderH\u0000\u0012-\n\u0007message\u0018\b \u0001(\u000b2\u001a.grpc.binarylog.v1.MessageH\u0000\u0012-\n\u0007trailer\u0018\t \u0001(\u000b2\u001a.grpc.binarylog.v1.TrailerH\u0000\u0012\u0019\n\u0011payload_truncated\u0018\n \u0001(\b\u0012(\n\u0004peer\u0018\u000b \u0001(\u000b2\u001a.grpc.binarylog.v1.Address\"õ\u0001\n\tEventType\u0012\u0016\n\u0012EVENT_TYPE_UNKNOWN\u0010\u0000\u0012\u001c\n\u0018EVENT_TYPE_CLIENT_HEADER\u0010\u0001\u0012\u001c\n\u0018EVENT_TYPE_SERVER_HEADER\u0010\u0002\u0012\u001d\n\u0019EVENT_TYPE_CLIENT_MESSAGE\u0010\u0003\u0012\u001d\n\u0019EVENT_TYPE_SERVER_MESSAGE\u0010\u0004\u0012 \n\u001cEVENT_TYPE_CLIENT_HALF_CLOSE\u0010\u0005\u0012\u001d\n\u0019EVENT_TYPE_SERVER_TRAILER\u0010\u0006\u0012\u0015\n\u0011EVENT_TYPE_CANCEL\u0010\u0007\"B\n\u0006Logger\u0012\u0012\n\u000eLOGGER_UNKNOWN\u0010\u0000\u0012\u0011\n\rLOGGER_CLIENT\u0010\u0001\u0012\u0011\n\rLOGGER_SERVER\u0010\u0002B\t\n\u0007payload\"\u0091\u0001\n\fClientHeader\u0012-\n\bmetadata\u0018\u0001 \u0001(\u000b2\u001b.grpc.binarylog.v1.Metadata\u0012\u0013\n\u000bmethod_name\u0018\u0002 \u0001(\t\u0012\u0011\n\tauthority\u0018\u0003 \u0001(\t\u0012*\n\u0007timeout\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\"=\n\fServerHeader\u0012-\n\bmetadata\u0018\u0001 \u0001(\u000b2\u001b.grpc.binarylog.v1.Metadata\"}\n\u0007Trailer\u0012-\n\bmetadata\u0018\u0001 \u0001(\u000b2\u001b.grpc.binarylog.v1.Metadata\u0012\u0013\n\u000bstatus_code\u0018\u0002 \u0001(\r\u0012\u0016\n\u000estatus_message\u0018\u0003 \u0001(\t\u0012\u0016\n\u000estatus_details\u0018\u0004 \u0001(\f\"'\n\u0007Message\u0012\u000e\n\u0006length\u0018\u0001 \u0001(\r\u0012\f\n\u0004data\u0018\u0002 \u0001(\f\";\n\bMetadata\u0012/\n\u0005entry\u0018\u0001 \u0003(\u000b2 .grpc.binarylog.v1.MetadataEntry\"+\n\rMetadataEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\f\"¡\u0001\n\u0007Address\u0012-\n\u0004type\u0018\u0001 \u0001(\u000e2\u001f.grpc.binarylog.v1.Address.Type\u0012\u000f\n\u0007address\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007ip_port\u0018\u0003 \u0001(\r\"E\n\u0004Type\u0012\u0010\n\fTYPE_UNKNOWN\u0010\u0000\u0012\r\n\tTYPE_IPV4\u0010\u0001\u0012\r\n\tTYPE_IPV6\u0010\u0002\u0012\r\n\tTYPE_UNIX\u0010\u0003B\\\n\u0014io.grpc.binarylog.v1B\u000eBinaryLogProtoP\u0001Z2google.golang.org/grpc/binarylog/grpc_binarylog_v1b\u0006proto3"}, new Descriptors.FileDescriptor[]{w.a(), a3.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f42020a = bVar;
        f42021b = new GeneratedMessageV3.e(bVar, new String[]{"Timestamp", "CallId", "SequenceIdWithinCall", "Type", "Logger", "ClientHeader", "ServerHeader", "Message", "Trailer", "PayloadTruncated", "Peer", "Payload"});
        Descriptors.b bVar2 = a().m().get(1);
        f42022c = bVar2;
        f42023d = new GeneratedMessageV3.e(bVar2, new String[]{"Metadata", "MethodName", "Authority", "Timeout"});
        Descriptors.b bVar3 = a().m().get(2);
        f42024e = bVar3;
        f42025f = new GeneratedMessageV3.e(bVar3, new String[]{"Metadata"});
        Descriptors.b bVar4 = a().m().get(3);
        f42026g = bVar4;
        f42027h = new GeneratedMessageV3.e(bVar4, new String[]{"Metadata", "StatusCode", "StatusMessage", "StatusDetails"});
        Descriptors.b bVar5 = a().m().get(4);
        f42028i = bVar5;
        f42029j = new GeneratedMessageV3.e(bVar5, new String[]{"Length", "Data"});
        Descriptors.b bVar6 = a().m().get(5);
        f42030k = bVar6;
        f42031l = new GeneratedMessageV3.e(bVar6, new String[]{"Entry"});
        Descriptors.b bVar7 = a().m().get(6);
        f42032m = bVar7;
        f42033n = new GeneratedMessageV3.e(bVar7, new String[]{"Key", "Value"});
        Descriptors.b bVar8 = a().m().get(7);
        f42034o = bVar8;
        f42035p = new GeneratedMessageV3.e(bVar8, new String[]{"Type", "Address", "IpPort"});
        w.a();
        a3.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f42036q;
    }
}
