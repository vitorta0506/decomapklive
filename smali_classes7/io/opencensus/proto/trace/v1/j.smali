.class public final Lio/opencensus/proto/trace/v1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final A:Lcom/google/protobuf/Descriptors$b;

.field static final B:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final C:Lcom/google/protobuf/Descriptors$b;

.field static final D:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final E:Lcom/google/protobuf/Descriptors$b;

.field static final F:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final G:Lcom/google/protobuf/Descriptors$b;

.field static final H:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final I:Lcom/google/protobuf/Descriptors$b;

.field static final J:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static K:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final c:Lcom/google/protobuf/Descriptors$b;

.field static final d:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final e:Lcom/google/protobuf/Descriptors$b;

.field static final f:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final g:Lcom/google/protobuf/Descriptors$b;

.field static final h:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final i:Lcom/google/protobuf/Descriptors$b;

.field static final j:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final k:Lcom/google/protobuf/Descriptors$b;

.field static final l:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final m:Lcom/google/protobuf/Descriptors$b;

.field static final n:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final o:Lcom/google/protobuf/Descriptors$b;

.field static final p:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final q:Lcom/google/protobuf/Descriptors$b;

.field static final r:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final s:Lcom/google/protobuf/Descriptors$b;

.field static final t:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final u:Lcom/google/protobuf/Descriptors$b;

.field static final v:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final w:Lcom/google/protobuf/Descriptors$b;

.field static final x:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final y:Lcom/google/protobuf/Descriptors$b;

