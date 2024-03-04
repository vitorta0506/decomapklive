.class public Lcom/guochao/faceshow/views/ZZSliderViewContainer;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/ZZSliderViewContainer$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:J

.field private g:J

.field private h:Lcom/guochao/faceshow/views/t;

.field private i:Lcom/guochao/faceshow/views/t;

.field private j:Lcom/guochao/faceshow/views/ZZSliderViewContainer$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/ZZSliderViewContainer;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/ZZSliderViewContainer;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/ZZSliderViewContainer;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/views/ZZSliderViewContainer;->a:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0322

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/ZZSliderViewContainer;->b:Landroid/view/View;

    const v0, 0x7f0a05dc

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/ZZSliderViewContainer;->c:Landroid/view/View;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZSliderViewContainer;->b:Landroid/view/View;

    const v0, 0x7f0a05a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/ZZSliderViewContainer;->d:Landroid/view/View;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZSliderViewContainer;->b:Landroid/view/View;

    const v0, 0x7f0a0785

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/ZZSliderViewContainer;->e:Landroid/view/View;

    .line 6
    new-instance p1, Lcom/guochao/faceshow/views/t;

    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZSliderViewContainer;->c:Landroid/view/View;

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/views/t;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/guochao/faceshow/views/ZZSliderViewContainer;->h:Lcom/guochao/faceshow/views/t;

    .line 7
    new-instance p1, Lcom/guochao/faceshow/views/t;

    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZSliderViewContainer;->d:Landroid/view/View;

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/views/t;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/guochao/faceshow/views/ZZSliderViewContainer;->i:Lcom/guochao/faceshow/views/t;

    return-void
.end method


# virtual methods
.method public getContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZSliderViewContainer;->b:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/ZZSliderViewContainer;->g:J

    return-wide v0
.end method

.method public getEndView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZSliderViewContainer;->d:Landroid/view/View;

    return-object v0
.end method

.method public getStartTimeUs()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/ZZSliderViewContainer;->f:J

    return-wide v0
.end method

.method public getStartView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZSliderViewContainer;->c:Landroid/view/View;

    return-object v0
.end method

.method public setDurationChangeListener(Lcom/guochao/faceshow/views/ZZSliderViewContainer$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/ZZSliderViewContainer;->j:Lcom/guochao/faceshow/views/ZZSliderViewContainer$a;

    return-void
.end method

.method public setMiddleRangeColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZSliderViewContainer;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
