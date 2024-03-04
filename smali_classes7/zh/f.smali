.class public final Lzh/f;
.super Lio/reactivex/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzh/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/k<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/v<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:Z


# direct methods
.method public constructor <init>(Lio/reactivex/k;Lvh/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k<",
            "TT;>;",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/v<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    .line 2
    iput-object p1, p0, Lzh/f;->a:Lio/reactivex/k;

    .line 3
    iput-object p2, p0, Lzh/f;->b:Lvh/o;

    .line 4
    iput-boolean p3, p0, Lzh/f;->c:Z

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzh/f;->a:Lio/reactivex/k;

    iget-object v1, p0, Lzh/f;->b:Lvh/o;

    invoke-static {v0, v1, p1}, Lzh/g;->c(Ljava/lang/Object;Lvh/o;Lio/reactivex/r;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lzh/f;->a:Lio/reactivex/k;

    new-instance v1, Lzh/f$a;

    iget-object v2, p0, Lzh/f;->b:Lvh/o;

    iget-boolean v3, p0, Lzh/f;->c:Z

    invoke-direct {v1, p1, v2, v3}, Lzh/f$a;-><init>(Lio/reactivex/r;Lvh/o;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    :cond_0
    return-void
.end method
