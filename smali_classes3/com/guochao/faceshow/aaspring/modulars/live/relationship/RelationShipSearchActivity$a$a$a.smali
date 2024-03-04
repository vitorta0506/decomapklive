.class Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;->onFailure(Lg7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    const v2, 0x7f120490

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;->showEmptyView()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;->tvConfirm:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v2, 0x7f1204b8

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;->tvConfirm:Landroid/widget/TextView;

    const v3, 0x7f060141

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    return-void
.end method
