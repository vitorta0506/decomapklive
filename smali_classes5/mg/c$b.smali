.class final Lmg/c$b;
.super Lmg/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Lmg/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmg/c;

    return-void
.end method

.method private constructor <init>(Lmg/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmg/c$b;->h:Lmg/c;

    invoke-direct {p0, p1}, Lmg/b$b;-><init>(Lmg/b;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmg/c$b;->g:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lmg/c;Lmg/c$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lmg/c$b;-><init>(Lmg/c;)V

    return-void
.end method


# virtual methods
.method public read()V
    .locals 10

    .line 1
    iget-object v0, p0, Lmg/c$b;->h:Lmg/c;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lmg/c$b;->h:Lmg/c;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lmg/c$b;->h:Lmg/c;

    invoke-virtual {v2}, Lmg/b;->U0()Lmg/b$c;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->R()Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    move-result-object v2

    .line 4
    invoke-interface {v2, v0}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->c(Lio/grpc/netty/shaded/io/netty/channel/f;)V

    const/4 v3, 0x0

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5
    :try_start_0
    iget-object v6, p0, Lmg/c$b;->h:Lmg/c;

    iget-object v7, p0, Lmg/c$b;->g:Ljava/util/List;

    invoke-virtual {v6, v7}, Lmg/c;->Z0(Ljava/util/List;)I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    if-gez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    .line 6
    :cond_2
    invoke-interface {v2, v6}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->e(I)V

    .line 7
    iget-object v6, p0, Lmg/c$b;->h:Lmg/c;

    invoke-virtual {v6, v2}, Lmg/c;->Y0(Lio/grpc/netty/shaded/io/netty/channel/v0$c;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v3

    :goto_1
    const/4 v6, 0x0

    .line 8
    :goto_2
    :try_start_1
    iget-object v7, p0, Lmg/c$b;->g:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_3

    .line 9
    iget-object v9, p0, Lmg/c$b;->h:Lmg/c;

    iput-boolean v5, v9, Lmg/b;->v:Z

    .line 10
    iget-object v9, p0, Lmg/c$b;->g:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Lio/grpc/netty/shaded/io/netty/channel/w;->p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/w;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 11
    :cond_3
    iget-object v5, p0, Lmg/c$b;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 12
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->d()V

    .line 13
    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/w;->k()Lio/grpc/netty/shaded/io/netty/channel/w;

    if-eqz v3, :cond_4

    .line 14
    iget-object v2, p0, Lmg/c$b;->h:Lmg/c;

    invoke-virtual {v2, v3}, Lmg/c;->V0(Ljava/lang/Throwable;)Z

    move-result v6

    .line 15
    invoke-interface {v1, v3}, Lio/grpc/netty/shaded/io/netty/channel/w;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/w;

    :cond_4
    if-eqz v6, :cond_5

    .line 16
    iget-object v1, p0, Lmg/c$b;->h:Lmg/c;

    iput-boolean v4, v1, Lmg/c;->B:Z

    .line 17
    invoke-virtual {v1}, Lmg/b;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    :cond_5
    iget-object v1, p0, Lmg/c$b;->h:Lmg/c;

    iget-boolean v1, v1, Lmg/b;->v:Z

    if-nez v1, :cond_6

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/f;->l()Z

    move-result v0

    if-nez v0, :cond_6

    .line 20
    invoke-virtual {p0}, Lmg/b$b;->D()V

    :cond_6
    return-void

    :catchall_1
    move-exception v1

    .line 21
    iget-object v2, p0, Lmg/c$b;->h:Lmg/c;

    iget-boolean v2, v2, Lmg/b;->v:Z

    if-nez v2, :cond_7

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/f;->l()Z

    move-result v0

    if-nez v0, :cond_7

    .line 22
    invoke-virtual {p0}, Lmg/b$b;->D()V

    .line 23
    :cond_7
    throw v1
.end method
