.class public final Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$Companion;",
        "",
        "()V",
        "newInstance",
        "Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;",
        "data",
        "",
        "Lcom/guochao/component/mvp/model/TypeData;",
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

    invoke-direct {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/util/List;)Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/TypeData;",
            ">;)",
            "Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;

    invoke-direct {v0}, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/component/mvp/model/TypeData;

    .line 5
    invoke-virtual {v3}, Lcom/guochao/component/mvp/model/TypeData;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/guochao/component/mvp/model/TypeData;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/guochao/component/mvp/model/TypeData;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/guochao/component/mvp/model/TypeData;->getType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 6
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p1, "data"

    .line 7
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 8
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
