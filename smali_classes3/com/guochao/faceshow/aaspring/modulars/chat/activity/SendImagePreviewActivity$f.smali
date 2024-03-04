.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$f;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseFragmentPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic e:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$f;->e:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseFragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$f;->e:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$f;->e:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getFileType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->P1(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;->P1(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;

    move-result-object p1

    return-object p1
.end method
