.class public final enum Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;

.field public static final enum GZIP:Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;

.field public static final enum NONE:Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;

.field public static final enum ZLIB:Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;

.field public static final enum ZLIB_OR_NONE:Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;

    const-string v1, "ZLIB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;

    const-string v3, "GZIP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;

    .line 3
    new-instance v3, Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;->NONE:Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;

    .line 4
    new-instance v5, Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;

    const-string v7, "ZLIB_OR_NONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;->ZLIB_OR_NONE:Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;->$VALUES:[Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;

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

.method public static valueOf(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;

    return-object p0
.end method

.method public static values()[Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;->$VALUES:[Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;

    invoke-virtual {v0}, [Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/netty/shaded/io/netty/handler/codec/compression/ZlibWrapper;

    return-object v0
.end method
