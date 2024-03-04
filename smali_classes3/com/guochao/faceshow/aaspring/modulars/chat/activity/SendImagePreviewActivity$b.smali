.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;I)I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->tvCompile:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->tvCompile:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
