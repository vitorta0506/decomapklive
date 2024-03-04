package com.google.rpc.context;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.a3;
import com.google.protobuf.g;
import com.google.protobuf.v2;
import com.google.protobuf.w;
import com.tencent.liteav.txcplayer.ext.host.EngineConst;
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f15694a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f15695b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f15696c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f15697d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f15698e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f15699f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f15700g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f15701h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f15702i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f15703j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f15704k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f15705l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f15706m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f15707n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f15708o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f15709p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f15710q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f15711r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f15712s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f15713t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f15714u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f15715v;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f15716w;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f15717x;

    /* renamed from: y  reason: collision with root package name */
    private static Descriptors.FileDescriptor f15718y = Descriptors.FileDescriptor.s(new String[]{"\n*google/rpc/context/attribute_context.proto\u0012\u0012google.rpc.context\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001fgoogle/protobuf/timestamp.proto\"\u0083\u0010\n\u0010AttributeContext\u00129\n\u0006origin\u0018\u0007 \u0001(\u000b2).google.rpc.context.AttributeContext.Peer\u00129\n\u0006source\u0018\u0001 \u0001(\u000b2).google.rpc.context.AttributeContext.Peer\u0012>\n\u000bdestination\u0018\u0002 \u0001(\u000b2).google.rpc.context.AttributeContext.Peer\u0012=\n\u0007request\u0018\u0003 \u0001(\u000b2,.google.rpc.context.AttributeContext.Request\u0012?\n\bresponse\u0018\u0004 \u0001(\u000b2-.google.rpc.context.AttributeContext.Response\u0012?\n\bresource\u0018\u0005 \u0001(\u000b2-.google.rpc.context.AttributeContext.Resource\u00125\n\u0003api\u0018\u0006 \u0001(\u000b2(.google.rpc.context.AttributeContext.Api\u0012(\n\nextensions\u0018\b \u0003(\u000b2\u0014.google.protobuf.Any\u001a¾\u0001\n\u0004Peer\u0012\n\n\u0002ip\u0018\u0001 \u0001(\t\u0012\f\n\u0004port\u0018\u0002 \u0001(\u0003\u0012E\n\u0006labels\u0018\u0006 \u0003(\u000b25.google.rpc.context.AttributeContext.Peer.LabelsEntry\u0012\u0011\n\tprincipal\u0018\u0007 \u0001(\t\u0012\u0013\n\u000bregion_code\u0018\b \u0001(\t\u001a-\n\u000bLabelsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\u001aL\n\u0003Api\u0012\u000f\n\u0007service\u0018\u0001 \u0001(\t\u0012\u0011\n\toperation\u0018\u0002 \u0001(\t\u0012\u0010\n\bprotocol\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007version\u0018\u0004 \u0001(\t\u001a\u007f\n\u0004Auth\u0012\u0011\n\tprincipal\u0018\u0001 \u0001(\t\u0012\u0011\n\taudiences\u0018\u0002 \u0003(\t\u0012\u0011\n\tpresenter\u0018\u0003 \u0001(\t\u0012'\n\u0006claims\u0018\u0004 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012\u0015\n\raccess_levels\u0018\u0005 \u0003(\t\u001aï\u0002\n\u0007Request\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006method\u0018\u0002 \u0001(\t\u0012J\n\u0007headers\u0018\u0003 \u0003(\u000b29.google.rpc.context.AttributeContext.Request.HeadersEntry\u0012\f\n\u0004path\u0018\u0004 \u0001(\t\u0012\f\n\u0004host\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006scheme\u0018\u0006 \u0001(\t\u0012\r\n\u0005query\u0018\u0007 \u0001(\t\u0012(\n\u0004time\u0018\t \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\f\n\u0004size\u0018\n \u0001(\u0003\u0012\u0010\n\bprotocol\u0018\u000b \u0001(\t\u0012\u000e\n\u0006reason\u0018\f \u0001(\t\u00127\n\u0004auth\u0018\r \u0001(\u000b2).google.rpc.context.AttributeContext.Auth\u001a.\n\fHeadersEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\u001a\u0081\u0002\n\bResponse\u0012\f\n\u0004code\u0018\u0001 \u0001(\u0003\u0012\f\n\u0004size\u0018\u0002 \u0001(\u0003\u0012K\n\u0007headers\u0018\u0003 \u0003(\u000b2:.google.rpc.context.AttributeContext.Response.HeadersEntry\u0012(\n\u0004time\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u00122\n\u000fbackend_latency\u0018\u0005 \u0001(\u000b2\u0019.google.protobuf.Duration\u001a.\n\fHeadersEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\u001a\u0090\u0004\n\bResource\u0012\u000f\n\u0007service\u0018\u0001 \u0001(\t\u0012\f\n\u0004name\u0018\u0002 \u0001(\t\u0012\f\n\u0004type\u0018\u0003 \u0001(\t\u0012I\n\u0006labels\u0018\u0004 \u0003(\u000b29.google.rpc.context.AttributeContext.Resource.LabelsEntry\u0012\u000b\n\u0003uid\u0018\u0005 \u0001(\t\u0012S\n\u000bannotations\u0018\u0006 \u0003(\u000b2>.google.rpc.context.AttributeContext.Resource.AnnotationsEntry\u0012\u0014\n\fdisplay_name\u0018\u0007 \u0001(\t\u0012/\n\u000bcreate_time\u0018\b \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012/\n\u000bupdate_time\u0018\t \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012/\n\u000bdelete_time\u0018\n \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\f\n\u0004etag\u0018\u000b \u0001(\t\u0012\u0010\n\blocation\u0018\f \u0001(\t\u001a-\n\u000bLabelsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\u001a2\n\u0010AnnotationsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001B\u008b\u0001\n\u0016com.google.rpc.contextB\u0015AttributeContextProtoP\u0001ZUgoogle.golang.org/genproto/googleapis/rpc/context/attribute_context;attribute_contextø\u0001\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{g.a(), w.a(), v2.a(), a3.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f15694a = bVar;
        f15695b = new GeneratedMessageV3.e(bVar, new String[]{"Origin", "Source", "Destination", "Request", "Response", "Resource", "Api", "Extensions"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f15696c = bVar2;
        f15697d = new GeneratedMessageV3.e(bVar2, new String[]{"Ip", "Port", "Labels", "Principal", "RegionCode"});
        Descriptors.b bVar3 = bVar2.o().get(0);
        f15698e = bVar3;
        f15699f = new GeneratedMessageV3.e(bVar3, new String[]{"Key", "Value"});
        Descriptors.b bVar4 = bVar.o().get(1);
        f15700g = bVar4;
        f15701h = new GeneratedMessageV3.e(bVar4, new String[]{"Service", "Operation", "Protocol", "Version"});
        Descriptors.b bVar5 = bVar.o().get(2);
        f15702i = bVar5;
        f15703j = new GeneratedMessageV3.e(bVar5, new String[]{"Principal", "Audiences", "Presenter", "Claims", "AccessLevels"});
        Descriptors.b bVar6 = bVar.o().get(3);
        f15704k = bVar6;
        f15705l = new GeneratedMessageV3.e(bVar6, new String[]{"Id", "Method", "Headers", "Path", EngineConst.PluginName.HOST_NAME, "Scheme", "Query", "Time", "Size", "Protocol", "Reason", "Auth"});
        Descriptors.b bVar7 = bVar6.o().get(0);
        f15706m = bVar7;
        f15707n = new GeneratedMessageV3.e(bVar7, new String[]{"Key", "Value"});
        Descriptors.b bVar8 = bVar.o().get(4);
        f15708o = bVar8;
        f15709p = new GeneratedMessageV3.e(bVar8, new String[]{"Code", "Size", "Headers", "Time", "BackendLatency"});
        Descriptors.b bVar9 = bVar8.o().get(0);
        f15710q = bVar9;
        f15711r = new GeneratedMessageV3.e(bVar9, new String[]{"Key", "Value"});
        Descriptors.b bVar10 = bVar.o().get(5);
        f15712s = bVar10;
        f15713t = new GeneratedMessageV3.e(bVar10, new String[]{"Service", "Name", "Type", "Labels", "Uid", "Annotations", "DisplayName", "CreateTime", "UpdateTime", "DeleteTime", "Etag", "Location"});
        Descriptors.b bVar11 = bVar10.o().get(0);
        f15714u = bVar11;
        f15715v = new GeneratedMessageV3.e(bVar11, new String[]{"Key", "Value"});
        Descriptors.b bVar12 = bVar10.o().get(1);
        f15716w = bVar12;
        f15717x = new GeneratedMessageV3.e(bVar12, new String[]{"Key", "Value"});
        g.a();
        w.a();
        v2.a();
        a3.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f15718y;
    }
}
