.class public final Lio/reactivex/internal/operators/observable/a2;
.super Lio/reactivex/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/k<",
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

    new-instance v0, Lio/reactivex/internal/operators/observable/a2;

    invoke-direct {v0}, Lio/reactivex/internal/operators/observable/a2;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/observable/a2;->a:Lio/reactivex/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->NEVER:Lio/reactivex/internal/disposables/EmptyDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    return-void
.end method
