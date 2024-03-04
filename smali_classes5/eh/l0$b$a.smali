.class final Leh/l0$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh/p2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/l0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/l0$b$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Leh/p2$c;

.field private d:Z

.field private e:Z

.field private f:Z

.field final synthetic g:Leh/l0$b;


# direct methods
.method private constructor <init>(Leh/l0$b;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Leh/l0$b$a;->g:Leh/l0$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Leh/l0$b$a;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Leh/l0$b;Ljava/lang/String;Leh/l0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Leh/l0$b$a;-><init>(Leh/l0$b;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Leh/l0$b$a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Leh/l0$b$a;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic h(Leh/l0$b$a;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Leh/l0$b$a;->b:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic i(Leh/l0$b$a;)Z
    .locals 0

    iget-boolean p0, p0, Leh/l0$b$a;->f:Z

    return p0
.end method

.method static synthetic j(Leh/l0$b$a;)V
    .locals 0

    invoke-direct {p0}, Leh/l0$b$a;->s()V

    return-void
.end method

.method static synthetic k(Leh/l0$b$a;)Z
    .locals 0

    iget-boolean p0, p0, Leh/l0$b$a;->e:Z

    return p0
.end method

.method static synthetic l(Leh/l0$b$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Leh/l0$b$a;->e:Z

    return p1
.end method

.method static synthetic m(Leh/l0$b$a;)Leh/p2$c;
    .locals 0

    iget-object p0, p0, Leh/l0$b$a;->c:Leh/p2$c;

    return-object p0
.end method

.method static synthetic n(Leh/l0$b$a;Leh/p2$c;)Leh/p2$c;
    .locals 0

    iput-object p1, p0, Leh/l0$b$a;->c:Leh/p2$c;

    return-object p1
.end method

.method static synthetic o(Leh/l0$b$a;)Z
    .locals 0

    iget-boolean p0, p0, Leh/l0$b$a;->d:Z

    return p0
.end method

.method static synthetic p(Leh/l0$b$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Leh/l0$b$a;->d:Z

    return p1
.end method

.method static synthetic q(Leh/l0$b$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Leh/l0$b$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Leh/l0$b$a;->g:Leh/l0$b;

    iget-object v0, v0, Leh/l0$b;->c:Leh/l0;

    invoke-static {v0}, Leh/l0;->i(Leh/l0;)Leh/p2;

    move-result-object v0

    iget-object v1, p0, Leh/l0$b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Leh/p2;->t(Ljava/lang/String;Leh/p2$b;)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/Status;)V
    .locals 2

    iget-object v0, p0, Leh/l0$b$a;->g:Leh/l0$b;

    iget-object v0, v0, Leh/l0$b;->c:Leh/l0;

    invoke-static {v0}, Leh/l0;->j(Leh/l0;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/l0$b$a$a;

    invoke-direct {v1, p0, p1}, Leh/l0$b$a$a;-><init>(Leh/l0$b$a;Lio/grpc/Status;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Leh/l0$b$a;->g:Leh/l0$b;

    iget-object p1, p1, Leh/l0$b;->c:Leh/l0;

    invoke-static {p1}, Leh/l0;->j(Leh/l0;)Lio/grpc/d1;

    move-result-object p1

    new-instance v0, Leh/l0$b$a$c;

    invoke-direct {v0, p0}, Leh/l0$b$a$c;-><init>(Leh/l0$b$a;)V

    invoke-virtual {p1, v0}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f(Leh/p2$c;)V
    .locals 2

    iget-object v0, p0, Leh/l0$b$a;->g:Leh/l0$b;

    iget-object v0, v0, Leh/l0$b;->c:Leh/l0;

    invoke-static {v0}, Leh/l0;->j(Leh/l0;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/l0$b$a$b;

    invoke-direct {v1, p0, p1}, Leh/l0$b$a$b;-><init>(Leh/l0$b$a;Leh/p2$c;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method r()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Leh/l0$b$a;->f:Z

    .line 2
    iget-object v0, p0, Leh/l0$b$a;->g:Leh/l0$b;

    iget-object v0, v0, Leh/l0$b;->c:Leh/l0;

    invoke-static {v0}, Leh/l0;->i(Leh/l0;)Leh/p2;

    move-result-object v0

    iget-object v1, p0, Leh/l0$b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Leh/p2;->j(Ljava/lang/String;Leh/p2$b;)V

    .line 3
    iget-object v0, p0, Leh/l0$b$a;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/l0$b$a;

    .line 5
    invoke-virtual {v1}, Leh/l0$b$a;->r()V

    goto :goto_0

    :cond_0
    return-void
.end method
