.class final Lzh/b$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh/b$a;
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
.field private static final serialVersionUID:J = -0x2a58ff0addf51744L


# instance fields
.field final a:Lzh/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzh/b$a<",
            "*TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lzh/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzh/b$a<",
            "*TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lzh/b$a$a;->a:Lzh/b$a;

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

    iget-object v0, p0, Lzh/b$a$a;->a:Lzh/b$a;

    invoke-virtual {v0}, Lzh/b$a;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lzh/b$a$a;->a:Lzh/b$a;

    invoke-virtual {v0, p1}, Lzh/b$a;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lth/b;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, Lzh/b$a$a;->a:Lzh/b$a;

    invoke-virtual {v0, p1}, Lzh/b$a;->d(Ljava/lang/Object;)V

    return-void
.end method
