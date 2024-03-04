.class Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;ILcom/guochao/faceshow/mine/view/MultilingualActivity$c;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->d:Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;

    iput p2, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->a:I

    iput-object p3, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->b:Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    iput-object p4, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->a:I

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->d:Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->i0(Lcom/guochao/faceshow/mine/view/MultilingualActivity;)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->d:Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->b:Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->d0(Lcom/guochao/faceshow/mine/view/MultilingualActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->d:Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->e0(Lcom/guochao/faceshow/mine/view/MultilingualActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->d:Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->e0(Lcom/guochao/faceshow/mine/view/MultilingualActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->c:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->d:Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->c:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->g0(Lcom/guochao/faceshow/mine/view/MultilingualActivity;Landroid/view/View;)Landroid/view/View;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->d:Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    iget v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->a:I

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->k0(Lcom/guochao/faceshow/mine/view/MultilingualActivity;I)I

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->d:Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->b:Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->d0(Lcom/guochao/faceshow/mine/view/MultilingualActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->d:Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->e0(Lcom/guochao/faceshow/mine/view/MultilingualActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->d:Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->e0(Lcom/guochao/faceshow/mine/view/MultilingualActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->c:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->d:Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;->c:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->g0(Lcom/guochao/faceshow/mine/view/MultilingualActivity;Landroid/view/View;)Landroid/view/View;

    :goto_0
    return-void
.end method
