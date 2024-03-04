.class final enum Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

.field public static final enum b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

.field public static final enum c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

.field private static final synthetic d:[Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

    const-string v1, "INCREMENTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

    const-string v3, "NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

    .line 3
    new-instance v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

    const-string v5, "NEVER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;->d:[Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

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

.method public static valueOf(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

    return-object p0
.end method

.method public static values()[Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;->d:[Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

    invoke-virtual {v0}, [Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u$a;

    return-object v0
.end method
