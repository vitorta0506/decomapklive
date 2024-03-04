package io.grpc.channelz.v1;

import androidx.exifinterface.media.ExifInterface;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.a3;
import com.google.protobuf.p3;
import com.google.protobuf.w;
/* loaded from: classes5.dex */
public final class h {
    static final Descriptors.b A;
    private static Descriptors.FileDescriptor A0 = Descriptors.FileDescriptor.s(new String[]{"\n\u001fgrpc/channelz/v1/channelz.proto\u0012\u0010grpc.channelz.v1\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001fgoogle/protobuf/timestamp.proto\u001a\u001egoogle/protobuf/wrappers.proto\"þ\u0001\n\u0007Channel\u0012)\n\u0003ref\u0018\u0001 \u0001(\u000b2\u001c.grpc.channelz.v1.ChannelRef\u0012+\n\u0004data\u0018\u0002 \u0001(\u000b2\u001d.grpc.channelz.v1.ChannelData\u00121\n\u000bchannel_ref\u0018\u0003 \u0003(\u000b2\u001c.grpc.channelz.v1.ChannelRef\u00127\n\u000esubchannel_ref\u0018\u0004 \u0003(\u000b2\u001f.grpc.channelz.v1.SubchannelRef\u0012/\n\nsocket_ref\u0018\u0005 \u0003(\u000b2\u001b.grpc.channelz.v1.SocketRef\"\u0084\u0002\n\nSubchannel\u0012,\n\u0003ref\u0018\u0001 \u0001(\u000b2\u001f.grpc.channelz.v1.SubchannelRef\u0012+\n\u0004data\u0018\u0002 \u0001(\u000b2\u001d.grpc.channelz.v1.ChannelData\u00121\n\u000bchannel_ref\u0018\u0003 \u0003(\u000b2\u001c.grpc.channelz.v1.ChannelRef\u00127\n\u000esubchannel_ref\u0018\u0004 \u0003(\u000b2\u001f.grpc.channelz.v1.SubchannelRef\u0012/\n\nsocket_ref\u0018\u0005 \u0003(\u000b2\u001b.grpc.channelz.v1.SocketRef\"»\u0001\n\u0018ChannelConnectivityState\u0012?\n\u0005state\u0018\u0001 \u0001(\u000e20.grpc.channelz.v1.ChannelConnectivityState.State\"^\n\u0005State\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\b\n\u0004IDLE\u0010\u0001\u0012\u000e\n\nCONNECTING\u0010\u0002\u0012\t\n\u0005READY\u0010\u0003\u0012\u0015\n\u0011TRANSIENT_FAILURE\u0010\u0004\u0012\f\n\bSHUTDOWN\u0010\u0005\"\u008e\u0002\n\u000bChannelData\u00129\n\u0005state\u0018\u0001 \u0001(\u000b2*.grpc.channelz.v1.ChannelConnectivityState\u0012\u000e\n\u0006target\u0018\u0002 \u0001(\t\u0012-\n\u0005trace\u0018\u0003 \u0001(\u000b2\u001e.grpc.channelz.v1.ChannelTrace\u0012\u0015\n\rcalls_started\u0018\u0004 \u0001(\u0003\u0012\u0017\n\u000fcalls_succeeded\u0018\u0005 \u0001(\u0003\u0012\u0014\n\fcalls_failed\u0018\u0006 \u0001(\u0003\u0012?\n\u001blast_call_started_timestamp\u0018\u0007 \u0001(\u000b2\u001a.google.protobuf.Timestamp\"Û\u0002\n\u0011ChannelTraceEvent\u0012\u0013\n\u000bdescription\u0018\u0001 \u0001(\t\u0012>\n\bseverity\u0018\u0002 \u0001(\u000e2,.grpc.channelz.v1.ChannelTraceEvent.Severity\u0012-\n\ttimestamp\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u00123\n\u000bchannel_ref\u0018\u0004 \u0001(\u000b2\u001c.grpc.channelz.v1.ChannelRefH\u0000\u00129\n\u000esubchannel_ref\u0018\u0005 \u0001(\u000b2\u001f.grpc.channelz.v1.SubchannelRefH\u0000\"E\n\bSeverity\u0012\u000e\n\nCT_UNKNOWN\u0010\u0000\u0012\u000b\n\u0007CT_INFO\u0010\u0001\u0012\u000e\n\nCT_WARNING\u0010\u0002\u0012\f\n\bCT_ERROR\u0010\u0003B\u000b\n\tchild_ref\"\u0096\u0001\n\fChannelTrace\u0012\u0019\n\u0011num_events_logged\u0018\u0001 \u0001(\u0003\u00126\n\u0012creation_timestamp\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u00123\n\u0006events\u0018\u0003 \u0003(\u000b2#.grpc.channelz.v1.ChannelTraceEvent\"R\n\nChannelRef\u0012\u0012\n\nchannel_id\u0018\u0001 \u0001(\u0003\u0012\f\n\u0004name\u0018\u0002 \u0001(\tJ\u0004\b\u0003\u0010\u0004J\u0004\b\u0004\u0010\u0005J\u0004\b\u0005\u0010\u0006J\u0004\b\u0006\u0010\u0007J\u0004\b\u0007\u0010\bJ\u0004\b\b\u0010\t\"X\n\rSubchannelRef\u0012\u0015\n\rsubchannel_id\u0018\u0007 \u0001(\u0003\u0012\f\n\u0004name\u0018\b \u0001(\tJ\u0004\b\u0001\u0010\u0002J\u0004\b\u0002\u0010\u0003J\u0004\b\u0003\u0010\u0004J\u0004\b\u0004\u0010\u0005J\u0004\b\u0005\u0010\u0006J\u0004\b\u0006\u0010\u0007\"P\n\tSocketRef\u0012\u0011\n\tsocket_id\u0018\u0003 \u0001(\u0003\u0012\f\n\u0004name\u0018\u0004 \u0001(\tJ\u0004\b\u0001\u0010\u0002J\u0004\b\u0002\u0010\u0003J\u0004\b\u0005\u0010\u0006J\u0004\b\u0006\u0010\u0007J\u0004\b\u0007\u0010\bJ\u0004\b\b\u0010\t\"P\n\tServerRef\u0012\u0011\n\tserver_id\u0018\u0005 \u0001(\u0003\u0012\f\n\u0004name\u0018\u0006 \u0001(\tJ\u0004\b\u0001\u0010\u0002J\u0004\b\u0002\u0010\u0003J\u0004\b\u0003\u0010\u0004J\u0004\b\u0004\u0010\u0005J\u0004\b\u0007\u0010\bJ\u0004\b\b\u0010\t\"\u0092\u0001\n\u0006Server\u0012(\n\u0003ref\u0018\u0001 \u0001(\u000b2\u001b.grpc.channelz.v1.ServerRef\u0012*\n\u0004data\u0018\u0002 \u0001(\u000b2\u001c.grpc.channelz.v1.ServerData\u00122\n\rlisten_socket\u0018\u0003 \u0003(\u000b2\u001b.grpc.channelz.v1.SocketRef\"Â\u0001\n\nServerData\u0012-\n\u0005trace\u0018\u0001 \u0001(\u000b2\u001e.grpc.channelz.v1.ChannelTrace\u0012\u0015\n\rcalls_started\u0018\u0002 \u0001(\u0003\u0012\u0017\n\u000fcalls_succeeded\u0018\u0003 \u0001(\u0003\u0012\u0014\n\fcalls_failed\u0018\u0004 \u0001(\u0003\u0012?\n\u001blast_call_started_timestamp\u0018\u0005 \u0001(\u000b2\u001a.google.protobuf.Timestamp\"ö\u0001\n\u0006Socket\u0012(\n\u0003ref\u0018\u0001 \u0001(\u000b2\u001b.grpc.channelz.v1.SocketRef\u0012*\n\u0004data\u0018\u0002 \u0001(\u000b2\u001c.grpc.channelz.v1.SocketData\u0012(\n\u0005local\u0018\u0003 \u0001(\u000b2\u0019.grpc.channelz.v1.Address\u0012)\n\u0006remote\u0018\u0004 \u0001(\u000b2\u0019.grpc.channelz.v1.Address\u0012,\n\bsecurity\u0018\u0005 \u0001(\u000b2\u001a.grpc.channelz.v1.Security\u0012\u0013\n\u000bremote_name\u0018\u0006 \u0001(\t\"î\u0004\n\nSocketData\u0012\u0017\n\u000fstreams_started\u0018\u0001 \u0001(\u0003\u0012\u0019\n\u0011streams_succeeded\u0018\u0002 \u0001(\u0003\u0012\u0016\n\u000estreams_failed\u0018\u0003 \u0001(\u0003\u0012\u0015\n\rmessages_sent\u0018\u0004 \u0001(\u0003\u0012\u0019\n\u0011messages_received\u0018\u0005 \u0001(\u0003\u0012\u0018\n\u0010keep_alives_sent\u0018\u0006 \u0001(\u0003\u0012G\n#last_local_stream_created_timestamp\u0018\u0007 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012H\n$last_remote_stream_created_timestamp\u0018\b \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012?\n\u001blast_message_sent_timestamp\u0018\t \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012C\n\u001flast_message_received_timestamp\u0018\n \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012>\n\u0019local_flow_control_window\u0018\u000b \u0001(\u000b2\u001b.google.protobuf.Int64Value\u0012?\n\u001aremote_flow_control_window\u0018\f \u0001(\u000b2\u001b.google.protobuf.Int64Value\u0012.\n\u0006option\u0018\r \u0003(\u000b2\u001e.grpc.channelz.v1.SocketOption\"è\u0002\n\u0007Address\u0012?\n\rtcpip_address\u0018\u0001 \u0001(\u000b2&.grpc.channelz.v1.Address.TcpIpAddressH\u0000\u0012;\n\u000buds_address\u0018\u0002 \u0001(\u000b2$.grpc.channelz.v1.Address.UdsAddressH\u0000\u0012?\n\rother_address\u0018\u0003 \u0001(\u000b2&.grpc.channelz.v1.Address.OtherAddressH\u0000\u001a0\n\fTcpIpAddress\u0012\u0012\n\nip_address\u0018\u0001 \u0001(\f\u0012\f\n\u0004port\u0018\u0002 \u0001(\u0005\u001a\u001e\n\nUdsAddress\u0012\u0010\n\bfilename\u0018\u0001 \u0001(\t\u001aA\n\fOtherAddress\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012#\n\u0005value\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.AnyB\t\n\u0007address\"¾\u0002\n\bSecurity\u0012-\n\u0003tls\u0018\u0001 \u0001(\u000b2\u001e.grpc.channelz.v1.Security.TlsH\u0000\u00129\n\u0005other\u0018\u0002 \u0001(\u000b2(.grpc.channelz.v1.Security.OtherSecurityH\u0000\u001a{\n\u0003Tls\u0012\u0017\n\rstandard_name\u0018\u0001 \u0001(\tH\u0000\u0012\u0014\n\nother_name\u0018\u0002 \u0001(\tH\u0000\u0012\u0019\n\u0011local_certificate\u0018\u0003 \u0001(\f\u0012\u001a\n\u0012remote_certificate\u0018\u0004 \u0001(\fB\u000e\n\fcipher_suite\u001aB\n\rOtherSecurity\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012#\n\u0005value\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.AnyB\u0007\n\u0005model\"U\n\fSocketOption\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t\u0012(\n\nadditional\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.Any\"B\n\u0013SocketOptionTimeout\u0012+\n\bduration\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.Duration\"Q\n\u0012SocketOptionLinger\u0012\u000e\n\u0006active\u0018\u0001 \u0001(\b\u0012+\n\bduration\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.Duration\"®\u0005\n\u0013SocketOptionTcpInfo\u0012\u0012\n\ntcpi_state\u0018\u0001 \u0001(\r\u0012\u0015\n\rtcpi_ca_state\u0018\u0002 \u0001(\r\u0012\u0018\n\u0010tcpi_retransmits\u0018\u0003 \u0001(\r\u0012\u0013\n\u000btcpi_probes\u0018\u0004 \u0001(\r\u0012\u0014\n\ftcpi_backoff\u0018\u0005 \u0001(\r\u0012\u0014\n\ftcpi_options\u0018\u0006 \u0001(\r\u0012\u0017\n\u000ftcpi_snd_wscale\u0018\u0007 \u0001(\r\u0012\u0017\n\u000ftcpi_rcv_wscale\u0018\b \u0001(\r\u0012\u0010\n\btcpi_rto\u0018\t \u0001(\r\u0012\u0010\n\btcpi_ato\u0018\n \u0001(\r\u0012\u0014\n\ftcpi_snd_mss\u0018\u000b \u0001(\r\u0012\u0014\n\ftcpi_rcv_mss\u0018\f \u0001(\r\u0012\u0014\n\ftcpi_unacked\u0018\r \u0001(\r\u0012\u0013\n\u000btcpi_sacked\u0018\u000e \u0001(\r\u0012\u0011\n\ttcpi_lost\u0018\u000f \u0001(\r\u0012\u0014\n\ftcpi_retrans\u0018\u0010 \u0001(\r\u0012\u0014\n\ftcpi_fackets\u0018\u0011 \u0001(\r\u0012\u001b\n\u0013tcpi_last_data_sent\u0018\u0012 \u0001(\r\u0012\u001a\n\u0012tcpi_last_ack_sent\u0018\u0013 \u0001(\r\u0012\u001b\n\u0013tcpi_last_data_recv\u0018\u0014 \u0001(\r\u0012\u001a\n\u0012tcpi_last_ack_recv\u0018\u0015 \u0001(\r\u0012\u0011\n\ttcpi_pmtu\u0018\u0016 \u0001(\r\u0012\u0019\n\u0011tcpi_rcv_ssthresh\u0018\u0017 \u0001(\r\u0012\u0010\n\btcpi_rtt\u0018\u0018 \u0001(\r\u0012\u0013\n\u000btcpi_rttvar\u0018\u0019 \u0001(\r\u0012\u0019\n\u0011tcpi_snd_ssthresh\u0018\u001a \u0001(\r\u0012\u0015\n\rtcpi_snd_cwnd\u0018\u001b \u0001(\r\u0012\u0013\n\u000btcpi_advmss\u0018\u001c \u0001(\r\u0012\u0017\n\u000ftcpi_reordering\u0018\u001d \u0001(\r\"F\n\u0015GetTopChannelsRequest\u0012\u0018\n\u0010start_channel_id\u0018\u0001 \u0001(\u0003\u0012\u0013\n\u000bmax_results\u0018\u0002 \u0001(\u0003\"Q\n\u0016GetTopChannelsResponse\u0012*\n\u0007channel\u0018\u0001 \u0003(\u000b2\u0019.grpc.channelz.v1.Channel\u0012\u000b\n\u0003end\u0018\u0002 \u0001(\b\"A\n\u0011GetServersRequest\u0012\u0017\n\u000fstart_server_id\u0018\u0001 \u0001(\u0003\u0012\u0013\n\u000bmax_results\u0018\u0002 \u0001(\u0003\"K\n\u0012GetServersResponse\u0012(\n\u0006server\u0018\u0001 \u0003(\u000b2\u0018.grpc.channelz.v1.Server\u0012\u000b\n\u0003end\u0018\u0002 \u0001(\b\"%\n\u0010GetServerRequest\u0012\u0011\n\tserver_id\u0018\u0001 \u0001(\u0003\"=\n\u0011GetServerResponse\u0012(\n\u0006server\u0018\u0001 \u0001(\u000b2\u0018.grpc.channelz.v1.Server\"Z\n\u0017GetServerSocketsRequest\u0012\u0011\n\tserver_id\u0018\u0001 \u0001(\u0003\u0012\u0017\n\u000fstart_socket_id\u0018\u0002 \u0001(\u0003\u0012\u0013\n\u000bmax_results\u0018\u0003 \u0001(\u0003\"X\n\u0018GetServerSocketsResponse\u0012/\n\nsocket_ref\u0018\u0001 \u0003(\u000b2\u001b.grpc.channelz.v1.SocketRef\u0012\u000b\n\u0003end\u0018\u0002 \u0001(\b\"'\n\u0011GetChannelRequest\u0012\u0012\n\nchannel_id\u0018\u0001 \u0001(\u0003\"@\n\u0012GetChannelResponse\u0012*\n\u0007channel\u0018\u0001 \u0001(\u000b2\u0019.grpc.channelz.v1.Channel\"-\n\u0014GetSubchannelRequest\u0012\u0015\n\rsubchannel_id\u0018\u0001 \u0001(\u0003\"I\n\u0015GetSubchannelResponse\u00120\n\nsubchannel\u0018\u0001 \u0001(\u000b2\u001c.grpc.channelz.v1.Subchannel\"6\n\u0010GetSocketRequest\u0012\u0011\n\tsocket_id\u0018\u0001 \u0001(\u0003\u0012\u000f\n\u0007summary\u0018\u0002 \u0001(\b\"=\n\u0011GetSocketResponse\u0012(\n\u0006socket\u0018\u0001 \u0001(\u000b2\u0018.grpc.channelz.v1.Socket2\u009a\u0005\n\bChannelz\u0012c\n\u000eGetTopChannels\u0012'.grpc.channelz.v1.GetTopChannelsRequest\u001a(.grpc.channelz.v1.GetTopChannelsResponse\u0012W\n\nGetServers\u0012#.grpc.channelz.v1.GetServersRequest\u001a$.grpc.channelz.v1.GetServersResponse\u0012T\n\tGetServer\u0012\".grpc.channelz.v1.GetServerRequest\u001a#.grpc.channelz.v1.GetServerResponse\u0012i\n\u0010GetServerSockets\u0012).grpc.channelz.v1.GetServerSocketsRequest\u001a*.grpc.channelz.v1.GetServerSocketsResponse\u0012W\n\nGetChannel\u0012#.grpc.channelz.v1.GetChannelRequest\u001a$.grpc.channelz.v1.GetChannelResponse\u0012`\n\rGetSubchannel\u0012&.grpc.channelz.v1.GetSubchannelRequest\u001a'.grpc.channelz.v1.GetSubchannelResponse\u0012T\n\tGetSocket\u0012\".grpc.channelz.v1.GetSocketRequest\u001a#.grpc.channelz.v1.GetSocketResponseBX\n\u0013io.grpc.channelz.v1B\rChannelzProtoP\u0001Z0google.golang.org/grpc/channelz/grpc_channelz_v1b\u0006proto3"}, new Descriptors.FileDescriptor[]{com.google.protobuf.g.a(), w.a(), a3.a(), p3.a()});
    static final GeneratedMessageV3.e B;
    static final Descriptors.b C;
    static final GeneratedMessageV3.e D;
    static final Descriptors.b E;
    static final GeneratedMessageV3.e F;
    static final Descriptors.b G;
    static final GeneratedMessageV3.e H;
    static final Descriptors.b I;
    static final GeneratedMessageV3.e J;
    static final Descriptors.b K;
    static final GeneratedMessageV3.e L;
    static final Descriptors.b M;
    static final GeneratedMessageV3.e N;
    static final Descriptors.b O;
    static final GeneratedMessageV3.e P;
    static final Descriptors.b Q;
    static final GeneratedMessageV3.e R;
    static final Descriptors.b S;
    static final GeneratedMessageV3.e T;
    static final Descriptors.b U;
    static final GeneratedMessageV3.e V;
    static final Descriptors.b W;
    static final GeneratedMessageV3.e X;
    static final Descriptors.b Y;
    static final GeneratedMessageV3.e Z;

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f42254a;

