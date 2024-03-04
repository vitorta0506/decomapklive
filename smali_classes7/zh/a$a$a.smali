.class final Lzh/a$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lth/b;",
        ">;",
        "Lio/reactivex/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4e3f736d9160236fL


# instance fields
.field final a:Lzh/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzh/a$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lzh/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzh/a$a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lzh/a$a$a;->a:Lzh/a$a;

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

    iget-object v0, p0, Lzh/a$a$a;->a:Lzh/a$a;

    invoke-virtual {v0}, Lzh/a$a;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lzh/a$a$a;->a:Lzh/a$a;

    invoke-virtual {v0, p1}, Lzh/a$a;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lth/b;)Z

    return-void
.end method
