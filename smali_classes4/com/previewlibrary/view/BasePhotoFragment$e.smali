.class Lcom/previewlibrary/view/BasePhotoFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/co/senab2/photoview2/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/previewlibrary/view/BasePhotoFragment;->T1()V
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

    iput-object p1, p0, Lcom/previewlibrary/view/BasePhotoFragment$e;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;FF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/previewlibrary/view/BasePhotoFragment$e;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    iget-object p1, p1, Lcom/previewlibrary/view/BasePhotoFragment;->c:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-virtual {p1}, Lcom/previewlibrary/wight/SmoothImageView;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/previewlibrary/view/BasePhotoFragment$e;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/previewlibrary/GPreviewActivity;

    invoke-virtual {p1}, Lcom/previewlibrary/GPreviewActivity;->transformOut()V

    :cond_0
    return-void
.end method
