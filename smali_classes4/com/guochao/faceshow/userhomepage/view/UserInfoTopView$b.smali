.class Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView$b;->a:Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView$b;->a:Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;

    invoke-static {v0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->b(Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;)Lcom/rd/PageIndicatorView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/PageIndicatorView;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView$b;->a:Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;

    invoke-static {v0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->b(Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;)Lcom/rd/PageIndicatorView;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView$b;->a:Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;

    invoke-static {v1}, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->a(Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/rd/PageIndicatorView;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView$b;->a:Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;

    invoke-static {v0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->b(Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;)Lcom/rd/PageIndicatorView;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView$b;->a:Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;

    invoke-static {v1}, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->a(Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/rd/PageIndicatorView;->onPageSelected(I)V

    return-void
.end method
