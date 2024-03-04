.class Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;->i0(Ljava/lang/String;Lcom/guochao/faceshow/bean/FollowBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/bean/FollowBean;

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;Lcom/guochao/faceshow/bean/FollowBean;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$c;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$c;->a:Lcom/guochao/faceshow/bean/FollowBean;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$c;->b:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$c;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$c;->b:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$c;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$c;->a:Lcom/guochao/faceshow/bean/FollowBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/FollowBean;->getStartLivePush()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/bean/FollowBean;->setStartLivePush(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$c;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$c;->b:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
