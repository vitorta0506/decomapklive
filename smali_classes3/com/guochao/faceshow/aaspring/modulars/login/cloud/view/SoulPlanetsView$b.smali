.class Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->r(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$b;->b:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$b;->b:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->h(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$c;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$b;->b:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$b;->a:I

    invoke-interface {v0, v1, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$c;->onItemClick(Landroid/view/ViewGroup;Landroid/view/View;I)V

    return-void
.end method
