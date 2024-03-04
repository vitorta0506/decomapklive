package com.google.api;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.v2;
/* loaded from: classes2.dex */
public final class t0 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f11469a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f11470b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f11471c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f11472d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f11473e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f11474f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f11475g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f11476h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f11477i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f11478j;

    /* renamed from: k  reason: collision with root package name */
    private static Descriptors.FileDescriptor f11479k = Descriptors.FileDescriptor.s(new String[]{"\n#google/api/monitored_resource.proto\u0012\ngoogle.api\u001a\u0016google/api/label.proto\u001a\u001dgoogle/api/launch_stage.proto\u001a\u001cgoogle/protobuf/struct.proto\"À\u0001\n\u001bMonitoredResourceDescriptor\u0012\f\n\u0004name\u0018\u0005 \u0001(\t\u0012\f\n\u0004type\u0018\u0001 \u0001(\t\u0012\u0014\n\fdisplay_name\u0018\u0002 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0003 \u0001(\t\u0012+\n\u0006labels\u0018\u0004 \u0003(\u000b2\u001b.google.api.LabelDescriptor\u0012-\n\flaunch_stage\u0018\u0007 \u0001(\u000e2\u0017.google.api.LaunchStage\"\u008b\u0001\n\u0011MonitoredResource\u0012\f\n\u0004type\u0018\u0001 \u0001(\t\u00129\n\u0006labels\u0018\u0002 \u0003(\u000b2).google.api.MonitoredResource.LabelsEntry\u001a-\n\u000bLabelsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\"Ê\u0001\n\u0019MonitoredResourceMetadata\u0012.\n\rsystem_labels\u0018\u0001 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012J\n\u000buser_labels\u0018\u0002 \u0003(\u000b25.google.api.MonitoredResourceMetadata.UserLabelsEntry\u001a1\n\u000fUserLabelsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001By\n\u000ecom.google.apiB\u0016MonitoredResourceProtoP\u0001ZCgoogle.golang.org/genproto/googleapis/api/monitoredres;monitoredresø\u0001\u0001¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[]{j0.a(), k0.a(), v2.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f11469a = bVar;
        f11470b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "Type", "DisplayName", "Description", "Labels", "LaunchStage"});
        Descriptors.b bVar2 = a().m().get(1);
        f11471c = bVar2;
        f11472d = new GeneratedMessageV3.e(bVar2, new String[]{"Type", "Labels"});
        Descriptors.b bVar3 = bVar2.o().get(0);
        f11473e = bVar3;
        f11474f = new GeneratedMessageV3.e(bVar3, new String[]{"Key", "Value"});
        Descriptors.b bVar4 = a().m().get(2);
        f11475g = bVar4;
        f11476h = new GeneratedMessageV3.e(bVar4, new String[]{"SystemLabels", "UserLabels"});
        Descriptors.b bVar5 = bVar4.o().get(0);
        f11477i = bVar5;
        f11478j = new GeneratedMessageV3.e(bVar5, new String[]{"Key", "Value"});
        j0.a();
        k0.a();
        v2.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f11479k;
    }
}
