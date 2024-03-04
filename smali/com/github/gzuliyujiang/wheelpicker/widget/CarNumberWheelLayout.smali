.class public Lcom/github/gzuliyujiang/wheelpicker/widget/CarNumberWheelLayout;
.super Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected g(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->g(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lj1/a;

    invoke-direct {p1}, Lj1/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->setData(Li1/b;)V

    return-void
.end method
