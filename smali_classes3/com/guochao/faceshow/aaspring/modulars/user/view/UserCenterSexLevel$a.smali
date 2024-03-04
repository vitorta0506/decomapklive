.class Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp7/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->a(Lcom/guochao/faceshow/aaspring/base/model/GCUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/model/GCUser;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;Lcom/guochao/faceshow/aaspring/base/model/GCUser;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel$a;->a:Lcom/guochao/faceshow/aaspring/base/model/GCUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel$a;->a:Lcom/guochao/faceshow/aaspring/base/model/GCUser;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/base/model/GCUserBaseInfo;->getAge()I

    move-result v0

    return v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel$a;->a:Lcom/guochao/faceshow/aaspring/base/model/GCUser;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/base/model/GCUserBaseInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel$a;->a:Lcom/guochao/faceshow/aaspring/base/model/GCUser;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/base/model/GCUserBaseInfo;->getGender()I

    move-result v0

    return v0
.end method

.method public getLevel()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel$a;->a:Lcom/guochao/faceshow/aaspring/base/model/GCUser;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/base/model/GCUser;->getLevel()I

    move-result v0

    return v0
.end method
