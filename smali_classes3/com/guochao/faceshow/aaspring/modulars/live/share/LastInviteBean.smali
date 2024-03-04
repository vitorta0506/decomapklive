.class public Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;)Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->c:Z

    .line 3
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;->getAge()I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->d:I

    .line 4
    invoke-interface {p0}, Lp7/h;->getPendantUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->h:Ljava/lang/String;

    .line 5
    invoke-interface {p0}, Lp7/h;->getCountryFlag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->i:Ljava/lang/String;

    .line 6
    invoke-interface {p0}, Lp7/e;->getLevel()I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->j:I

    .line 7
    invoke-interface {p0}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->e:Ljava/lang/String;

    .line 8
    invoke-interface {p0}, Lp7/h;->getPendantUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->h:Ljava/lang/String;

    .line 9
    invoke-interface {p0}, Lp7/h;->getGender()I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->f:I

    .line 10
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->a:Ljava/lang/String;

    .line 11
    invoke-interface {p0}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->b:Ljava/lang/String;

    .line 12
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;->getVipInfo()Lb8/g;

    move-result-object p0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->from(Lb8/g;)Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p0

    iput-object p0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->g:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method


# virtual methods
.method public getAge()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->d:I

    return v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->f:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->j:I

    return v0
.end method

.method public synthetic getMVPUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->a(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->a:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getVipInfo()Lb8/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->getVipInfo()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    return-object v0
.end method

.method public getVipInfo()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->g:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public isSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->c:Z

    return v0
.end method

.method public setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->c:Z

    return-void
.end method
