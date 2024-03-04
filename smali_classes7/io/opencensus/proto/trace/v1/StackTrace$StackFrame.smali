.class public final Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/proto/trace/v1/StackTrace$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/proto/trace/v1/StackTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StackFrame"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
    }
.end annotation


# static fields
.field public static final COLUMN_NUMBER_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

.field public static final FILE_NAME_FIELD_NUMBER:I = 0x3

.field public static final FUNCTION_NAME_FIELD_NUMBER:I = 0x1

.field public static final LINE_NUMBER_FIELD_NUMBER:I = 0x4

.field public static final LOAD_MODULE_FIELD_NUMBER:I = 0x6

.field public static final ORIGINAL_FUNCTION_NAME_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_VERSION_FIELD_NUMBER:I = 0x7

.field private static final serialVersionUID:J


# instance fields
.field private columnNumber_:J

.field private fileName_:Lio/opencensus/proto/trace/v1/TruncatableString;

.field private functionName_:Lio/opencensus/proto/trace/v1/TruncatableString;

.field private lineNumber_:J

.field private loadModule_:Lio/opencensus/proto/trace/v1/Module;

.field private memoizedIsInitialized:B

.field private originalFunctionName_:Lio/opencensus/proto/trace/v1/TruncatableString;

.field private sourceVersion_:Lio/opencensus/proto/trace/v1/TruncatableString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    invoke-direct {v0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;-><init>()V

    sput-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    .line 2
    new-instance v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$a;

    invoke-direct {v0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$a;-><init>()V

    sput-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->memoizedIsInitialized:B

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->lineNumber_:J

    .line 8
    iput-wide v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->columnNumber_:J

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
    iput-byte p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/opencensus/proto/trace/v1/StackTrace$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_e

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_d

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_b

    const/16 v4, 0x12

    if-eq v2, v4, :cond_9

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_7

    const/16 v4, 0x20

    if-eq v2, v4, :cond_6

    const/16 v4, 0x28

    if-eq v2, v4, :cond_5

    const/16 v4, 0x32

    if-eq v2, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 14
    :cond_1
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->sourceVersion_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/TruncatableString;->toBuilder()Lio/opencensus/proto/trace/v1/TruncatableString$b;

    move-result-object v5

    .line 16
    :cond_2
    invoke-static {}, Lio/opencensus/proto/trace/v1/TruncatableString;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/opencensus/proto/trace/v1/TruncatableString;

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->sourceVersion_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v5, :cond_0

    .line 17
    invoke-virtual {v5, v2}, Lio/opencensus/proto/trace/v1/TruncatableString$b;->g0(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString$b;

    .line 18
    invoke-virtual {v5}, Lio/opencensus/proto/trace/v1/TruncatableString$b;->Y()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->sourceVersion_:Lio/opencensus/proto/trace/v1/TruncatableString;

    goto :goto_0

    .line 19
    :cond_3
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->loadModule_:Lio/opencensus/proto/trace/v1/Module;

    if-eqz v2, :cond_4

    .line 20
    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/Module;->toBuilder()Lio/opencensus/proto/trace/v1/Module$b;

    move-result-object v5

    .line 21
    :cond_4
    invoke-static {}, Lio/opencensus/proto/trace/v1/Module;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/opencensus/proto/trace/v1/Module;

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->loadModule_:Lio/opencensus/proto/trace/v1/Module;

    if-eqz v5, :cond_0

    .line 22
    invoke-virtual {v5, v2}, Lio/opencensus/proto/trace/v1/Module$b;->h0(Lio/opencensus/proto/trace/v1/Module;)Lio/opencensus/proto/trace/v1/Module$b;

    .line 23
    invoke-virtual {v5}, Lio/opencensus/proto/trace/v1/Module$b;->Y()Lio/opencensus/proto/trace/v1/Module;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->loadModule_:Lio/opencensus/proto/trace/v1/Module;

    goto :goto_0

    .line 24
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v2

    iput-wide v2, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->columnNumber_:J

    goto :goto_0

    .line 25
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v2

    iput-wide v2, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->lineNumber_:J

    goto :goto_0

    .line 26
    :cond_7
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->fileName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v2, :cond_8

    .line 27
    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/TruncatableString;->toBuilder()Lio/opencensus/proto/trace/v1/TruncatableString$b;

    move-result-object v5

    .line 28
    :cond_8
    invoke-static {}, Lio/opencensus/proto/trace/v1/TruncatableString;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/opencensus/proto/trace/v1/TruncatableString;

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->fileName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v5, :cond_0

    .line 29
    invoke-virtual {v5, v2}, Lio/opencensus/proto/trace/v1/TruncatableString$b;->g0(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString$b;

    .line 30
    invoke-virtual {v5}, Lio/opencensus/proto/trace/v1/TruncatableString$b;->Y()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->fileName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    goto/16 :goto_0

    .line 31
    :cond_9
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->originalFunctionName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v2, :cond_a

    .line 32
    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/TruncatableString;->toBuilder()Lio/opencensus/proto/trace/v1/TruncatableString$b;

    move-result-object v5

    .line 33
    :cond_a
    invoke-static {}, Lio/opencensus/proto/trace/v1/TruncatableString;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/opencensus/proto/trace/v1/TruncatableString;

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->originalFunctionName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v5, :cond_0

    .line 34
    invoke-virtual {v5, v2}, Lio/opencensus/proto/trace/v1/TruncatableString$b;->g0(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString$b;

    .line 35
    invoke-virtual {v5}, Lio/opencensus/proto/trace/v1/TruncatableString$b;->Y()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->originalFunctionName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    goto/16 :goto_0

    .line 36
    :cond_b
    iget-object v2, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->functionName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v2, :cond_c

    .line 37
    invoke-virtual {v2}, Lio/opencensus/proto/trace/v1/TruncatableString;->toBuilder()Lio/opencensus/proto/trace/v1/TruncatableString$b;

    move-result-object v5

    .line 38
    :cond_c
    invoke-static {}, Lio/opencensus/proto/trace/v1/TruncatableString;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/opencensus/proto/trace/v1/TruncatableString;

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->functionName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v5, :cond_0

    .line 39
    invoke-virtual {v5, v2}, Lio/opencensus/proto/trace/v1/TruncatableString$b;->g0(Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString$b;

    .line 40
    invoke-virtual {v5}, Lio/opencensus/proto/trace/v1/TruncatableString$b;->Y()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v2

    iput-object v2, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->functionName_:Lio/opencensus/proto/trace/v1/TruncatableString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_d
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 41
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 42
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 43
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 45
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 46
    throw p1

    .line 47
    :cond_e
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 48
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/opencensus/proto/trace/v1/StackTrace$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1002(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->sourceVersion_:Lio/opencensus/proto/trace/v1/TruncatableString;

    return-object p1
.end method

.method static synthetic access$1100(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->functionName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    return-object p1
.end method

.method static synthetic access$502(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->originalFunctionName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    return-object p1
.end method

.method static synthetic access$602(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;Lio/opencensus/proto/trace/v1/TruncatableString;)Lio/opencensus/proto/trace/v1/TruncatableString;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->fileName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    return-object p1
.end method

.method static synthetic access$702(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;J)J
    .locals 0

    iput-wide p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->lineNumber_:J

    return-wide p1
.end method

.method static synthetic access$802(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;J)J
    .locals 0

    iput-wide p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->columnNumber_:J

    return-wide p1
.end method

.method static synthetic access$902(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;Lio/opencensus/proto/trace/v1/Module;)Lio/opencensus/proto/trace/v1/Module;
    .locals 0

    iput-object p1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->loadModule_:Lio/opencensus/proto/trace/v1/Module;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/j;->C:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    invoke-virtual {v0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->toBuilder()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
    .locals 1

    .line 2
    sget-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    invoke-virtual {v0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->toBuilder()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->h0(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    return-object p0
.end method

.method public static parseFrom([B)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasFunctionName()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasFunctionName()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasFunctionName()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getFunctionName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getFunctionName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/opencensus/proto/trace/v1/TruncatableString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 8
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasOriginalFunctionName()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasOriginalFunctionName()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 9
    :goto_2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasOriginalFunctionName()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 10
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getOriginalFunctionName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getOriginalFunctionName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/opencensus/proto/trace/v1/TruncatableString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 12
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasFileName()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasFileName()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 13
    :goto_4
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasFileName()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 14
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getFileName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getFileName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/opencensus/proto/trace/v1/TruncatableString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 16
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getLineNumber()J

    move-result-wide v1

    .line 17
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getLineNumber()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_c

    .line 18
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getColumnNumber()J

    move-result-wide v1

    .line 19
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getColumnNumber()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_d

    .line 20
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasLoadModule()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasLoadModule()Z

    move-result v2

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    .line 21
    :goto_8
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasLoadModule()Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v1, :cond_e

    .line 22
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getLoadModule()Lio/opencensus/proto/trace/v1/Module;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getLoadModule()Lio/opencensus/proto/trace/v1/Module;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/opencensus/proto/trace/v1/Module;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    :cond_f
    :goto_9
    if-eqz v1, :cond_10

    .line 24
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasSourceVersion()Z

    move-result v1

    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasSourceVersion()Z

    move-result v2

    if-ne v1, v2, :cond_10

    const/4 v1, 0x1

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    .line 25
    :goto_a
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasSourceVersion()Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v1, :cond_11

    .line 26
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getSourceVersion()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getSourceVersion()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/opencensus/proto/trace/v1/TruncatableString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_b

    :cond_11
    const/4 v1, 0x0

    :cond_12
    :goto_b
    if-eqz v1, :cond_13

    .line 28
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_c

    :cond_13
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public getColumnNumber()J
    .locals 2

    iget-wide v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->columnNumber_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getDefaultInstanceForType()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getDefaultInstanceForType()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;
    .locals 1

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    return-object v0
.end method

.method public getFileName()Lio/opencensus/proto/trace/v1/TruncatableString;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->fileName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-nez v0, :cond_0

    invoke-static {}, Lio/opencensus/proto/trace/v1/TruncatableString;->getDefaultInstance()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFileNameOrBuilder()Lio/opencensus/proto/trace/v1/k;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getFileName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionName()Lio/opencensus/proto/trace/v1/TruncatableString;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->functionName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-nez v0, :cond_0

    invoke-static {}, Lio/opencensus/proto/trace/v1/TruncatableString;->getDefaultInstance()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFunctionNameOrBuilder()Lio/opencensus/proto/trace/v1/k;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getFunctionName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()J
    .locals 2

    iget-wide v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->lineNumber_:J

    return-wide v0
.end method

.method public getLoadModule()Lio/opencensus/proto/trace/v1/Module;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->loadModule_:Lio/opencensus/proto/trace/v1/Module;

    if-nez v0, :cond_0

    invoke-static {}, Lio/opencensus/proto/trace/v1/Module;->getDefaultInstance()Lio/opencensus/proto/trace/v1/Module;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLoadModuleOrBuilder()Lio/opencensus/proto/trace/v1/b;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getLoadModule()Lio/opencensus/proto/trace/v1/Module;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalFunctionName()Lio/opencensus/proto/trace/v1/TruncatableString;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->originalFunctionName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-nez v0, :cond_0

    invoke-static {}, Lio/opencensus/proto/trace/v1/TruncatableString;->getDefaultInstance()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOriginalFunctionNameOrBuilder()Lio/opencensus/proto/trace/v1/k;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getOriginalFunctionName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->functionName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getFunctionName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->originalFunctionName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getOriginalFunctionName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->fileName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getFileName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-wide v1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->lineNumber_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    .line 9
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-wide v1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->columnNumber_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    const/4 v3, 0x5

    .line 11
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->loadModule_:Lio/opencensus/proto/trace/v1/Module;

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 13
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getLoadModule()Lio/opencensus/proto/trace/v1/Module;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    iget-object v1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->sourceVersion_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 15
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getSourceVersion()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSourceVersion()Lio/opencensus/proto/trace/v1/TruncatableString;
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->sourceVersion_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-nez v0, :cond_0

    invoke-static {}, Lio/opencensus/proto/trace/v1/TruncatableString;->getDefaultInstance()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSourceVersionOrBuilder()Lio/opencensus/proto/trace/v1/k;
    .locals 1

    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getSourceVersion()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasFileName()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->fileName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFunctionName()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->functionName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLoadModule()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->loadModule_:Lio/opencensus/proto/trace/v1/Module;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOriginalFunctionName()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->originalFunctionName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSourceVersion()Z
    .locals 1

    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->sourceVersion_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasFunctionName()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getFunctionName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/TruncatableString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasOriginalFunctionName()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getOriginalFunctionName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/TruncatableString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasFileName()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getFileName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/TruncatableString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getLineNumber()J

    move-result-wide v1

    .line 10
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getColumnNumber()J

    move-result-wide v1

    .line 12
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasLoadModule()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getLoadModule()Lio/opencensus/proto/trace/v1/Module;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/Module;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_4
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->hasSourceVersion()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getSourceVersion()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v1

    invoke-virtual {v1}, Lio/opencensus/proto/trace/v1/TruncatableString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    mul-int/lit8 v0, v0, 0x1d

    .line 17
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/j;->D:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    const-class v2, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->newBuilderForType()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->newBuilderForType()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->newBuilder()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
    .locals 2

    .line 5
    new-instance v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/opencensus/proto/trace/v1/StackTrace$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->toBuilder()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->toBuilder()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;
    .locals 2

    .line 3
    sget-object v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->DEFAULT_INSTANCE:Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    invoke-direct {v0, v1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;-><init>(Lio/opencensus/proto/trace/v1/StackTrace$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    invoke-direct {v0, v1}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;-><init>(Lio/opencensus/proto/trace/v1/StackTrace$a;)V

    .line 4
    invoke-virtual {v0, p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;->h0(Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;)Lio/opencensus/proto/trace/v1/StackTrace$StackFrame$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->functionName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getFunctionName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->originalFunctionName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getOriginalFunctionName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->fileName_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getFileName()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-wide v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->lineNumber_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    .line 8
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 9
    :cond_3
    iget-wide v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->columnNumber_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v2, 0x5

    .line 10
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 11
    :cond_4
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->loadModule_:Lio/opencensus/proto/trace/v1/Module;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getLoadModule()Lio/opencensus/proto/trace/v1/Module;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->sourceVersion_:Lio/opencensus/proto/trace/v1/TruncatableString;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 14
    invoke-virtual {p0}, Lio/opencensus/proto/trace/v1/StackTrace$StackFrame;->getSourceVersion()Lio/opencensus/proto/trace/v1/TruncatableString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
