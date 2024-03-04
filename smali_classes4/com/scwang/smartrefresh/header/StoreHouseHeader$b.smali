.class Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/header/StoreHouseHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:Z

.field final synthetic f:Lcom/scwang/smartrefresh/header/StoreHouseHeader;


# direct methods
.method private constructor <init>(Lcom/scwang/smartrefresh/header/StoreHouseHeader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->f:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->a:I

    .line 3
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->b:I

    .line 4
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->c:I

    .line 5
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->d:I

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/scwang/smartrefresh/header/StoreHouseHeader;Lcom/scwang/smartrefresh/header/StoreHouseHeader$a;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;-><init>(Lcom/scwang/smartrefresh/header/StoreHouseHeader;)V

    return-void
.end method

.method static synthetic b(Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->d()V

    return-void
.end method

.method static synthetic c(Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->f()V

    return-void
.end method

.method private d()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->e:Z

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->a:I

    .line 3
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->f:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget v2, v1, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->n:I

    iget-object v1, v1, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v2, v1

    iput v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->d:I

    .line 4
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->f:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget v3, v1, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->o:I

    div-int/2addr v3, v2

    iput v3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->b:I

    .line 5
    iget-object v1, v1, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->b:I

    div-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->c:I

    .line 6
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->run()V

    return-void
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->e:Z

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->f:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->a:I

    iget v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->b:I

    rem-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget v3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->c:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 3
    iget v3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->b:I

    mul-int v3, v3, v2

    add-int/2addr v3, v0

    .line 4
    iget v5, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->a:I

    if-le v3, v5, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->f:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget-object v5, v5, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    rem-int/2addr v3, v5

    .line 6
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->f:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget-object v5, v5, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->d:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltd/a;

    .line 7
    invoke-virtual {v3, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 8
    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 9
    invoke-virtual {v3, v1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    const-wide/16 v4, 0x190

    .line 10
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    .line 11
    invoke-virtual {v3, v4, v5}, Ltd/a;->g(FF)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->a:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->a:I

    .line 13
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->f:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget-object v0, v0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->u:Lwd/i;

    if-eqz v0, :cond_2

    .line 14
    invoke-interface {v0}, Lwd/i;->k()Lwd/j;

    move-result-object v0

    invoke-interface {v0}, Lwd/j;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    .line 15
    iget v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->d:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
