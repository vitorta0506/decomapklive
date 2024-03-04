.class public final Lio/opencensus/proto/trace/v1/Span;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/proto/trace/v1/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/proto/trace/v1/Span$d;,
        Lio/opencensus/proto/trace/v1/Span$Links;,
        Lio/opencensus/proto/trace/v1/Span$f;,
        Lio/opencensus/proto/trace/v1/Span$Link;,
        Lio/opencensus/proto/trace/v1/Span$e;,
        Lio/opencensus/proto/trace/v1/Span$TimeEvents;,
        Lio/opencensus/proto/trace/v1/Span$h;,
        Lio/opencensus/proto/trace/v1/Span$TimeEvent;,
        Lio/opencensus/proto/trace/v1/Span$g;,
        Lio/opencensus/proto/trace/v1/Span$Attributes;,
        Lio/opencensus/proto/trace/v1/Span$c;,
        Lio/opencensus/proto/trace/v1/Span$Tracestate;,
        Lio/opencensus/proto/trace/v1/Span$i;,
        Lio/opencensus/proto/trace/v1/Span$SpanKind;
    }
.end annotation


# static fields
.field public static final ATTRIBUTES_FIELD_NUMBER:I = 0x7

.field public static final CHILD_SPAN_COUNT_FIELD_NUMBER:I = 0xd

.field private static final DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/Span;

.field public static final END_TIME_FIELD_NUMBER:I = 0x6

.field public static final KIND_FIELD_NUMBER:I = 0xe

.field public static final LINKS_FIELD_NUMBER:I = 0xa

.field public static final NAME_FIELD_NUMBER:I = 0x4

.field public static final PARENT_SPAN_ID_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/trace/v1/Span;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESOURCE_FIELD_NUMBER:I = 0x10

.field public static final SAME_PROCESS_AS_PARENT_SPAN_FIELD_NUMBER:I = 0xc

.field public static final SPAN_ID_FIELD_NUMBER:I = 0x2

.field public static final STACK_TRACE_FIELD_NUMBER:I = 0x8

.field public static final START_TIME_FIELD_NUMBER:I = 0x5

.field public static final STATUS_FIELD_NUMBER:I = 0xb

.field public static final TIME_EVENTS_FIELD_NUMBER:I = 0x9

.field public static final TRACESTATE_FIELD_NUMBER:I = 0xf

.field public static final TRACE_ID_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private attributes_:Lio/opencensus/proto/trace/v1/Span$Attributes;

.field private childSpanCount_:Lcom/google/protobuf/UInt32Value;

.field private endTime_:Lcom/google/protobuf/Timestamp;

.field private kind_:I

.field private links_:Lio/opencensus/proto/trace/v1/Span$Links;

.field private memoizedIsInitialized:B

.field private name_:Lio/opencensus/proto/trace/v1/TruncatableString;

.field private parentSpanId_:Lcom/google/protobuf/ByteString;

.field private resource_:Lio/opencensus/proto/resource/v1/Resource;

.field private sameProcessAsParentSpan_:Lcom/google/protobuf/BoolValue;

.field private spanId_:Lcom/google/protobuf/ByteString;

.field private stackTrace_:Lio/opencensus/proto/trace/v1/StackTrace;

.field private startTime_:Lcom/google/protobuf/Timestamp;

.field private status_:Lio/opencensus/proto/trace/v1/Status;

.field private timeEvents_:Lio/opencensus/proto/trace/v1/Span$TimeEvents;

.field private traceId_:Lcom/google/protobuf/ByteString;

