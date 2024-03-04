.class final Lzh/d$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh/d$a;
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
.field private static final serialVersionUID:J = -0x6f11cdf3dd210edfL


# instance fields
.field final a:Lzh/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzh/d$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lzh/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzh/d$a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lzh/d$a$a;->a:Lzh/d$a;

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

    iget-object v0, p0, Lzh/d$a$a;->a:Lzh/d$a;

    invoke-virtual {v0, p0}, Lzh/d$a;->b(Lzh/d$a$a;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lzh/d$a$a;->a:Lzh/d$a;

    invoke-virtual {v0, p0, p1}, Lzh/d$a;->c(Lzh/d$a$a;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lth/b;)Z

    return-void
.end method
