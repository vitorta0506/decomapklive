.class public final Lai/b;
.super Lio/reactivex/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/k<",
        "TT;>;"
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


# direct methods
.method public constructor <init>(Lio/reactivex/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/v<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    .line 2
    iput-object p1, p0, Lai/b;->a:Lio/reactivex/v;

    return-void
.end method

.method public static c(Lio/reactivex/r;)Lio/reactivex/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/r<",
            "-TT;>;)",
            "Lio/reactivex/u<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lai/b$a;

    invoke-direct {v0, p0}, Lai/b$a;-><init>(Lio/reactivex/r;)V

    return-object v0
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lai/b;->a:Lio/reactivex/v;

    invoke-static {p1}, Lai/b;->c(Lio/reactivex/r;)Lio/reactivex/u;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/v;->a(Lio/reactivex/u;)V

    return-void
.end method
