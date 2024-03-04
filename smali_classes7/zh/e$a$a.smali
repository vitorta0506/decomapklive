.class final Lzh/e$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lth/b;",
        ">;",
        "Lio/reactivex/h<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6f9e30e36197ffc7L


# instance fields
.field final a:Lzh/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzh/e$a<",
            "*TR;>;"
        }
    .end annotation
.end field

.field volatile b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lzh/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzh/e$a<",
            "*TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lzh/e$a$a;->a:Lzh/e$a;

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lzh/e$a$a;->a:Lzh/e$a;

    invoke-virtual {v0, p0}, Lzh/e$a;->c(Lzh/e$a$a;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lzh/e$a$a;->a:Lzh/e$a;

    invoke-virtual {v0, p0, p1}, Lzh/e$a;->d(Lzh/e$a$a;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lth/b;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lzh/e$a$a;->b:Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lzh/e$a$a;->a:Lzh/e$a;

    invoke-virtual {p1}, Lzh/e$a;->b()V

    return-void
.end method
