.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld9/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a;->onTick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld9/e$a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a$a;->b(ILjava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public b(ILjava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p3    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public c(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->Z1()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment$a$a;->c(Ljava/lang/Boolean;)V

    return-void
.end method
