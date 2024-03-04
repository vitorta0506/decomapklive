.class public final Lcom/google/cloud/audit/ServiceAccountDelegationInfo;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/cloud/audit/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;,
        Lcom/google/cloud/audit/ServiceAccountDelegationInfo$AuthorityCase;,
        Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal;,
        Lcom/google/cloud/audit/ServiceAccountDelegationInfo$e;,
        Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal;,
        Lcom/google/cloud/audit/ServiceAccountDelegationInfo$d;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

.field public static final FIRST_PARTY_PRINCIPAL_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/audit/ServiceAccountDelegationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRINCIPAL_SUBJECT_FIELD_NUMBER:I = 0x3

.field public static final THIRD_PARTY_PRINCIPAL_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private authorityCase_:I

.field private authority_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile principalSubject_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    invoke-direct {v0}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;-><init>()V

    sput-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    .line 2
    new-instance v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$a;

    invoke-direct {v0}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$a;-><init>()V

    sput-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authorityCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->memoizedIsInitialized:B

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->principalSubject_:Ljava/lang/Object;

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
    iput p1, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authorityCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/cloud/audit/ServiceAccountDelegationInfo$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;-><init>()V

    .line 11
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_9

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_5

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 14
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 16
    iput-object v2, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->principalSubject_:Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_2
    iget v2, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authorityCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 18
    iget-object v2, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authority_:Ljava/lang/Object;

    check-cast v2, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal;

    .line 19
    invoke-virtual {v2}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal;->toBuilder()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal$b;

    move-result-object v5

    .line 20
    :cond_3
    invoke-static {}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    .line 21
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authority_:Ljava/lang/Object;

    if-eqz v5, :cond_4

    .line 22
    check-cast v2, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal;

    invoke-virtual {v5, v2}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal$b;->d0(Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal;)Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal$b;

    .line 23
    invoke-virtual {v5}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal$b;->Y()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal;

    move-result-object v2

    iput-object v2, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authority_:Ljava/lang/Object;

    .line 24
    :cond_4
    iput v3, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authorityCase_:I

    goto :goto_0

    .line 25
    :cond_5
    iget v2, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authorityCase_:I

    if-ne v2, v3, :cond_6

    .line 26
    iget-object v2, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authority_:Ljava/lang/Object;

    check-cast v2, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal;

    .line 27
    invoke-virtual {v2}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal;->toBuilder()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal$b;

    move-result-object v5

    .line 28
    :cond_6
    invoke-static {}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    .line 29
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authority_:Ljava/lang/Object;

    if-eqz v5, :cond_7

    .line 30
    check-cast v2, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal;

    invoke-virtual {v5, v2}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal$b;->d0(Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal;)Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal$b;

    .line 31
    invoke-virtual {v5}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal$b;->Y()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal;

    move-result-object v2

    iput-object v2, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authority_:Ljava/lang/Object;

    .line 32
    :cond_7
    iput v3, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authorityCase_:I
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
    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 39
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/cloud/audit/ServiceAccountDelegationInfo$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$2000()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/google/cloud/audit/ServiceAccountDelegationInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->principalSubject_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/google/cloud/audit/ServiceAccountDelegationInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->principalSubject_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/google/cloud/audit/ServiceAccountDelegationInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authority_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/google/cloud/audit/ServiceAccountDelegationInfo;I)I
    .locals 0

    iput p1, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authorityCase_:I

    return p1
.end method

