.class public Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010\r\u001a\u00020\nH\u0016J\u0008\u0010\u000e\u001a\u00020\nH\u0016J\u0008\u0010\u000f\u001a\u00020\nH\u0016J\u0008\u0010\u0010\u001a\u00020\nH\u0016R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "localActivityManager",
        "Landroid/app/LocalActivityManager;",
        "getLocalActivityManager",
        "()Landroid/app/LocalActivityManager;",
        "localActivityManager$delegate",
        "Lkotlin/Lazy;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onPause",
        "onResume",
        "onStop",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final localActivityManager$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment$localActivityManager$2;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment$localActivityManager$2;-><init>(Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;->localActivityManager$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getLocalActivityManager()Landroid/app/LocalActivityManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;->localActivityManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LocalActivityManager;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchStop()V

    return-void
.end method
