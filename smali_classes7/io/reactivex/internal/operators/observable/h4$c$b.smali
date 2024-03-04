.class final Lio/reactivex/internal/operators/observable/h4$c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/h4$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lei/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lei/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Z


# direct methods
.method constructor <init>(Lei/d;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lei/d<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/h4$c$b;->a:Lei/d;

    .line 3
    iput-boolean p2, p0, Lio/reactivex/internal/operators/observable/h4$c$b;->b:Z

    return-void
.end method
