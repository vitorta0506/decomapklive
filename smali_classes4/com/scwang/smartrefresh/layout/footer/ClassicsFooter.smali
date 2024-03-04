.class public Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;
.super Lcom/scwang/smartrefresh/layout/internal/InternalClassics;
.source "SourceFile"

# interfaces
.implements Lwd/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scwang/smartrefresh/layout/internal/InternalClassics<",
        "Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;",
        ">;",
        "Lwd/f;"
    }
.end annotation


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Ljava/lang/String;

.field public static C:Ljava/lang/String;

.field public static D:Ljava/lang/String;

.field public static E:Ljava/lang/String;

.field public static F:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# instance fields
.field protected r:Ljava/lang/String;

.field protected s:Ljava/lang/String;

.field protected t:Ljava/lang/String;

.field protected u:Ljava/lang/String;

.field protected v:Ljava/lang/String;

.field protected w:Ljava/lang/String;

.field protected x:Ljava/lang/String;

.field protected y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->r:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->s:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->t:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->u:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->v:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->w:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->x:Ljava/lang/String;

    const/4 p3, 0x0

    .line 11
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->y:Z

    .line 12
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->e:Landroid/widget/ImageView;

    .line 13
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->f:Landroid/widget/ImageView;

    .line 14
    new-instance v2, Lae/b;

    invoke-direct {v2}, Lae/b;-><init>()V

    .line 15
    sget-object v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 18
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableMarginRight:I

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v4}, Lae/b;->a(F)I

    move-result v2

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 19
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 20
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableArrowSize:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 21
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 22
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableProgressSize:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 23
    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 24
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableSize:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 25
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 26
    iget v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 27
    iget v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 28
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlFinishDuration:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->n:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->n:I

    .line 29
    invoke-static {}, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->values()[Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v0

    sget v1, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlClassicsSpinnerStyle:I

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->b:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->b:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 30
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableArrow:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const v2, -0x99999a

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->e:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lyd/a;

    invoke-direct {v0}, Lyd/a;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->i:Lyd/b;

    .line 33
    invoke-virtual {v0, v2}, Lyd/b;->a(I)V

    .line 34
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->i:Lyd/b;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    :goto_0
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableProgress:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->f:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 37
    :cond_1
    new-instance v0, Lyd/c;

    invoke-direct {v0}, Lyd/c;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->j:Lyd/b;

    .line 38
    invoke-virtual {v0, v2}, Lyd/b;->a(I)V

    .line 39
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->j:Lyd/b;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    :goto_1
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextSizeTitle:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/high16 v3, 0x41800000    # 16.0f

    if-eqz v1, :cond_2

    .line 41
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->d:Landroid/widget/TextView;

    invoke-static {v3}, Lae/b;->b(F)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, p3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43
    :goto_2
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlPrimaryColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-super {p0, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->t(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;

    .line 45
    :cond_3
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlAccentColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 46
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-super {p0, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->s(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;

    .line 47
    :cond_4
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextPulling:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->r:Ljava/lang/String;

    goto :goto_3

    .line 49
    :cond_5
    sget-object p3, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->z:Ljava/lang/String;

    if-eqz p3, :cond_6

    .line 50
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->r:Ljava/lang/String;

    goto :goto_3

    .line 51
    :cond_6
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_pulling:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->r:Ljava/lang/String;

    .line 52
    :goto_3
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextRelease:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 53
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->s:Ljava/lang/String;

    goto :goto_4

    .line 54
    :cond_7
    sget-object p3, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->A:Ljava/lang/String;

    if-eqz p3, :cond_8

    .line 55
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->s:Ljava/lang/String;

    goto :goto_4

    .line 56
    :cond_8
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_release:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->s:Ljava/lang/String;

    .line 57
    :goto_4
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextLoading:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 58
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->t:Ljava/lang/String;

    goto :goto_5

    .line 59
    :cond_9
    sget-object p3, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->B:Ljava/lang/String;

    if-eqz p3, :cond_a

    .line 60
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->t:Ljava/lang/String;

    goto :goto_5

    .line 61
    :cond_a
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_loading:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->t:Ljava/lang/String;

    .line 62
    :goto_5
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextRefreshing:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 63
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->u:Ljava/lang/String;

    goto :goto_6

    .line 64
    :cond_b
    sget-object p3, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->C:Ljava/lang/String;

    if-eqz p3, :cond_c

    .line 65
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->u:Ljava/lang/String;

    goto :goto_6

    .line 66
    :cond_c
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_refreshing:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->u:Ljava/lang/String;

    .line 67
    :goto_6
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextFinish:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 68
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->v:Ljava/lang/String;

    goto :goto_7

    .line 69
    :cond_d
    sget-object p3, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->D:Ljava/lang/String;

    if-eqz p3, :cond_e

    .line 70
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->v:Ljava/lang/String;

    goto :goto_7

    .line 71
    :cond_e
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_finish:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->v:Ljava/lang/String;

    .line 72
    :goto_7
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextFailed:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 73
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->w:Ljava/lang/String;

    goto :goto_8

    .line 74
    :cond_f
    sget-object p3, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->E:Ljava/lang/String;

    if-eqz p3, :cond_10

    .line 75
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->w:Ljava/lang/String;

    goto :goto_8

    .line 76
    :cond_10
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_failed:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->w:Ljava/lang/String;

    .line 77
    :goto_8
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextNothing:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 78
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->x:Ljava/lang/String;

    goto :goto_9

    .line 79
    :cond_11
    sget-object p3, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->F:Ljava/lang/String;

    if-eqz p3, :cond_12

    .line 80
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->x:Ljava/lang/String;

    goto :goto_9

    .line 81
    :cond_12
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_nothing:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->x:Ljava/lang/String;

    .line 82
    :goto_9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->t:Ljava/lang/String;

    goto :goto_a

    :cond_13
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->r:Ljava/lang/String;

    :goto_a
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public b(Z)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->y:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->y:Z

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->e:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->x:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->r:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public c(Lwd/j;Z)I
    .locals 2
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->y:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->d:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->v:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->w:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-super {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->c(Lwd/j;Z)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public e(Lwd/j;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 1
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/scwang/smartrefresh/layout/constant/RefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/scwang/smartrefresh/layout/constant/RefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->e:Landroid/widget/ImageView;

    .line 2
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->y:Z

    if-nez p2, :cond_0

    .line 3
    sget-object p2, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/16 p3, 0x8

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->u:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :pswitch_1
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->d:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->s:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 8
    :pswitch_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :pswitch_4
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->d:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->r:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(Lwd/j;II)V
    .locals 1
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->y:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->k(Lwd/j;II)V

    :cond_0
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 2
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->b:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->setPrimaryColors([I)V

    :cond_0
    return-void
.end method
