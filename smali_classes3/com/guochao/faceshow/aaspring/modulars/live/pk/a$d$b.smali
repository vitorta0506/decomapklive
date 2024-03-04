.class Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$b;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;->b(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;)V
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
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$b;->d:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$b;->a:Z

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$b;->c:Ljava/lang/String;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$b;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$b;->d:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$b;->a:Z

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$b;->c:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->d(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
