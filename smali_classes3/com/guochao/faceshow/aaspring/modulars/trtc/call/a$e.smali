.class Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;
.super Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->N(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

.field final synthetic e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;Landroid/content/Context;ILcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;->a:Landroid/content/Context;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;->b:I

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;->c:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Lte/a;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;->onDenied(Lte/a;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;->a:Landroid/content/Context;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->l:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->m:[Ljava/lang/String;

    .line 4
    :goto_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x65

    invoke-static {p1, v2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->Q1(Landroid/content/Context;ILjava/util/List;Z)V

    return-void
.end method

.method public onGranted(Lte/a;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;->b:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->isMeizu(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->isCameraCanUse(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;->a:Landroid/content/Context;

    const v0, 0x7f12018d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->S1(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;->b:I

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;->a:Landroid/content/Context;

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;->c:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->A0(Landroid/content/Context;ILcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;->a:Landroid/content/Context;

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;->c:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->A0(Landroid/content/Context;ILcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    :goto_0
    return-void
.end method

.method public onShouldShowRequestPermissionRationale(Lte/a;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;->onShouldShowRequestPermissionRationale(Lte/a;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;->a:Landroid/content/Context;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->l:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->m:[Ljava/lang/String;

    .line 4
    :goto_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x65

    invoke-static {p1, v2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->Q1(Landroid/content/Context;ILjava/util/List;Z)V

    return-void
.end method
