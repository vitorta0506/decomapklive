.class Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic b:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$b;->b:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$b;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$b;->b:Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;->b(Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper;)Lbg/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeAdapterWrapper$b;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lbg/b;->a(Landroid/view/View;I)V

    const/4 p1, 0x1

    return p1
.end method