    /* renamed from: a0  reason: collision with root package name */
    static final Descriptors.b f42255a0;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f42256b;

    /* renamed from: b0  reason: collision with root package name */
    static final GeneratedMessageV3.e f42257b0;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f42258c;

    /* renamed from: c0  reason: collision with root package name */
    static final Descriptors.b f42259c0;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f42260d;

    /* renamed from: d0  reason: collision with root package name */
    static final GeneratedMessageV3.e f42261d0;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f42262e;

    /* renamed from: e0  reason: collision with root package name */
    static final Descriptors.b f42263e0;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f42264f;

    /* renamed from: f0  reason: collision with root package name */
    static final GeneratedMessageV3.e f42265f0;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f42266g;

    /* renamed from: g0  reason: collision with root package name */
    static final Descriptors.b f42267g0;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f42268h;

    /* renamed from: h0  reason: collision with root package name */
    static final GeneratedMessageV3.e f42269h0;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f42270i;

    /* renamed from: i0  reason: collision with root package name */
    static final Descriptors.b f42271i0;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f42272j;

    /* renamed from: j0  reason: collision with root package name */
    static final GeneratedMessageV3.e f42273j0;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f42274k;

    /* renamed from: k0  reason: collision with root package name */
    static final Descriptors.b f42275k0;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f42276l;

