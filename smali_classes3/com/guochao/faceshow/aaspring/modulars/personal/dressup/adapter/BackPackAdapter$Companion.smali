.class public final Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\nH\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter$Companion;",
        "",
        "()V",
        "setImageResource",
        "",
        "imageView",
        "Landroid/widget/ImageView;",
        "rewardBean",
        "Lcom/guochao/faceshow/aaspring/beans/BackPageGift;",
        "setImageResourceDressUp",
        "Lcom/guochao/faceshow/aaspring/beans/DressUpData;",
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
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/BackPageGift;)V
    .locals 2
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/BackPageGift;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "imageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/BackPageGift;->getBagAttribute()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f0f00d8

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3
    invoke-virtual {p1, v1, v1}, Landroid/widget/ImageView;->measure(II)V

    const/high16 v0, 0x41200000    # 10.0f

    .line 4
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 5
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 7
    invoke-virtual {p1, v1, v1}, Landroid/widget/ImageView;->measure(II)V

    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 9
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 10
    :goto_0
    invoke-static {p1}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/BackPageGift;->getImg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    return-void
.end method

.method public final setImageResourceDressUp(Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/DressUpData;)V
    .locals 3
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/DressUpData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "imageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getBagAttribute()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getBagAttribute()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0f00d8

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3
    invoke-virtual {p1, v1, v1}, Landroid/widget/ImageView;->measure(II)V

    const/high16 v0, 0x41200000    # 10.0f

    .line 4
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 5
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 7
    invoke-virtual {p1, v1, v1}, Landroid/widget/ImageView;->measure(II)V

    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 9
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 10
    :goto_1
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "ar"

    invoke-static {v2, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-static {p1}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getArThumbnailImage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    goto :goto_2

    .line 12
    :cond_2
    invoke-static {p1}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getThumbnailImage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    :goto_2
    return-void
.end method
