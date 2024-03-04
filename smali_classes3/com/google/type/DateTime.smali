.class public final Lcom/google/type/DateTime;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/type/DateTime$c;,
        Lcom/google/type/DateTime$TimeOffsetCase;
    }
.end annotation


# static fields
.field public static final DAY_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/type/DateTime;

.field public static final HOURS_FIELD_NUMBER:I = 0x4

.field public static final MINUTES_FIELD_NUMBER:I = 0x5

.field public static final MONTH_FIELD_NUMBER:I = 0x2

.field public static final NANOS_FIELD_NUMBER:I = 0x7

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/type/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECONDS_FIELD_NUMBER:I = 0x6

.field public static final TIME_ZONE_FIELD_NUMBER:I = 0x9

.field public static final UTC_OFFSET_FIELD_NUMBER:I = 0x8

.field public static final YEAR_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private day_:I

.field private hours_:I

.field private memoizedIsInitialized:B

.field private minutes_:I

.field private month_:I

.field private nanos_:I

.field private seconds_:I

.field private timeOffsetCase_:I

.field private timeOffset_:Ljava/lang/Object;

.field private year_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/type/DateTime;

    invoke-direct {v0}, Lcom/google/type/DateTime;-><init>()V

    sput-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    .line 2
    new-instance v0, Lcom/google/type/DateTime$a;

    invoke-direct {v0}, Lcom/google/type/DateTime$a;-><init>()V

    sput-object v0, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lcom/google/type/DateTime;->memoizedIsInitialized:B

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

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lcom/google/type/DateTime;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/type/DateTime$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/google/type/DateTime;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_f

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    const/16 v4, 0x8

    if-eq v2, v4, :cond_d

    const/16 v5, 0x10

    if-eq v2, v5, :cond_c

    const/16 v5, 0x18

    if-eq v2, v5, :cond_b

    const/16 v5, 0x20

    if-eq v2, v5, :cond_a

    const/16 v5, 0x28

    if-eq v2, v5, :cond_9

    const/16 v5, 0x30

    if-eq v2, v5, :cond_8

    const/16 v5, 0x38

    if-eq v2, v5, :cond_7

    const/16 v5, 0x42

    const/4 v6, 0x0

    if-eq v2, v5, :cond_4

    const/16 v4, 0x4a

    if-eq v2, v4, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 14
    :cond_1
    iget v2, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    .line 15
    iget-object v2, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    check-cast v2, Lcom/google/type/TimeZone;

    invoke-virtual {v2}, Lcom/google/type/TimeZone;->toBuilder()Lcom/google/type/TimeZone$b;

    move-result-object v6

    .line 16
    :cond_2
    invoke-static {}, Lcom/google/type/TimeZone;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 17
    check-cast v2, Lcom/google/type/TimeZone;

    invoke-virtual {v6, v2}, Lcom/google/type/TimeZone$b;->g0(Lcom/google/type/TimeZone;)Lcom/google/type/TimeZone$b;

    .line 18
    invoke-virtual {v6}, Lcom/google/type/TimeZone$b;->Y()Lcom/google/type/TimeZone;

    move-result-object v2

    iput-object v2, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    .line 19
    :cond_3
    iput v3, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    goto :goto_0

    .line 20
    :cond_4
    iget v2, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    if-ne v2, v4, :cond_5

    .line 21
    iget-object v2, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/Duration;

    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v6

    .line 22
    :cond_5
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    if-eqz v6, :cond_6

    .line 23
    check-cast v2, Lcom/google/protobuf/Duration;

    invoke-virtual {v6, v2}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 24
    invoke-virtual {v6}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v2

    iput-object v2, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    .line 25
    :cond_6
    iput v4, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    goto/16 :goto_0

    .line 26
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v2

    iput v2, p0, Lcom/google/type/DateTime;->nanos_:I

    goto/16 :goto_0

    .line 27
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v2

    iput v2, p0, Lcom/google/type/DateTime;->seconds_:I

    goto/16 :goto_0

    .line 28
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v2

    iput v2, p0, Lcom/google/type/DateTime;->minutes_:I

    goto/16 :goto_0

    .line 29
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v2

    iput v2, p0, Lcom/google/type/DateTime;->hours_:I

    goto/16 :goto_0

    .line 30
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v2

    iput v2, p0, Lcom/google/type/DateTime;->day_:I

    goto/16 :goto_0

    .line 31
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v2

    iput v2, p0, Lcom/google/type/DateTime;->month_:I

    goto/16 :goto_0

    .line 32
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v2

    iput v2, p0, Lcom/google/type/DateTime;->year_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_e
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 33
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 34
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 36
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 37
    throw p1

    .line 38
    :cond_f
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 39
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/type/DateTime$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/type/DateTime;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/google/type/DateTime;I)I
    .locals 0

    iput p1, p0, Lcom/google/type/DateTime;->nanos_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/google/type/DateTime;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/type/DateTime;I)I
    .locals 0

    iput p1, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    return p1
