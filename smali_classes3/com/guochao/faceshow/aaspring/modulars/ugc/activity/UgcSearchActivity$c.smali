.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;->d()V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;->c()V

    return-void
.end method

.method private synthetic c()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;I)V

    return-void
.end method

.method private synthetic d()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;I)V

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;I)I

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/FileUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->r0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-wide/16 v0, 0x64

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)I

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;I)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/q;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/q;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)I

    move-result p1

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->etSearch:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->r0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;I)V

    goto :goto_0

    .line 14
    :cond_3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/p;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/p;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method
