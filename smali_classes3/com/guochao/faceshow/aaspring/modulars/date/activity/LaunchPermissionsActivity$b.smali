.class Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity$b;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->e0(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity$b;->c:Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity$b;->a:Ljava/lang/String;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity$b;->b:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity$b;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity$b;->c:Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity$b;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity$b;->a:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity$b;->b:I

    const-string v0, "appointAuth"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity$b;->c:Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;

    const/16 v0, 0x3f3

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity$b;->c:Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method
