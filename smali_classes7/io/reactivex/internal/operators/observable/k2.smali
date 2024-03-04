.class public final Lio/reactivex/internal/operators/observable/k2;
.super Lio/reactivex/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/k2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/g<",
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

.field final b:Lvh/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/p;Lvh/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Lvh/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/g;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/k2;->a:Lio/reactivex/p;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/k2;->b:Lvh/c;

    return-void
.end method


# virtual methods
.method protected d(Lio/reactivex/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/h<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k2;->a:Lio/reactivex/p;

    new-instance v1, Lio/reactivex/internal/operators/observable/k2$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/k2;->b:Lvh/c;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/observable/k2$a;-><init>(Lio/reactivex/h;Lvh/c;)V

    invoke-interface {v0, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
