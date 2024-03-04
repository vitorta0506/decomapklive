.class public final Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter;
.super Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter<",
        "Lcom/guochao/faceshow/aaspring/beans/BackPageGift;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00182\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\'\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0008J\"\u0010\u0013\u001a\u00020\u000f2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0008H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter;",
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;",
        "Lcom/guochao/faceshow/aaspring/beans/BackPageGift;",
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
        "addDrawableStart",
        "",
        "textView",
        "Landroid/widget/TextView;",
        "resId",
        "convert",
        "holder",
        "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;",
        "item",
        "position",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter;->Companion:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BackPageGift;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static final setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/BackPageGift;)V
    .locals 1
    .param p0    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/BackPageGift;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter;->Companion:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter$Companion;->setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/BackPageGift;)V

    return-void
.end method

.method public static final setImageResourceDressUp(Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/DressUpData;)V
    .locals 1
    .param p0    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/DressUpData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter;->Companion:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter$Companion;->setImageResourceDressUp(Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/DressUpData;)V

    return-void
.end method


# virtual methods
.method public final addDrawableStart(Landroid/widget/TextView;I)V
    .locals 3
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public convert(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/BackPageGift;I)V
    .locals 6
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/BackPageGift;
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
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter;->Companion:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter$Companion;

    invoke-virtual {v0, p3, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter$Companion;->setImageResource(Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/BackPageGift;)V

    :cond_0
    if-eqz p1, :cond_2

    const p3, 0x7f0a0485

    .line 4
    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/BackPageGift;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/BackPageGift;->getBagAttribute()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12084c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p1, :cond_4

    const p3, 0x7f0a0486

    .line 7
    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_4

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/BackPageGift;->getNumber()I

    move-result v1

    if-gtz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/BackPageGift;->getNumber()I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz p1, :cond_7

    const p3, 0x7f0a0557

    .line 10
    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 11
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/BackPageGift;->getIntroduction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/BackPageGift;->getIntroduction()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 13
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/BackPageGift;->getBagAttribute()I

    move-result p3

    if-nez p3, :cond_5

    .line 14
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f12084d

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->clearDrawable(Landroid/widget/TextView;)V

    goto :goto_3

    .line 16
    :cond_5
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 17
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/BackPageGift;->getBagAttribute()I

    move-result p3

    if-nez p3, :cond_6

    const-wide/16 p2, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/BackPageGift;->getExpireDay()J

    move-result-wide p2

    :goto_2
    move-wide v1, p2

    const/4 v3, -0x1

    .line 18
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p2

    .line 19
    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/utils/TimeUtil;->getDressUpTime(Landroid/content/Context;JIJ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0f02cf

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter;->addDrawableStart(Landroid/widget/TextView;I)V

    const/high16 p2, 0x40800000    # 4.0f

    .line 21
    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_7
    :goto_3
    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/BackPageGift;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter;->convert(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/BackPageGift;I)V

    return-void
.end method

.method public final getMContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final setMContext(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter;->mContext:Landroid/content/Context;

    return-void
.end method
