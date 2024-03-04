.class Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbg/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field private a:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

.field private b:Lbg/f;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;Lbg/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$g;->a:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    .line 3
    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$g;->b:Lbg/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/yanzhenjie/recyclerview/swipe/c;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/swipe/c;->a()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$g;->a:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getHeaderItemCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 3
    iput v0, p1, Lcom/yanzhenjie/recyclerview/swipe/c;->e:I

    .line 4
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$g;->b:Lbg/f;

    invoke-interface {v0, p1}, Lbg/f;->a(Lcom/yanzhenjie/recyclerview/swipe/c;)V

    :cond_0
    return-void
.end method