    /* renamed from: l0  reason: collision with root package name */
    static final GeneratedMessageV3.e f42277l0;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f42278m;

    /* renamed from: m0  reason: collision with root package name */
    static final Descriptors.b f42279m0;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f42280n;

    /* renamed from: n0  reason: collision with root package name */
    static final GeneratedMessageV3.e f42281n0;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f42282o;

    /* renamed from: o0  reason: collision with root package name */
    static final Descriptors.b f42283o0;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f42284p;

    /* renamed from: p0  reason: collision with root package name */
    static final GeneratedMessageV3.e f42285p0;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f42286q;

    /* renamed from: q0  reason: collision with root package name */
    static final Descriptors.b f42287q0;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f42288r;

    /* renamed from: r0  reason: collision with root package name */
    static final GeneratedMessageV3.e f42289r0;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f42290s;

    /* renamed from: s0  reason: collision with root package name */
    static final Descriptors.b f42291s0;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f42292t;

    /* renamed from: t0  reason: collision with root package name */
    static final GeneratedMessageV3.e f42293t0;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f42294u;

    /* renamed from: u0  reason: collision with root package name */
    static final Descriptors.b f42295u0;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f42296v;

    /* renamed from: v0  reason: collision with root package name */
    static final GeneratedMessageV3.e f42297v0;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f42298w;

