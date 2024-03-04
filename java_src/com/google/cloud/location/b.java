package com.google.cloud.location;

import com.google.api.m;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.g;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f11813a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f11814b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f11815c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f11816d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f11817e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f11818f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f11819g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f11820h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f11821i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f11822j;

    /* renamed from: k  reason: collision with root package name */
    private static Descriptors.FileDescriptor f11823k = Descriptors.FileDescriptor.s(new String[]{"\n%google/cloud/location/locations.proto\u0012\u0015google.cloud.location\u001a\u001cgoogle/api/annotations.proto\u001a\u0019google/protobuf/any.proto\u001a\u0017google/api/client.proto\"[\n\u0014ListLocationsRequest\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006filter\u0018\u0002 \u0001(\t\u0012\u0011\n\tpage_size\u0018\u0003 \u0001(\u0005\u0012\u0012\n\npage_token\u0018\u0004 \u0001(\t\"d\n\u0015ListLocationsResponse\u00122\n\tlocations\u0018\u0001 \u0003(\u000b2\u001f.google.cloud.location.Location\u0012\u0017\n\u000fnext_page_token\u0018\u0002 \u0001(\t\"\"\n\u0012GetLocationRequest\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\"×\u0001\n\bLocation\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0013\n\u000blocation_id\u0018\u0004 \u0001(\t\u0012\u0014\n\fdisplay_name\u0018\u0005 \u0001(\t\u0012;\n\u0006labels\u0018\u0002 \u0003(\u000b2+.google.cloud.location.Location.LabelsEntry\u0012&\n\bmetadata\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.Any\u001a-\n\u000bLabelsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u00012¤\u0003\n\tLocations\u0012«\u0001\n\rListLocations\u0012+.google.cloud.location.ListLocationsRequest\u001a,.google.cloud.location.ListLocationsResponse\"?\u0082Óä\u0093\u00029\u0012\u0014/v1/{name=locations}Z!\u0012\u001f/v1/{name=projects/*}/locations\u0012\u009e\u0001\n\u000bGetLocation\u0012).google.cloud.location.GetLocationRequest\u001a\u001f.google.cloud.location.Location\"C\u0082Óä\u0093\u0002=\u0012\u0016/v1/{name=locations/*}Z#\u0012!/v1/{name=projects/*/locations/*}\u001aHÊA\u0014cloud.googleapis.comÒA.https://www.googleapis.com/auth/cloud-platformBo\n\u0019com.google.cloud.locationB\u000eLocationsProtoP\u0001Z=google.golang.org/genproto/googleapis/cloud/location;locationø\u0001\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{com.google.api.b.a(), g.a(), m.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f11813a = bVar;
        f11814b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "Filter", "PageSize", "PageToken"});
        Descriptors.b bVar2 = a().m().get(1);
        f11815c = bVar2;
        f11816d = new GeneratedMessageV3.e(bVar2, new String[]{"Locations", "NextPageToken"});
        Descriptors.b bVar3 = a().m().get(2);
        f11817e = bVar3;
        f11818f = new GeneratedMessageV3.e(bVar3, new String[]{"Name"});
        Descriptors.b bVar4 = a().m().get(3);
        f11819g = bVar4;
        f11820h = new GeneratedMessageV3.e(bVar4, new String[]{"Name", "LocationId", "DisplayName", "Labels", "Metadata"});
        Descriptors.b bVar5 = bVar4.o().get(0);
        f11821i = bVar5;
        f11822j = new GeneratedMessageV3.e(bVar5, new String[]{"Key", "Value"});
        d0 k10 = d0.k();
        k10.f(m.f11414b);
        k10.f(com.google.api.b.f10941a);
        k10.f(m.f11415c);
        Descriptors.FileDescriptor.u(f11823k, k10);
        com.google.api.b.a();
        g.a();
        m.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f11823k;
    }
}
