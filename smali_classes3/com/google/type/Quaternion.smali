.class public final Lcom/google/type/Quaternion;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/type/Quaternion$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/type/Quaternion;",
            ">;"
        }
    .end annotation
.end field

.field public static final W_FIELD_NUMBER:I = 0x4

.field public static final X_FIELD_NUMBER:I = 0x1

.field public static final Y_FIELD_NUMBER:I = 0x2

.field public static final Z_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private w_:D

.field private x_:D

.field private y_:D

.field private z_:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/type/Quaternion;

    invoke-direct {v0}, Lcom/google/type/Quaternion;-><init>()V

    sput-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    .line 2
    new-instance v0, Lcom/google/type/Quaternion$a;

    invoke-direct {v0}, Lcom/google/type/Quaternion$a;-><init>()V

    sput-object v0, Lcom/google/type/Quaternion;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/type/Quaternion;->memoizedIsInitialized:B

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
    iput-byte p1, p0, Lcom/google/type/Quaternion;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/type/Quaternion$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/type/Quaternion;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lcom/google/type/Quaternion;-><init>()V

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/16 v4, 0x9

    if-eq v2, v4, :cond_4

    const/16 v4, 0x11

    if-eq v2, v4, :cond_3

    const/16 v4, 0x19

    if-eq v2, v4, :cond_2

    const/16 v4, 0x21

    if-eq v2, v4, :cond_1

    .line 11
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->t()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/type/Quaternion;->w_:D

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->t()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/type/Quaternion;->z_:D

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->t()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/type/Quaternion;->y_:D

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->t()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/type/Quaternion;->x_:D
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 16
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 20
    throw p1

    .line 21
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/type/Quaternion$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/type/Quaternion;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/type/Quaternion;D)D
    .locals 0

    iput-wide p1, p0, Lcom/google/type/Quaternion;->x_:D

    return-wide p1
.end method

.method static synthetic access$502(Lcom/google/type/Quaternion;D)D
    .locals 0

    iput-wide p1, p0, Lcom/google/type/Quaternion;->y_:D

    return-wide p1
.end method

.method static synthetic access$602(Lcom/google/type/Quaternion;D)D
    .locals 0

    iput-wide p1, p0, Lcom/google/type/Quaternion;->z_:D

    return-wide p1
.end method

.method static synthetic access$702(Lcom/google/type/Quaternion;D)D
    .locals 0

    iput-wide p1, p0, Lcom/google/type/Quaternion;->w_:D

    return-wide p1
.end method

