package io.opencensus.proto.agent.common.v1;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.a3;
import com.google.protobuf.d0;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50921a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50922b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50923c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50924d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f50925e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f50926f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f50927g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f50928h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f50929i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f50930j;

    /* renamed from: k  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50931k;

    /* renamed from: io.opencensus.proto.agent.common.v1.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static class C0503a implements Descriptors.FileDescriptor.a {
        C0503a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.a
        public d0 a(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = a.f50931k = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.t(new String[]{"\n-opencensus/proto/agent/common/v1/common.proto\u0012 opencensus.proto.agent.common.v1\u001a\u001fgoogle/protobuf/timestamp.proto\"Ø\u0002\n\u0004Node\u0012G\n\nidentifier\u0018\u0001 \u0001(\u000b23.opencensus.proto.agent.common.v1.ProcessIdentifier\u0012C\n\flibrary_info\u0018\u0002 \u0001(\u000b2-.opencensus.proto.agent.common.v1.LibraryInfo\u0012C\n\fservice_info\u0018\u0003 \u0001(\u000b2-.opencensus.proto.agent.common.v1.ServiceInfo\u0012J\n\nattributes\u0018\u0004 \u0003(\u000b26.opencensus.proto.agent.common.v1.Node.AttributesEntry\u001a1\n\u000fAttributesEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\"h\n\u0011ProcessIdentifier\u0012\u0011\n\thost_name\u0018\u0001 \u0001(\t\u0012\u000b\n\u0003pid\u0018\u0002 \u0001(\r\u00123\n\u000fstart_timestamp\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.Timestamp\"\u009b\u0002\n\u000bLibraryInfo\u0012H\n\blanguage\u0018\u0001 \u0001(\u000e26.opencensus.proto.agent.common.v1.LibraryInfo.Language\u0012\u0018\n\u0010exporter_version\u0018\u0002 \u0001(\t\u0012\u001c\n\u0014core_library_version\u0018\u0003 \u0001(\t\"\u0089\u0001\n\bLanguage\u0012\u0018\n\u0014LANGUAGE_UNSPECIFIED\u0010\u0000\u0012\u0007\n\u0003CPP\u0010\u0001\u0012\u000b\n\u0007C_SHARP\u0010\u0002\u0012\n\n\u0006ERLANG\u0010\u0003\u0012\u000b\n\u0007GO_LANG\u0010\u0004\u0012\b\n\u0004JAVA\u0010\u0005\u0012\u000b\n\u0007NODE_JS\u0010\u0006\u0012\u0007\n\u0003PHP\u0010\u0007\u0012\n\n\u0006PYTHON\u0010\b\u0012\b\n\u0004RUBY\u0010\t\"\u001b\n\u000bServiceInfo\u0012\f\n\u0004name\u0018\u0001 \u0001(\tB\u007f\n#io.opencensus.proto.agent.common.v1B\u000bCommonProtoP\u0001ZIgithub.com/census-instrumentation/opencensus-proto/gen-go/agent/common/v1b\u0006proto3"}, new Descriptors.FileDescriptor[]{a3.a()}, new C0503a());
        Descriptors.b bVar = b().m().get(0);
        f50921a = bVar;
        f50922b = new GeneratedMessageV3.e(bVar, new String[]{"Identifier", "LibraryInfo", "ServiceInfo", "Attributes"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f50923c = bVar2;
        f50924d = new GeneratedMessageV3.e(bVar2, new String[]{"Key", "Value"});
        Descriptors.b bVar3 = b().m().get(1);
        f50925e = bVar3;
        f50926f = new GeneratedMessageV3.e(bVar3, new String[]{"HostName", "Pid", "StartTimestamp"});
        Descriptors.b bVar4 = b().m().get(2);
        f50927g = bVar4;
        f50928h = new GeneratedMessageV3.e(bVar4, new String[]{"Language", "ExporterVersion", "CoreLibraryVersion"});
        Descriptors.b bVar5 = b().m().get(3);
        f50929i = bVar5;
        f50930j = new GeneratedMessageV3.e(bVar5, new String[]{"Name"});
        a3.a();
    }

    public static Descriptors.FileDescriptor b() {
        return f50931k;
    }
}
