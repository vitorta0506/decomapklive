.class Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/r;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/r;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->a(Lcom/guochao/faceshow/aaspring/modulars/live/game/r;)Lcom/guochao/faceshow/aaspring/modulars/live/game/r$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/r;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->a(Lcom/guochao/faceshow/aaspring/modulars/live/game/r;)Lcom/guochao/faceshow/aaspring/modulars/live/game/r$c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$c;->a(I)V

    :cond_0
    return-void
.end method
