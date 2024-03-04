.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog;->S1(Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld5/a<",
        "Lcom/google/android/play/core/review/ReviewInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/play/core/review/a;

.field final synthetic b:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/review/a;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog$a;->a:Lcom/google/android/play/core/review/a;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog$a;->b:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld5/d;)V
    .locals 2
    .param p1    # Ld5/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld5/d<",
            "Lcom/google/android/play/core/review/ReviewInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ld5/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog$a;->a:Lcom/google/android/play/core/review/a;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog$a;->b:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Ld5/d;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/review/ReviewInfo;

    invoke-interface {v0, v1, p1}, Lcom/google/android/play/core/review/a;->b(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Ld5/d;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog$a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog$a;)V

    invoke-virtual {p1, v0}, Ld5/d;->a(Ld5/a;)Ld5/d;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog$a;->b:Landroidx/fragment/app/FragmentActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog;->P1(Landroidx/fragment/app/FragmentActivity;I)V

    .line 4
    invoke-virtual {p1}, Ld5/d;->d()Ljava/lang/Exception;

    move-result-object p1

    const-string v0, "showStoreReview"

    const-string v1, "onFailure: "

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
