.class public Lcom/guochao/faceshow/aaspring/modulars/login/utils/r;
.super Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;
.source "SourceFile"


# instance fields
.field e:Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->initWeiBo()V

    .line 3
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/r;->e:Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    return-void
.end method


# virtual methods
.method public i(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->i(IILandroid/content/Intent;)V

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method
