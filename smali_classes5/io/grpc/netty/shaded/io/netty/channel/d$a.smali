.class final Lio/grpc/netty/shaded/io/netty/channel/d$a;
.super Lio/grpc/netty/shaded/io/netty/channel/g0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final j:I

.field private final k:I

.field private l:I

.field private m:I

.field private n:Z

.field final synthetic o:Lio/grpc/netty/shaded/io/netty/channel/d;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/d;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->o:Lio/grpc/netty/shaded/io/netty/channel/d;

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/g0$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/g0;)V

    .line 2
    iput p2, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->j:I

    .line 3
    iput p3, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->k:I

    .line 4
    invoke-static {p4}, Lio/grpc/netty/shaded/io/netty/channel/d;->f(I)I

    move-result p1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->l:I

    .line 5
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/d;->g()[I

    move-result-object p1

    iget p2, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->l:I

    aget p1, p1, p2

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->m:I

    return-void
.end method

.method private o(I)V
    .locals 4

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/d;->g()[I

    move-result-object v0

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->l:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget v0, v0, v1

    if-gt p1, v0, :cond_1

    .line 2
    iget-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->n:Z

    if-eqz p1, :cond_0

    .line 3
    iget p1, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->l:I

    sub-int/2addr p1, v2

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->j:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->l:I

    .line 4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/d;->g()[I

    move-result-object p1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->l:I

    aget p1, p1, v0

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->m:I

    .line 5
    iput-boolean v3, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->n:Z

    goto :goto_0

    .line 6
    :cond_0
    iput-boolean v2, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->n:Z

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->m:I

    if-lt p1, v0, :cond_2

    .line 8
    iget p1, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->l:I

    add-int/lit8 p1, p1, 0x4

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->k:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->l:I

    .line 9
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/d;->g()[I

    move-result-object p1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->l:I

    aget p1, p1, v0

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->m:I

    .line 10
    iput-boolean v3, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->n:Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->n()I

    move-result v0

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/d$a;->o(I)V

    return-void
.end method

.method public h(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->j()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/d$a;->o(I)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/g0$a;->h(I)V

    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/d$a;->m:I

    return v0
.end method
