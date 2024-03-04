.class public final Lzh/d;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzh/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/a;"
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
            "Lio/reactivex/c;",
            ">;"
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
            "Lio/reactivex/c;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lzh/d;->a:Lio/reactivex/k;

    .line 3
    iput-object p2, p0, Lzh/d;->b:Lvh/o;

    .line 4
    iput-boolean p3, p0, Lzh/d;->c:Z

    return-void
.end method


# virtual methods
.method protected c(Lio/reactivex/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lzh/d;->a:Lio/reactivex/k;

    iget-object v1, p0, Lzh/d;->b:Lvh/o;

    invoke-static {v0, v1, p1}, Lzh/g;->a(Ljava/lang/Object;Lvh/o;Lio/reactivex/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lzh/d;->a:Lio/reactivex/k;

    new-instance v1, Lzh/d$a;

    iget-object v2, p0, Lzh/d;->b:Lvh/o;

    iget-boolean v3, p0, Lzh/d;->c:Z

    invoke-direct {v1, p1, v2, v3}, Lzh/d$a;-><init>(Lio/reactivex/b;Lvh/o;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    :cond_0
    return-void
.end method
