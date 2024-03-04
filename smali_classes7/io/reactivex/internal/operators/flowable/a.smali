.class abstract Lio/reactivex/internal/operators/flowable/a;
.super Lio/reactivex/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/e<",
        "TR;>;"
    }
.end annotation


# instance fields
.field protected final b:Lio/reactivex/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/e;-><init>()V

    const-string v0, "source is null"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/e;

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/e;

    return-void
.end method
