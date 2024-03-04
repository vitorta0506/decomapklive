.class public Lcom/guochao/faceshow/aaspring/beans/ContactBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hasInvited:Z

.field private userAvatar:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userPhone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ContactBean;->userAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ContactBean;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ContactBean;->userPhone:Ljava/lang/String;

    return-object v0
.end method

.method public isHasInvited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ContactBean;->hasInvited:Z

    return v0
.end method

.method public setHasInvited(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/ContactBean;->hasInvited:Z

    return-void
.end method

.method public setUserAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ContactBean;->userAvatar:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ContactBean;->userName:Ljava/lang/String;

    return-void
.end method

.method public setUserPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ContactBean;->userPhone:Ljava/lang/String;

    return-void
.end method
