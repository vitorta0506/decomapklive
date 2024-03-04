.class final Lio/grpc/netty/shaded/io/netty/channel/b$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "k"
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/channel/b;

.field private final b:Ljava/lang/Runnable;

.field private final c:Ljava/lang/Runnable;

.field private final d:Ljava/lang/Runnable;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/b$k$a;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/b$k$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/b$k;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b$k;->b:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/b$k$b;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/b$k$b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/b$k;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b$k;->c:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/b$k$c;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/b$k$c;-><init>(Lio/grpc/netty/shaded/io/netty/channel/b$k;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b$k;->d:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/b$k$d;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/b$k$d;-><init>(Lio/grpc/netty/shaded/io/netty/channel/b$k;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b$k;->e:Ljava/lang/Runnable;

    .line 6
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/b$k;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    return-void
.end method

.method static synthetic a(Lio/grpc/netty/shaded/io/netty/channel/b$k;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/channel/b$k;->c:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic b(Lio/grpc/netty/shaded/io/netty/channel/b$k;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/channel/b$k;->e:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Lio/grpc/netty/shaded/io/netty/channel/b$k;)Lio/grpc/netty/shaded/io/netty/channel/b;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/channel/b$k;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    return-object p0
.end method

.method static synthetic d(Lio/grpc/netty/shaded/io/netty/channel/b$k;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/channel/b$k;->b:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic e(Lio/grpc/netty/shaded/io/netty/channel/b$k;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/channel/b$k;->d:Ljava/lang/Runnable;

    return-object p0
.end method
