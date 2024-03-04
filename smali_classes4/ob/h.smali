.class public Lob/h;
.super Landroid/widget/Toast;
.source "SourceFile"

# interfaces
.implements Lpb/b;


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/view/View;)Landroid/widget/TextView;
    .locals 0

    invoke-static {p0, p1}, Lpb/a;->a(Lpb/b;Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lob/h;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lob/h;->a:Landroid/widget/TextView;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lob/h;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lob/h;->a:Landroid/widget/TextView;

    return-void
.end method
