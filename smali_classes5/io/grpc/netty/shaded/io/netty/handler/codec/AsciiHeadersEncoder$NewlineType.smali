.class public final enum Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

.field public static final enum CRLF:Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

.field public static final enum LF:Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

    const-string v1, "LF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;->LF:Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

    const-string v3, "CRLF"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;->CRLF:Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;->$VALUES:[Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

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

.method public static valueOf(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

    return-object p0
.end method

.method public static values()[Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;->$VALUES:[Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

    invoke-virtual {v0}, [Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/netty/shaded/io/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

    return-object v0
.end method
