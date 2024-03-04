.class Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$k;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->g2(ILcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$k;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$k;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$k;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->d:Ld9/g;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ld9/g;->p(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$k;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->X1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;Ljava/lang/String;)V

    return-void
.end method
