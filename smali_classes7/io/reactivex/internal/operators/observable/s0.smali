.class public final Lio/reactivex/internal/operators/observable/s0;
.super Lio/reactivex/k;
.source "SourceFile"

# interfaces
.implements Lyh/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/k<",
        "Ljava/lang/Object;",
        ">;",
        "Lyh/e<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lio/reactivex/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/k<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/s0;

    invoke-direct {v0}, Lio/reactivex/internal/operators/observable/s0;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/observable/s0;->a:Lio/reactivex/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/r;)V

    return-void
.end method
