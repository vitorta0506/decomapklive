.class public Lo5/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo5/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo5/f<",
        "TResponseT;>;"
    }
.end annotation


# instance fields
.field private final a:Lo5/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo5/e<",
            "TResponseT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/common/util/concurrent/g0;


# direct methods
.method public constructor <init>(Lo5/e;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo5/e<",
            "TResponseT;>;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo5/g;->a:Lo5/e;

    .line 3
    invoke-static {p2}, Lcom/google/common/util/concurrent/h0;->b(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/g0;

    move-result-object p1

    iput-object p1, p0, Lo5/g;->b:Lcom/google/common/util/concurrent/g0;

    return-void
.end method
