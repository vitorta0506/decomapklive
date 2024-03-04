.class public final Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/MvpBagAdapter;
.super Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter<",
        "Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\"\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0008H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/MvpBagAdapter;",
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;",
        "Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;",
        "mContext",
        "Landroid/content/Context;",
        "data",
        "",
        "layoutId",
        "",
        "(Landroid/content/Context;Ljava/util/List;I)V",
        "getMContext",
        "()Landroid/content/Context;",
        "setMContext",
        "(Landroid/content/Context;)V",
        "convert",
        "",
        "holder",
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;",
        "item",
        "position",
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
.field private mContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/MvpBagAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public convert(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;I)V
    .locals 6
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p3, "item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const p3, 0x7f0a0482

    .line 2
    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    if-eqz p3, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/MvpBagAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    :cond_0
    if-eqz p1, :cond_1

    const p3, 0x7f0a0485

    .line 5
    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_1

    .line 6
    invoke-virtual {p3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120648

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p1, :cond_2

    const p3, 0x7f0a0486

    .line 7
    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_2

    const/16 v0, 0x8

    .line 8
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    if-eqz p1, :cond_3

    const p3, 0x7f0a0557

    .line 9
    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/MvpBagAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->getExpireTime()J

    move-result-wide v1

    const/4 v3, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/utils/TimeUtil;->getDressUpTime(Landroid/content/Context;JIJ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/MvpBagAdapter;->convert(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;I)V

    return-void
.end method

.method public final getMContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/MvpBagAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final setMContext(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/MvpBagAdapter;->mContext:Landroid/content/Context;

    return-void
.end method
