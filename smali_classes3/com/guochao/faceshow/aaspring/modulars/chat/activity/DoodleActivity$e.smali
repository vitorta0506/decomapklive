.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$e;
.super Ls0/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->a1(Lcom/guochao/faceshow/aaspring/views/doodle/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls0/i<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/doodle/h;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Lcom/guochao/faceshow/aaspring/views/doodle/h;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$e;->a:Lcom/guochao/faceshow/aaspring/views/doodle/h;

    invoke-direct {p0}, Ls0/i;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f01000d

    const v2, 0x7f01004d

    .line 2
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    .line 3
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    move-result-object v1

    const v2, 0x7f0a02e1

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->V1(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$e;->a:Lcom/guochao/faceshow/aaspring/views/doodle/h;

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$e;->a:Lcom/guochao/faceshow/aaspring/views/doodle/h;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->W1(Lcom/guochao/faceshow/aaspring/views/doodle/h;)V

    :cond_0
    return-void
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Lt0/f;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
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
            "Landroid/graphics/drawable/Drawable;",
            "Lt0/f<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    const v0, 0x7f01000d

    const v1, 0x7f01004d

    .line 3
    invoke-virtual {p2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    .line 4
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    move-result-object v0

    const v1, 0x7f0a02e1

    invoke-virtual {p2, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->V1(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$e;->a:Lcom/guochao/faceshow/aaspring/views/doodle/h;

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$e;->a:Lcom/guochao/faceshow/aaspring/views/doodle/h;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->W1(Lcom/guochao/faceshow/aaspring/views/doodle/h;)V

    :cond_0
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
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$e;->onResourceReady(Landroid/graphics/drawable/Drawable;Lt0/f;)V

    return-void
.end method
