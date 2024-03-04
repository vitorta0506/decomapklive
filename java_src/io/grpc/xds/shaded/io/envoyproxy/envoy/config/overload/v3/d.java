package io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48969a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48970b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f48971c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f48972d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f48973e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f48974f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f48975g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f48976h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f48977i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f48978j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f48979k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f48980l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f48981m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f48982n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f48983o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f48984p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f48985q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f48986r;

    /* renamed from: s  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48987s = Descriptors.FileDescriptor.s(new String[]{"\n'envoy/config/overload/v3/overload.proto\u0012\u0018envoy.config.overload.v3\u001a\u001benvoy/type/v3/percent.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"©\u0001\n\u000fResourceMonitor\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012,\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000:4\u009aÅ\u0088\u001e/\n-envoy.config.overload.v2alpha.ResourceMonitorB\r\n\u000bconfig_typeJ\u0004\b\u0002\u0010\u0003R\u0006config\"q\n\u0010ThresholdTrigger\u0012&\n\u0005value\u0018\u0001 \u0001(\u0001B\u0017úB\u0014\u0012\u0012\u0019\u0000\u0000\u0000\u0000\u0000\u0000ð?)\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000:5\u009aÅ\u0088\u001e0\n.envoy.config.overload.v2alpha.ThresholdTrigger\"z\n\rScaledTrigger\u00122\n\u0011scaling_threshold\u0018\u0001 \u0001(\u0001B\u0017úB\u0014\u0012\u0012\u0019\u0000\u0000\u0000\u0000\u0000\u0000ð?)\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u00125\n\u0014saturation_threshold\u0018\u0002 \u0001(\u0001B\u0017úB\u0014\u0012\u0012\u0019\u0000\u0000\u0000\u0000\u0000\u0000ð?)\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\"à\u0001\n\u0007Trigger\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012?\n\tthreshold\u0018\u0002 \u0001(\u000b2*.envoy.config.overload.v3.ThresholdTriggerH\u0000\u00129\n\u0006scaled\u0018\u0003 \u0001(\u000b2'.envoy.config.overload.v3.ScaledTriggerH\u0000:,\u009aÅ\u0088\u001e'\n%envoy.config.overload.v2alpha.TriggerB\u0014\n\rtrigger_oneof\u0012\u0003øB\u0001\"÷\u0003\n\u001fScaleTimersOverloadActionConfig\u0012k\n\u0013timer_scale_factors\u0018\u0001 \u0003(\u000b2D.envoy.config.overload.v3.ScaleTimersOverloadActionConfig.ScaleTimerB\búB\u0005\u0092\u0001\u0002\b\u0001\u001aã\u0001\n\nScaleTimer\u0012^\n\u0005timer\u0018\u0001 \u0001(\u000e2C.envoy.config.overload.v3.ScaleTimersOverloadActionConfig.TimerTypeB\núB\u0007\u0082\u0001\u0004\u0010\u0001 \u0000\u00120\n\u000bmin_timeout\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.DurationH\u0000\u0012+\n\tmin_scale\u0018\u0003 \u0001(\u000b2\u0016.envoy.type.v3.PercentH\u0000B\u0016\n\u000foverload_adjust\u0012\u0003øB\u0001\"\u0080\u0001\n\tTimerType\u0012\u000f\n\u000bUNSPECIFIED\u0010\u0000\u0012#\n\u001fHTTP_DOWNSTREAM_CONNECTION_IDLE\u0010\u0001\u0012\u001f\n\u001bHTTP_DOWNSTREAM_STREAM_IDLE\u0010\u0002\u0012\u001c\n\u0018TRANSPORT_SOCKET_CONNECT\u0010\u0003\"Ç\u0001\n\u000eOverloadAction\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012=\n\btriggers\u0018\u0002 \u0003(\u000b2!.envoy.config.overload.v3.TriggerB\búB\u0005\u0092\u0001\u0002\b\u0001\u0012*\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.Any:3\u009aÅ\u0088\u001e.\n,envoy.config.overload.v2alpha.OverloadAction\"O\n\u0013BufferFactoryConfig\u00128\n%minimum_account_to_track_power_of_two\u0018\u0001 \u0001(\rB\túB\u0006*\u0004\u00188(\n\"Õ\u0002\n\u000fOverloadManager\u00123\n\u0010refresh_interval\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012N\n\u0011resource_monitors\u0018\u0002 \u0003(\u000b2).envoy.config.overload.v3.ResourceMonitorB\búB\u0005\u0092\u0001\u0002\b\u0001\u00129\n\u0007actions\u0018\u0003 \u0003(\u000b2(.envoy.config.overload.v3.OverloadAction\u0012L\n\u0015buffer_factory_config\u0018\u0004 \u0001(\u000b2-.envoy.config.overload.v3.BufferFactoryConfig:4\u009aÅ\u0088\u001e/\n-envoy.config.overload.v2alpha.OverloadManagerBA\n&io.envoyproxy.envoy.config.overload.v3B\rOverloadProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g.a(), com.google.protobuf.g.a(), w.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48969a = bVar;
        f48970b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "TypedConfig", "ConfigType"});
        Descriptors.b bVar2 = a().m().get(1);
        f48971c = bVar2;
        f48972d = new GeneratedMessageV3.e(bVar2, new String[]{"Value"});
        Descriptors.b bVar3 = a().m().get(2);
        f48973e = bVar3;
        f48974f = new GeneratedMessageV3.e(bVar3, new String[]{"ScalingThreshold", "SaturationThreshold"});
        Descriptors.b bVar4 = a().m().get(3);
        f48975g = bVar4;
        f48976h = new GeneratedMessageV3.e(bVar4, new String[]{"Name", "Threshold", "Scaled", "TriggerOneof"});
        Descriptors.b bVar5 = a().m().get(4);
        f48977i = bVar5;
        f48978j = new GeneratedMessageV3.e(bVar5, new String[]{"TimerScaleFactors"});
        Descriptors.b bVar6 = bVar5.o().get(0);
        f48979k = bVar6;
        f48980l = new GeneratedMessageV3.e(bVar6, new String[]{"Timer", "MinTimeout", "MinScale", "OverloadAdjust"});
        Descriptors.b bVar7 = a().m().get(5);
        f48981m = bVar7;
        f48982n = new GeneratedMessageV3.e(bVar7, new String[]{"Name", "Triggers", "TypedConfig"});
        Descriptors.b bVar8 = a().m().get(6);
        f48983o = bVar8;
        f48984p = new GeneratedMessageV3.e(bVar8, new String[]{"MinimumAccountToTrackPowerOfTwo"});
        Descriptors.b bVar9 = a().m().get(7);
        f48985q = bVar9;
        f48986r = new GeneratedMessageV3.e(bVar9, new String[]{"RefreshInterval", "ResourceMonitors", "Actions", "BufferFactoryConfig"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f48987s, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g.a();
        com.google.protobuf.g.a();
        w.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48987s;
    }
}
