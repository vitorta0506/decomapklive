.class public Lio/grpc/netty/shaded/io/netty/handler/ssl/r1;
.super Lio/grpc/netty/shaded/io/netty/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/netty/shaded/io/netty/util/a<",
        "Lio/grpc/netty/shaded/io/netty/handler/ssl/r1<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final e:Lio/grpc/netty/shaded/io/netty/util/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/j<",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/r1<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/r1$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r1$a;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/r1;->e:Lio/grpc/netty/shaded/io/netty/util/j;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/a;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/ssl/r1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r1;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/r1;->e:Lio/grpc/netty/shaded/io/netty/util/j;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/j;->c()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r1;-><init>(ILjava/lang/String;)V

    return-void
.end method
