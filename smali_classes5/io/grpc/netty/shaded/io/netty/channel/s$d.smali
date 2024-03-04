.class final Lio/grpc/netty/shaded/io/netty/channel/s$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# static fields
.field private static final l:Lio/grpc/netty/shaded/io/netty/util/internal/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/r<",
            "Lio/grpc/netty/shaded/io/netty/channel/s$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/util/internal/r$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$a<",
            "Lio/grpc/netty/shaded/io/netty/channel/s$d;",
            ">;"
        }
    .end annotation
.end field

.field b:Lio/grpc/netty/shaded/io/netty/channel/s$d;

.field c:Ljava/lang/Object;

.field d:[Ljava/nio/ByteBuffer;

.field e:Ljava/nio/ByteBuffer;

.field f:Lio/grpc/netty/shaded/io/netty/channel/y;

.field g:J

.field h:J

.field i:I

.field j:I

.field k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/s$d$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/channel/s$d$a;-><init>()V

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/r;->b(Lio/grpc/netty/shaded/io/netty/util/internal/r$b;)Lio/grpc/netty/shaded/io/netty/util/internal/r;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->l:Lio/grpc/netty/shaded/io/netty/util/internal/r;

    return-void
.end method

.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$a<",
            "Lio/grpc/netty/shaded/io/netty/channel/s$d;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->j:I

    .line 4
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->a:Lio/grpc/netty/shaded/io/netty/util/internal/r$a;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;Lio/grpc/netty/shaded/io/netty/channel/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/s$d;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;)V

    return-void
.end method

.method static b(Ljava/lang/Object;IJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/s$d;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->l:Lio/grpc/netty/shaded/io/netty/util/internal/r;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;

    .line 2
    iput-object p0, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->c:Ljava/lang/Object;

    .line 3
    sget p0, Lio/grpc/netty/shaded/io/netty/channel/s;->l:I

    add-int/2addr p1, p0

    iput p1, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->i:I

    .line 4
    iput-wide p2, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->h:J

    .line 5
    iput-object p4, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->f:Lio/grpc/netty/shaded/io/netty/channel/y;

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->k:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->k:Z

    .line 3
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->i:I

    .line 4
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->c:Ljava/lang/Object;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    .line 5
    sget-object v2, Lkg/s0;->d:Lkg/j;

    iput-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->c:Ljava/lang/Object;

    .line 6
    iput v1, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->i:I

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->h:J

    .line 8
    iput-wide v1, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->g:J

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->d:[Ljava/nio/ByteBuffer;

    .line 10
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->e:Ljava/nio/ByteBuffer;

    return v0

    :cond_0
    return v1
.end method

.method c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->b:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    .line 2
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->d:[Ljava/nio/ByteBuffer;

    .line 3
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->e:Ljava/nio/ByteBuffer;

    .line 4
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->c:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->f:Lio/grpc/netty/shaded/io/netty/channel/y;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->g:J

    .line 7
    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->h:J

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->i:I

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->j:I

    .line 10
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->k:Z

    .line 11
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->a:Lio/grpc/netty/shaded/io/netty/util/internal/r$a;

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/r$a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method d()Lio/grpc/netty/shaded/io/netty/channel/s$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->b:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/s$d;->c()V

    return-object v0
.end method
