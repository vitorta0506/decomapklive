.class public final enum Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

.field public static final enum FAILURE:Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

.field public static final enum START:Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

.field public static final enum SUCCESS:Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;->START:Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;->SUCCESS:Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

    .line 3
    new-instance v3, Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

    const-string v5, "FAILURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;->FAILURE:Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;->$VALUES:[Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

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

.method public static valueOf(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

    return-object p0
.end method

.method public static values()[Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;->$VALUES:[Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

    invoke-virtual {v0}, [Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/netty/shaded/io/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

    return-object v0
.end method
