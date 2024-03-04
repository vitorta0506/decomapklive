.class public Lcom/guochao/faceshow/aaspring/views/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/q$a;,
        Lcom/guochao/faceshow/aaspring/views/q$b;
    }
.end annotation


# direct methods
.method public static synthetic a(Lcom/guochao/faceshow/aaspring/views/q$a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/views/q;->b(Lcom/guochao/faceshow/aaspring/views/q$a;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic b(Lcom/guochao/faceshow/aaspring/views/q$a;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/guochao/faceshow/aaspring/views/q$a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs c(Lcom/guochao/faceshow/aaspring/views/q$a;[Landroid/view/View;)V
    .locals 6
    .param p1    # [Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/views/q$a<",
            "Landroid/view/View;",
            ">;[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/views/q;->onClick(Landroid/view/View;)Lio/reactivex/k;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lio/reactivex/k;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/views/p;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/views/p;-><init>(Lcom/guochao/faceshow/aaspring/views/q$a;)V

    invoke-virtual {v2, v3}, Lio/reactivex/k;->subscribe(Lvh/g;)Lth/b;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static onClick(Landroid/view/View;)Lio/reactivex/k;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lio/reactivex/k<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 1
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/views/o;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/q$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/views/q$b;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/k;->create(Lio/reactivex/n;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method
