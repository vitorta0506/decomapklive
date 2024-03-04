.class Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->m0(Landroid/widget/ImageView;Landroid/widget/TextView;)V
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
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;Ljava/util/Map;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$c;->d:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$c;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$c;->b:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$c;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 3
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$c;->a:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$c;->d:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$c;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$c;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$c;->a:Ljava/util/Map;

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/util/Map;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
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
            "Ljava/lang/Object;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$c;->a:Ljava/util/Map;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$c;->d:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$c;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$c;->a:Ljava/util/Map;

    invoke-static {p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/util/Map;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$c;->onFailure(Lg7/a;)V

    :goto_0
    return-void
.end method
