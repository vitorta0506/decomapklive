.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;->b(Landroid/view/View;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b$a$a;->a(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
