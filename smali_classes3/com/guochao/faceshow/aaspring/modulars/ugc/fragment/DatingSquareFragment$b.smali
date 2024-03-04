.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->U1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DatingSquare;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/DatingSquare;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;Lcom/guochao/faceshow/aaspring/beans/DatingSquare;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$b;->a:Lcom/guochao/faceshow/aaspring/beans/DatingSquare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$b;->a:Lcom/guochao/faceshow/aaspring/beans/DatingSquare;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;Lcom/guochao/faceshow/aaspring/beans/DatingSquare;)V

    return-void
.end method
