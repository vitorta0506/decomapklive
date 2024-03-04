package com.google.longrunning;

import com.google.api.m;
import com.google.protobuf.DescriptorProtos;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.g;
import com.google.protobuf.w;
import com.google.protobuf.z;
import com.google.rpc.d;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.MethodOptions, OperationInfo> f14255a;

    /* renamed from: b  reason: collision with root package name */
    static final Descriptors.b f14256b;

    /* renamed from: c  reason: collision with root package name */
    static final GeneratedMessageV3.e f14257c;

    /* renamed from: d  reason: collision with root package name */
    static final Descriptors.b f14258d;

    /* renamed from: e  reason: collision with root package name */
    static final GeneratedMessageV3.e f14259e;

    /* renamed from: f  reason: collision with root package name */
    static final Descriptors.b f14260f;

    /* renamed from: g  reason: collision with root package name */
    static final GeneratedMessageV3.e f14261g;

    /* renamed from: h  reason: collision with root package name */
    static final Descriptors.b f14262h;

    /* renamed from: i  reason: collision with root package name */
    static final GeneratedMessageV3.e f14263i;

    /* renamed from: j  reason: collision with root package name */
    static final Descriptors.b f14264j;

    /* renamed from: k  reason: collision with root package name */
    static final GeneratedMessageV3.e f14265k;

    /* renamed from: l  reason: collision with root package name */
    static final Descriptors.b f14266l;

    /* renamed from: m  reason: collision with root package name */
    static final GeneratedMessageV3.e f14267m;

    /* renamed from: n  reason: collision with root package name */
    static final Descriptors.b f14268n;

    /* renamed from: o  reason: collision with root package name */
    static final GeneratedMessageV3.e f14269o;

    /* renamed from: p  reason: collision with root package name */
    static final Descriptors.b f14270p;

    /* renamed from: q  reason: collision with root package name */
    static final GeneratedMessageV3.e f14271q;

    /* renamed from: r  reason: collision with root package name */
    private static Descriptors.FileDescriptor f14272r;

    static {
        GeneratedMessage.l<DescriptorProtos.MethodOptions, OperationInfo> newFileScopedGeneratedExtension = GeneratedMessage.newFileScopedGeneratedExtension(OperationInfo.class, OperationInfo.getDefaultInstance());
        f14255a = newFileScopedGeneratedExtension;
        f14272r = Descriptors.FileDescriptor.s(new String[]{"\n#google/longrunning/operations.proto\u0012\u0012google.longrunning\u001a\u001cgoogle/api/annotations.proto\u001a\u0017google/api/client.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001bgoogle/protobuf/empty.proto\u001a\u0017google/rpc/status.proto\u001a google/protobuf/descriptor.proto\"¨\u0001\n\tOperation\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012&\n\bmetadata\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any\u0012\f\n\u0004done\u0018\u0003 \u0001(\b\u0012#\n\u0005error\u0018\u0004 \u0001(\u000b2\u0012.google.rpc.StatusH\u0000\u0012(\n\bresponse\u0018\u0005 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000B\b\n\u0006result\"#\n\u0013GetOperationRequest\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\"\\\n\u0015ListOperationsRequest\u0012\f\n\u0004name\u0018\u0004 \u0001(\t\u0012\u000e\n\u0006filter\u0018\u0001 \u0001(\t\u0012\u0011\n\tpage_size\u0018\u0002 \u0001(\u0005\u0012\u0012\n\npage_token\u0018\u0003 \u0001(\t\"d\n\u0016ListOperationsResponse\u00121\n\noperations\u0018\u0001 \u0003(\u000b2\u001d.google.longrunning.Operation\u0012\u0017\n\u000fnext_page_token\u0018\u0002 \u0001(\t\"&\n\u0016CancelOperationRequest\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\"&\n\u0016DeleteOperationRequest\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\"P\n\u0014WaitOperationRequest\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012*\n\u0007timeout\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.Duration\"=\n\rOperationInfo\u0012\u0015\n\rresponse_type\u0018\u0001 \u0001(\t\u0012\u0015\n\rmetadata_type\u0018\u0002 \u0001(\t2ª\u0005\n\nOperations\u0012\u0094\u0001\n\u000eListOperations\u0012).google.longrunning.ListOperationsRequest\u001a*.google.longrunning.ListOperationsResponse\"+\u0082Óä\u0093\u0002\u0017\u0012\u0015/v1/{name=operations}ÚA\u000bname,filter\u0012\u007f\n\fGetOperation\u0012'.google.longrunning.GetOperationRequest\u001a\u001d.google.longrunning.Operation\"'\u0082Óä\u0093\u0002\u001a\u0012\u0018/v1/{name=operations/**}ÚA\u0004name\u0012~\n\u000fDeleteOperation\u0012*.google.longrunning.DeleteOperationRequest\u001a\u0016.google.protobuf.Empty\"'\u0082Óä\u0093\u0002\u001a*\u0018/v1/{name=operations/**}ÚA\u0004name\u0012\u0088\u0001\n\u000fCancelOperation\u0012*.google.longrunning.CancelOperationRequest\u001a\u0016.google.protobuf.Empty\"1\u0082Óä\u0093\u0002$\"\u001f/v1/{name=operations/**}:cancel:\u0001*ÚA\u0004name\u0012Z\n\rWaitOperation\u0012(.google.longrunning.WaitOperationRequest\u001a\u001d.google.longrunning.Operation\"\u0000\u001a\u001dÊA\u001alongrunning.googleapis.com:Z\n\u000eoperation_info\u0012\u001e.google.protobuf.MethodOptions\u0018\u0099\b \u0001(\u000b2!.google.longrunning.OperationInfoB\u0097\u0001\n\u0016com.google.longrunningB\u000fOperationsProtoP\u0001Z=google.golang.org/genproto/googleapis/longrunning;longrunningø\u0001\u0001ª\u0002\u0012Google.LongRunningÊ\u0002\u0012Google\\LongRunningb\u0006proto3"}, new Descriptors.FileDescriptor[]{com.google.api.b.a(), m.a(), g.a(), w.a(), z.a(), d.a(), DescriptorProtos.c0()});
        Descriptors.b bVar = a().m().get(0);
        f14256b = bVar;
        f14257c = new GeneratedMessageV3.e(bVar, new String[]{"Name", "Metadata", "Done", "Error", "Response", "Result"});
        Descriptors.b bVar2 = a().m().get(1);
        f14258d = bVar2;
        f14259e = new GeneratedMessageV3.e(bVar2, new String[]{"Name"});
        Descriptors.b bVar3 = a().m().get(2);
        f14260f = bVar3;
        f14261g = new GeneratedMessageV3.e(bVar3, new String[]{"Name", "Filter", "PageSize", "PageToken"});
        Descriptors.b bVar4 = a().m().get(3);
        f14262h = bVar4;
        f14263i = new GeneratedMessageV3.e(bVar4, new String[]{"Operations", "NextPageToken"});
        Descriptors.b bVar5 = a().m().get(4);
        f14264j = bVar5;
        f14265k = new GeneratedMessageV3.e(bVar5, new String[]{"Name"});
        Descriptors.b bVar6 = a().m().get(5);
        f14266l = bVar6;
        f14267m = new GeneratedMessageV3.e(bVar6, new String[]{"Name"});
        Descriptors.b bVar7 = a().m().get(6);
        f14268n = bVar7;
        f14269o = new GeneratedMessageV3.e(bVar7, new String[]{"Name", "Timeout"});
        Descriptors.b bVar8 = a().m().get(7);
        f14270p = bVar8;
        f14271q = new GeneratedMessageV3.e(bVar8, new String[]{"ResponseType", "MetadataType"});
        newFileScopedGeneratedExtension.g(f14272r.l().get(0));
        d0 k10 = d0.k();
        k10.f(m.f11414b);
        k10.f(com.google.api.b.f10941a);
        k10.f(m.f11413a);
        Descriptors.FileDescriptor.u(f14272r, k10);
        com.google.api.b.a();
        m.a();
        g.a();
        w.a();
        z.a();
        d.a();
        DescriptorProtos.c0();
    }

    public static Descriptors.FileDescriptor a() {
        return f14272r;
    }
}
