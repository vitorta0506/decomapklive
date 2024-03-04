.class public final Lcom/guochao/faceshow/aaspring/base/test/TestFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/test/TestFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "viewBinding",
        "Lcom/guochao/lib_core/databinding/FragmentTestBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/lib_core/databinding/FragmentTestBinding;",
        "setViewBinding",
        "(Lcom/guochao/lib_core/databinding/FragmentTestBinding;)V",
        "lib_core_release"
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
.field public viewBinding:Lcom/guochao/lib_core/databinding/FragmentTestBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/lib_core/databinding/FragmentTestBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/test/TestFragment;->viewBinding:Lcom/guochao/lib_core/databinding/FragmentTestBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setViewBinding(Lcom/guochao/lib_core/databinding/FragmentTestBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/lib_core/databinding/FragmentTestBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/test/TestFragment;->viewBinding:Lcom/guochao/lib_core/databinding/FragmentTestBinding;

    return-void
.end method
