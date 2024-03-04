.class Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/r;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/r;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/r;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/r;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->b(Lcom/guochao/faceshow/aaspring/modulars/live/game/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/r;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->b(Lcom/guochao/faceshow/aaspring/modulars/live/game/r;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/r;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->c(Lcom/guochao/faceshow/aaspring/modulars/live/game/r;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12068a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/r;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->d(Lcom/guochao/faceshow/aaspring/modulars/live/game/r;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "%s%s%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0276

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b;Landroid/view/View;)V

    .line 2
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/r;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