    /* renamed from: w0  reason: collision with root package name */
    static final Descriptors.b f42299w0;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f42300x;

    /* renamed from: x0  reason: collision with root package name */
    static final GeneratedMessageV3.e f42301x0;

    /* renamed from: y  reason: collision with root package name */
    static final Descriptors.b f42302y;

    /* renamed from: y0  reason: collision with root package name */
    static final Descriptors.b f42303y0;

    /* renamed from: z  reason: collision with root package name */
    static final GeneratedMessageV3.e f42304z;

    /* renamed from: z0  reason: collision with root package name */
    static final GeneratedMessageV3.e f42305z0;

    static {
        Descriptors.b bVar = a().m().get(0);
        f42254a = bVar;
        f42256b = new GeneratedMessageV3.e(bVar, new String[]{"Ref", "Data", "ChannelRef", "SubchannelRef", "SocketRef"});
        Descriptors.b bVar2 = a().m().get(1);
        f42258c = bVar2;
        f42260d = new GeneratedMessageV3.e(bVar2, new String[]{"Ref", "Data", "ChannelRef", "SubchannelRef", "SocketRef"});
        Descriptors.b bVar3 = a().m().get(2);
        f42262e = bVar3;
        f42264f = new GeneratedMessageV3.e(bVar3, new String[]{"State"});
        Descriptors.b bVar4 = a().m().get(3);
        f42266g = bVar4;
        f42268h = new GeneratedMessageV3.e(bVar4, new String[]{"State", "Target", "Trace", "CallsStarted", "CallsSucceeded", "CallsFailed", "LastCallStartedTimestamp"});
        Descriptors.b bVar5 = a().m().get(4);
        f42270i = bVar5;
        f42272j = new GeneratedMessageV3.e(bVar5, new String[]{"Description", "Severity", "Timestamp", "ChannelRef", "SubchannelRef", "ChildRef"});
        Descriptors.b bVar6 = a().m().get(5);
        f42274k = bVar6;
        f42276l = new GeneratedMessageV3.e(bVar6, new String[]{"NumEventsLogged", "CreationTimestamp", "Events"});
        Descriptors.b bVar7 = a().m().get(6);
        f42278m = bVar7;
        f42280n = new GeneratedMessageV3.e(bVar7, new String[]{"ChannelId", "Name"});
        Descriptors.b bVar8 = a().m().get(7);
        f42282o = bVar8;
        f42284p = new GeneratedMessageV3.e(bVar8, new String[]{"SubchannelId", "Name"});
        Descriptors.b bVar9 = a().m().get(8);
        f42286q = bVar9;
        f42288r = new GeneratedMessageV3.e(bVar9, new String[]{"SocketId", "Name"});
        Descriptors.b bVar10 = a().m().get(9);
        f42290s = bVar10;
        f42292t = new GeneratedMessageV3.e(bVar10, new String[]{"ServerId", "Name"});
        Descriptors.b bVar11 = a().m().get(10);
        f42294u = bVar11;
        f42296v = new GeneratedMessageV3.e(bVar11, new String[]{"Ref", "Data", "ListenSocket"});
        Descriptors.b bVar12 = a().m().get(11);
        f42298w = bVar12;
        f42300x = new GeneratedMessageV3.e(bVar12, new String[]{"Trace", "CallsStarted", "CallsSucceeded", "CallsFailed", "LastCallStartedTimestamp"});
        Descriptors.b bVar13 = a().m().get(12);
        f42302y = bVar13;
        f42304z = new GeneratedMessageV3.e(bVar13, new String[]{"Ref", "Data", "Local", "Remote", "Security", "RemoteName"});
        Descriptors.b bVar14 = a().m().get(13);
        A = bVar14;
        B = new GeneratedMessageV3.e(bVar14, new String[]{"StreamsStarted", "StreamsSucceeded", "StreamsFailed", "MessagesSent", "MessagesReceived", "KeepAlivesSent", "LastLocalStreamCreatedTimestamp", "LastRemoteStreamCreatedTimestamp", "LastMessageSentTimestamp", "LastMessageReceivedTimestamp", "LocalFlowControlWindow", "RemoteFlowControlWindow", "Option"});
        Descriptors.b bVar15 = a().m().get(14);
        C = bVar15;
        D = new GeneratedMessageV3.e(bVar15, new String[]{"TcpipAddress", "UdsAddress", "OtherAddress", "Address"});
        Descriptors.b bVar16 = bVar15.o().get(0);
        E = bVar16;
        F = new GeneratedMessageV3.e(bVar16, new String[]{"IpAddress", "Port"});
        Descriptors.b bVar17 = bVar15.o().get(1);
        G = bVar17;
        H = new GeneratedMessageV3.e(bVar17, new String[]{"Filename"});
        Descriptors.b bVar18 = bVar15.o().get(2);
        I = bVar18;
        J = new GeneratedMessageV3.e(bVar18, new String[]{"Name", "Value"});
        Descriptors.b bVar19 = a().m().get(15);
        K = bVar19;
        L = new GeneratedMessageV3.e(bVar19, new String[]{"Tls", "Other", ExifInterface.TAG_MODEL});
        Descriptors.b bVar20 = bVar19.o().get(0);
        M = bVar20;
        N = new GeneratedMessageV3.e(bVar20, new String[]{"StandardName", "OtherName", "LocalCertificate", "RemoteCertificate", "CipherSuite"});
        Descriptors.b bVar21 = bVar19.o().get(1);
        O = bVar21;
        P = new GeneratedMessageV3.e(bVar21, new String[]{"Name", "Value"});
        Descriptors.b bVar22 = a().m().get(16);
        Q = bVar22;
        R = new GeneratedMessageV3.e(bVar22, new String[]{"Name", "Value", "Additional"});
        Descriptors.b bVar23 = a().m().get(17);
        S = bVar23;
        T = new GeneratedMessageV3.e(bVar23, new String[]{"Duration"});
        Descriptors.b bVar24 = a().m().get(18);
        U = bVar24;
        V = new GeneratedMessageV3.e(bVar24, new String[]{"Active", "Duration"});
        Descriptors.b bVar25 = a().m().get(19);
        W = bVar25;
        X = new GeneratedMessageV3.e(bVar25, new String[]{"TcpiState", "TcpiCaState", "TcpiRetransmits", "TcpiProbes", "TcpiBackoff", "TcpiOptions", "TcpiSndWscale", "TcpiRcvWscale", "TcpiRto", "TcpiAto", "TcpiSndMss", "TcpiRcvMss", "TcpiUnacked", "TcpiSacked", "TcpiLost", "TcpiRetrans", "TcpiFackets", "TcpiLastDataSent", "TcpiLastAckSent", "TcpiLastDataRecv", "TcpiLastAckRecv", "TcpiPmtu", "TcpiRcvSsthresh", "TcpiRtt", "TcpiRttvar", "TcpiSndSsthresh", "TcpiSndCwnd", "TcpiAdvmss", "TcpiReordering"});
        Descriptors.b bVar26 = a().m().get(20);
        Y = bVar26;
        Z = new GeneratedMessageV3.e(bVar26, new String[]{"StartChannelId", "MaxResults"});
        Descriptors.b bVar27 = a().m().get(21);
        f42255a0 = bVar27;
        f42257b0 = new GeneratedMessageV3.e(bVar27, new String[]{"Channel", "End"});
        Descriptors.b bVar28 = a().m().get(22);
        f42259c0 = bVar28;
        f42261d0 = new GeneratedMessageV3.e(bVar28, new String[]{"StartServerId", "MaxResults"});
        Descriptors.b bVar29 = a().m().get(23);
        f42263e0 = bVar29;
        f42265f0 = new GeneratedMessageV3.e(bVar29, new String[]{"Server", "End"});
        Descriptors.b bVar30 = a().m().get(24);
        f42267g0 = bVar30;
        f42269h0 = new GeneratedMessageV3.e(bVar30, new String[]{"ServerId"});
        Descriptors.b bVar31 = a().m().get(25);
        f42271i0 = bVar31;
        f42273j0 = new GeneratedMessageV3.e(bVar31, new String[]{"Server"});
        Descriptors.b bVar32 = a().m().get(26);
        f42275k0 = bVar32;
        f42277l0 = new GeneratedMessageV3.e(bVar32, new String[]{"ServerId", "StartSocketId", "MaxResults"});
        Descriptors.b bVar33 = a().m().get(27);
        f42279m0 = bVar33;
        f42281n0 = new GeneratedMessageV3.e(bVar33, new String[]{"SocketRef", "End"});
        Descriptors.b bVar34 = a().m().get(28);
        f42283o0 = bVar34;
        f42285p0 = new GeneratedMessageV3.e(bVar34, new String[]{"ChannelId"});
        Descriptors.b bVar35 = a().m().get(29);
        f42287q0 = bVar35;
        f42289r0 = new GeneratedMessageV3.e(bVar35, new String[]{"Channel"});
        Descriptors.b bVar36 = a().m().get(30);
        f42291s0 = bVar36;
        f42293t0 = new GeneratedMessageV3.e(bVar36, new String[]{"SubchannelId"});
        Descriptors.b bVar37 = a().m().get(31);
        f42295u0 = bVar37;
        f42297v0 = new GeneratedMessageV3.e(bVar37, new String[]{"Subchannel"});
        Descriptors.b bVar38 = a().m().get(32);
        f42299w0 = bVar38;
        f42301x0 = new GeneratedMessageV3.e(bVar38, new String[]{"SocketId", "Summary"});
        Descriptors.b bVar39 = a().m().get(33);
        f42303y0 = bVar39;
        f42305z0 = new GeneratedMessageV3.e(bVar39, new String[]{"Socket"});
        com.google.protobuf.g.a();
        w.a();
        a3.a();
        p3.a();
    }

    public static Descriptors.FileDescriptor a() {
        return A0;
    }
}
