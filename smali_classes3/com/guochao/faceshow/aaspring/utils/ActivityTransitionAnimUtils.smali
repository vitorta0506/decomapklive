.class public Lcom/guochao/faceshow/aaspring/utils/ActivityTransitionAnimUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startActivityByDownToUp(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const v0, 0x7f01000d

    const v1, 0x7f01000c

    .line 1
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v0

    const-string v1, "anim"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->checkIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4
    invoke-virtual {v0}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivityByDownToUp(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 3

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f01000d

    const v2, 0x7f01000c

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "anim"

    .line 7
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    invoke-virtual {v0}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
