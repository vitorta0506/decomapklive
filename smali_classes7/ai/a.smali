.class public final Lai/a;
.super Lio/reactivex/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/t<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/v<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/v;Lvh/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/v<",
            "+TT;>;",
            "Lvh/o<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/t;-><init>()V

    .line 2
    iput-object p1, p0, Lai/a;->a:Lio/reactivex/v;

    .line 3
    iput-object p2, p0, Lai/a;->b:Lvh/o;

    return-void
.end method


# virtual methods
.method protected e(Lio/reactivex/u;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/u<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lai/a;->a:Lio/reactivex/v;

    new-instance v1, Lai/a$a;

    iget-object v2, p0, Lai/a;->b:Lvh/o;

    invoke-direct {v1, p1, v2}, Lai/a$a;-><init>(Lio/reactivex/u;Lvh/o;)V

    invoke-interface {v0, v1}, Lio/reactivex/v;->a(Lio/reactivex/u;)V

    return-void
.end method
