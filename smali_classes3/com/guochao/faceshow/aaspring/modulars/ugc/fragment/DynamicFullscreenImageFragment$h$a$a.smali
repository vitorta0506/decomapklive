.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a$a;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;->onResourceReady(Landroid/graphics/Bitmap;Lt0/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;

    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;

    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;

    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getFileUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;

    iget-object v5, v5, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;

    iget-object v5, v5, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;

    iget-object v5, v5, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getFileUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/FileUtils;->saveImageFileToGallery(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;

    const v0, 0x7f1207b6

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;

    const v0, 0x7f1207b8

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->j:Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onError(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;

    const v0, 0x7f1207b8

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a$a;->a(Ljava/io/File;)V

    return-void
.end method
