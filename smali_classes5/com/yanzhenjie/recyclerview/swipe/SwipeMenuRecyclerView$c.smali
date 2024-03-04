.class Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

.field private b:Lbg/a;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;Lbg/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$c;->a:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    .line 3
    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$c;->b:Lbg/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$c;->a:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getHeaderItemCount()I

    move-result v0

    sub-int/2addr p2, v0

    if-ltz p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$c;->b:Lbg/a;

    invoke-interface {v0, p1, p2}, Lbg/a;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
