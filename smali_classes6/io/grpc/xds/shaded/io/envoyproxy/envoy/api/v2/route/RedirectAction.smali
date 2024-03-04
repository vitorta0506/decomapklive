.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$PathRewriteSpecifierCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$SchemeRewriteSpecifierCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$RedirectResponseCode;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

.field public static final HOST_REDIRECT_FIELD_NUMBER:I = 0x1

.field public static final HTTPS_REDIRECT_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_REDIRECT_FIELD_NUMBER:I = 0x2

.field public static final PORT_REDIRECT_FIELD_NUMBER:I = 0x8

.field public static final PREFIX_REWRITE_FIELD_NUMBER:I = 0x5

.field public static final RESPONSE_CODE_FIELD_NUMBER:I = 0x3

.field public static final SCHEME_REDIRECT_FIELD_NUMBER:I = 0x7

.field public static final STRIP_QUERY_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private volatile hostRedirect_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private pathRewriteSpecifierCase_:I

.field private pathRewriteSpecifier_:Ljava/lang/Object;

.field private portRedirect_:I

.field private responseCode_:I

.field private schemeRewriteSpecifierCase_:I

.field private schemeRewriteSpecifier_:Ljava/lang/Object;

.field private stripQuery_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifierCase_:I

    .line 9
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    const/4 v1, -0x1

    .line 10
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->memoizedIsInitialized:B

    const-string v1, ""

    .line 11
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->hostRedirect_:Ljava/lang/Object;

    .line 12
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->responseCode_:I

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifierCase_:I

    .line 5
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    const/4 p1, -0x1

    .line 6
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;-><init>()V

    .line 14
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    const/16 v4, 0xa

    if-eq v2, v4, :cond_8

    const/16 v4, 0x12

    if-eq v2, v4, :cond_7

    const/16 v4, 0x18

    if-eq v2, v4, :cond_6

    const/16 v4, 0x20

    if-eq v2, v4, :cond_5

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_4

    const/16 v4, 0x30

    if-eq v2, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_2

    const/16 v4, 0x40

    if-eq v2, v4, :cond_1

    .line 17
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->portRedirect_:I

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    .line 20
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifierCase_:I

    .line 21
    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifier_:Ljava/lang/Object;

    goto :goto_0

    .line 22
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v2

    iput-boolean v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->stripQuery_:Z

    goto :goto_0

    .line 23
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    .line 24
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    .line 25
    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifier_:Ljava/lang/Object;

    goto :goto_0

    .line 26
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifier_:Ljava/lang/Object;

    const/4 v2, 0x4

    .line 27
    iput v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifierCase_:I

    goto :goto_0

    .line 28
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    .line 29
    iput v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->responseCode_:I

    goto :goto_0

    .line 30
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 31
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    .line 32
    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifier_:Ljava/lang/Object;

    goto :goto_0

    .line 33
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 34
    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->hostRedirect_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_9
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 35
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 36
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 37
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 39
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 40
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifierCase_:I

    return p1
.end method

.method static synthetic access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    return p1
.end method

.method static synthetic access$1200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifier_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->hostRedirect_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->hostRedirect_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->portRedirect_:I

    return p1
.end method

.method static synthetic access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifier_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->responseCode_:I

    return p0
.end method

.method static synthetic access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->responseCode_:I

    return p1
.end method

.method static synthetic access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->stripQuery_:Z

    return p1
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/l;->g0:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getHostRedirect()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getHostRedirect()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getPortRedirect()I

    move-result v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getPortRedirect()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 8
    :cond_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->responseCode_:I

    iget v3, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->responseCode_:I

    if-eq v1, v3, :cond_4

    return v2

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getStripQuery()Z

    move-result v1

    .line 10
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getStripQuery()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 11
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getSchemeRewriteSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$SchemeRewriteSpecifierCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getSchemeRewriteSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$SchemeRewriteSpecifierCase;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 12
    :cond_6
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifierCase_:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_8

    const/4 v3, 0x7

    if-eq v1, v3, :cond_7

    goto :goto_0

    .line 13
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getSchemeRedirect()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getSchemeRedirect()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 15
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getHttpsRedirect()Z

    move-result v1

    .line 16
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getHttpsRedirect()Z

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    .line 17
    :cond_9
    :goto_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getPathRewriteSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$PathRewriteSpecifierCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getPathRewriteSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$PathRewriteSpecifierCase;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 18
    :cond_a
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_c

    const/4 v3, 0x5

    if-eq v1, v3, :cond_b

    goto :goto_1

    .line 19
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getPrefixRewrite()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getPrefixRewrite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 21
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getPathRedirect()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getPathRedirect()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 23
    :cond_d
    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    return-object v0
.end method

.method public getHostRedirect()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->hostRedirect_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->hostRedirect_:Ljava/lang/Object;

    return-object v0
.end method

.method public getHostRedirectBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->hostRedirect_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->hostRedirect_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHttpsRedirect()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifier_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPathRedirect()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifier_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifier_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getPathRedirectBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifier_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifier_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPathRewriteSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$PathRewriteSpecifierCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$PathRewriteSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$PathRewriteSpecifierCase;

    move-result-object v0

    return-object v0
.end method

.method public getPortRedirect()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->portRedirect_:I

    return v0
.end method

.method public getPrefixRewrite()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifier_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifier_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getPrefixRewriteBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifier_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifier_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getResponseCode()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$RedirectResponseCode;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->responseCode_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$RedirectResponseCode;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$RedirectResponseCode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$RedirectResponseCode;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$RedirectResponseCode;

    :cond_0
    return-object v0
.end method

.method public getResponseCodeValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->responseCode_:I

    return v0
.end method

.method public getSchemeRedirect()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifier_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifierCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifier_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getSchemeRedirectBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifier_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifierCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifier_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSchemeRewriteSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$SchemeRewriteSpecifierCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifierCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$SchemeRewriteSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$SchemeRewriteSpecifierCase;

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
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->hostRedirect_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->hostRedirect_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifier_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->responseCode_:I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$RedirectResponseCode;->MOVED_PERMANENTLY:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$RedirectResponseCode;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$RedirectResponseCode;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x3

    .line 7
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->responseCode_:I

    .line 8
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifierCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 10
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifier_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 12
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 14
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifier_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_5
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->stripQuery_:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 16
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_6
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifierCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 18
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifier_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_7
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->portRedirect_:I

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 20
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getStripQuery()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->stripQuery_:Z

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasHttpsRedirect()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPathRedirect()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrefixRewrite()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSchemeRedirect()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifierCase_:I

    const/4 v1, 0x7

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getHostRedirect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getPortRedirect()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->responseCode_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getStripQuery()Z

    move-result v1

    .line 7
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifierCase_:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getSchemeRedirect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getHttpsRedirect()Z

    move-result v1

    .line 11
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 12
    :goto_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    goto :goto_3

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getPrefixRewrite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getPathRedirect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    :goto_3
    mul-int/lit8 v0, v0, 0x1d

    .line 15
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/l;->h0:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->hostRedirect_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->hostRedirect_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifier_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->responseCode_:I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$RedirectResponseCode;->MOVED_PERMANENTLY:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$RedirectResponseCode;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$RedirectResponseCode;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    .line 6
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->responseCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 7
    :cond_2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifierCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifier_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 11
    :cond_3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->pathRewriteSpecifier_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 13
    :cond_4
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->stripQuery_:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 15
    :cond_5
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->schemeRewriteSpecifier_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 17
    :cond_6
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->portRedirect_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 18
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
