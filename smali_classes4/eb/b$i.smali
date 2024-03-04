.class Leb/b$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leb/b;->B(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leb/b;


# direct methods
.method constructor <init>(Leb/b;)V
    .locals 0

    iput-object p1, p0, Leb/b$i;->a:Leb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object p1, p0, Leb/b$i;->a:Leb/b;

    invoke-virtual {p1}, Leb/b;->A()V

    .line 2
    iget-object p1, p0, Leb/b$i;->a:Leb/b;

    invoke-static {p1}, Leb/b;->b(Leb/b;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Leb/b$i;->a:Leb/b;

    invoke-static {p1}, Leb/b;->o(Leb/b;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f12002a

    if-eqz p1, :cond_1

    iget-object p1, p0, Leb/b$i;->a:Leb/b;

    invoke-static {p1}, Leb/b;->o(Leb/b;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Leb/b$i;->a:Leb/b;

    invoke-static {p1}, Leb/b;->b(Leb/b;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$SinaWeibo;->NAME:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Leb/b$i;->a:Leb/b;

    invoke-static {p1}, Leb/b;->p(Leb/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Leb/b$i;->a:Leb/b;

    invoke-static {p1}, Leb/b;->p(Leb/b;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v3, p1

    iget-object p1, p0, Leb/b$i;->a:Leb/b;

    invoke-static {p1}, Leb/b;->q(Leb/b;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Leb/b$i;->a:Leb/b;

    .line 6
    invoke-static {p1}, Leb/b;->o(Leb/b;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    iget-object p1, p0, Leb/b$i;->a:Leb/b;

    invoke-static {p1}, Leb/b;->c(Leb/b;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Leb/b$i;->a:Leb/b;

    invoke-static {p1}, Leb/b;->r(Leb/b;)Lu9/a;

    move-result-object v8

    .line 7
    invoke-static/range {v1 .. v8}, Lv9/c;->e(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lu9/a;)V

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Leb/b$i;->a:Leb/b;

    invoke-static {p1}, Leb/b;->b(Leb/b;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$SinaWeibo;->NAME:Ljava/lang/String;

    .line 9
    iget-object p1, p0, Leb/b$i;->a:Leb/b;

    invoke-static {p1}, Leb/b;->p(Leb/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Leb/b$i;->a:Leb/b;

    invoke-static {p1}, Leb/b;->p(Leb/b;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v3, p1

    iget-object p1, p0, Leb/b$i;->a:Leb/b;

    .line 10
    invoke-static {p1}, Leb/b;->q(Leb/b;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Leb/b$i;->a:Leb/b;

    invoke-static {p1}, Leb/b;->o(Leb/b;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Leb/b$i;->a:Leb/b;

    invoke-static {p1}, Leb/b;->c(Leb/b;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object p1, p0, Leb/b$i;->a:Leb/b;

    invoke-static {p1}, Leb/b;->r(Leb/b;)Lu9/a;

    move-result-object v8

    .line 11
    invoke-static/range {v1 .. v8}, Lv9/c;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILu9/a;)V

    :cond_3
    return-void
.end method
