.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;Ljava/lang/String;I)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;->a:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;)I

    move-result p2

    const/16 p3, 0x3c

    if-ne p2, p3, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDuration()J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;)I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    const p2, 0x7f120726

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->isSelectable()Z

    move-result p2

    const p3, 0x7f12002f

    if-nez p2, :cond_2

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDisplayUri()Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getFileType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 9
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/BitmapUtils;->isGif(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    const p2, 0x7f1206fb

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 12
    :cond_3
    :try_start_0
    invoke-static {p2}, Lva/d;->c(Landroid/net/Uri;)J

    move-result-wide v3

    const-wide/16 v5, 0xa

    cmp-long p2, v3, v5

    if-lez p2, :cond_4

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 14
    :cond_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getFileType()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_5

    .line 15
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    const-string p3, ""

    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    move-result-object p2

    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a$a;

    invoke-direct {p3, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;)V

    invoke-virtual {p2, p1, p3}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readVideoDetail(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 17
    :cond_5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    invoke-static {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Z)V

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    invoke-static {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;Z)Z

    return-void
.end method
