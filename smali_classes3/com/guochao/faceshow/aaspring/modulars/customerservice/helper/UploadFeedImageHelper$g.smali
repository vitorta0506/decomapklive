.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$g;
.super Landroidx/activity/result/contract/ActivityResultContract;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/view/ViewGroup;Landroidx/activity/result/ActivityResultCaller;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract<",
        "Landroid/content/Intent;",
        "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$g;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;
    .locals 1
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "data"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public createIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-object p2
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$g;->createIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 0
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$g;->a(ILandroid/content/Intent;)Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    move-result-object p1

    return-object p1
.end method
