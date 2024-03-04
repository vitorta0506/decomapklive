.class final Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccountViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/ListItemAccountChooserBinding;",
        "(Lcom/guochao/faceshow/databinding/ListItemAccountChooserBinding;)V",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/ListItemAccountChooserBinding;",
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
.field private final viewBinding:Lcom/guochao/faceshow/databinding/ListItemAccountChooserBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/databinding/ListItemAccountChooserBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/ListItemAccountChooserBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/databinding/ListItemAccountChooserBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;->viewBinding:Lcom/guochao/faceshow/databinding/ListItemAccountChooserBinding;

    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/databinding/ListItemAccountChooserBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;->viewBinding:Lcom/guochao/faceshow/databinding/ListItemAccountChooserBinding;

    return-object v0
.end method
