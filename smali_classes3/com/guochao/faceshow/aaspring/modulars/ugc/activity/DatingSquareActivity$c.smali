.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;

    if-eqz p1, :cond_0

    .line 2
    instance-of v0, p1, Laa/g;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Laa/g;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    invoke-interface {p1, v0}, Laa/g;->onGenderChanged(I)V

    :cond_0
    return-void
.end method
