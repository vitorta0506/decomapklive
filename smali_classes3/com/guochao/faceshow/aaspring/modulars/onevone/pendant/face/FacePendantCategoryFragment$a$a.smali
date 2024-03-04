.class Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a$a;->a:I

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;->Y1(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a$a;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a$a;->a:I

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;I)V

    return-void
.end method
