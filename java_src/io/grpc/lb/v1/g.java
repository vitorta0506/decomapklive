package io.grpc.lb.v1;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.a3;
import com.google.protobuf.w;
/* loaded from: classes5.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f43387a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f43388b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f43389c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f43390d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f43391e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f43392f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f43393g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f43394h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f43395i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f43396j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f43397k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f43398l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f43399m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f43400n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f43401o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f43402p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f43403q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f43404r;

    /* renamed from: s  reason: collision with root package name */
    private static Descriptors.FileDescriptor f43405s = Descriptors.FileDescriptor.s(new String[]{"\n\u001egrpc/lb/v1/load_balancer.proto\u0012\ngrpc.lb.v1\u001a\u001egoogle/protobuf/duration.proto\u001a\u001fgoogle/protobuf/timestamp.proto\"¤\u0001\n\u0012LoadBalanceRequest\u0012@\n\u000finitial_request\u0018\u0001 \u0001(\u000b2%.grpc.lb.v1.InitialLoadBalanceRequestH\u0000\u0012/\n\fclient_stats\u0018\u0002 \u0001(\u000b2\u0017.grpc.lb.v1.ClientStatsH\u0000B\u001b\n\u0019load_balance_request_type\")\n\u0019InitialLoadBalanceRequest\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\"D\n\u0013ClientStatsPerToken\u0012\u001a\n\u0012load_balance_token\u0018\u0001 \u0001(\t\u0012\u0011\n\tnum_calls\u0018\u0002 \u0001(\u0003\"¤\u0002\n\u000bClientStats\u0012-\n\ttimestamp\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\u0019\n\u0011num_calls_started\u0018\u0002 \u0001(\u0003\u0012\u001a\n\u0012num_calls_finished\u0018\u0003 \u0001(\u0003\u00125\n-num_calls_finished_with_client_failed_to_send\u0018\u0006 \u0001(\u0003\u0012)\n!num_calls_finished_known_received\u0018\u0007 \u0001(\u0003\u0012A\n\u0018calls_finished_with_drop\u0018\b \u0003(\u000b2\u001f.grpc.lb.v1.ClientStatsPerTokenJ\u0004\b\u0004\u0010\u0005J\u0004\b\u0005\u0010\u0006\"á\u0001\n\u0013LoadBalanceResponse\u0012B\n\u0010initial_response\u0018\u0001 \u0001(\u000b2&.grpc.lb.v1.InitialLoadBalanceResponseH\u0000\u0012-\n\u000bserver_list\u0018\u0002 \u0001(\u000b2\u0016.grpc.lb.v1.ServerListH\u0000\u00129\n\u0011fallback_response\u0018\u0003 \u0001(\u000b2\u001c.grpc.lb.v1.FallbackResponseH\u0000B\u001c\n\u001aload_balance_response_type\"\u0012\n\u0010FallbackResponse\"c\n\u001aInitialLoadBalanceResponse\u0012?\n\u001cclient_stats_report_interval\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.DurationJ\u0004\b\u0001\u0010\u0002\"7\n\nServerList\u0012#\n\u0007servers\u0018\u0001 \u0003(\u000b2\u0012.grpc.lb.v1.ServerJ\u0004\b\u0003\u0010\u0004\"Z\n\u0006Server\u0012\u0012\n\nip_address\u0018\u0001 \u0001(\f\u0012\f\n\u0004port\u0018\u0002 \u0001(\u0005\u0012\u001a\n\u0012load_balance_token\u0018\u0003 \u0001(\t\u0012\f\n\u0004drop\u0018\u0004 \u0001(\bJ\u0004\b\u0005\u0010\u00062b\n\fLoadBalancer\u0012R\n\u000bBalanceLoad\u0012\u001e.grpc.lb.v1.LoadBalanceRequest\u001a\u001f.grpc.lb.v1.LoadBalanceResponse(\u00010\u0001BW\n\rio.grpc.lb.v1B\u0011LoadBalancerProtoP\u0001Z1google.golang.org/grpc/balancer/grpclb/grpc_lb_v1b\u0006proto3"}, new Descriptors.FileDescriptor[]{w.a(), a3.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f43387a = bVar;
        f43388b = new GeneratedMessageV3.e(bVar, new String[]{"InitialRequest", "ClientStats", "LoadBalanceRequestType"});
        Descriptors.b bVar2 = a().m().get(1);
        f43389c = bVar2;
        f43390d = new GeneratedMessageV3.e(bVar2, new String[]{"Name"});
        Descriptors.b bVar3 = a().m().get(2);
        f43391e = bVar3;
        f43392f = new GeneratedMessageV3.e(bVar3, new String[]{"LoadBalanceToken", "NumCalls"});
        Descriptors.b bVar4 = a().m().get(3);
        f43393g = bVar4;
        f43394h = new GeneratedMessageV3.e(bVar4, new String[]{"Timestamp", "NumCallsStarted", "NumCallsFinished", "NumCallsFinishedWithClientFailedToSend", "NumCallsFinishedKnownReceived", "CallsFinishedWithDrop"});
        Descriptors.b bVar5 = a().m().get(4);
        f43395i = bVar5;
        f43396j = new GeneratedMessageV3.e(bVar5, new String[]{"InitialResponse", "ServerList", "FallbackResponse", "LoadBalanceResponseType"});
        Descriptors.b bVar6 = a().m().get(5);
        f43397k = bVar6;
        f43398l = new GeneratedMessageV3.e(bVar6, new String[0]);
        Descriptors.b bVar7 = a().m().get(6);
        f43399m = bVar7;
        f43400n = new GeneratedMessageV3.e(bVar7, new String[]{"ClientStatsReportInterval"});
        Descriptors.b bVar8 = a().m().get(7);
        f43401o = bVar8;
        f43402p = new GeneratedMessageV3.e(bVar8, new String[]{"Servers"});
        Descriptors.b bVar9 = a().m().get(8);
        f43403q = bVar9;
        f43404r = new GeneratedMessageV3.e(bVar9, new String[]{"IpAddress", "Port", "LoadBalanceToken", "Drop"});
        w.a();
        a3.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f43405s;
    }
}
