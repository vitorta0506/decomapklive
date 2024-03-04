.class Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment$b;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->U1(ILcom/guochao/faceshow/aaspring/beans/SharePlatformBean;)V

    return-void
.end method
