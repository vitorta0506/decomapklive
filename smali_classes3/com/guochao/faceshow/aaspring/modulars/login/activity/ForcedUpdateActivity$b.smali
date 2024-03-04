.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$b;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->k0(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    return-void
.end method

.method public onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/ForcedUpdateActivity;)V

    return-void
.end method