.field private tracestate_:Lio/opencensus/proto/trace/v1/Span$Tracestate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/opencensus/proto/trace/v1/Span;

    invoke-direct {v0}, Lio/opencensus/proto/trace/v1/Span;-><init>()V

    sput-object v0, Lio/opencensus/proto/trace/v1/Span;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/Span;

    .line 2
    new-instance v0, Lio/opencensus/proto/trace/v1/Span$a;

    invoke-direct {v0}, Lio/opencensus/proto/trace/v1/Span$a;-><init>()V

    sput-object v0, Lio/opencensus/proto/trace/v1/Span;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/opencensus/proto/trace/v1/Span;->memoizedIsInitialized:B

    .line 7
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->traceId_:Lcom/google/protobuf/ByteString;

    .line 8
    iput-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->spanId_:Lcom/google/protobuf/ByteString;

    .line 9
    iput-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->parentSpanId_:Lcom/google/protobuf/ByteString;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lio/opencensus/proto/trace/v1/Span;->kind_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$b<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lio/opencensus/proto/trace/v1/Span;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/opencensus/proto/trace/v1/Span$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/opencensus/proto/trace/v1/Span;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lio/opencensus/proto/trace/v1/Span;-><init>()V

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_d

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 15
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    goto/16 :goto_2

    .line 16
    :sswitch_0
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->resource_:Lio/opencensus/proto/resource/v1/Resource;

    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {v2}, Lio/opencensus/proto/resource/v1/Resource;->toBuilder()Lio/opencensus/proto/resource/v1/Resource$b;

    move-result-object v4

    .line 18
    :cond_1
    invoke-static {}, Lio/opencensus/proto/resource/v1/Resource;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/opencensus/proto/resource/v1/Resource;

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->resource_:Lio/opencensus/proto/resource/v1/Resource;

    if-eqz v4, :cond_0

    .line 19
    invoke-virtual {v4, v2}, Lio/opencensus/proto/resource/v1/Resource$b;->i0(Lio/opencensus/proto/resource/v1/Resource;)Lio/opencensus/proto/resource/v1/Resource$b;

    .line 20
    invoke-virtual {v4}, Lio/opencensus/proto/resource/v1/Resource$b;->Y()Lio/opencensus/proto/resource/v1/Resource;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->resource_:Lio/opencensus/proto/resource/v1/Resource;

    goto :goto_0

    .line 21
    :sswitch_1
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->tracestate_:Lio/opencensus/proto/trace/v1/Span$Tracestate;

    if-eqz v2, :cond_2

    .line 22
    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/Span$Tracestate;->toBuilder()Lio/opencensus/proto/trace/v1/Span$Tracestate$b;

    move-result-object v4

    .line 23
    :cond_2
    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$Tracestate;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/opencensus/proto/trace/v1/Span$Tracestate;

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->tracestate_:Lio/opencensus/proto/trace/v1/Span$Tracestate;

    if-eqz v4, :cond_0

    .line 24
    invoke-virtual {v4, v2}, Lio/opencensus/proto/trace/v1/Span$Tracestate$b;->i0(Lio/opencensus/proto/trace/v1/Span$Tracestate;)Lio/opencensus/proto/trace/v1/Span$Tracestate$b;

    .line 25
    invoke-virtual {v4}, Lio/opencensus/proto/trace/v1/Span$Tracestate$b;->Y()Lio/opencensus/proto/trace/v1/Span$Tracestate;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->tracestate_:Lio/opencensus/proto/trace/v1/Span$Tracestate;

    goto :goto_0

    .line 26
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    .line 27
    iput v2, p0, Lio/opencensus/proto/trace/v1/Span;->kind_:I

    goto :goto_0

    .line 28
    :sswitch_3
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->childSpanCount_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_3

    .line 29
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 30
    :cond_3
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->childSpanCount_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 31
    invoke-virtual {v4, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 32
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->childSpanCount_:Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    .line 33
    :sswitch_4
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->sameProcessAsParentSpan_:Lcom/google/protobuf/BoolValue;

    if-eqz v2, :cond_4

    .line 34
    invoke-virtual {v2}, Lcom/google/protobuf/BoolValue;->toBuilder()Lcom/google/protobuf/BoolValue$b;

    move-result-object v4

    .line 35
    :cond_4
    invoke-static {}, Lcom/google/protobuf/BoolValue;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/BoolValue;

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->sameProcessAsParentSpan_:Lcom/google/protobuf/BoolValue;

    if-eqz v4, :cond_0

    .line 36
    invoke-virtual {v4, v2}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    .line 37
    invoke-virtual {v4}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->sameProcessAsParentSpan_:Lcom/google/protobuf/BoolValue;

    goto/16 :goto_0

    .line 38
    :sswitch_5
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->status_:Lio/opencensus/proto/trace/v1/Status;

    if-eqz v2, :cond_5

    .line 39
    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/Status;->toBuilder()Lio/opencensus/proto/trace/v1/Status$b;

    move-result-object v4

    .line 40
    :cond_5
    invoke-static {}, Lio/opencensus/proto/trace/v1/Status;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/opencensus/proto/trace/v1/Status;

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->status_:Lio/opencensus/proto/trace/v1/Status;

    if-eqz v4, :cond_0

    .line 41
    invoke-virtual {v4, v2}, Lio/opencensus/proto/trace/v1/Status$b;->g0(Lio/opencensus/proto/trace/v1/Status;)Lio/opencensus/proto/trace/v1/Status$b;

    .line 42
    invoke-virtual {v4}, Lio/opencensus/proto/trace/v1/Status$b;->Y()Lio/opencensus/proto/trace/v1/Status;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->status_:Lio/opencensus/proto/trace/v1/Status;

    goto/16 :goto_0

    .line 43
    :sswitch_6
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->links_:Lio/opencensus/proto/trace/v1/Span$Links;

    if-eqz v2, :cond_6

    .line 44
    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/Span$Links;->toBuilder()Lio/opencensus/proto/trace/v1/Span$Links$b;

    move-result-object v4

    .line 45
    :cond_6
    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$Links;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/opencensus/proto/trace/v1/Span$Links;

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->links_:Lio/opencensus/proto/trace/v1/Span$Links;

    if-eqz v4, :cond_0

    .line 46
    invoke-virtual {v4, v2}, Lio/opencensus/proto/trace/v1/Span$Links$b;->i0(Lio/opencensus/proto/trace/v1/Span$Links;)Lio/opencensus/proto/trace/v1/Span$Links$b;

    .line 47
    invoke-virtual {v4}, Lio/opencensus/proto/trace/v1/Span$Links$b;->Y()Lio/opencensus/proto/trace/v1/Span$Links;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->links_:Lio/opencensus/proto/trace/v1/Span$Links;

    goto/16 :goto_0

    .line 48
    :sswitch_7
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->timeEvents_:Lio/opencensus/proto/trace/v1/Span$TimeEvents;

    if-eqz v2, :cond_7

    .line 49
    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/Span$TimeEvents;->toBuilder()Lio/opencensus/proto/trace/v1/Span$TimeEvents$b;

    move-result-object v4

    .line 50
    :cond_7
    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$TimeEvents;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/opencensus/proto/trace/v1/Span$TimeEvents;

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->timeEvents_:Lio/opencensus/proto/trace/v1/Span$TimeEvents;

    if-eqz v4, :cond_0

    .line 51
    invoke-virtual {v4, v2}, Lio/opencensus/proto/trace/v1/Span$TimeEvents$b;->i0(Lio/opencensus/proto/trace/v1/Span$TimeEvents;)Lio/opencensus/proto/trace/v1/Span$TimeEvents$b;

    .line 52
    invoke-virtual {v4}, Lio/opencensus/proto/trace/v1/Span$TimeEvents$b;->Y()Lio/opencensus/proto/trace/v1/Span$TimeEvents;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->timeEvents_:Lio/opencensus/proto/trace/v1/Span$TimeEvents;

    goto/16 :goto_0

    .line 53
    :sswitch_8
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->stackTrace_:Lio/opencensus/proto/trace/v1/StackTrace;

    if-eqz v2, :cond_8

    .line 54
    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/StackTrace;->toBuilder()Lio/opencensus/proto/trace/v1/StackTrace$b;

    move-result-object v4

    .line 55
    :cond_8
    invoke-static {}, Lio/opencensus/proto/trace/v1/StackTrace;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/opencensus/proto/trace/v1/StackTrace;

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->stackTrace_:Lio/opencensus/proto/trace/v1/StackTrace;

    if-eqz v4, :cond_0

    .line 56
    invoke-virtual {v4, v2}, Lio/opencensus/proto/trace/v1/StackTrace$b;->g0(Lio/opencensus/proto/trace/v1/StackTrace;)Lio/opencensus/proto/trace/v1/StackTrace$b;

    .line 57
    invoke-virtual {v4}, Lio/opencensus/proto/trace/v1/StackTrace$b;->Y()Lio/opencensus/proto/trace/v1/StackTrace;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->stackTrace_:Lio/opencensus/proto/trace/v1/StackTrace;

    goto/16 :goto_0

    .line 58
    :sswitch_9
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->attributes_:Lio/opencensus/proto/trace/v1/Span$Attributes;

    if-eqz v2, :cond_9

    .line 59
    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/Span$Attributes;->toBuilder()Lio/opencensus/proto/trace/v1/Span$Attributes$c;

    move-result-object v4

    .line 60
    :cond_9
    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$Attributes;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/opencensus/proto/trace/v1/Span$Attributes;

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->attributes_:Lio/opencensus/proto/trace/v1/Span$Attributes;

    if-eqz v4, :cond_0

    .line 61
    invoke-virtual {v4, v2}, Lio/opencensus/proto/trace/v1/Span$Attributes$c;->i0(Lio/opencensus/proto/trace/v1/Span$Attributes;)Lio/opencensus/proto/trace/v1/Span$Attributes$c;

    .line 62
    invoke-virtual {v4}, Lio/opencensus/proto/trace/v1/Span$Attributes$c;->Y()Lio/opencensus/proto/trace/v1/Span$Attributes;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->attributes_:Lio/opencensus/proto/trace/v1/Span$Attributes;

    goto/16 :goto_0

    .line 63
    :sswitch_a
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->endTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v2, :cond_a

    .line 64
    invoke-virtual {v2}, Lcom/google/protobuf/Timestamp;->toBuilder()Lcom/google/protobuf/Timestamp$b;

    move-result-object v4

    .line 65
    :cond_a
    invoke-static {}, Lcom/google/protobuf/Timestamp;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Timestamp;

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->endTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v4, :cond_0

    .line 66
    invoke-virtual {v4, v2}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    .line 67
    invoke-virtual {v4}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->endTime_:Lcom/google/protobuf/Timestamp;

    goto/16 :goto_0

    .line 68
    :sswitch_b
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->startTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v2, :cond_b

    .line 69
    invoke-virtual {v2}, Lcom/google/protobuf/Timestamp;->toBuilder()Lcom/google/protobuf/Timestamp$b;

    move-result-object v4

    .line 70
    :cond_b
    invoke-static {}, Lcom/google/protobuf/Timestamp;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Timestamp;

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->startTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v4, :cond_0

    .line 71
    invoke-virtual {v4, v2}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    .line 72
    invoke-virtual {v4}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->startTime_:Lcom/google/protobuf/Timestamp;

    goto/16 :goto_0

    .line 73
    :sswitch_c
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->name_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v2, :cond_c

    .line 74
    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/TruncatableString;->toBuilder()Lio/opencensus/proto/trace/v1/TruncatableString$b;

    move-result-object v4

    .line 75
    :cond_c
    invoke-static {}, Lio/opencensus/proto/trace/v1/TruncatableString;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/opencensus/proto/trace/v1/TruncatableString;

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->name_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v4, :cond_0

    .line 76
    invoke-virtual {v4, v2}, Lio/opencensus/proto/trace/v1/TruncatableString$b;->g0(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString$b;

    .line 77
    invoke-virtual {v4}, Lio/opencensus/proto/trace/v1/TruncatableString$b;->Y()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->name_:Lio/opencensus/proto/trace/v1/TruncatableString;

    goto/16 :goto_0

    .line 78
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->parentSpanId_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 79
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->spanId_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 80
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->traceId_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_10
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 81
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 82
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 83
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 85
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 86
    throw p1

    .line 87
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 88
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0xa -> :sswitch_f
        0x12 -> :sswitch_e
        0x1a -> :sswitch_d
        0x22 -> :sswitch_c
        0x2a -> :sswitch_b
        0x32 -> :sswitch_a
        0x3a -> :sswitch_9
        0x42 -> :sswitch_8
        0x4a -> :sswitch_7
        0x52 -> :sswitch_6
        0x5a -> :sswitch_5
        0x62 -> :sswitch_4
        0x6a -> :sswitch_3
        0x70 -> :sswitch_2
        0x7a -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/opencensus/proto/trace/v1/Span$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/opencensus/proto/trace/v1/Span;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$10002(Lio/opencensus/proto/trace/v1/Span;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span;->spanId_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$10102(Lio/opencensus/proto/trace/v1/Span;Lio/opencensus/proto/trace/v1/Span$Tracestate;)Lio/opencensus/proto/trace/v1/Span$Tracestate;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span;->tracestate_:Lio/opencensus/proto/trace/v1/Span$Tracestate;

    return-object p1
.end method

.method static synthetic access$10202(Lio/opencensus/proto/trace/v1/Span;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span;->parentSpanId_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$10302(Lio/opencensus/proto/trace/v1/Span;Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span;->name_:Lio/opencensus/proto/trace/v1/TruncatableString;

    return-object p1
.end method

.method static synthetic access$10400(Lio/opencensus/proto/trace/v1/Span;)I
    .locals 0

    iget p0, p0, Lio/opencensus/proto/trace/v1/Span;->kind_:I

    return p0
.end method

.method static synthetic access$10402(Lio/opencensus/proto/trace/v1/Span;I)I
    .locals 0

    iput p1, p0, Lio/opencensus/proto/trace/v1/Span;->kind_:I

    return p1
.end method

.method static synthetic access$10502(Lio/opencensus/proto/trace/v1/Span;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span;->startTime_:Lcom/google/protobuf/Timestamp;

    return-object p1
.end method

.method static synthetic access$10602(Lio/opencensus/proto/trace/v1/Span;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span;->endTime_:Lcom/google/protobuf/Timestamp;

    return-object p1
.end method

.method static synthetic access$10702(Lio/opencensus/proto/trace/v1/Span;Lio/opencensus/proto/trace/v1/Span$Attributes;)Lio/opencensus/proto/trace/v1/Span$Attributes;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span;->attributes_:Lio/opencensus/proto/trace/v1/Span$Attributes;

    return-object p1
.end method

.method static synthetic access$10802(Lio/opencensus/proto/trace/v1/Span;Lio/opencensus/proto/trace/v1/StackTrace;)Lio/opencensus/proto/trace/v1/StackTrace;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span;->stackTrace_:Lio/opencensus/proto/trace/v1/StackTrace;

    return-object p1
.end method

.method static synthetic access$10902(Lio/opencensus/proto/trace/v1/Span;Lio/opencensus/proto/trace/v1/Span$TimeEvents;)Lio/opencensus/proto/trace/v1/Span$TimeEvents;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span;->timeEvents_:Lio/opencensus/proto/trace/v1/Span$TimeEvents;

    return-object p1
.end method

.method static synthetic access$11002(Lio/opencensus/proto/trace/v1/Span;Lio/opencensus/proto/trace/v1/Span$Links;)Lio/opencensus/proto/trace/v1/Span$Links;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span;->links_:Lio/opencensus/proto/trace/v1/Span$Links;

    return-object p1
.end method

.method static synthetic access$11102(Lio/opencensus/proto/trace/v1/Span;Lio/opencensus/proto/trace/v1/Status;)Lio/opencensus/proto/trace/v1/Status;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span;->status_:Lio/opencensus/proto/trace/v1/Status;

    return-object p1
.end method

.method static synthetic access$11202(Lio/opencensus/proto/trace/v1/Span;Lio/opencensus/proto/resource/v1/Resource;)Lio/opencensus/proto/resource/v1/Resource;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span;->resource_:Lio/opencensus/proto/resource/v1/Resource;

    return-object p1
.end method

.method static synthetic access$11302(Lio/opencensus/proto/trace/v1/Span;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span;->sameProcessAsParentSpan_:Lcom/google/protobuf/BoolValue;

    return-object p1
.end method

.method static synthetic access$11402(Lio/opencensus/proto/trace/v1/Span;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span;->childSpanCount_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$11500(Lio/opencensus/proto/trace/v1/Span;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$11600()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/Span;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$9700()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9902(Lio/opencensus/proto/trace/v1/Span;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/Span;->traceId_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/opencensus/proto/trace/v1/Span;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/Span;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/Span;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/j;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/opencensus/proto/trace/v1/Span$d;
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/Span;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/Span;

    invoke-virtual {v0}, Lio/opencensus/proto/trace/v1/Span;->toBuilder()Lio/opencensus/proto/trace/v1/Span$d;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/opencensus/proto/trace/v1/Span;)Lio/opencensus/proto/trace/v1/Span$d;
    .locals 1

    .line 2
    sget-object v0, Lio/opencensus/proto/trace/v1/Span;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/Span;

    invoke-virtual {v0}, Lio/opencensus/proto/trace/v1/Span;->toBuilder()Lio/opencensus/proto/trace/v1/Span$d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/opencensus/proto/trace/v1/Span$d;->j0(Lio/opencensus/proto/trace/v1/Span;)Lio/opencensus/proto/trace/v1/Span$d;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/opencensus/proto/trace/v1/Span;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/Span;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/Span;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/opencensus/proto/trace/v1/Span;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/Span;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/opencensus/proto/trace/v1/Span;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/opencensus/proto/trace/v1/Span;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/opencensus/proto/trace/v1/Span;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/opencensus/proto/trace/v1/Span;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/opencensus/proto/trace/v1/Span;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/opencensus/proto/trace/v1/Span;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/opencensus/proto/trace/v1/Span;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/opencensus/proto/trace/v1/Span;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/Span;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/opencensus/proto/trace/v1/Span;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span;

    return-object p0
.end method

.method public static parseFrom([B)Lio/opencensus/proto/trace/v1/Span;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/opencensus/proto/trace/v1/Span;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/Span;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/opencensus/proto/trace/v1/Span;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/Span;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/trace/v1/Span;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/trace/v1/Span;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/opencensus/proto/trace/v1/Span;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/opencensus/proto/trace/v1/Span;

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getTraceId()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->getTraceId()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getSpanId()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->getSpanId()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasTracestate()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->hasTracestate()Z

    move-result v3

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 9
    :goto_2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasTracestate()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getTracestate()Lio/opencensus/proto/trace/v1/Span$Tracestate;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->getTracestate()Lio/opencensus/proto/trace/v1/Span$Tracestate;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/opencensus/proto/trace/v1/Span$Tracestate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 12
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getParentSpanId()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->getParentSpanId()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_8

    .line 14
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasName()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->hasName()Z

    move-result v3

    if-ne v1, v3, :cond_8

    const/4 v1, 0x1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    .line 15
    :goto_5
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasName()Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v1, :cond_9

    .line 16
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->getName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/opencensus/proto/trace/v1/TruncatableString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_6
    if-eqz v1, :cond_b

    .line 18
    iget v1, p0, Lio/opencensus/proto/trace/v1/Span;->kind_:I

    iget v3, p1, Lio/opencensus/proto/trace/v1/Span;->kind_:I

    if-ne v1, v3, :cond_b

    const/4 v1, 0x1

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_c

    .line 19
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasStartTime()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->hasStartTime()Z

    move-result v3

    if-ne v1, v3, :cond_c

    const/4 v1, 0x1

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    .line 20
    :goto_8
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasStartTime()Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v1, :cond_d

    .line 21
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getStartTime()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    .line 22
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->getStartTime()Lcom/google/protobuf/Timestamp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_9

    :cond_d
    const/4 v1, 0x0

    :cond_e
    :goto_9
    if-eqz v1, :cond_f

    .line 23
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasEndTime()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->hasEndTime()Z

    move-result v3

    if-ne v1, v3, :cond_f

    const/4 v1, 0x1

    goto :goto_a

    :cond_f
    const/4 v1, 0x0

    .line 24
    :goto_a
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasEndTime()Z

    move-result v3

    if-eqz v3, :cond_11

    if-eqz v1, :cond_10

    .line 25
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getEndTime()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->getEndTime()Lcom/google/protobuf/Timestamp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_b

    :cond_10
    const/4 v1, 0x0

    :cond_11
    :goto_b
    if-eqz v1, :cond_12

    .line 27
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasAttributes()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->hasAttributes()Z

    move-result v3

    if-ne v1, v3, :cond_12

    const/4 v1, 0x1

    goto :goto_c

    :cond_12
    const/4 v1, 0x0

    .line 28
    :goto_c
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasAttributes()Z

    move-result v3

    if-eqz v3, :cond_14

    if-eqz v1, :cond_13

    .line 29
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getAttributes()Lio/opencensus/proto/trace/v1/Span$Attributes;

    move-result-object v1

    .line 30
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->getAttributes()Lio/opencensus/proto/trace/v1/Span$Attributes;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/opencensus/proto/trace/v1/Span$Attributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_d

    :cond_13
    const/4 v1, 0x0

    :cond_14
    :goto_d
    if-eqz v1, :cond_15

    .line 31
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasStackTrace()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->hasStackTrace()Z

    move-result v3

    if-ne v1, v3, :cond_15

    const/4 v1, 0x1

    goto :goto_e

    :cond_15
    const/4 v1, 0x0

    .line 32
    :goto_e
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasStackTrace()Z

    move-result v3

    if-eqz v3, :cond_17

    if-eqz v1, :cond_16

    .line 33
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getStackTrace()Lio/opencensus/proto/trace/v1/StackTrace;

    move-result-object v1

    .line 34
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->getStackTrace()Lio/opencensus/proto/trace/v1/StackTrace;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/opencensus/proto/trace/v1/StackTrace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_f

    :cond_16
    const/4 v1, 0x0

    :cond_17
    :goto_f
    if-eqz v1, :cond_18

    .line 35
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasTimeEvents()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->hasTimeEvents()Z

    move-result v3

    if-ne v1, v3, :cond_18

    const/4 v1, 0x1

    goto :goto_10

    :cond_18
    const/4 v1, 0x0

    .line 36
    :goto_10
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasTimeEvents()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v1, :cond_19

    .line 37
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getTimeEvents()Lio/opencensus/proto/trace/v1/Span$TimeEvents;

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->getTimeEvents()Lio/opencensus/proto/trace/v1/Span$TimeEvents;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/opencensus/proto/trace/v1/Span$TimeEvents;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_11

    :cond_19
    const/4 v1, 0x0

    :cond_1a
    :goto_11
    if-eqz v1, :cond_1b

    .line 39
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasLinks()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->hasLinks()Z

    move-result v3

    if-ne v1, v3, :cond_1b

    const/4 v1, 0x1

    goto :goto_12

    :cond_1b
    const/4 v1, 0x0

    .line 40
    :goto_12
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasLinks()Z

    move-result v3

    if-eqz v3, :cond_1d

    if-eqz v1, :cond_1c

    .line 41
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getLinks()Lio/opencensus/proto/trace/v1/Span$Links;

    move-result-object v1

    .line 42
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->getLinks()Lio/opencensus/proto/trace/v1/Span$Links;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/opencensus/proto/trace/v1/Span$Links;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_13

    :cond_1c
    const/4 v1, 0x0

    :cond_1d
    :goto_13
    if-eqz v1, :cond_1e

    .line 43
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasStatus()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->hasStatus()Z

    move-result v3

    if-ne v1, v3, :cond_1e

    const/4 v1, 0x1

    goto :goto_14

    :cond_1e
    const/4 v1, 0x0

    .line 44
    :goto_14
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasStatus()Z

    move-result v3

    if-eqz v3, :cond_20

    if-eqz v1, :cond_1f

    .line 45
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getStatus()Lio/opencensus/proto/trace/v1/Status;

    move-result-object v1

    .line 46
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->getStatus()Lio/opencensus/proto/trace/v1/Status;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/opencensus/proto/trace/v1/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_15

    :cond_1f
    const/4 v1, 0x0

    :cond_20
    :goto_15
    if-eqz v1, :cond_21

    .line 47
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasResource()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->hasResource()Z

    move-result v3

    if-ne v1, v3, :cond_21

    const/4 v1, 0x1

    goto :goto_16

    :cond_21
    const/4 v1, 0x0

    .line 48
    :goto_16
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasResource()Z

    move-result v3

    if-eqz v3, :cond_23

    if-eqz v1, :cond_22

    .line 49
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getResource()Lio/opencensus/proto/resource/v1/Resource;

    move-result-object v1

    .line 50
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->getResource()Lio/opencensus/proto/resource/v1/Resource;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/opencensus/proto/resource/v1/Resource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_17

    :cond_22
    const/4 v1, 0x0

    :cond_23
    :goto_17
    if-eqz v1, :cond_24

    .line 51
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasSameProcessAsParentSpan()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->hasSameProcessAsParentSpan()Z

    move-result v3

    if-ne v1, v3, :cond_24

    const/4 v1, 0x1

    goto :goto_18

    :cond_24
    const/4 v1, 0x0

    .line 52
    :goto_18
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasSameProcessAsParentSpan()Z

    move-result v3

    if-eqz v3, :cond_26

    if-eqz v1, :cond_25

    .line 53
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getSameProcessAsParentSpan()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    .line 54
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->getSameProcessAsParentSpan()Lcom/google/protobuf/BoolValue;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    goto :goto_19

    :cond_25
    const/4 v1, 0x0

    :cond_26
    :goto_19
    if-eqz v1, :cond_27

    .line 55
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasChildSpanCount()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->hasChildSpanCount()Z

    move-result v3

    if-ne v1, v3, :cond_27

    const/4 v1, 0x1

    goto :goto_1a

    :cond_27
    const/4 v1, 0x0

    .line 56
    :goto_1a
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasChildSpanCount()Z

    move-result v3

    if-eqz v3, :cond_29

    if-eqz v1, :cond_28

    .line 57
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getChildSpanCount()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 58
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/Span;->getChildSpanCount()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    goto :goto_1b

    :cond_28
    const/4 v1, 0x0

    :cond_29
    :goto_1b
    if-eqz v1, :cond_2a

    .line 59
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_1c

    :cond_2a
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method public getAttributes()Lio/opencensus/proto/trace/v1/Span$Attributes;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->attributes_:Lio/opencensus/proto/trace/v1/Span$Attributes;

    if-nez v0, :cond_0

    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$Attributes;->getDefaultInstance()Lio/opencensus/proto/trace/v1/Span$Attributes;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAttributesOrBuilder()Lio/opencensus/proto/trace/v1/Span$c;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getAttributes()Lio/opencensus/proto/trace/v1/Span$Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getChildSpanCount()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->childSpanCount_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getChildSpanCountOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getChildSpanCount()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getDefaultInstanceForType()Lio/opencensus/proto/trace/v1/Span;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getDefaultInstanceForType()Lio/opencensus/proto/trace/v1/Span;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/opencensus/proto/trace/v1/Span;
    .locals 1

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/Span;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/Span;

    return-object v0
.end method

.method public getEndTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->endTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEndTimeOrBuilder()Lcom/google/protobuf/z2;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getEndTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lio/opencensus/proto/trace/v1/Span$SpanKind;
    .locals 1

    .line 1
    iget v0, p0, Lio/opencensus/proto/trace/v1/Span;->kind_:I

    invoke-static {v0}, Lio/opencensus/proto/trace/v1/Span$SpanKind;->valueOf(I)Lio/opencensus/proto/trace/v1/Span$SpanKind;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/opencensus/proto/trace/v1/Span$SpanKind;->UNRECOGNIZED:Lio/opencensus/proto/trace/v1/Span$SpanKind;

    :cond_0
    return-object v0
.end method

.method public getKindValue()I
    .locals 1

    iget v0, p0, Lio/opencensus/proto/trace/v1/Span;->kind_:I

    return v0
.end method

.method public getLinks()Lio/opencensus/proto/trace/v1/Span$Links;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->links_:Lio/opencensus/proto/trace/v1/Span$Links;

    if-nez v0, :cond_0

    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$Links;->getDefaultInstance()Lio/opencensus/proto/trace/v1/Span$Links;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLinksOrBuilder()Lio/opencensus/proto/trace/v1/Span$f;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getLinks()Lio/opencensus/proto/trace/v1/Span$Links;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lio/opencensus/proto/trace/v1/TruncatableString;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->name_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-nez v0, :cond_0

    invoke-static {}, Lio/opencensus/proto/trace/v1/TruncatableString;->getDefaultInstance()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNameOrBuilder()Lio/opencensus/proto/trace/v1/k;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v0

    return-object v0
.end method

.method public getParentSpanId()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->parentSpanId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/trace/v1/Span;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/trace/v1/Span;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getResource()Lio/opencensus/proto/resource/v1/Resource;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->resource_:Lio/opencensus/proto/resource/v1/Resource;

    if-nez v0, :cond_0

    invoke-static {}, Lio/opencensus/proto/resource/v1/Resource;->getDefaultInstance()Lio/opencensus/proto/resource/v1/Resource;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResourceOrBuilder()Lio/opencensus/proto/resource/v1/a;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getResource()Lio/opencensus/proto/resource/v1/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getSameProcessAsParentSpan()Lcom/google/protobuf/BoolValue;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->sameProcessAsParentSpan_:Lcom/google/protobuf/BoolValue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSameProcessAsParentSpanOrBuilder()Lcom/google/protobuf/l;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getSameProcessAsParentSpan()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span;->traceId_:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->traceId_:Lcom/google/protobuf/ByteString;

    .line 4
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->h(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span;->spanId_:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 6
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->spanId_:Lcom/google/protobuf/ByteString;

    .line 7
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->h(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span;->parentSpanId_:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 9
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/Span;->parentSpanId_:Lcom/google/protobuf/ByteString;

    .line 10
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->h(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span;->name_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 12
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_4
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span;->startTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 14
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getStartTime()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_5
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span;->endTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 16
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getEndTime()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_6
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span;->attributes_:Lio/opencensus/proto/trace/v1/Span$Attributes;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 18
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getAttributes()Lio/opencensus/proto/trace/v1/Span$Attributes;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_7
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span;->stackTrace_:Lio/opencensus/proto/trace/v1/StackTrace;

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    .line 20
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getStackTrace()Lio/opencensus/proto/trace/v1/StackTrace;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_8
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span;->timeEvents_:Lio/opencensus/proto/trace/v1/Span$TimeEvents;

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    .line 22
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getTimeEvents()Lio/opencensus/proto/trace/v1/Span$TimeEvents;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_9
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span;->links_:Lio/opencensus/proto/trace/v1/Span$Links;

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    .line 24
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getLinks()Lio/opencensus/proto/trace/v1/Span$Links;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_a
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span;->status_:Lio/opencensus/proto/trace/v1/Status;

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    .line 26
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getStatus()Lio/opencensus/proto/trace/v1/Status;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_b
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span;->sameProcessAsParentSpan_:Lcom/google/protobuf/BoolValue;

    if-eqz v1, :cond_c

    const/16 v1, 0xc

    .line 28
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getSameProcessAsParentSpan()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_c
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span;->childSpanCount_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_d

    const/16 v1, 0xd

    .line 30
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getChildSpanCount()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_d
    iget v1, p0, Lio/opencensus/proto/trace/v1/Span;->kind_:I

    sget-object v2, Lio/opencensus/proto/trace/v1/Span$SpanKind;->SPAN_KIND_UNSPECIFIED:Lio/opencensus/proto/trace/v1/Span$SpanKind;

    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/Span$SpanKind;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_e

    const/16 v1, 0xe

    .line 32
    iget v2, p0, Lio/opencensus/proto/trace/v1/Span;->kind_:I

    .line 33
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_e
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span;->tracestate_:Lio/opencensus/proto/trace/v1/Span$Tracestate;

    if-eqz v1, :cond_f

    const/16 v1, 0xf

    .line 35
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getTracestate()Lio/opencensus/proto/trace/v1/Span$Tracestate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_f
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span;->resource_:Lio/opencensus/proto/resource/v1/Resource;

    if-eqz v1, :cond_10

    const/16 v1, 0x10

    .line 37
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getResource()Lio/opencensus/proto/resource/v1/Resource;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    :cond_10
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSpanId()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->spanId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStackTrace()Lio/opencensus/proto/trace/v1/StackTrace;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->stackTrace_:Lio/opencensus/proto/trace/v1/StackTrace;

    if-nez v0, :cond_0

    invoke-static {}, Lio/opencensus/proto/trace/v1/StackTrace;->getDefaultInstance()Lio/opencensus/proto/trace/v1/StackTrace;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStackTraceOrBuilder()Lio/opencensus/proto/trace/v1/f;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getStackTrace()Lio/opencensus/proto/trace/v1/StackTrace;

    move-result-object v0

    return-object v0
.end method

.method public getStartTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->startTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStartTimeOrBuilder()Lcom/google/protobuf/z2;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getStartTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lio/opencensus/proto/trace/v1/Status;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->status_:Lio/opencensus/proto/trace/v1/Status;

    if-nez v0, :cond_0

    invoke-static {}, Lio/opencensus/proto/trace/v1/Status;->getDefaultInstance()Lio/opencensus/proto/trace/v1/Status;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStatusOrBuilder()Lio/opencensus/proto/trace/v1/g;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getStatus()Lio/opencensus/proto/trace/v1/Status;

    move-result-object v0

    return-object v0
.end method

.method public getTimeEvents()Lio/opencensus/proto/trace/v1/Span$TimeEvents;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->timeEvents_:Lio/opencensus/proto/trace/v1/Span$TimeEvents;

    if-nez v0, :cond_0

    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$TimeEvents;->getDefaultInstance()Lio/opencensus/proto/trace/v1/Span$TimeEvents;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTimeEventsOrBuilder()Lio/opencensus/proto/trace/v1/Span$h;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getTimeEvents()Lio/opencensus/proto/trace/v1/Span$TimeEvents;

    move-result-object v0

    return-object v0
.end method

.method public getTraceId()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->traceId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTracestate()Lio/opencensus/proto/trace/v1/Span$Tracestate;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->tracestate_:Lio/opencensus/proto/trace/v1/Span$Tracestate;

    if-nez v0, :cond_0

    invoke-static {}, Lio/opencensus/proto/trace/v1/Span$Tracestate;->getDefaultInstance()Lio/opencensus/proto/trace/v1/Span$Tracestate;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTracestateOrBuilder()Lio/opencensus/proto/trace/v1/Span$i;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getTracestate()Lio/opencensus/proto/trace/v1/Span$Tracestate;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->attributes_:Lio/opencensus/proto/trace/v1/Span$Attributes;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasChildSpanCount()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->childSpanCount_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEndTime()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->endTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLinks()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->links_:Lio/opencensus/proto/trace/v1/Span$Links;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasName()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->name_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResource()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->resource_:Lio/opencensus/proto/resource/v1/Resource;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSameProcessAsParentSpan()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->sameProcessAsParentSpan_:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStackTrace()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->stackTrace_:Lio/opencensus/proto/trace/v1/StackTrace;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStartTime()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->startTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStatus()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->status_:Lio/opencensus/proto/trace/v1/Status;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimeEvents()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->timeEvents_:Lio/opencensus/proto/trace/v1/Span$TimeEvents;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTracestate()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->tracestate_:Lio/opencensus/proto/trace/v1/Span$Tracestate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lio/opencensus/proto/trace/v1/Span;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getTraceId()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getSpanId()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasTracestate()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getTracestate()Lio/opencensus/proto/trace/v1/Span$Tracestate;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/Span$Tracestate;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getParentSpanId()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasName()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/TruncatableString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 10
    iget v1, p0, Lio/opencensus/proto/trace/v1/Span;->kind_:I

    add-int/2addr v0, v1

    .line 11
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasStartTime()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getStartTime()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Timestamp;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_3
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasEndTime()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getEndTime()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Timestamp;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_4
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getAttributes()Lio/opencensus/proto/trace/v1/Span$Attributes;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/Span$Attributes;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_5
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasStackTrace()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getStackTrace()Lio/opencensus/proto/trace/v1/StackTrace;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/StackTrace;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_6
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasTimeEvents()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 20
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getTimeEvents()Lio/opencensus/proto/trace/v1/Span$TimeEvents;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/Span$TimeEvents;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_7
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasLinks()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 22
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getLinks()Lio/opencensus/proto/trace/v1/Span$Links;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/Span$Links;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_8
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 24
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getStatus()Lio/opencensus/proto/trace/v1/Status;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/Status;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_9
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasResource()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 26
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getResource()Lio/opencensus/proto/resource/v1/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/resource/v1/Resource;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_a
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasSameProcessAsParentSpan()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 28
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getSameProcessAsParentSpan()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/BoolValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_b
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->hasChildSpanCount()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 30
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getChildSpanCount()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    mul-int/lit8 v0, v0, 0x1d

    .line 31
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/j;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/opencensus/proto/trace/v1/Span;

    const-class v2, Lio/opencensus/proto/trace/v1/Span$d;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/opencensus/proto/trace/v1/Span;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/opencensus/proto/trace/v1/Span;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->newBuilderForType()Lio/opencensus/proto/trace/v1/Span$d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/Span;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/trace/v1/Span$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->newBuilderForType()Lio/opencensus/proto/trace/v1/Span$d;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/opencensus/proto/trace/v1/Span$d;
    .locals 1

    .line 4
    invoke-static {}, Lio/opencensus/proto/trace/v1/Span;->newBuilder()Lio/opencensus/proto/trace/v1/Span$d;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/trace/v1/Span$d;
    .locals 2

    .line 5
    new-instance v0, Lio/opencensus/proto/trace/v1/Span$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/opencensus/proto/trace/v1/Span$d;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/opencensus/proto/trace/v1/Span$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->toBuilder()Lio/opencensus/proto/trace/v1/Span$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->toBuilder()Lio/opencensus/proto/trace/v1/Span$d;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/opencensus/proto/trace/v1/Span$d;
    .locals 2

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/Span;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/Span;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/opencensus/proto/trace/v1/Span$d;

    invoke-direct {v0, v1}, Lio/opencensus/proto/trace/v1/Span$d;-><init>(Lio/opencensus/proto/trace/v1/Span$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/opencensus/proto/trace/v1/Span$d;

    invoke-direct {v0, v1}, Lio/opencensus/proto/trace/v1/Span$d;-><init>(Lio/opencensus/proto/trace/v1/Span$a;)V

    .line 4
    invoke-virtual {v0, p0}, Lio/opencensus/proto/trace/v1/Span$d;->j0(Lio/opencensus/proto/trace/v1/Span;)Lio/opencensus/proto/trace/v1/Span$d;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->traceId_:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span;->traceId_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->r0(ILcom/google/protobuf/ByteString;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->spanId_:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span;->spanId_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->r0(ILcom/google/protobuf/ByteString;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->parentSpanId_:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 6
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/Span;->parentSpanId_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->r0(ILcom/google/protobuf/ByteString;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->name_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->startTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getStartTime()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->endTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getEndTime()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->attributes_:Lio/opencensus/proto/trace/v1/Span$Attributes;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 14
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getAttributes()Lio/opencensus/proto/trace/v1/Span$Attributes;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->stackTrace_:Lio/opencensus/proto/trace/v1/StackTrace;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    .line 16
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getStackTrace()Lio/opencensus/proto/trace/v1/StackTrace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->timeEvents_:Lio/opencensus/proto/trace/v1/Span$TimeEvents;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 18
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getTimeEvents()Lio/opencensus/proto/trace/v1/Span$TimeEvents;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->links_:Lio/opencensus/proto/trace/v1/Span$Links;

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 20
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getLinks()Lio/opencensus/proto/trace/v1/Span$Links;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 21
    :cond_9
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->status_:Lio/opencensus/proto/trace/v1/Status;

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    .line 22
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getStatus()Lio/opencensus/proto/trace/v1/Status;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 23
    :cond_a
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->sameProcessAsParentSpan_:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    .line 24
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getSameProcessAsParentSpan()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 25
    :cond_b
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->childSpanCount_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    .line 26
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getChildSpanCount()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 27
    :cond_c
    iget v0, p0, Lio/opencensus/proto/trace/v1/Span;->kind_:I

    sget-object v1, Lio/opencensus/proto/trace/v1/Span$SpanKind;->SPAN_KIND_UNSPECIFIED:Lio/opencensus/proto/trace/v1/Span$SpanKind;

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/Span$SpanKind;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_d

    const/16 v0, 0xe

    .line 28
    iget v1, p0, Lio/opencensus/proto/trace/v1/Span;->kind_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 29
    :cond_d
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->tracestate_:Lio/opencensus/proto/trace/v1/Span$Tracestate;

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    .line 30
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getTracestate()Lio/opencensus/proto/trace/v1/Span$Tracestate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 31
    :cond_e
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/Span;->resource_:Lio/opencensus/proto/resource/v1/Resource;

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    .line 32
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/Span;->getResource()Lio/opencensus/proto/resource/v1/Resource;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 33
    :cond_f
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
