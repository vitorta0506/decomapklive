.class Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->e(Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;II)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$a;->c:Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;

    iput p2, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$a;->a:I

    iput p3, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$a;->c:Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->a(Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;)Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$a;->c:Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->d(Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$a;->c:Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;

    invoke-static {v1}, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->b(Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/mine/model/TransactionType;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/guochao/faceshow/mine/model/TransactionType;->isSelected:Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$a;->c:Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->d(Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$a;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/mine/model/TransactionType;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/guochao/faceshow/mine/model/TransactionType;->isSelected:Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$a;->c:Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->b(Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$a;->c:Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;

    iget v1, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$a;->a:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$a;->c:Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->a(Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;)Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$b;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$a;->a:I

    iget v2, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$a;->b:I

    invoke-interface {v0, p1, v1, v2}, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$b;->a(Landroid/view/View;II)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$a;->c:Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;

    iget v0, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$a;->a:I

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->c(Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;I)I

    :cond_0
    return-void
.end method
