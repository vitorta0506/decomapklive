.class Lcom/previewlibrary/view/BasePhotoFragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/previewlibrary/wight/SmoothImageView$h;


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

    iput-object p1, p0, Lcom/previewlibrary/view/BasePhotoFragment$g;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment$g;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/previewlibrary/GPreviewActivity;

    invoke-virtual {v0}, Lcom/previewlibrary/GPreviewActivity;->transformOut()V

    return-void
.end method
