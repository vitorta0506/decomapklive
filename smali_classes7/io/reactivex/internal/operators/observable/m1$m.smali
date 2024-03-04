.class final Lio/reactivex/internal/operators/observable/m1$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lvh/c<",
        "TS;",
        "Lio/reactivex/d<",
        "TT;>;TS;>;"
    }
.end annotation


# instance fields
.field final a:Lvh/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/g<",
            "Lio/reactivex/d<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lvh/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "Lio/reactivex/d<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/m1$m;->a:Lvh/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lio/reactivex/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lio/reactivex/d<",
            "TT;>;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m1$m;->a:Lvh/g;

    invoke-interface {v0, p2}, Lvh/g;->accept(Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Lio/reactivex/d;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/observable/m1$m;->a(Ljava/lang/Object;Lio/reactivex/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
