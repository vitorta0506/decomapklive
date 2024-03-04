package io.opencensus.proto.trace.v1;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.a3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
/* loaded from: classes7.dex */
public final class j {
    static final Descriptors.b A;
    static final GeneratedMessageV3.e B;
    static final Descriptors.b C;
    static final GeneratedMessageV3.e D;
    static final Descriptors.b E;
    static final GeneratedMessageV3.e F;
    static final Descriptors.b G;
    static final GeneratedMessageV3.e H;
    static final Descriptors.b I;
    static final GeneratedMessageV3.e J;
    private static Descriptors.FileDescriptor K;

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f51230a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f51231b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f51232c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f51233d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f51234e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f51235f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f51236g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f51237h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f51238i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f51239j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f51240k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f51241l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f51242m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f51243n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f51244o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f51245p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f51246q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f51247r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f51248s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f51249t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f51250u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f51251v;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f51252w;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f51253x;

    /* renamed from: y  reason: collision with root package name */
    static final Descriptors.b f51254y;

    /* renamed from: z  reason: collision with root package name */
    static final GeneratedMessageV3.e f51255z;

    /* loaded from: classes7.dex */
    static class a implements Descriptors.FileDescriptor.a {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.a
        public d0 a(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = j.K = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.t(new String[]{"\n%opencensus/proto/trace/v1/trace.proto\u0012\u0019opencensus.proto.trace.v1\u001a+opencensus/proto/resource/v1/resource.proto\u001a\u001fgoogle/protobuf/timestamp.proto\u001a\u001egoogle/protobuf/wrappers.proto\"ì\u0011\n\u0004Span\u0012\u0010\n\btrace_id\u0018\u0001 \u0001(\f\u0012\u000f\n\u0007span_id\u0018\u0002 \u0001(\f\u0012>\n\ntracestate\u0018\u000f \u0001(\u000b2*.opencensus.proto.trace.v1.Span.Tracestate\u0012\u0016\n\u000eparent_span_id\u0018\u0003 \u0001(\f\u0012:\n\u0004name\u0018\u0004 \u0001(\u000b2,.opencensus.proto.trace.v1.TruncatableString\u00126\n\u0004kind\u0018\u000e \u0001(\u000e2(.opencensus.proto.trace.v1.Span.SpanKind\u0012.\n\nstart_time\u0018\u0005 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012,\n\bend_time\u0018\u0006 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012>\n\nattributes\u0018\u0007 \u0001(\u000b2*.opencensus.proto.trace.v1.Span.Attributes\u0012:\n\u000bstack_trace\u0018\b \u0001(\u000b2%.opencensus.proto.trace.v1.StackTrace\u0012?\n\u000btime_events\u0018\t \u0001(\u000b2*.opencensus.proto.trace.v1.Span.TimeEvents\u00124\n\u0005links\u0018\n \u0001(\u000b2%.opencensus.proto.trace.v1.Span.Links\u00121\n\u0006status\u0018\u000b \u0001(\u000b2!.opencensus.proto.trace.v1.Status\u00128\n\bresource\u0018\u0010 \u0001(\u000b2&.opencensus.proto.resource.v1.Resource\u0012?\n\u001bsame_process_as_parent_span\u0018\f \u0001(\u000b2\u001a.google.protobuf.BoolValue\u00126\n\u0010child_span_count\u0018\r \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u001at\n\nTracestate\u0012A\n\u0007entries\u0018\u0001 \u0003(\u000b20.opencensus.proto.trace.v1.Span.Tracestate.Entry\u001a#\n\u0005Entry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t\u001aã\u0001\n\nAttributes\u0012S\n\rattribute_map\u0018\u0001 \u0003(\u000b2<.opencensus.proto.trace.v1.Span.Attributes.AttributeMapEntry\u0012 \n\u0018dropped_attributes_count\u0018\u0002 \u0001(\u0005\u001a^\n\u0011AttributeMapEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u00128\n\u0005value\u0018\u0002 \u0001(\u000b2).opencensus.proto.trace.v1.AttributeValue:\u00028\u0001\u001a¿\u0004\n\tTimeEvent\u0012(\n\u0004time\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012J\n\nannotation\u0018\u0002 \u0001(\u000b24.opencensus.proto.trace.v1.Span.TimeEvent.AnnotationH\u0000\u0012O\n\rmessage_event\u0018\u0003 \u0001(\u000b26.opencensus.proto.trace.v1.Span.TimeEvent.MessageEventH\u0000\u001a\u008f\u0001\n\nAnnotation\u0012A\n\u000bdescription\u0018\u0001 \u0001(\u000b2,.opencensus.proto.trace.v1.TruncatableString\u0012>\n\nattributes\u0018\u0002 \u0001(\u000b2*.opencensus.proto.trace.v1.Span.Attributes\u001aÏ\u0001\n\fMessageEvent\u0012I\n\u0004type\u0018\u0001 \u0001(\u000e2;.opencensus.proto.trace.v1.Span.TimeEvent.MessageEvent.Type\u0012\n\n\u0002id\u0018\u0002 \u0001(\u0004\u0012\u0019\n\u0011uncompressed_size\u0018\u0003 \u0001(\u0004\u0012\u0017\n\u000fcompressed_size\u0018\u0004 \u0001(\u0004\"4\n\u0004Type\u0012\u0014\n\u0010TYPE_UNSPECIFIED\u0010\u0000\u0012\b\n\u0004SENT\u0010\u0001\u0012\f\n\bRECEIVED\u0010\u0002B\u0007\n\u0005value\u001a\u0094\u0001\n\nTimeEvents\u0012=\n\ntime_event\u0018\u0001 \u0003(\u000b2).opencensus.proto.trace.v1.Span.TimeEvent\u0012!\n\u0019dropped_annotations_count\u0018\u0002 \u0001(\u0005\u0012$\n\u001cdropped_message_events_count\u0018\u0003 \u0001(\u0005\u001aï\u0001\n\u0004Link\u0012\u0010\n\btrace_id\u0018\u0001 \u0001(\f\u0012\u000f\n\u0007span_id\u0018\u0002 \u0001(\f\u00127\n\u0004type\u0018\u0003 \u0001(\u000e2).opencensus.proto.trace.v1.Span.Link.Type\u0012>\n\nattributes\u0018\u0004 \u0001(\u000b2*.opencensus.proto.trace.v1.Span.Attributes\"K\n\u0004Type\u0012\u0014\n\u0010TYPE_UNSPECIFIED\u0010\u0000\u0012\u0015\n\u0011CHILD_LINKED_SPAN\u0010\u0001\u0012\u0016\n\u0012PARENT_LINKED_SPAN\u0010\u0002\u001aX\n\u0005Links\u00122\n\u0004link\u0018\u0001 \u0003(\u000b2$.opencensus.proto.trace.v1.Span.Link\u0012\u001b\n\u0013dropped_links_count\u0018\u0002 \u0001(\u0005\"=\n\bSpanKind\u0012\u0019\n\u0015SPAN_KIND_UNSPECIFIED\u0010\u0000\u0012\n\n\u0006SERVER\u0010\u0001\u0012\n\n\u0006CLIENT\u0010\u0002\"'\n\u0006Status\u0012\f\n\u0004code\u0018\u0001 \u0001(\u0005\u0012\u000f\n\u0007message\u0018\u0002 \u0001(\t\"¢\u0001\n\u000eAttributeValue\u0012D\n\fstring_value\u0018\u0001 \u0001(\u000b2,.opencensus.proto.trace.v1.TruncatableStringH\u0000\u0012\u0013\n\tint_value\u0018\u0002 \u0001(\u0003H\u0000\u0012\u0014\n\nbool_value\u0018\u0003 \u0001(\bH\u0000\u0012\u0016\n\fdouble_value\u0018\u0004 \u0001(\u0001H\u0000B\u0007\n\u0005value\"í\u0004\n\nStackTrace\u0012G\n\fstack_frames\u0018\u0001 \u0001(\u000b21.opencensus.proto.trace.v1.StackTrace.StackFrames\u0012\u001b\n\u0013stack_trace_hash_id\u0018\u0002 \u0001(\u0004\u001a\u008a\u0003\n\nStackFrame\u0012C\n\rfunction_name\u0018\u0001 \u0001(\u000b2,.opencensus.proto.trace.v1.TruncatableString\u0012L\n\u0016original_function_name\u0018\u0002 \u0001(\u000b2,.opencensus.proto.trace.v1.TruncatableString\u0012?\n\tfile_name\u0018\u0003 \u0001(\u000b2,.opencensus.proto.trace.v1.TruncatableString\u0012\u0013\n\u000bline_number\u0018\u0004 \u0001(\u0003\u0012\u0015\n\rcolumn_number\u0018\u0005 \u0001(\u0003\u00126\n\u000bload_module\u0018\u0006 \u0001(\u000b2!.opencensus.proto.trace.v1.Module\u0012D\n\u000esource_version\u0018\u0007 \u0001(\u000b2,.opencensus.proto.trace.v1.TruncatableString\u001al\n\u000bStackFrames\u0012?\n\u0005frame\u0018\u0001 \u0003(\u000b20.opencensus.proto.trace.v1.StackTrace.StackFrame\u0012\u001c\n\u0014dropped_frames_count\u0018\u0002 \u0001(\u0005\"\u0086\u0001\n\u0006Module\u0012<\n\u0006module\u0018\u0001 \u0001(\u000b2,.opencensus.proto.trace.v1.TruncatableString\u0012>\n\bbuild_id\u0018\u0002 \u0001(\u000b2,.opencensus.proto.trace.v1.TruncatableString\"@\n\u0011TruncatableString\u0012\r\n\u0005value\u0018\u0001 \u0001(\t\u0012\u001c\n\u0014truncated_byte_count\u0018\u0002 \u0001(\u0005Bp\n\u001cio.opencensus.proto.trace.v1B\nTraceProtoP\u0001ZBgithub.com/census-instrumentation/opencensus-proto/gen-go/trace/v1b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.opencensus.proto.resource.v1.b.b(), a3.a(), p3.a()}, new a());
        Descriptors.b bVar = b().m().get(0);
        f51230a = bVar;
        f51231b = new GeneratedMessageV3.e(bVar, new String[]{"TraceId", "SpanId", "Tracestate", "ParentSpanId", "Name", "Kind", "StartTime", "EndTime", "Attributes", "StackTrace", "TimeEvents", "Links", "Status", "Resource", "SameProcessAsParentSpan", "ChildSpanCount"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f51232c = bVar2;
        f51233d = new GeneratedMessageV3.e(bVar2, new String[]{"Entries"});
        Descriptors.b bVar3 = bVar2.o().get(0);
        f51234e = bVar3;
        f51235f = new GeneratedMessageV3.e(bVar3, new String[]{"Key", "Value"});
        Descriptors.b bVar4 = bVar.o().get(1);
        f51236g = bVar4;
        f51237h = new GeneratedMessageV3.e(bVar4, new String[]{"AttributeMap", "DroppedAttributesCount"});
        Descriptors.b bVar5 = bVar4.o().get(0);
        f51238i = bVar5;
        f51239j = new GeneratedMessageV3.e(bVar5, new String[]{"Key", "Value"});
        Descriptors.b bVar6 = bVar.o().get(2);
        f51240k = bVar6;
        f51241l = new GeneratedMessageV3.e(bVar6, new String[]{"Time", "Annotation", "MessageEvent", "Value"});
        Descriptors.b bVar7 = bVar6.o().get(0);
        f51242m = bVar7;
        f51243n = new GeneratedMessageV3.e(bVar7, new String[]{"Description", "Attributes"});
        Descriptors.b bVar8 = bVar6.o().get(1);
        f51244o = bVar8;
        f51245p = new GeneratedMessageV3.e(bVar8, new String[]{"Type", "Id", "UncompressedSize", "CompressedSize"});
        Descriptors.b bVar9 = bVar.o().get(3);
        f51246q = bVar9;
        f51247r = new GeneratedMessageV3.e(bVar9, new String[]{"TimeEvent", "DroppedAnnotationsCount", "DroppedMessageEventsCount"});
        Descriptors.b bVar10 = bVar.o().get(4);
        f51248s = bVar10;
        f51249t = new GeneratedMessageV3.e(bVar10, new String[]{"TraceId", "SpanId", "Type", "Attributes"});
        Descriptors.b bVar11 = bVar.o().get(5);
        f51250u = bVar11;
        f51251v = new GeneratedMessageV3.e(bVar11, new String[]{"Link", "DroppedLinksCount"});
        Descriptors.b bVar12 = b().m().get(1);
        f51252w = bVar12;
        f51253x = new GeneratedMessageV3.e(bVar12, new String[]{"Code", "Message"});
        Descriptors.b bVar13 = b().m().get(2);
        f51254y = bVar13;
        f51255z = new GeneratedMessageV3.e(bVar13, new String[]{"StringValue", "IntValue", "BoolValue", "DoubleValue", "Value"});
        Descriptors.b bVar14 = b().m().get(3);
        A = bVar14;
        B = new GeneratedMessageV3.e(bVar14, new String[]{"StackFrames", "StackTraceHashId"});
        Descriptors.b bVar15 = bVar14.o().get(0);
        C = bVar15;
        D = new GeneratedMessageV3.e(bVar15, new String[]{"FunctionName", "OriginalFunctionName", "FileName", "LineNumber", "ColumnNumber", "LoadModule", "SourceVersion"});
        Descriptors.b bVar16 = bVar14.o().get(1);
        E = bVar16;
        F = new GeneratedMessageV3.e(bVar16, new String[]{"Frame", "DroppedFramesCount"});
        Descriptors.b bVar17 = b().m().get(4);
        G = bVar17;
        H = new GeneratedMessageV3.e(bVar17, new String[]{"Module", "BuildId"});
        Descriptors.b bVar18 = b().m().get(5);
        I = bVar18;
        J = new GeneratedMessageV3.e(bVar18, new String[]{"Value", "TruncatedByteCount"});
        io.opencensus.proto.resource.v1.b.b();
        a3.a();
        p3.a();
    }

    public static Descriptors.FileDescriptor b() {
        return K;
    }
}
