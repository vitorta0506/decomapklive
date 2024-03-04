.class Lcom/previewlibrary/view/BasePhotoFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/previewlibrary/view/BasePhotoFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/previewlibrary/view/BasePhotoFragment;


# direct methods
.method constructor <init>(Lcom/previewlibrary/view/BasePhotoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/previewlibrary/view/BasePhotoFragment$a;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/previewlibrary/view/BasePhotoFragment$a;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    invoke-static {p1}, Lcom/previewlibrary/view/BasePhotoFragment;->P1(Lcom/previewlibrary/view/BasePhotoFragment;)Lcom/previewlibrary/enitity/IThumbViewInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/previewlibrary/enitity/IThumbViewInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/previewlibrary/view/BasePhotoFragment;->h:Lbd/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lbd/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment$a;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/previewlibrary/GPVideoPlayerActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
