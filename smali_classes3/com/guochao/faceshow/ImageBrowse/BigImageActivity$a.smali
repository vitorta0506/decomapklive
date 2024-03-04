.class Lcom/guochao/faceshow/ImageBrowse/BigImageActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity$a;->a:Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity$a;->a:Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v1, v3

    iget-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity$a;->a:Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;->b0(Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;)Lcom/guochao/faceshow/aaspring/views/HackyViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const p1, 0x7f1209da

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity$a;->a:Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;->d0(Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
