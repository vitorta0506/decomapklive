.class Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthResponse(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;)V
    .locals 0

    return-void
.end method
