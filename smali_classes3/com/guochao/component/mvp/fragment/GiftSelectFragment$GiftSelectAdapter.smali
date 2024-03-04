.class public final Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/mvp/fragment/GiftSelectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GiftSelectAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/guochao/component/mvp/model/TypeData;",
        "Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0013\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0014R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/guochao/component/mvp/model/TypeData;",
        "Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectViewHolder;",
        "list",
        "",
        "(Lcom/guochao/component/mvp/fragment/GiftSelectFragment;Ljava/util/List;)V",
        "selectedPosition",
        "",
        "getSelectedPosition",
        "()I",
        "setSelectedPosition",
        "(I)V",
        "convert",
        "",
        "holder",
        "item",
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


# instance fields
.field private selectedPosition:I

.field final synthetic this$0:Lcom/guochao/component/mvp/fragment/GiftSelectFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/component/mvp/fragment/GiftSelectFragment;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/guochao/component/mvp/fragment/GiftSelectFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/TypeData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectFragment;

    .line 2
    sget p1, Lcom/guochao/component/mvp/R$layout;->item_gift_select:I

    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;->selectedPosition:I

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectViewHolder;

    check-cast p2, Lcom/guochao/component/mvp/model/TypeData;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;->convert(Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectViewHolder;Lcom/guochao/component/mvp/model/TypeData;)V

    return-void
.end method

.method protected convert(Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectViewHolder;Lcom/guochao/component/mvp/model/TypeData;)V
    .locals 2
    .param p1    # Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/component/mvp/model/TypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectViewHolder;->getViewBinding()Lcom/guochao/component/mvp/databinding/ItemGiftSelectBinding;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lcom/guochao/component/mvp/databinding/ItemGiftSelectBinding;->bgFL:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Lcom/guochao/component/mvp/model/TypeData;->getSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 4
    iget-object v0, p1, Lcom/guochao/component/mvp/databinding/ItemGiftSelectBinding;->nameTV:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/component/mvp/model/TypeData;->getSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    iget-object v0, p1, Lcom/guochao/component/mvp/databinding/ItemGiftSelectBinding;->imageView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    iget-object v1, p1, Lcom/guochao/component/mvp/databinding/ItemGiftSelectBinding;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 6
    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/ItemGiftSelectBinding;->nameTV:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/component/mvp/model/TypeData;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getSelectedPosition()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;->selectedPosition:I

    return v0
.end method

.method public final setSelectedPosition(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;->selectedPosition:I

    return-void
.end method
