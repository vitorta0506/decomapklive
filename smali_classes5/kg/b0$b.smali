.class abstract Lkg/b0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkg/b0$b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final e:Lio/grpc/netty/shaded/io/netty/util/internal/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/r<",
            "Lkg/b0$b$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lkg/b0$b$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final c:Lkg/v$d;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkg/b0$b$a;

    invoke-direct {v0}, Lkg/b0$b$a;-><init>()V

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/r;->b(Lio/grpc/netty/shaded/io/netty/util/internal/r$b;)Lio/grpc/netty/shaded/io/netty/util/internal/r;

    move-result-object v0

    sput-object v0, Lkg/b0$b;->e:Lio/grpc/netty/shaded/io/netty/util/internal/r;

    return-void
.end method

.method constructor <init>(ILkg/v$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->d(I)I

    move-result p1

    iput p1, p0, Lkg/b0$b;->a:I

    .line 3
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->q0(I)Ljava/util/Queue;

    move-result-object p1

    iput-object p1, p0, Lkg/b0$b;->b:Ljava/util/Queue;

    .line 4
    iput-object p2, p0, Lkg/b0$b;->c:Lkg/v$d;

    return-void
.end method

.method private c(IZ)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1
    iget-object v1, p0, Lkg/b0$b;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkg/b0$b$b;

    if-eqz v1, :cond_0

    .line 2
    invoke-direct {p0, v1, p2}, Lkg/b0$b;->e(Lkg/b0$b$b;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private e(Lkg/b0$b$b;Z)V
    .locals 8

    .line 1
    iget-object v1, p1, Lkg/b0$b$b;->b:Lkg/w;

    .line 2
    iget-wide v2, p1, Lkg/b0$b$b;->d:J

    .line 3
    iget-object v6, p1, Lkg/b0$b$b;->c:Ljava/nio/ByteBuffer;

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p1}, Lkg/b0$b$b;->a()V

    .line 5
    :cond_0
    iget-object v0, v1, Lkg/w;->a:Lkg/v;

    iget v4, p1, Lkg/b0$b$b;->e:I

    iget-object v5, p0, Lkg/b0$b;->c:Lkg/v$d;

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lkg/v;->w(Lkg/w;JILkg/v$d;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method private static g(Lkg/w;Ljava/nio/ByteBuffer;JI)Lkg/b0$b$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/w<",
            "*>;",
            "Ljava/nio/ByteBuffer;",
            "JI)",
            "Lkg/b0$b$b;"
        }
    .end annotation

    .line 1
    sget-object v0, Lkg/b0$b;->e:Lio/grpc/netty/shaded/io/netty/util/internal/r;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkg/b0$b$b;

    .line 2
    iput-object p0, v0, Lkg/b0$b$b;->b:Lkg/w;

    .line 3
    iput-object p1, v0, Lkg/b0$b$b;->c:Ljava/nio/ByteBuffer;

    .line 4
    iput-wide p2, v0, Lkg/b0$b$b;->d:J

    .line 5
    iput p4, v0, Lkg/b0$b$b;->e:I

    return-object v0
.end method


# virtual methods
.method public final a(Lkg/w;Ljava/nio/ByteBuffer;JI)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/w<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JI)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lkg/b0$b;->g(Lkg/w;Ljava/nio/ByteBuffer;JI)Lkg/b0$b$b;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lkg/b0$b;->b:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, Lkg/b0$b$b;->a()V

    :cond_0
    return p2
.end method

.method public final b(Lkg/c0;ILkg/b0;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/c0<",
            "TT;>;I",
            "Lkg/b0;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkg/b0$b;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkg/b0$b$b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v2, v0, Lkg/b0$b$b;->b:Lkg/w;

    iget-object v3, v0, Lkg/b0$b$b;->c:Ljava/nio/ByteBuffer;

    iget-wide v4, v0, Lkg/b0$b$b;->d:J

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lkg/b0$b;->f(Lkg/w;Ljava/nio/ByteBuffer;JLkg/c0;ILkg/b0;)V

    .line 3
    invoke-virtual {v0}, Lkg/b0$b$b;->a()V

    .line 4
    iget p1, p0, Lkg/b0$b;->d:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lkg/b0$b;->d:I

    return p2
.end method

.method public final d(Z)I
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0, p1}, Lkg/b0$b;->c(IZ)I

    move-result p1

    return p1
.end method

.method protected abstract f(Lkg/w;Ljava/nio/ByteBuffer;JLkg/c0;ILkg/b0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/w<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Lkg/c0<",
            "TT;>;I",
            "Lkg/b0;",
            ")V"
        }
    .end annotation
.end method

.method public final h()V
    .locals 2

    .line 1
    iget v0, p0, Lkg/b0$b;->a:I

    iget v1, p0, Lkg/b0$b;->d:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lkg/b0$b;->d:I

    if-lez v0, :cond_0

    .line 3
    invoke-direct {p0, v0, v1}, Lkg/b0$b;->c(IZ)I

    :cond_0
    return-void
.end method
