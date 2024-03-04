.class public final enum Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/channelz/v1/Security$Tls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CipherSuiteCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;

.field public static final enum CIPHERSUITE_NOT_SET:Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;

.field public static final enum OTHER_NAME:Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;

.field public static final enum STANDARD_NAME:Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;

    const-string v1, "STANDARD_NAME"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;->STANDARD_NAME:Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;

    .line 2
    new-instance v1, Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;

    const-string v4, "OTHER_NAME"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;->OTHER_NAME:Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;

    .line 3
    new-instance v4, Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;

    const-string v6, "CIPHERSUITE_NOT_SET"

    invoke-direct {v4, v6, v5, v2}, Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;->CIPHERSUITE_NOT_SET:Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;

    const/4 v6, 0x3

    new-array v6, v6, [Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 4
    sput-object v6, Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;->$VALUES:[Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;->OTHER_NAME:Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;->STANDARD_NAME:Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;->CIPHERSUITE_NOT_SET:Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;->forNumber(I)Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;->$VALUES:[Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;

    invoke-virtual {v0}, [Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/Security$Tls$CipherSuiteCase;->value:I

    return v0
.end method
