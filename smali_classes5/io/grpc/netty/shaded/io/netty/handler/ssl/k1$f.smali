.class final enum Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

.field public static final enum b:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

.field public static final enum c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

.field public static final enum d:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

.field private static final synthetic e:[Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    const-string v3, "STARTED_IMPLICITLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    .line 3
    new-instance v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    const-string v5, "STARTED_EXPLICITLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    .line 4
    new-instance v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    const-string v7, "FINISHED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->e:[Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

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

.method public static valueOf(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    return-object p0
.end method

.method public static values()[Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->e:[Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    invoke-virtual {v0}, [Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    return-object v0
.end method
