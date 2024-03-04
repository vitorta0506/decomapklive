.class public final Lcom/guochao/component/mvp/fragment/GiftSelectFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/mvp/fragment/GiftSelectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/guochao/component/mvp/fragment/GiftSelectFragment$Companion;",
        "",
        "()V",
        "newInstance",
        "Lcom/guochao/component/mvp/fragment/GiftSelectFragment;",
        "type",
        "",
        "level",
        "list",
        "Ljava/util/ArrayList;",
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

    invoke-direct {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(IILjava/util/ArrayList;)Lcom/guochao/component/mvp/fragment/GiftSelectFragment;
    .locals 4
    .param p3    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/component/mvp/model/TypeData;",
            ">;)",
            "Lcom/guochao/component/mvp/fragment/GiftSelectFragment;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;

    invoke-direct {v0}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p3, :cond_0

    .line 4
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/component/mvp/model/TypeData;

    .line 5
    invoke-virtual {v3, p1}, Lcom/guochao/component/mvp/model/TypeData;->setType(I)V

    goto :goto_0

    :cond_0
    const-string p1, "level"

    .line 6
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p3, :cond_1

    const-string p1, "list"

    .line 7
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 8
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
