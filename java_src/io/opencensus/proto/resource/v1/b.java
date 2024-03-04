package io.opencensus.proto.resource.v1;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
/* loaded from: classes7.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f51066a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f51067b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f51068c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f51069d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f51070e;

    /* loaded from: classes7.dex */
    static class a implements Descriptors.FileDescriptor.a {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.a
        public d0 a(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = b.f51070e = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.t(new String[]{"\n+opencensus/proto/resource/v1/resource.proto\u0012\u001copencensus.proto.resource.v1\"\u008b\u0001\n\bResource\u0012\f\n\u0004type\u0018\u0001 \u0001(\t\u0012B\n\u0006labels\u0018\u0002 \u0003(\u000b22.opencensus.proto.resource.v1.Resource.LabelsEntry\u001a-\n\u000bLabelsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001By\n\u001fio.opencensus.proto.resource.v1B\rResourceProtoP\u0001ZEgithub.com/census-instrumentation/opencensus-proto/gen-go/resource/v1b\u0006proto3"}, new Descriptors.FileDescriptor[0], new a());
        Descriptors.b bVar = b().m().get(0);
        f51066a = bVar;
        f51067b = new GeneratedMessageV3.e(bVar, new String[]{"Type", "Labels"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f51068c = bVar2;
        f51069d = new GeneratedMessageV3.e(bVar2, new String[]{"Key", "Value"});
    }

    public static Descriptors.FileDescriptor b() {
        return f51070e;
    }
}
