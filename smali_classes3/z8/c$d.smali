.class Lz8/c$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz8/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Landroid/view/ViewStub;

.field b:Landroid/view/View;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lz8/c$d;->a:Landroid/view/ViewStub;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz8/c$d;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lz8/c$d;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lz8/c$d;->a:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lz8/c$d;->b:Landroid/view/View;

    const v1, 0x7f0a027c

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lz8/c$d;->c:Landroid/widget/ImageView;

    .line 4
    iget-object v0, p0, Lz8/c$d;->b:Landroid/view/View;

    const v1, 0x7f0a00fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object v0, p0, Lz8/c$d;->e:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 5
    iget-object v0, p0, Lz8/c$d;->b:Landroid/view/View;

    const v1, 0x7f0a080d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lz8/c$d;->d:Landroid/widget/TextView;

    .line 6
    :cond_0
    iget-object v0, p0, Lz8/c$d;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lz8/c$d;->e:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 8
    iget-object v0, p0, Lz8/c$d;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getBroadCasterUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lic/a;->b(Landroid/content/Context;)Lic/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveCoverImg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object p1

    new-instance v0, Ljc/f;

    const/16 v1, 0xf

    const/4 v2, 0x2

    const-string v3, "#1A000000"

    .line 10
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljc/f;-><init>(III)V

    invoke-virtual {p1, v0}, Lic/c;->Q1(Le0/h;)Lic/c;

    move-result-object p1

    const v0, 0x7f0f03f3

    .line 11
    invoke-virtual {p1, v0}, Lic/c;->I1(I)Lic/c;

    move-result-object p1

    const/high16 v0, -0x80000000

    .line 12
    invoke-virtual {p1, v0, v0}, Lic/c;->H1(II)Lic/c;

    move-result-object p1

    iget-object v0, p0, Lz8/c$d;->c:Landroid/widget/ImageView;

    .line 13
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    return-void
.end method
