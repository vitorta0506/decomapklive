.class public Lbg/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

.field private b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbg/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lbg/c;->c:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbg/c;->d:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lbg/c;->a:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    .line 5
    iput p2, p0, Lbg/c;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbg/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbg/c;->d:Ljava/util/List;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lbg/c;->c:I

    return v0
.end method
