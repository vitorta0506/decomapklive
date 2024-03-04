.class public final Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$GiftPathIconViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GiftPathIconViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$GiftPathIconViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "view",
        "Lcom/guochao/faceshow/databinding/ListItemHandyImageViewBinding;",
        "(Lcom/guochao/faceshow/databinding/ListItemHandyImageViewBinding;)V",
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


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/databinding/ListItemHandyImageViewBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/ListItemHandyImageViewBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/guochao/faceshow/databinding/ListItemHandyImageViewBinding;->getRoot()Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
