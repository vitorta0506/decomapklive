.class Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$f;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->applyLink(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Lte/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$f;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lte/a;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$f;->onNext(Lte/a;)V

    return-void
.end method

.method public onNext(Lte/a;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-boolean v0, p1, Lte/a;->b:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$f;->a:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean p1, p1, Lte/a;->c:Z

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->gotoSetting(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method