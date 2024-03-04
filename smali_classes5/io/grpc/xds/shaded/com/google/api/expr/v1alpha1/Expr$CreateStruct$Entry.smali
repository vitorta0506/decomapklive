.class public final Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;,
        Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$KeyKindCase;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

.field public static final FIELD_KEY_FIELD_NUMBER:I = 0x2

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final MAP_KEY_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private id_:J

.field private keyKindCase_:I

.field private keyKind_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private value_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    invoke-direct {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKindCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->memoizedIsInitialized:B

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
    iput p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKindCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_9

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    const/16 v4, 0x8

    if-eq v2, v4, :cond_7

    const/16 v4, 0x12

    if-eq v2, v4, :cond_6

    const/16 v4, 0x1a

    const/4 v5, 0x0

    if-eq v2, v4, :cond_3

    const/16 v4, 0x22

    if-eq v2, v4, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 14
    :cond_1
    iget-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->value_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    move-result-object v5

    .line 16
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->value_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    if-eqz v5, :cond_0

    .line 17
    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;->j0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    .line 18
    invoke-virtual {v5}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->value_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    goto :goto_0

    .line 19
    :cond_3
    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKindCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 20
    iget-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKind_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    move-result-object v5

    .line 21
    :cond_4
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKind_:Ljava/lang/Object;

    if-eqz v5, :cond_5

    .line 22
    check-cast v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;->j0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;

    .line 23
    invoke-virtual {v5}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$c;->Y()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKind_:Ljava/lang/Object;

    .line 24
    :cond_5
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKindCase_:I

    goto :goto_0

    .line 25
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 26
    iput v3, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKindCase_:I

    .line 27
    iput-object v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKind_:Ljava/lang/Object;

    goto :goto_0

    .line 28
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v2

    iput-wide v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->id_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_8
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 29
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 30
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 31
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 33
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 34
    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$4300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4502(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->id_:J

    return-wide p1
.end method

.method static synthetic access$4600(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKind_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4602(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKind_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4702(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->value_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    return-object p1
.end method

.method static synthetic access$4802(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKindCase_:I

    return p1
.end method

.method static synthetic access$4900(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$5000()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->o:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;->g0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->getId()J

    move-result-wide v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->getId()J

    move-result-wide v3

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-eqz v6, :cond_2

    return v5

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->hasValue()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->hasValue()Z

    move-result v2

    if-eq v1, v2, :cond_3

    return v5

    .line 7
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->getValue()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->getValue()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v5

    .line 10
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->getKeyKindCase()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$KeyKindCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->getKeyKindCase()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$KeyKindCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v5

    .line 11
    :cond_5
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKindCase_:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    goto :goto_0

    .line 12
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->getMapKey()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->getMapKey()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v5

    .line 14
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->getFieldKey()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->getFieldKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v5

    .line 16
    :cond_8
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v5

    :cond_9
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->getDefaultInstanceForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->getDefaultInstanceForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    return-object v0
.end method

.method public getFieldKey()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKind_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKindCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKind_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getFieldKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKind_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6
    iget v2, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKindCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKind_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->id_:J

    return-wide v0
.end method

.method public getKeyKindCase()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$KeyKindCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKindCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$KeyKindCase;->forNumber(I)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$KeyKindCase;

    move-result-object v0

    return-object v0
.end method

.method public getMapKey()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v0

    return-object v0
.end method

.method public getMapKeyOrBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/d;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->PARSER:Lcom/google/protobuf/e2;

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
    iget-wide v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->id_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 3
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKindCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKind_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKindCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 7
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKind_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    .line 8
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iget-object v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->value_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->getValue()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getValue()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->value_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->getDefaultInstance()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getValueOrBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/d;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->getValue()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v0

    return-object v0
.end method

.method public hasFieldKey()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMapKey()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValue()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->value_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

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
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->getId()J

    move-result-wide v1

    .line 4
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->getValue()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_1
    iget v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKindCase_:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->getMapKey()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->getFieldKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 10
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/f;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    const-class v2, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->newBuilderForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->newBuilderForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->newBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    invoke-direct {p1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;-><init>(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;-><init>(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;->g0(Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;)Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry$b;

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
    iget-wide v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->id_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKind_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->keyKind_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->value_:Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr$CreateStruct$Entry;->getValue()Lio/grpc/xds/shaded/com/google/api/expr/v1alpha1/Expr;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
