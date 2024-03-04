.class final Lio/reactivex/internal/operators/observable/r2$g;
.super Lbi/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/r2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbi/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lbi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbi/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbi/a;Lio/reactivex/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbi/a<",
            "TT;>;",
            "Lio/reactivex/k<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lbi/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/r2$g;->a:Lbi/a;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/r2$g;->b:Lio/reactivex/k;

    return-void
.end method


# virtual methods
.method public c(Lvh/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-",
            "Lth/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/r2$g;->a:Lbi/a;

    invoke-virtual {v0, p1}, Lbi/a;->c(Lvh/g;)V

    return-void
.end method

.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/r2$g;->b:Lio/reactivex/k;

    invoke-virtual {v0, p1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
