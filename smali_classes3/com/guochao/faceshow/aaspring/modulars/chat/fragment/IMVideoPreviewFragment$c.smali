.class Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$c;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->save(Landroid/view/View;)V
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

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$c;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lte/a;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$c;->onNext(Lte/a;)V

    return-void
.end method

.method public onNext(Lte/a;)V
    .locals 8

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-boolean v0, p1, Lte/a;->b:Z

    if-eqz v0, :cond_5

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->getLocalVideoPath()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const v2, 0x7f1207b6

    const v3, 0x7f1207b8

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPhotoPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/FileUtils;->saveVideoToGallery(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$c;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->getVideoPath()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 15
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 18
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPhotoPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/FileUtils;->saveVideoToGallery(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    goto :goto_1

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    .line 23
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$c;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 24
    :cond_5
    iget-boolean p1, p1, Lte/a;->c:Z

    if-nez p1, :cond_6

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;

    const v0, 0x7f120068

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$c$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$c$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$c;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;

    const v1, 0x7f1206d9

    .line 26
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    :cond_6
    :goto_2
    return-void
.end method
