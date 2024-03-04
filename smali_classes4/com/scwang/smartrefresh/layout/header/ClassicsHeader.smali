.class public Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalClassics;
.source "SourceFile"

# interfaces
.implements Lwd/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scwang/smartrefresh/layout/internal/InternalClassics<",
        "Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;",
        ">;",
        "Lwd/g;"
    }
.end annotation


# static fields
.field public static F:Ljava/lang/String;

.field public static G:Ljava/lang/String;

.field public static H:Ljava/lang/String;

.field public static I:Ljava/lang/String;

.field public static J:Ljava/lang/String;

.field public static K:Ljava/lang/String;

.field public static L:Ljava/lang/String;

.field public static M:Ljava/lang/String;


# instance fields
.field protected A:Ljava/lang/String;

.field protected B:Ljava/lang/String;

.field protected C:Ljava/lang/String;

.field protected D:Ljava/lang/String;

.field protected E:Ljava/lang/String;

.field protected r:Ljava/lang/String;

.field protected s:Ljava/util/Date;

.field protected t:Landroid/widget/TextView;

.field protected u:Landroid/content/SharedPreferences;

.field protected v:Ljava/text/DateFormat;

.field protected w:Z

.field protected x:Ljava/lang/String;

.field protected y:Ljava/lang/String;

