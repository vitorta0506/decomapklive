.class Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->Z1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    invoke-virtual {v0, v1, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->i2(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/SharePlatformBean;)V

    return-void
.end method