.end method

.method static synthetic access$1300(Lcom/google/type/DateTime;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1400()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/type/DateTime;I)I
    .locals 0

    iput p1, p0, Lcom/google/type/DateTime;->year_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/type/DateTime;I)I
    .locals 0

    iput p1, p0, Lcom/google/type/DateTime;->month_:I

    return p1
.end method

.method static synthetic access$602(Lcom/google/type/DateTime;I)I
    .locals 0

    iput p1, p0, Lcom/google/type/DateTime;->day_:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/type/DateTime;I)I
    .locals 0

    iput p1, p0, Lcom/google/type/DateTime;->hours_:I

    return p1
.end method

.method static synthetic access$802(Lcom/google/type/DateTime;I)I
    .locals 0

    iput p1, p0, Lcom/google/type/DateTime;->minutes_:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/type/DateTime;I)I
    .locals 0

    iput p1, p0, Lcom/google/type/DateTime;->seconds_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/type/DateTime;
    .locals 1

    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/type/d;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/type/DateTime$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-virtual {v0}, Lcom/google/type/DateTime;->toBuilder()Lcom/google/type/DateTime$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/type/DateTime;)Lcom/google/type/DateTime$c;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-virtual {v0}, Lcom/google/type/DateTime;->toBuilder()Lcom/google/type/DateTime$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/type/DateTime$c;->g0(Lcom/google/type/DateTime;)Lcom/google/type/DateTime$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/type/DateTime;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lcom/google/type/DateTime;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/type/DateTime;

    .line 4
    invoke-virtual {p0}, Lcom/google/type/DateTime;->getYear()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/type/DateTime;->getYear()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/type/DateTime;->getMonth()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/type/DateTime;->getMonth()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/google/type/DateTime;->getDay()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/type/DateTime;->getDay()I

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/google/type/DateTime;->getHours()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/type/DateTime;->getHours()I

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/google/type/DateTime;->getMinutes()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/type/DateTime;->getMinutes()I

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/google/type/DateTime;->getSeconds()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/type/DateTime;->getSeconds()I

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    .line 10
    :cond_7
    invoke-virtual {p0}, Lcom/google/type/DateTime;->getNanos()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/type/DateTime;->getNanos()I

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 11
    :cond_8
    invoke-virtual {p0}, Lcom/google/type/DateTime;->getTimeOffsetCase()Lcom/google/type/DateTime$TimeOffsetCase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/type/DateTime;->getTimeOffsetCase()Lcom/google/type/DateTime$TimeOffsetCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 12
    :cond_9
    iget v1, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_b

    const/16 v2, 0x9

    if-eq v1, v2, :cond_a

    goto :goto_0

    .line 13
    :cond_a
    invoke-virtual {p0}, Lcom/google/type/DateTime;->getTimeZone()Lcom/google/type/TimeZone;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/type/DateTime;->getTimeZone()Lcom/google/type/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/type/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 14
    :cond_b
    invoke-virtual {p0}, Lcom/google/type/DateTime;->getUtcOffset()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/type/DateTime;->getUtcOffset()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 15
    :cond_c
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return v3

    :cond_d
    return v0
.end method

.method public getDay()I
    .locals 1

    iget v0, p0, Lcom/google/type/DateTime;->day_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/type/DateTime;->getDefaultInstanceForType()Lcom/google/type/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/type/DateTime;->getDefaultInstanceForType()Lcom/google/type/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/type/DateTime;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    return-object v0
.end method

.method public getHours()I
    .locals 1

    iget v0, p0, Lcom/google/type/DateTime;->hours_:I

    return v0
.end method

.method public getMinutes()I
    .locals 1

    iget v0, p0, Lcom/google/type/DateTime;->minutes_:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    iget v0, p0, Lcom/google/type/DateTime;->month_:I

    return v0
.end method

