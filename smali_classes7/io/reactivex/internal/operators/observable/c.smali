.class public final Lio/reactivex/internal/operators/observable/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/p<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/c;->a:Lio/reactivex/p;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/c$a;

    invoke-direct {v0}, Lio/reactivex/internal/operators/observable/c$a;-><init>()V

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/c;->a:Lio/reactivex/p;

    invoke-static {v1}, Lio/reactivex/k;->wrap(Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/k;->materialize()Lio/reactivex/k;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-object v0
.end method