.method static synthetic access$2500(Lcom/google/cloud/audit/ServiceAccountDelegationInfo;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$2600()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/cloud/audit/ServiceAccountDelegationInfo;
    .locals 1

    sget-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/cloud/audit/a;->k:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    invoke-virtual {v0}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->toBuilder()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/cloud/audit/ServiceAccountDelegationInfo;)Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    invoke-virtual {v0}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->toBuilder()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;->e0(Lcom/google/cloud/audit/ServiceAccountDelegationInfo;)Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/cloud/audit/ServiceAccountDelegationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/cloud/audit/ServiceAccountDelegationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/audit/ServiceAccountDelegationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/cloud/audit/ServiceAccountDelegationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/cloud/audit/ServiceAccountDelegationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/audit/ServiceAccountDelegationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/cloud/audit/ServiceAccountDelegationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/cloud/audit/ServiceAccountDelegationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/cloud/audit/ServiceAccountDelegationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/cloud/audit/ServiceAccountDelegationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/cloud/audit/ServiceAccountDelegationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/cloud/audit/ServiceAccountDelegationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/audit/ServiceAccountDelegationInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    .line 4
    invoke-virtual {p0}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->getPrincipalSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->getPrincipalSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->getAuthorityCase()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$AuthorityCase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->getAuthorityCase()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$AuthorityCase;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 6
    :cond_3
    iget v1, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authorityCase_:I

    if-eq v1, v0, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->getThirdPartyPrincipal()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->getThirdPartyPrincipal()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->getFirstPartyPrincipal()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->getFirstPartyPrincipal()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 9
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public getAuthorityCase()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$AuthorityCase;
    .locals 1

    iget v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authorityCase_:I

    invoke-static {v0}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$AuthorityCase;->forNumber(I)Lcom/google/cloud/audit/ServiceAccountDelegationInfo$AuthorityCase;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/cloud/audit/ServiceAccountDelegationInfo;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->getDefaultInstanceForType()Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->getDefaultInstanceForType()Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFirstPartyPrincipal()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authorityCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authority_:Ljava/lang/Object;

    check-cast v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal;->getDefaultInstance()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public getFirstPartyPrincipalOrBuilder()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$d;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authorityCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authority_:Ljava/lang/Object;

    check-cast v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal;->getDefaultInstance()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/audit/ServiceAccountDelegationInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPrincipalSubject()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->principalSubject_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->principalSubject_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPrincipalSubjectBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->principalSubject_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->principalSubject_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

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
    iget v1, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authorityCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authority_:Ljava/lang/Object;

    check-cast v1, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal;

    .line 4
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget v1, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authorityCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authority_:Ljava/lang/Object;

    check-cast v1, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal;

    .line 7
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->principalSubject_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 9
    iget-object v2, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->principalSubject_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getThirdPartyPrincipal()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authorityCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authority_:Ljava/lang/Object;

    check-cast v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal;->getDefaultInstance()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public getThirdPartyPrincipalOrBuilder()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$e;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authorityCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authority_:Ljava/lang/Object;

    check-cast v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal;->getDefaultInstance()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasFirstPartyPrincipal()Z
    .locals 2

    iget v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authorityCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasThirdPartyPrincipal()Z
    .locals 2

    iget v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authorityCase_:I

    const/4 v1, 0x2

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
    invoke-static {}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->getPrincipalSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    iget v1, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authorityCase_:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->getThirdPartyPrincipal()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->getFirstPartyPrincipal()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
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
    sget-object v0, Lcom/google/cloud/audit/a;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    const-class v2, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->newBuilder()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/cloud/audit/ServiceAccountDelegationInfo$a;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->newBuilderForType()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->newBuilderForType()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    invoke-direct {p1}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/ServiceAccountDelegationInfo;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;

    invoke-direct {v0, v1}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;-><init>(Lcom/google/cloud/audit/ServiceAccountDelegationInfo$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;

    invoke-direct {v0, v1}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;-><init>(Lcom/google/cloud/audit/ServiceAccountDelegationInfo$a;)V

    invoke-virtual {v0, p0}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;->e0(Lcom/google/cloud/audit/ServiceAccountDelegationInfo;)Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->toBuilder()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->toBuilder()Lcom/google/cloud/audit/ServiceAccountDelegationInfo$c;

    move-result-object v0

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
    iget v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authorityCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authority_:Ljava/lang/Object;

    check-cast v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$FirstPartyPrincipal;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authorityCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->authority_:Ljava/lang/Object;

    check-cast v0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo$ThirdPartyPrincipal;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->principalSubject_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 6
    iget-object v1, p0, Lcom/google/cloud/audit/ServiceAccountDelegationInfo;->principalSubject_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
