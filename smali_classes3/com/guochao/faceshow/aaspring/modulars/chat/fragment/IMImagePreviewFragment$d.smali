.class Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->save(Landroid/view/View;)V
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
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lte/a;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;->onNext(Lte/a;)V

    return-void
.end method

.method public onNext(Lte/a;)V
    .locals 4

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-boolean v0, p1, Lte/a;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->c:Ljava/io/File;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPhotoPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/FileUtils;->saveImageFileToGallery(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    const v0, 0x7f1207b6

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    const v0, 0x7f1207b8

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getUrl(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-static {v0}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lic/d;->F(Ljava/lang/Object;)Lic/c;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 12
    :cond_2
    iget-boolean p1, p1, Lte/a;->c:Z

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    const v0, 0x7f120068

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d$b;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;)V

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    const v1, 0x7f1206d9

    .line 14
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    :cond_3
    :goto_1
    return-void
.end method
