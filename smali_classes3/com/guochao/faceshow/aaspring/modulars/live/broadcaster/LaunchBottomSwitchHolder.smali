.class public Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/ViewGroup;

.field public b:I

.field bottomSwitchLay:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field c:[Landroid/widget/TextView;

.field d:[Landroid/view/View;

.field private e:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder$a;

.field indicatorBottomEnd:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field indicatorBottomMiddle:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field indicatorBottomStart:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field liveBottomEnd:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field liveBottomMiddle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field liveBottomStart:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->b:I

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/widget/TextView;

    .line 3
    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->c:[Landroid/widget/TextView;

    new-array v1, v1, [Landroid/view/View;

    .line 4
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->d:[Landroid/view/View;

    .line 5
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->a:Landroid/view/ViewGroup;

    .line 6
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->c:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->liveBottomStart:Landroid/widget/TextView;

    aput-object v2, v1, v0

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->liveBottomMiddle:Landroid/widget/TextView;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->liveBottomEnd:Landroid/widget/TextView;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->d:[Landroid/view/View;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->indicatorBottomStart:Landroid/view/View;

    aput-object v2, v1, v0

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->indicatorBottomMiddle:Landroid/view/View;

    aput-object v2, v1, v3

    .line 12
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->indicatorBottomEnd:Landroid/view/View;

    aput-object v2, v1, v4

    .line 13
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/c;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "live_index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 15
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->f(I)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->b(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static synthetic b(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private f(I)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->b:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->bottomSwitchLay:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;->setCurrentIndex(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->i()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->h()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->g()V

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_4

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->c:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    if-ne v2, p1, :cond_3

    .line 7
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0603ce

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f070315

    new-array v5, v0, [Landroid/widget/TextView;

    aput-object v3, v5, v1

    .line 8
    invoke-static {v4, v5}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setCustomBold(I[Landroid/widget/TextView;)V

    .line 9
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->d:[Landroid/view/View;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 10
    :cond_3
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060136

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f070314

    new-array v5, v0, [Landroid/widget/TextView;

    aput-object v3, v5, v1

    .line 11
    invoke-static {v4, v5}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setCustomBold(I[Landroid/widget/TextView;)V

    .line 12
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->d:[Landroid/view/View;

    aget-object v3, v3, v2

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->e(Z)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->b:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "live_voice_room_config"

    .line 2
    invoke-static {v0}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/Feature;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->b:I

    .line 4
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->f(I)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->b:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->b:I

    .line 3
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->f(I)V

    return-void
.end method

.method public e(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->e:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder$a;->a(IZ)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->e:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder$a;->a(IZ)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 3

    const-string v0, "live_voice_room_config"

    .line 1
    invoke-static {v0}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/Feature;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->e:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder$a;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder$a;->a(IZ)V

    :cond_1
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0155

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a015a

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a015c

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->f(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->f(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->f(I)V

    :goto_0
    return-void
.end method

.method public setOnSwitchListener(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder$a;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->e:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder$a;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "live_index"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->f(I)V

    return-void
.end method
