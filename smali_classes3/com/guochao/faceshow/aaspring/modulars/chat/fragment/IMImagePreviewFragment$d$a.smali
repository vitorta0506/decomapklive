.class Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d$a;
.super Ls0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;->onNext(Lte/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls0/c<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;

    invoke-direct {p0}, Ls0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onResourceReady(Ljava/io/File;Lt0/f;)V
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lt0/f<",
            "-",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance p2, Ljava/io/File;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPhotoPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/FileUtils;->saveImageFileToGallery(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    const p2, 0x7f1207b6

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    const p2, 0x7f1207b8

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lt0/f;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d$a;->onResourceReady(Ljava/io/File;Lt0/f;)V

    return-void
.end method