.method static synthetic access$800(Lcom/google/type/Quaternion;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$900()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lcom/google/type/Quaternion;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/type/Quaternion;
    .locals 1

    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/type/q;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/type/Quaternion$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    invoke-virtual {v0}, Lcom/google/type/Quaternion;->toBuilder()Lcom/google/type/Quaternion$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/type/Quaternion;)Lcom/google/type/Quaternion$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    invoke-virtual {v0}, Lcom/google/type/Quaternion;->toBuilder()Lcom/google/type/Quaternion$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/type/Quaternion$b;->g0(Lcom/google/type/Quaternion;)Lcom/google/type/Quaternion$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/type/Quaternion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/type/Quaternion;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/type/Quaternion;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/type/Quaternion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/type/Quaternion;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/type/Quaternion;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/type/Quaternion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/type/Quaternion;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/type/Quaternion;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/type/Quaternion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/type/Quaternion;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/type/Quaternion;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/type/Quaternion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/type/Quaternion;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/type/Quaternion;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/type/Quaternion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/type/Quaternion;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/type/Quaternion;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/type/Quaternion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/type/Quaternion;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/type/Quaternion;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/type/Quaternion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/type/Quaternion;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/type/Quaternion;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/type/Quaternion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/type/Quaternion;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/type/Quaternion;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/type/Quaternion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/type/Quaternion;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/type/Quaternion;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/type/Quaternion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/type/Quaternion;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/type/Quaternion;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/type/Quaternion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/type/Quaternion;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/type/Quaternion;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/type/Quaternion;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/type/Quaternion;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lcom/google/type/Quaternion;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/type/Quaternion;

    .line 4
    invoke-virtual {p0}, Lcom/google/type/Quaternion;->getX()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 5
    invoke-virtual {p1}, Lcom/google/type/Quaternion;->getX()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-eqz v6, :cond_2

    return v5

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/google/type/Quaternion;->getY()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 7
    invoke-virtual {p1}, Lcom/google/type/Quaternion;->getY()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v6, v1, v3

    if-eqz v6, :cond_3

    return v5

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/google/type/Quaternion;->getZ()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 9
    invoke-virtual {p1}, Lcom/google/type/Quaternion;->getZ()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v6, v1, v3

    if-eqz v6, :cond_4

    return v5

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/google/type/Quaternion;->getW()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 11
    invoke-virtual {p1}, Lcom/google/type/Quaternion;->getW()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v6, v1, v3

    if-eqz v6, :cond_5

    return v5

    .line 12
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v5

    :cond_6
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/type/Quaternion;->getDefaultInstanceForType()Lcom/google/type/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/type/Quaternion;->getDefaultInstanceForType()Lcom/google/type/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/type/Quaternion;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/type/Quaternion;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/type/Quaternion;->PARSER:Lcom/google/protobuf/e2;

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
    iget-wide v1, p0, Lcom/google/type/Quaternion;->x_:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 3
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->j(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-wide v1, p0, Lcom/google/type/Quaternion;->y_:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    .line 5
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->j(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-wide v1, p0, Lcom/google/type/Quaternion;->z_:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_3

    const/4 v5, 0x3

    .line 7
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->j(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-wide v1, p0, Lcom/google/type/Quaternion;->w_:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_4

    const/4 v3, 0x4

    .line 9
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->j(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getW()D
    .locals 2

    iget-wide v0, p0, Lcom/google/type/Quaternion;->w_:D

    return-wide v0
.end method

.method public getX()D
    .locals 2

    iget-wide v0, p0, Lcom/google/type/Quaternion;->x_:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget-wide v0, p0, Lcom/google/type/Quaternion;->y_:D

    return-wide v0
.end method

.method public getZ()D
    .locals 2

    iget-wide v0, p0, Lcom/google/type/Quaternion;->z_:D

    return-wide v0
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
    invoke-static {}, Lcom/google/type/Quaternion;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lcom/google/type/Quaternion;->getX()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/type/Quaternion;->getY()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lcom/google/type/Quaternion;->getZ()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/google/type/Quaternion;->getW()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/type/q;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/type/Quaternion;

    const-class v2, Lcom/google/type/Quaternion$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/type/Quaternion;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/type/Quaternion;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/type/Quaternion;->newBuilderForType()Lcom/google/type/Quaternion$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/type/Quaternion;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/type/Quaternion$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/type/Quaternion;->newBuilderForType()Lcom/google/type/Quaternion$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/type/Quaternion$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/type/Quaternion;->newBuilder()Lcom/google/type/Quaternion$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/type/Quaternion$b;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/type/Quaternion$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/type/Quaternion$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/type/Quaternion$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/type/Quaternion;

    invoke-direct {p1}, Lcom/google/type/Quaternion;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/type/Quaternion;->toBuilder()Lcom/google/type/Quaternion$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/type/Quaternion;->toBuilder()Lcom/google/type/Quaternion$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/type/Quaternion$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/type/Quaternion;->DEFAULT_INSTANCE:Lcom/google/type/Quaternion;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/type/Quaternion$b;

    invoke-direct {v0, v1}, Lcom/google/type/Quaternion$b;-><init>(Lcom/google/type/Quaternion$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/type/Quaternion$b;

    invoke-direct {v0, v1}, Lcom/google/type/Quaternion$b;-><init>(Lcom/google/type/Quaternion$a;)V

    invoke-virtual {v0, p0}, Lcom/google/type/Quaternion$b;->g0(Lcom/google/type/Quaternion;)Lcom/google/type/Quaternion$b;

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
    iget-wide v0, p0, Lcom/google/type/Quaternion;->x_:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 2
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->t0(ID)V

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/google/type/Quaternion;->y_:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 4
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->t0(ID)V

    .line 5
    :cond_1
    iget-wide v0, p0, Lcom/google/type/Quaternion;->z_:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    .line 6
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->t0(ID)V

    .line 7
    :cond_2
    iget-wide v0, p0, Lcom/google/type/Quaternion;->w_:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v2, 0x4

    .line 8
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->t0(ID)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