.field protected z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "LAST_UPDATE_TIME"

    .line 4
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->r:Ljava/lang/String;

    const/4 p3, 0x1

    .line 5
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->w:Z

    const/4 p3, 0x0

    .line 6
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->x:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->y:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->z:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->A:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->B:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->C:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->D:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->E:Ljava/lang/String;

    .line 14
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->t:Landroid/widget/TextView;

    const v0, -0x838384

    .line 15
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->e:Landroid/widget/ImageView;

    .line 17
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->t:Landroid/widget/TextView;

    .line 18
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->f:Landroid/widget/ImageView;

    .line 19
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->g:Landroid/widget/LinearLayout;

    .line 20
    new-instance v3, Lae/b;

    invoke-direct {v3}, Lae/b;-><init>()V

    .line 21
    sget-object v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 22
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 24
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 25
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextTimeMarginTop:I

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lae/b;->a(F)I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 26
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableMarginRight:I

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v3, v6}, Lae/b;->a(F)I

    move-result v3

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 27
    iput v3, p3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 28
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableArrowSize:I

    iget v5, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 29
    iget v5, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 30
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableProgressSize:I

    iget v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 31
    iget v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 32
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableSize:I

    iget v5, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 33
    iget v5, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 34
    iget p3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    iput p3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 35
    iget p3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    iput p3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 36
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlFinishDuration:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->n:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->n:I

    .line 37
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlEnableLastTime:I

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->w:Z

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->w:Z

    .line 38
    invoke-static {}, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->values()[Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object p3

    sget v1, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlClassicsSpinnerStyle:I

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->b:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object p3, p3, v1

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->b:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 39
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const v3, -0x99999a

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->e:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 41
    :cond_0
    new-instance p3, Lyd/a;

    invoke-direct {p3}, Lyd/a;-><init>()V

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->i:Lyd/b;

    .line 42
    invoke-virtual {p3, v3}, Lyd/b;->a(I)V

    .line 43
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->i:Lyd/b;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    :goto_0
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableProgress:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->f:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 46
    :cond_1
    new-instance p3, Lyd/c;

    invoke-direct {p3}, Lyd/c;-><init>()V

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->j:Lyd/b;

    .line 47
    invoke-virtual {p3, v3}, Lyd/b;->a(I)V

    .line 48
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->j:Lyd/b;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    :goto_1
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextSizeTitle:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 50
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->d:Landroid/widget/TextView;

    invoke-static {v3}, Lae/b;->b(F)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v1, v5, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    .line 51
    :cond_2
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->d:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 52
    :goto_2
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextSizeTime:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/high16 v3, 0x41400000    # 12.0f

    if-eqz v1, :cond_3

    .line 53
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->t:Landroid/widget/TextView;

    invoke-static {v3}, Lae/b;->b(F)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v1, v5, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3

    .line 54
    :cond_3
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->t:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 55
    :goto_3
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlPrimaryColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 56
    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-super {p0, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->t(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;

    .line 57
    :cond_4
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlAccentColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 58
    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->u(I)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    .line 59
    :cond_5
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextPulling:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 60
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->x:Ljava/lang/String;

    goto :goto_4

    .line 61
    :cond_6
    sget-object p3, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->F:Ljava/lang/String;

    if-eqz p3, :cond_7

    .line 62
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->x:Ljava/lang/String;

    goto :goto_4

    .line 63
    :cond_7
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_pulling:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->x:Ljava/lang/String;

    .line 64
    :goto_4
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextLoading:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 65
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->z:Ljava/lang/String;

    goto :goto_5

    .line 66
    :cond_8
    sget-object p3, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->H:Ljava/lang/String;

    if-eqz p3, :cond_9

    .line 67
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->z:Ljava/lang/String;

    goto :goto_5

    .line 68
    :cond_9
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_loading:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->z:Ljava/lang/String;

    .line 69
    :goto_5
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextRelease:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 70
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->A:Ljava/lang/String;

    goto :goto_6

    .line 71
    :cond_a
    sget-object p3, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->I:Ljava/lang/String;

    if-eqz p3, :cond_b

    .line 72
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->A:Ljava/lang/String;

    goto :goto_6

    .line 73
    :cond_b
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_release:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->A:Ljava/lang/String;

    .line 74
    :goto_6
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextFinish:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 75
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->B:Ljava/lang/String;

    goto :goto_7

    .line 76
    :cond_c
    sget-object p3, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->J:Ljava/lang/String;

    if-eqz p3, :cond_d

    .line 77
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->B:Ljava/lang/String;

    goto :goto_7

    .line 78
    :cond_d
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_finish:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->B:Ljava/lang/String;

    .line 79
    :goto_7
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextFailed:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 80
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->C:Ljava/lang/String;

    goto :goto_8

    .line 81
    :cond_e
    sget-object p3, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->K:Ljava/lang/String;

    if-eqz p3, :cond_f

    .line 82
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->C:Ljava/lang/String;

    goto :goto_8

    .line 83
    :cond_f
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_failed:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->C:Ljava/lang/String;

    .line 84
    :goto_8
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextSecondary:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 85
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->E:Ljava/lang/String;

    goto :goto_9

    .line 86
    :cond_10
    sget-object p3, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->M:Ljava/lang/String;

    if-eqz p3, :cond_11

    .line 87
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->E:Ljava/lang/String;

    goto :goto_9

    .line 88
    :cond_11
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_secondary:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->E:Ljava/lang/String;

    .line 89
    :goto_9
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextRefreshing:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 90
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->y:Ljava/lang/String;

    goto :goto_a

    .line 91
    :cond_12
    sget-object p3, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->G:Ljava/lang/String;

    if-eqz p3, :cond_13

    .line 92
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->y:Ljava/lang/String;

    goto :goto_a

    .line 93
    :cond_13
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_refreshing:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->y:Ljava/lang/String;

    .line 94
    :goto_a
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextUpdate:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 95
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->D:Ljava/lang/String;

    goto :goto_b

    .line 96
    :cond_14
    sget-object p3, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->L:Ljava/lang/String;

    if-eqz p3, :cond_15

    .line 97
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->D:Ljava/lang/String;

    goto :goto_b

    .line 98
    :cond_15
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_update:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->D:Ljava/lang/String;

    .line 99
    :goto_b
    new-instance p3, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->D:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {p3, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->v:Ljava/text/DateFormat;

    .line 100
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p2, 0x4

    .line 101
    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    .line 102
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->w:Z

    if-eqz p2, :cond_16

    const/4 p2, 0x0

    goto :goto_c

    :cond_16
    const/16 p2, 0x8

    :goto_c
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    invoke-virtual {v2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p3

    if-eqz p3, :cond_17

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->y:Ljava/lang/String;

    goto :goto_d

    :cond_17
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->x:Ljava/lang/String;

    :goto_d
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :try_start_0
    instance-of p2, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p2, :cond_18

    .line 106
    move-object p2, p1

    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 107
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 108
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_18

    .line 109
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->v(Ljava/util/Date;)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 110
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    :cond_18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->r:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->r:Ljava/lang/String;

    const-string p2, "ClassicsHeader"

    .line 112
    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->u:Landroid/content/SharedPreferences;

    .line 113
    new-instance p1, Ljava/util/Date;

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->u:Landroid/content/SharedPreferences;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->r:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p2, p3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->v(Ljava/util/Date;)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    return-void
.end method


# virtual methods
.method public c(Lwd/j;Z)I
    .locals 2
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->s:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->v(Ljava/util/Date;)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->c(Lwd/j;Z)I

    move-result p1

    return p1
.end method

.method public e(Lwd/j;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 3
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
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->t:Landroid/widget/TextView;

    .line 3
    sget-object v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->w:Z

    if-eqz p1, :cond_0

    const/4 v2, 0x4

    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->z:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :pswitch_1
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->d:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->E:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 9
    :pswitch_2
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->d:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->A:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 11
    :pswitch_3
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->d:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->y:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 13
    :pswitch_4
    iget-boolean p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->w:Z

    if-eqz p3, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :pswitch_5
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->d:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->x:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic s(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->u(I)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    move-result-object p1

    return-object p1
.end method

.method public u(I)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->t:Landroid/widget/TextView;

    const v1, 0xffffff

    and-int/2addr v1, p1

    const/high16 v2, -0x34000000    # -3.3554432E7f

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->s(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;

    move-result-object p1

    check-cast p1, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    return-object p1
.end method

.method public v(Ljava/util/Date;)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->s:Ljava/util/Date;

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->v:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->u:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->u:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->r:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object p0
.end method
