.class Lf8/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/CountryUtils$NationalFlagAndCodeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf8/h;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lf8/h;


# direct methods
.method constructor <init>(Lf8/h;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lf8/h$b;->c:Lf8/h;

    iput-object p2, p0, Lf8/h$b;->a:Landroid/view/View;

    iput-object p3, p0, Lf8/h$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/guochao/faceshow/bean/CountryData;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/bean/CountryData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getCountryNum()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getLogo()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lf8/h$b;->c:Lf8/h;

    invoke-static {v2}, Lf8/h;->f(Lf8/h;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "1"

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getCoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getCoding()Ljava/lang/String;

    move-result-object p1

    const-string v1, "US"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lf8/h$b;->c:Lf8/h;

    invoke-static {p1}, Lf8/h;->f(Lf8/h;)Landroid/widget/ImageView;

    move-result-object p1

    const v1, 0x7f0f011b

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lf8/h$b;->c:Lf8/h;

    invoke-static {p1}, Lf8/h;->f(Lf8/h;)Landroid/widget/ImageView;

    move-result-object p1

    const v1, 0x7f0f011c

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lf8/h$b;->c:Lf8/h;

    invoke-static {p1}, Lf8/h;->f(Lf8/h;)Landroid/widget/ImageView;

    move-result-object p1

    const v2, 0x7f0f0122

    invoke-static {p1, v1, v2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Lf8/h$b;->c:Lf8/h;

    invoke-static {p1}, Lf8/h;->g(Lf8/h;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lf8/h$b;->c:Lf8/h;

    invoke-static {p1}, Lf8/h;->g(Lf8/h;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "+%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object p1, p0, Lf8/h$b;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lf8/h$b$a;

    invoke-direct {v0, p0}, Lf8/h$b$a;-><init>(Lf8/h$b;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/CountryUtils;->getCountryData(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/utils/CountryUtils$CountryCallBack;)V

    :cond_4
    :goto_1
    return-void
.end method
