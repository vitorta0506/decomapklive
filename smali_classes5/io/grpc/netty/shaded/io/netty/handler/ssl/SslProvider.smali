.class public final enum Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

.field public static final enum JDK:Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

.field public static final enum OPENSSL:Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

.field public static final enum OPENSSL_REFCNT:Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    const-string v1, "JDK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;->JDK:Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    const-string v3, "OPENSSL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;->OPENSSL:Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    .line 3
    new-instance v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    const-string v5, "OPENSSL_REFCNT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;->OPENSSL_REFCNT:Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;->$VALUES:[Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static isAlpnSupported(Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;)Z
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown SslProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->g()Z

    move-result p0

    return p0

    .line 4
    :cond_2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r;->g()Z

    move-result p0

    return p0
.end method

.method static isTlsv13EnabledByDefault(Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;Ljava/security/Provider;)Z
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown SslProvider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->l()Z

    move-result p0

    return p0

    .line 4
    :cond_2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->j(Ljava/security/Provider;)Z

    move-result p0

    return p0
.end method

.method public static isTlsv13Supported(Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;->isTlsv13Supported(Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;Ljava/security/Provider;)Z

    move-result p0

    return p0
.end method

.method public static isTlsv13Supported(Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;Ljava/security/Provider;)Z
    .locals 2

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown SslProvider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->l()Z

    move-result p0

    return p0

    .line 5
    :cond_2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->l(Ljava/security/Provider;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    return-object p0
.end method

.method public static values()[Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;->$VALUES:[Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    invoke-virtual {v0}, [Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    return-object v0
.end method
