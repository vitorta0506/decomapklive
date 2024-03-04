.class public Lcom/snapchat/kit/sdk/SnapKitActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field a:Lcom/snapchat/kit/sdk/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/snapchat/kit/sdk/b;->d(Landroid/content/Context;)Lbe/b;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0, p0}, Lbe/b;->c(Lcom/snapchat/kit/sdk/SnapKitActivity;)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/snapchat/kit/sdk/SnapKitActivity;->a:Lcom/snapchat/kit/sdk/f;

    invoke-virtual {v0, p1}, Lcom/snapchat/kit/sdk/f;->o(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/snapchat/kit/sdk/SnapKitActivity;->a:Lcom/snapchat/kit/sdk/f;

    invoke-virtual {v0, p1}, Lcom/snapchat/kit/sdk/f;->d(Landroid/net/Uri;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/snapchat/kit/sdk/SnapKitActivity;->a:Lcom/snapchat/kit/sdk/f;

    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/f;->t()V

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
