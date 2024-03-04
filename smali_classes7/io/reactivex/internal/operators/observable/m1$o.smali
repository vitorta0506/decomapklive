.class final Lio/reactivex/internal/operators/observable/m1$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lvh/o<",
        "Ljava/util/List<",
        "Lio/reactivex/p<",
        "+TT;>;>;",
        "Lio/reactivex/p<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lvh/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/m1$o;->a:Lvh/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lio/reactivex/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/reactivex/p<",
            "+TT;>;>;)",
            "Lio/reactivex/p<",
            "+TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m1$o;->a:Lvh/o;

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lio/reactivex/k;->zipIterable(Ljava/lang/Iterable;Lvh/o;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/m1$o;->a(Ljava/util/List;)Lio/reactivex/p;

    move-result-object p1

    return-object p1
.end method
