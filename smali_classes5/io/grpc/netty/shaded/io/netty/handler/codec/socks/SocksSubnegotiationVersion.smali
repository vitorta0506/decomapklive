.class public final enum Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;

.field public static final enum AUTH_PASSWORD:Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;

.field public static final enum UNKNOWN:Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;


# instance fields
.field private final b:B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;

    const-string v1, "AUTH_PASSWORD"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;->AUTH_PASSWORD:Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;

    const-string v4, "UNKNOWN"

    const/4 v5, -0x1

    invoke-direct {v1, v4, v3, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;->UNKNOWN:Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;

    const/4 v4, 0x2

    new-array v4, v4, [Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;->$VALUES:[Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-byte p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;->b:B

    return-void
.end method

.method public static fromByte(B)Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;->valueOf(B)Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(B)Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;
    .locals 5

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;->values()[Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget-byte v4, v3, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;->b:B

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;->UNKNOWN:Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;

    return-object p0
.end method

.method public static values()[Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;->$VALUES:[Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;

    invoke-virtual {v0}, [Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    iget-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksSubnegotiationVersion;->b:B

    return v0
.end method
