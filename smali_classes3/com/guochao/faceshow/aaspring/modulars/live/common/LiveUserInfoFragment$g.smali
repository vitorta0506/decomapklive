.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->initVisitorListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->access$100(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->a(I)Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->access$100(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->a(I)Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->getCurrentUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->access$200(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->getCurrentUserId()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->access$300(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