.method public getNanos()I
    .locals 1

    iget v0, p0, Lcom/google/type/DateTime;->nanos_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/type/DateTime;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getSeconds()I
    .locals 1

    iget v0, p0, Lcom/google/type/DateTime;->seconds_:I

    return v0
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
    iget v1, p0, Lcom/google/type/DateTime;->year_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->x(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lcom/google/type/DateTime;->month_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 5
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->x(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Lcom/google/type/DateTime;->day_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 7
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->x(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget v1, p0, Lcom/google/type/DateTime;->hours_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 9
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->x(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget v1, p0, Lcom/google/type/DateTime;->minutes_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 11
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->x(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget v1, p0, Lcom/google/type/DateTime;->seconds_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 13
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->x(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    iget v1, p0, Lcom/google/type/DateTime;->nanos_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 15
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->x(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_7
    iget v1, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 17
    iget-object v1, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/Duration;

    .line 18
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_8
    iget v1, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    .line 20
    iget-object v1, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    check-cast v1, Lcom/google/type/TimeZone;

    .line 21
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getTimeOffsetCase()Lcom/google/type/DateTime$TimeOffsetCase;
    .locals 1

    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    invoke-static {v0}, Lcom/google/type/DateTime$TimeOffsetCase;->forNumber(I)Lcom/google/type/DateTime$TimeOffsetCase;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZone()Lcom/google/type/TimeZone;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    check-cast v0, Lcom/google/type/TimeZone;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/type/TimeZone;->getDefaultInstance()Lcom/google/type/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZoneOrBuilder()Lcom/google/type/s;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    check-cast v0, Lcom/google/type/TimeZone;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/type/TimeZone;->getDefaultInstance()Lcom/google/type/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getUtcOffset()Lcom/google/protobuf/Duration;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Duration;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getUtcOffsetOrBuilder()Lcom/google/protobuf/v;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Duration;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Lcom/google/type/DateTime;->year_:I

    return v0
.end method

.method public hasTimeZone()Z
    .locals 2

    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUtcOffset()Z
    .locals 2

    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

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
    invoke-static {}, Lcom/google/type/DateTime;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lcom/google/type/DateTime;->getYear()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/type/DateTime;->getMonth()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lcom/google/type/DateTime;->getDay()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/google/type/DateTime;->getHours()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lcom/google/type/DateTime;->getMinutes()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lcom/google/type/DateTime;->getSeconds()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lcom/google/type/DateTime;->getNanos()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    iget v1, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lcom/google/type/DateTime;->getTimeZone()Lcom/google/type/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/type/TimeZone;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lcom/google/type/DateTime;->getUtcOffset()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 13
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/type/d;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/type/DateTime;

    const-class v2, Lcom/google/type/DateTime$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/type/DateTime;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/type/DateTime;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/type/DateTime;->newBuilderForType()Lcom/google/type/DateTime$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/type/DateTime;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/type/DateTime$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/type/DateTime;->newBuilderForType()Lcom/google/type/DateTime$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/type/DateTime$c;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/type/DateTime;->newBuilder()Lcom/google/type/DateTime$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/type/DateTime$c;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/type/DateTime$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/type/DateTime$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/type/DateTime$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/type/DateTime;

    invoke-direct {p1}, Lcom/google/type/DateTime;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/type/DateTime;->toBuilder()Lcom/google/type/DateTime$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/type/DateTime;->toBuilder()Lcom/google/type/DateTime$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/type/DateTime$c;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/type/DateTime$c;

    invoke-direct {v0, v1}, Lcom/google/type/DateTime$c;-><init>(Lcom/google/type/DateTime$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/type/DateTime$c;

    invoke-direct {v0, v1}, Lcom/google/type/DateTime$c;-><init>(Lcom/google/type/DateTime$a;)V

    invoke-virtual {v0, p0}, Lcom/google/type/DateTime$c;->g0(Lcom/google/type/DateTime;)Lcom/google/type/DateTime$c;

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
    iget v0, p0, Lcom/google/type/DateTime;->year_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/type/DateTime;->month_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    .line 5
    :cond_1
    iget v0, p0, Lcom/google/type/DateTime;->day_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    .line 7
    :cond_2
    iget v0, p0, Lcom/google/type/DateTime;->hours_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    .line 9
    :cond_3
    iget v0, p0, Lcom/google/type/DateTime;->minutes_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    .line 11
    :cond_4
    iget v0, p0, Lcom/google/type/DateTime;->seconds_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    .line 13
    :cond_5
    iget v0, p0, Lcom/google/type/DateTime;->nanos_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    .line 15
    :cond_6
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 16
    iget-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Duration;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_7
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    .line 18
    iget-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
