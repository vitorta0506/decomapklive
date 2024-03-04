.class Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/p$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setCurrentPage(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->loadData(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    return-void
.end method
