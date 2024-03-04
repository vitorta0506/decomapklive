.class Lm5/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/rpc/e0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/w$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        "ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/api/gax/rpc/e0;"
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/Runnable;


# instance fields
.field private final a:Lio/grpc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/g<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/api/gax/rpc/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/b0<",
            "TResponseT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Runnable;

.field private d:Z

.field private e:Z

.field private f:I

.field private volatile g:Ljava/util/concurrent/CancellationException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm5/w$a;

    invoke-direct {v0}, Lm5/w$a;-><init>()V

    sput-object v0, Lm5/w;->h:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>(Lio/grpc/g;Lcom/google/api/gax/rpc/b0;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/g<",
            "TRequestT;TResponseT;>;",
            "Lcom/google/api/gax/rpc/b0<",
            "TResponseT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm5/w;->e:Z

    .line 3
    iput-object p1, p0, Lm5/w;->a:Lio/grpc/g;

    .line 4
    iput-object p2, p0, Lm5/w;->b:Lcom/google/api/gax/rpc/b0;

    .line 5
    iput-object p3, p0, Lm5/w;->c:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lm5/w;)Lcom/google/api/gax/rpc/b0;
    .locals 0

    iget-object p0, p0, Lm5/w;->b:Lcom/google/api/gax/rpc/b0;

    return-object p0
.end method

.method static synthetic b(Lm5/w;)Z
    .locals 0

    iget-boolean p0, p0, Lm5/w;->e:Z

    return p0
.end method

.method static synthetic c(Lm5/w;)Lio/grpc/g;
    .locals 0

    iget-object p0, p0, Lm5/w;->a:Lio/grpc/g;

    return-object p0
.end method

.method static synthetic d(Lm5/w;)Ljava/util/concurrent/CancellationException;
    .locals 0

    iget-object p0, p0, Lm5/w;->g:Ljava/util/concurrent/CancellationException;

    return-object p0
.end method

.method static synthetic e(Lm5/w;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lm5/w;->c:Ljava/lang/Runnable;

    return-object p0
.end method

.method private g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lm5/w;->b:Lcom/google/api/gax/rpc/b0;

    invoke-interface {v0, p0}, Lcom/google/api/gax/rpc/b0;->a(Lcom/google/api/gax/rpc/e0;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm5/w;->d:Z

    .line 3
    iget-object v1, p0, Lm5/w;->a:Lio/grpc/g;

    new-instance v2, Lm5/w$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lm5/w$b;-><init>(Lm5/w;Lm5/w$a;)V

    new-instance v3, Lio/grpc/s0;

    invoke-direct {v3}, Lio/grpc/s0;-><init>()V

    invoke-virtual {v1, v2, v3}, Lio/grpc/g;->e(Lio/grpc/g$a;Lio/grpc/s0;)V

    .line 4
    iget-boolean v1, p0, Lm5/w;->e:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lm5/w;->a:Lio/grpc/g;

    invoke-virtual {v1, v0}, Lio/grpc/g;->c(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lm5/w;->f:I

    if-lez v0, :cond_1

    .line 7
    iget-object v1, p0, Lm5/w;->a:Lio/grpc/g;

    invoke-virtual {v1, v0}, Lio/grpc/g;->c(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "User cancelled stream"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lm5/w;->g:Ljava/util/concurrent/CancellationException;

    .line 2
    iget-object v0, p0, Lm5/w;->a:Lio/grpc/g;

    iget-object v1, p0, Lm5/w;->g:Ljava/util/concurrent/CancellationException;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lio/grpc/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method f()V
    .locals 0

    invoke-direct {p0}, Lm5/w;->g()V

    return-void
.end method
