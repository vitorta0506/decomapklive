.class Lf8/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf8/h;->q(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf8/h;


# direct methods
.method constructor <init>(Lf8/h;)V
    .locals 0

    iput-object p1, p0, Lf8/h$d;->a:Lf8/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf8/h$d;->a:Lf8/h;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;-><init>()V

    iput-object v0, p1, Lf8/h;->n:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

    .line 2
    iget-object p1, p0, Lf8/h$d;->a:Lf8/h;

    iget-object v0, p1, Lf8/h;->n:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

    iget-object p1, p1, Lf8/h;->l:Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "RecaptchaDialogFragment"

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lf8/h$d;->a:Lf8/h;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lf8/h;->s(Ljava/lang/String;Z)V

    return-void
.end method
