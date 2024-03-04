.class public Lcom/guochao/faceshow/views/f;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/f$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Lcom/guochao/faceshow/views/f$a;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/guochao/faceshow/views/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/views/f;->d:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/guochao/faceshow/views/f;->e:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/guochao/faceshow/views/f;->f:Lcom/guochao/faceshow/views/f$a;

    return-void
.end method

.method private a()V
    .locals 2

    const v0, 0x7f0a0255

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/views/f;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0aea

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/views/f;->b:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05fc

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/views/f;->c:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/views/f;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/views/f;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/views/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/f;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/views/f;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/views/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a05fc

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0aea

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/f;->f:Lcom/guochao/faceshow/views/f$a;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 3
    invoke-interface {p1, p0, v0}, Lcom/guochao/faceshow/views/f$a;->onClick(Landroid/app/Dialog;Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/views/f;->f:Lcom/guochao/faceshow/views/f$a;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, p0, v0}, Lcom/guochao/faceshow/views/f$a;->onClick(Landroid/app/Dialog;Z)V

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0129

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/views/f;->a()V

    return-void
.end method
