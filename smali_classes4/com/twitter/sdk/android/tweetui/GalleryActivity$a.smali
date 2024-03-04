.class Lcom/twitter/sdk/android/tweetui/GalleryActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetui/GalleryActivity;->b()Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/twitter/sdk/android/tweetui/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/GalleryActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity$a;->b:Lcom/twitter/sdk/android/tweetui/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity$a;->a:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    .line 1
    iget p3, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity$a;->a:I

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    if-nez p1, :cond_0

    float-to-double p1, p2

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    add-int/lit8 p3, p3, 0x1

    .line 2
    iput p3, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity$a;->a:I

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    iget p1, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity$a;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity$a;->a:I

    return-void
.end method
