.class final Lio/grpc/stub/e$b;
.super Lio/grpc/stub/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/stub/d<",
        "TReqT;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Lio/grpc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/g<",
            "TReqT;*>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private d:Ljava/lang/Runnable;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method constructor <init>(Lio/grpc/g;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/g<",
            "TReqT;*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/stub/d;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lio/grpc/stub/e$b;->e:I

    .line 3
    iput-boolean v0, p0, Lio/grpc/stub/e$b;->f:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/grpc/stub/e$b;->g:Z

    .line 5
    iput-boolean v0, p0, Lio/grpc/stub/e$b;->h:Z

    .line 6
    iput-object p1, p0, Lio/grpc/stub/e$b;->b:Lio/grpc/g;

    .line 7
    iput-boolean p2, p0, Lio/grpc/stub/e$b;->c:Z

    return-void
.end method

.method static synthetic b(Lio/grpc/stub/e$b;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/stub/e$b;->g()V

    return-void
.end method

.method static synthetic c(Lio/grpc/stub/e$b;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/stub/e$b;->c:Z

    return p0
.end method

.method static synthetic d(Lio/grpc/stub/e$b;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/stub/e$b;->f:Z

    return p0
.end method

.method static synthetic e(Lio/grpc/stub/e$b;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lio/grpc/stub/e$b;->d:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic f(Lio/grpc/stub/e$b;)I
    .locals 0

    iget p0, p0, Lio/grpc/stub/e$b;->e:I

    return p0
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/stub/e$b;->a:Z

    return-void
.end method


# virtual methods
.method public h(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/grpc/stub/e$b;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/grpc/stub/e$b;->b:Lio/grpc/g;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lio/grpc/g;->c(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/stub/e$b;->b:Lio/grpc/g;

    invoke-virtual {v0, p1}, Lio/grpc/g;->c(I)V

    :goto_0
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/stub/e$b;->b:Lio/grpc/g;

    invoke-virtual {v0}, Lio/grpc/g;->b()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/grpc/stub/e$b;->h:Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/stub/e$b;->b:Lio/grpc/g;

    const-string v1, "Cancelled by client with StreamObserver.onError()"

    invoke-virtual {v0, v1, p1}, Lio/grpc/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/grpc/stub/e$b;->g:Z

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/grpc/stub/e$b;->g:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Stream was terminated by error, no further calls are allowed"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lio/grpc/stub/e$b;->h:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Stream is already completed, no further calls are allowed"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lio/grpc/stub/e$b;->b:Lio/grpc/g;

    invoke-virtual {v0, p1}, Lio/grpc/g;->d(Ljava/lang/Object;)V

    return-void
.end method
