.class public Lo5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lo5/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo5/c<",
            "TResponseT;>;"
        }
    .end annotation
.end field

.field private final b:Lo5/h;

.field private final c:Lo5/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo5/d<",
            "TResponseT;>;"
        }
    .end annotation
.end field

.field private final d:Lo5/i;


# direct methods
.method public constructor <init>(Lo5/c;Lo5/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo5/c<",
            "TResponseT;>;",
            "Lo5/h;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo5/c;

    iput-object p1, p0, Lo5/e;->a:Lo5/c;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo5/h;

    iput-object p1, p0, Lo5/e;->b:Lo5/h;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lo5/e;->c:Lo5/d;

    .line 5
    iput-object p1, p0, Lo5/e;->d:Lo5/i;

    return-void
.end method

.method public constructor <init>(Lo5/d;Lo5/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo5/d<",
            "TResponseT;>;",
            "Lo5/i;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lo5/e;->a:Lo5/c;

    .line 8
    iput-object v0, p0, Lo5/e;->b:Lo5/h;

    .line 9
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo5/d;

    iput-object p1, p0, Lo5/e;->c:Lo5/d;

    .line 10
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo5/i;

    iput-object p1, p0, Lo5/e;->d:Lo5/i;

    return-void
.end method
