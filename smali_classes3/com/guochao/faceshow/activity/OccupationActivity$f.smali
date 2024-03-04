.class Lcom/guochao/faceshow/activity/OccupationActivity$f;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/OccupationActivity;->i2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/bean/OccupationBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/OccupationActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/OccupationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$f;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

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
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/OccupationBean;",
            ">;>;)V"
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
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/activity/OccupationActivity$f;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/OccupationBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/OccupationBean;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/activity/OccupationActivity$f;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/activity/OccupationActivity;->Q1(Lcom/guochao/faceshow/activity/OccupationActivity;Ljava/util/List;)Ljava/util/List;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$f;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/OccupationActivity;->S1(Lcom/guochao/faceshow/activity/OccupationActivity;)Lcom/guochao/faceshow/utils/AAComAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/activity/OccupationActivity$f;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/OccupationActivity;->P1(Lcom/guochao/faceshow/activity/OccupationActivity;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/utils/AAComAdapter;->resetData(Ljava/util/List;)V

    return-void
.end method
