.class public final enum Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;

.field public static final enum DOMAIN:Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;

.field public static final enum IPv4:Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;

.field public static final enum IPv6:Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;

.field public static final enum UNKNOWN:Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;


# instance fields
.field private final b:B


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;

    const-string v1, "IPv4"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;->IPv4:Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;

    const-string v4, "DOMAIN"

    const/4 v5, 0x3

    invoke-direct {v1, v4, v3, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;->DOMAIN:Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;

    .line 3
    new-instance v4, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;

    const-string v6, "IPv6"

    const/4 v7, 0x2

    const/4 v8, 0x4

    invoke-direct {v4, v6, v7, v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;-><init>(Ljava/lang/String;IB)V

    sput-object v4, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;->IPv6:Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;

    .line 4
    new-instance v6, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;

    const-string v9, "UNKNOWN"

    const/4 v10, -0x1

    invoke-direct {v6, v9, v5, v10}, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;-><init>(Ljava/lang/String;IB)V

    sput-object v6, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;->UNKNOWN:Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;

    new-array v8, v8, [Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v7

    aput-object v6, v8, v5

    .line 5
    sput-object v8, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;->$VALUES:[Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;

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
    iput-byte p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;->b:B

    return-void
.end method

.method public static fromByte(B)Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;->valueOf(B)Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(B)Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;
    .locals 5

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;->values()[Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget-byte v4, v3, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;->b:B

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;->UNKNOWN:Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;

    return-object p0
.end method

.method public static values()[Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;->$VALUES:[Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;

    invoke-virtual {v0}, [Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    iget-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/socks/SocksAddressType;->b:B

    return v0
.end method