.field static final z:Lcom/google/protobuf/GeneratedMessageV3$e;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const-string v0, "\n%opencensus/proto/trace/v1/trace.proto\u0012\u0019opencensus.proto.trace.v1\u001a+opencensus/proto/resource/v1/resource.proto\u001a\u001fgoogle/protobuf/timestamp.proto\u001a\u001egoogle/protobuf/wrappers.proto\"\u00ec\u0011\n\u0004Span\u0012\u0010\n\u0008trace_id\u0018\u0001 \u0001(\u000c\u0012\u000f\n\u0007span_id\u0018\u0002 \u0001(\u000c\u0012>\n\ntracestate\u0018\u000f \u0001(\u000b2*.opencensus.proto.trace.v1.Span.Tracestate\u0012\u0016\n\u000eparent_span_id\u0018\u0003 \u0001(\u000c\u0012:\n\u0004name\u0018\u0004 \u0001(\u000b2,.opencensus.proto.trace.v1.TruncatableString\u00126\n\u0004kind\u0018\u000e \u0001(\u000e2(.opencensus.proto.trace.v1.Span.SpanKind\u0012.\n\nstart_time\u0018\u0005 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012,\n\u0008end_time\u0018\u0006 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012>\n\nattributes\u0018\u0007 \u0001(\u000b2*.opencensus.proto.trace.v1.Span.Attributes\u0012:\n\u000bstack_trace\u0018\u0008 \u0001(\u000b2%.opencensus.proto.trace.v1.StackTrace\u0012?\n\u000btime_events\u0018\t \u0001(\u000b2*.opencensus.proto.trace.v1.Span.TimeEvents\u00124\n\u0005links\u0018\n \u0001(\u000b2%.opencensus.proto.trace.v1.Span.Links\u00121\n\u0006status\u0018\u000b \u0001(\u000b2!.opencensus.proto.trace.v1.Status\u00128\n\u0008resource\u0018\u0010 \u0001(\u000b2&.opencensus.proto.resource.v1.Resource\u0012?\n\u001bsame_process_as_parent_span\u0018\u000c \u0001(\u000b2\u001a.google.protobuf.BoolValue\u00126\n\u0010child_span_count\u0018\r \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u001at\n\nTracestate\u0012A\n\u0007entries\u0018\u0001 \u0003(\u000b20.opencensus.proto.trace.v1.Span.Tracestate.Entry\u001a#\n\u0005Entry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t\u001a\u00e3\u0001\n\nAttributes\u0012S\n\rattribute_map\u0018\u0001 \u0003(\u000b2<.opencensus.proto.trace.v1.Span.Attributes.AttributeMapEntry\u0012 \n\u0018dropped_attributes_count\u0018\u0002 \u0001(\u0005\u001a^\n\u0011AttributeMapEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u00128\n\u0005value\u0018\u0002 \u0001(\u000b2).opencensus.proto.trace.v1.AttributeValue:\u00028\u0001\u001a\u00bf\u0004\n\tTimeEvent\u0012(\n\u0004time\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012J\n\nannotation\u0018\u0002 \u0001(\u000b24.opencensus.proto.trace.v1.Span.TimeEvent.AnnotationH\u0000\u0012O\n\rmessage_event\u0018\u0003 \u0001(\u000b26.opencensus.proto.trace.v1.Span.TimeEvent.MessageEventH\u0000\u001a\u008f\u0001\n\nAnnotation\u0012A\n\u000bdescription\u0018\u0001 \u0001(\u000b2,.opencensus.proto.trace.v1.TruncatableString\u0012>\n\nattributes\u0018\u0002 \u0001(\u000b2*.opencensus.proto.trace.v1.Span.Attributes\u001a\u00cf\u0001\n\u000cMessageEvent\u0012I\n\u0004type\u0018\u0001 \u0001(\u000e2;.opencensus.proto.trace.v1.Span.TimeEvent.MessageEvent.Type\u0012\n\n\u0002id\u0018\u0002 \u0001(\u0004\u0012\u0019\n\u0011uncompressed_size\u0018\u0003 \u0001(\u0004\u0012\u0017\n\u000fcompressed_size\u0018\u0004 \u0001(\u0004\"4\n\u0004Type\u0012\u0014\n\u0010TYPE_UNSPECIFIED\u0010\u0000\u0012\u0008\n\u0004SENT\u0010\u0001\u0012\u000c\n\u0008RECEIVED\u0010\u0002B\u0007\n\u0005value\u001a\u0094\u0001\n\nTimeEvents\u0012=\n\ntime_event\u0018\u0001 \u0003(\u000b2).opencensus.proto.trace.v1.Span.TimeEvent\u0012!\n\u0019dropped_annotations_count\u0018\u0002 \u0001(\u0005\u0012$\n\u001cdropped_message_events_count\u0018\u0003 \u0001(\u0005\u001a\u00ef\u0001\n\u0004Link\u0012\u0010\n\u0008trace_id\u0018\u0001 \u0001(\u000c\u0012\u000f\n\u0007span_id\u0018\u0002 \u0001(\u000c\u00127\n\u0004type\u0018\u0003 \u0001(\u000e2).opencensus.proto.trace.v1.Span.Link.Type\u0012>\n\nattributes\u0018\u0004 \u0001(\u000b2*.opencensus.proto.trace.v1.Span.Attributes\"K\n\u0004Type\u0012\u0014\n\u0010TYPE_UNSPECIFIED\u0010\u0000\u0012\u0015\n\u0011CHILD_LINKED_SPAN\u0010\u0001\u0012\u0016\n\u0012PARENT_LINKED_SPAN\u0010\u0002\u001aX\n\u0005Links\u00122\n\u0004link\u0018\u0001 \u0003(\u000b2$.opencensus.proto.trace.v1.Span.Link\u0012\u001b\n\u0013dropped_links_count\u0018\u0002 \u0001(\u0005\"=\n\u0008SpanKind\u0012\u0019\n\u0015SPAN_KIND_UNSPECIFIED\u0010\u0000\u0012\n\n\u0006SERVER\u0010\u0001\u0012\n\n\u0006CLIENT\u0010\u0002\"\'\n\u0006Status\u0012\u000c\n\u0004code\u0018\u0001 \u0001(\u0005\u0012\u000f\n\u0007message\u0018\u0002 \u0001(\t\"\u00a2\u0001\n\u000eAttributeValue\u0012D\n\u000cstring_value\u0018\u0001 \u0001(\u000b2,.opencensus.proto.trace.v1.TruncatableStringH\u0000\u0012\u0013\n\tint_value\u0018\u0002 \u0001(\u0003H\u0000\u0012\u0014\n\nbool_value\u0018\u0003 \u0001(\u0008H\u0000\u0012\u0016\n\u000cdouble_value\u0018\u0004 \u0001(\u0001H\u0000B\u0007\n\u0005value\"\u00ed\u0004\n\nStackTrace\u0012G\n\u000cstack_frames\u0018\u0001 \u0001(\u000b21.opencensus.proto.trace.v1.StackTrace.StackFrames\u0012\u001b\n\u0013stack_trace_hash_id\u0018\u0002 \u0001(\u0004\u001a\u008a\u0003\n\nStackFrame\u0012C\n\rfunction_name\u0018\u0001 \u0001(\u000b2,.opencensus.proto.trace.v1.TruncatableString\u0012L\n\u0016original_function_name\u0018\u0002 \u0001(\u000b2,.opencensus.proto.trace.v1.TruncatableString\u0012?\n\tfile_name\u0018\u0003 \u0001(\u000b2,.opencensus.proto.trace.v1.TruncatableString\u0012\u0013\n\u000bline_number\u0018\u0004 \u0001(\u0003\u0012\u0015\n\rcolumn_number\u0018\u0005 \u0001(\u0003\u00126\n\u000bload_module\u0018\u0006 \u0001(\u000b2!.opencensus.proto.trace.v1.Module\u0012D\n\u000esource_version\u0018\u0007 \u0001(\u000b2,.opencensus.proto.trace.v1.TruncatableString\u001al\n\u000bStackFrames\u0012?\n\u0005frame\u0018\u0001 \u0003(\u000b20.opencensus.proto.trace.v1.StackTrace.StackFrame\u0012\u001c\n\u0014dropped_frames_count\u0018\u0002 \u0001(\u0005\"\u0086\u0001\n\u0006Module\u0012<\n\u0006module\u0018\u0001 \u0001(\u000b2,.opencensus.proto.trace.v1.TruncatableString\u0012>\n\u0008build_id\u0018\u0002 \u0001(\u000b2,.opencensus.proto.trace.v1.TruncatableString\"@\n\u0011TruncatableString\u0012\r\n\u0005value\u0018\u0001 \u0001(\t\u0012\u001c\n\u0014truncated_byte_count\u0018\u0002 \u0001(\u0005Bp\n\u001cio.opencensus.proto.trace.v1B\nTraceProtoP\u0001ZBgithub.com/census-instrumentation/opencensus-proto/gen-go/trace/v1b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lio/opencensus/proto/trace/v1/j$a;

    invoke-direct {v1}, Lio/opencensus/proto/trace/v1/j$a;-><init>()V

    const/4 v2, 0x3

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lio/opencensus/proto/resource/v1/b;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 4
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 5
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 6
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->t([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$a;)V

    .line 7
    invoke-static {}, Lio/opencensus/proto/trace/v1/j;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/trace/v1/j;->a:Lcom/google/protobuf/Descriptors$b;

    .line 8
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "TraceId"

    const-string v9, "SpanId"

    const-string v10, "Tracestate"

    const-string v11, "ParentSpanId"

    const-string v12, "Name"

    const-string v13, "Kind"

    const-string v14, "StartTime"

    const-string v15, "EndTime"

    const-string v16, "Attributes"

    const-string v17, "StackTrace"

    const-string v18, "TimeEvents"

    const-string v19, "Links"

    const-string v20, "Status"

    const-string v21, "Resource"

    const-string v22, "SameProcessAsParentSpan"

    const-string v23, "ChildSpanCount"

    filled-new-array/range {v8 .. v23}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/trace/v1/j;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/opencensus/proto/trace/v1/j;->c:Lcom/google/protobuf/Descriptors$b;

    .line 10
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "Entries"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/opencensus/proto/trace/v1/j;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 11
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/opencensus/proto/trace/v1/j;->e:Lcom/google/protobuf/Descriptors$b;

    .line 12
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "Key"

    const-string v8, "Value"

    filled-new-array {v4, v8}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v1, v9}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/opencensus/proto/trace/v1/j;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/opencensus/proto/trace/v1/j;->g:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v9, "AttributeMap"

    const-string v10, "DroppedAttributesCount"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v1, v9}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/opencensus/proto/trace/v1/j;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/opencensus/proto/trace/v1/j;->i:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v4, v8}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/opencensus/proto/trace/v1/j;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/opencensus/proto/trace/v1/j;->k:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "Time"

    const-string v9, "Annotation"

    const-string v10, "MessageEvent"

    filled-new-array {v4, v9, v10, v8}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/opencensus/proto/trace/v1/j;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$b;

    sput-object v3, Lio/opencensus/proto/trace/v1/j;->m:Lcom/google/protobuf/Descriptors$b;

    .line 20
    new-instance v4, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v9, "Description"

    const-string v10, "Attributes"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v3, v9}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v4, Lio/opencensus/proto/trace/v1/j;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 21
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/opencensus/proto/trace/v1/j;->o:Lcom/google/protobuf/Descriptors$b;

    .line 22
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "Type"

    const-string v9, "Id"

    const-string v11, "UncompressedSize"

    const-string v12, "CompressedSize"

    filled-new-array {v4, v9, v11, v12}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v1, v9}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/opencensus/proto/trace/v1/j;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 23
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/opencensus/proto/trace/v1/j;->q:Lcom/google/protobuf/Descriptors$b;

    .line 24
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v9, "TimeEvent"

    const-string v11, "DroppedAnnotationsCount"

    const-string v12, "DroppedMessageEventsCount"

    filled-new-array {v9, v11, v12}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v1, v9}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v3, Lio/opencensus/proto/trace/v1/j;->r:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 25
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/opencensus/proto/trace/v1/j;->s:Lcom/google/protobuf/Descriptors$b;

    .line 26
    new-instance v9, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v11, "TraceId"

    const-string v12, "SpanId"

    filled-new-array {v11, v12, v4, v10}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v1, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v9, Lio/opencensus/proto/trace/v1/j;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 27
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/trace/v1/j;->u:Lcom/google/protobuf/Descriptors$b;

    .line 28
    new-instance v4, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v9, "Link"

    const-string v10, "DroppedLinksCount"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v0, v9}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v4, Lio/opencensus/proto/trace/v1/j;->v:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 29
    invoke-static {}, Lio/opencensus/proto/trace/v1/j;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/trace/v1/j;->w:Lcom/google/protobuf/Descriptors$b;

    .line 30
    new-instance v4, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v9, "Code"

    const-string v10, "Message"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v0, v9}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v4, Lio/opencensus/proto/trace/v1/j;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 31
    invoke-static {}, Lio/opencensus/proto/trace/v1/j;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/trace/v1/j;->y:Lcom/google/protobuf/Descriptors$b;

    .line 32
    new-instance v4, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v7, "StringValue"

    const-string v9, "IntValue"

    const-string v10, "BoolValue"

    const-string v11, "DoubleValue"

    filled-new-array {v7, v9, v10, v11, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v0, v7}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v4, Lio/opencensus/proto/trace/v1/j;->z:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 33
    invoke-static {}, Lio/opencensus/proto/trace/v1/j;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/trace/v1/j;->A:Lcom/google/protobuf/Descriptors$b;

    .line 34
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "StackFrames"

    const-string v7, "StackTraceHashId"

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/opencensus/proto/trace/v1/j;->B:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 35
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$b;

    sput-object v2, Lio/opencensus/proto/trace/v1/j;->C:Lcom/google/protobuf/Descriptors$b;

    .line 36
    new-instance v4, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v9, "FunctionName"

    const-string v10, "OriginalFunctionName"

    const-string v11, "FileName"

    const-string v12, "LineNumber"

    const-string v13, "ColumnNumber"

    const-string v14, "LoadModule"

    const-string v15, "SourceVersion"

    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v4, Lio/opencensus/proto/trace/v1/j;->D:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 37
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/trace/v1/j;->E:Lcom/google/protobuf/Descriptors$b;

    .line 38
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "Frame"

    const-string v5, "DroppedFramesCount"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/opencensus/proto/trace/v1/j;->F:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 39
    invoke-static {}, Lio/opencensus/proto/trace/v1/j;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/trace/v1/j;->G:Lcom/google/protobuf/Descriptors$b;

    .line 40
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Module"

    const-string v4, "BuildId"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/opencensus/proto/trace/v1/j;->H:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 41
    invoke-static {}, Lio/opencensus/proto/trace/v1/j;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/opencensus/proto/trace/v1/j;->I:Lcom/google/protobuf/Descriptors$b;

    .line 42
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "TruncatedByteCount"

    filled-new-array {v8, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/opencensus/proto/trace/v1/j;->J:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 43
    invoke-static {}, Lio/opencensus/proto/resource/v1/b;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 44
    invoke-static {}, Lcom/google/protobuf/a3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 45
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lio/opencensus/proto/trace/v1/j;->K:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static b()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/j;->K:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
