.class public Lwa/b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwa/b$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/CountryData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/guochao/faceshow/bean/CountryData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/guochao/faceshow/bean/CountryData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/CountryData;",
            ">;",
            "Lcom/guochao/faceshow/bean/CountryData;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lwa/b;->b:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lwa/b;->c:Lcom/guochao/faceshow/bean/CountryData;

    .line 4
    iput-object p2, p0, Lwa/b;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lwa/b;Lcom/guochao/faceshow/bean/CountryData;)Lcom/guochao/faceshow/bean/CountryData;
    .locals 0

    iput-object p1, p0, Lwa/b;->c:Lcom/guochao/faceshow/bean/CountryData;

    return-object p1
.end method


# virtual methods
.method public b()Lcom/guochao/faceshow/bean/CountryData;
    .locals 1

    iget-object v0, p0, Lwa/b;->c:Lcom/guochao/faceshow/bean/CountryData;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lwa/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lwa/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lwa/b$b;

    invoke-direct {p2}, Lwa/b$b;-><init>()V

    .line 2
    iget-object p3, p0, Lwa/b;->b:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0d00fd

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a0c1c

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lwa/b$b;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0583

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lwa/b$b;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a0585

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lwa/b$b;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a09af

    .line 6
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lwa/b$b;->d:Landroid/widget/RelativeLayout;

    .line 7
    iget-object v0, p2, Lwa/b$b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lwa/b;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lwa/b$b;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 10
    :goto_0
    iget-object v0, p0, Lwa/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/CountryData;

    .line 11
    iget-object v0, p2, Lwa/b$b;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p2, Lwa/b$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 13
    iget-object v0, p2, Lwa/b$b;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lwa/b;->c:Lcom/guochao/faceshow/bean/CountryData;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getCountryId()I

    move-result v1

    iget-object v2, p0, Lwa/b;->c:Lcom/guochao/faceshow/bean/CountryData;

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/CountryData;->getCountryId()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object p2, p2, Lwa/b$b;->d:Landroid/widget/RelativeLayout;

    new-instance v0, Lwa/b$a;

    invoke-direct {v0, p0, p1}, Lwa/b$a;-><init>(Lwa/b;Lcom/guochao/faceshow/bean/CountryData;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method
