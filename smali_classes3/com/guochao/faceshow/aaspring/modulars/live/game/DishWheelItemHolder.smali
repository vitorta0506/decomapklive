.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder$a;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field private b:Lp7/h;

.field private c:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder$a;

.field imageWheel:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder;->a:Landroid/view/View;

    .line 3
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder;->b(Landroid/view/View;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder;->b:Lp7/h;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder$a;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder$a;->b()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder;->b:Lp7/h;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder$a;

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder;->b:Lp7/h;

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder$a;->a(Lp7/h;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public c(Lp7/h;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/h;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/game/g$h;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder;->b:Lp7/h;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder;->imageWheel:Landroid/widget/ImageView;

    invoke-interface {p1}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhc/a;->d(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder;->a:Landroid/view/View;

    invoke-interface {p1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder;->imageWheel:Landroid/widget/ImageView;

    const v0, 0x7f0f0274

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 6
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$h;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder;)V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder;->imageWheel:Landroid/widget/ImageView;

    invoke-direct {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$h;-><init>(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setOnJoinListener(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder$a;

    return-void
.end method
