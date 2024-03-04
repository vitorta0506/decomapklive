.class public final Lcom/guochao/component/mvp/fragment/MVPListFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/mvp/fragment/MVPListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/guochao/component/mvp/fragment/MVPListFragment$Companion;",
        "",
        "()V",
        "newInstance",
        "Lcom/guochao/component/mvp/fragment/MVPListFragment;",
        "myMVPLevel",
        "",
        "mode",
        "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;",
        "(Ljava/lang/Integer;Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;)Lcom/guochao/component/mvp/fragment/MVPListFragment;",
        "component_mvp_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/component/mvp/fragment/MVPListFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/Integer;Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;)Lcom/guochao/component/mvp/fragment/MVPListFragment;
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "myMVPLevel"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string p1, "model"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    new-instance p1, Lcom/guochao/component/mvp/fragment/MVPListFragment;

    invoke-direct {p1}, Lcom/guochao/component/mvp/fragment/MVPListFragment;-><init>()V

    .line 5
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method
