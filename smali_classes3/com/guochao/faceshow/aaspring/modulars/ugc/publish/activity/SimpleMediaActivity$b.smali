.class Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity$b;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->onCameraClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Lte/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lte/a;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity$b;->onNext(Lte/a;)V

    return-void
.end method

.method public onNext(Lte/a;)V
    .locals 6

    .line 2
    iget-boolean p1, p1, Lte/a;->b:Z

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;

    new-instance v1, Ljava/io/File;

    const-string v2, "img"

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPrivateRootPathV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;Ljava/io/File;)Ljava/io/File;

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;)Ljava/io/File;

    move-result-object v1

    const-string v2, "com.guochao.faceshow.fileprovider"

    invoke-static {v0, v2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    const-string v1, "output"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;

    const/16 v1, 0xc9

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    return-void
.end method
